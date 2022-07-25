package rl

import kit "../../shared"
import "profiler"
import "core:math/linalg"
import "core:math/rand"
import "core:fmt"
import sa "core:container/small_array"
import "shadow"
import "core:strconv"

v2 :: linalg.Vector2f32
v2i :: [2]int

Color :: kit.Color
Texture2D :: kit.Texture2D
Font :: kit.Font

APP_TITLE :: "Roguelike"
APP_WIDTH :: VIRTUAL_W * VIRTUAL_PX
APP_HEIGHT :: VIRTUAL_H * VIRTUAL_PX

VIRTUAL_PX :: 2
VIRTUAL_W :: TILE_SIZE_X * TILES_X
VIRTUAL_H :: TILE_SIZE_Y * TILES_Y
TILE_SIZE_X :: 24
TILE_SIZE_Y :: 24
TILES_X :: 20
TILES_Y :: 20
TILE_SIZE_X_HALF :: TILE_SIZE_X / 2
TILE_SIZE_Y_HALF :: TILE_SIZE_Y / 2
TILE_SIZE_PX :: v2{TILE_SIZE_X, TILE_SIZE_Y}
MID_TILE :: v2{TILE_SIZE_X_HALF, TILE_SIZE_Y_HALF}
Tiles :: [TILES_X][TILES_Y]Tile
Ent :: int
NIL_ENT :: -1
MAX_ENTS :: 256
DOT_SIZE :: kit.Vector2{
	TILE_SIZE_X / 4,
	TILE_SIZE_Y / 4,
} // TODO test if I can use v2 or v2i
DOT_OFFSET :: v2{TILE_SIZE_X_HALF - DOT_SIZE.x / 2, TILE_SIZE_Y_HALF - DOT_SIZE.y / 2}
FONT_SIZE :: 24
FONT_SIZE_HIRES :: FONT_SIZE * 2
FONT :: "src/game/rl/square.ttf"
STEP_HEIGHT :: 0.3

DIR_N :: v2i{0, -1}
DIR_S :: v2i{0, 1}
DIR_E :: v2i{1, 0}
DIR_W :: v2i{-1, 0}
DIR_NW :: v2i{-1, -1}
DIR_NE :: v2i{1, -1}
DIR_SW :: v2i{-1, 1}
DIR_SE :: v2i{1, 1}

directions := [8]v2i{DIR_NW, DIR_N, DIR_NE, DIR_E, DIR_SE, DIR_S, DIR_SW, DIR_W}
diagonals := [4]v2i{DIR_NW, DIR_NE, DIR_SE, DIR_SW}

BG :: Color{46, 52, 64, 255}
WHITE :: Color{216, 222, 234, 255}
BLACK :: Color{0, 0, 0, 255}
BLUE :: Color{129, 161, 193, 255}
MAUVE :: Color{180, 142, 173, 255}
YELLOW :: Color{235, 203, 139, 255}
BRIGHT_BLUE :: Color{136, 192, 208, 255}
RED :: Color{191, 97, 106, 255}
GRAY :: Color{59, 66, 82, 255}
BROWN :: Color{209, 135, 112, 255}
GREEN :: Color{163, 190, 140, 255}
WALL_COLOR :: GRAY
WALL_COLOR_VISIBLE :: WHITE
FLOOR_DOT_COLOR :: Color{226, 233, 255, 40}

HEALTHBAR_W :: 10
HEALTHBAR_H :: 3
HEALTHBAR_BG :: Color{0, 0, 0, 130}
HEALTHBAR_COLOR :: RED

EntTags :: i32
SPACIAL: EntTags : 1 << 0
PLAYER: EntTags : SPACIAL | (1 << 1)
CAMERA_CRAWLER: EntTags : (1 << 2)

Ent_Props :: struct {
	tags:       EntTags,
	pos:        v2i,
	symbol:     rune,
	color:      Color,
	pos_offset: v2,
	hp:         int,
	hp_max:     int,
	dir:        v2i,
	// for the linked list of available ents
	next:       Ent,
}

Ecs :: struct {
	using ents: #soa[MAX_ENTS]Ent_Props,
	head:       Ent,
}

init_ents :: proc() {
	s.ecs = Ecs{}
	for i in 0 ..< MAX_ENTS {
		s.next[i] = i + 1
	}
	s.next[MAX_ENTS - 1] = NIL_ENT
	s.head = 0
}

push_ent :: proc(tags: EntTags) -> Ent {
	assert(tags != 0)
	e := s.head
	s.head = s.next[e]
	s.tags[e] = tags
	return e
}

free_ent :: proc(e: Ent) {
	assert(s.ecs.tags[e] != 0)
	s.tags[e] = EntTags{}
	s.next[e] = s.head
	s.head = e

	// if spacial, we need to clear the ent ref from the tile grid
	pos := s.pos[e]
	if ent_at(pos) == e {
		s.tiles[pos.x][pos.y].ent = NIL_ENT
	}
}

Ent_Iterator :: struct {
	tags: EntTags,
	e:    Ent,
}

next_ent :: proc(iter: ^Ent_Iterator) -> (e: Ent, ok: bool) {
	ecs := &s.ecs
	for (iter.e < MAX_ENTS) {
		e = iter.e
		iter.e += 1
		if ((iter.tags & ecs.tags[e]) == iter.tags) {
			ok = true
			return
		}
	}
	return NIL_ENT, false
}

Tile :: struct {
	open:    bool,
	visible: bool,
	seen:    bool,
	ent:     Ent,
}


State :: struct {
	is_loaded:          bool,
	using ecs:          Ecs,
	tiles:              Tiles,
	walls:              Texture2D,
	font:               Font,
	font_path:          string,
	rune_offset:        v2,
	gradient_to_player: [TILES_X][TILES_Y]int,
	camera_target:      v2i,
	camera_rect:        kit.Rect,
	camera_center:      v2,
	camera_offset:      v2,
	camera_snap:        bool,
	player:             Ent,
	camera_crawlers:    [4]Ent,
}

s: ^State // populated by game.odin
rl: kit.Raylib

load :: proc() {
	s = kit.mem(State)
	rl = kit.get_ctx().rl
	s.font = rl.LoadFontEx(FONT, FONT_SIZE_HIRES, nil, 250)
	if s.is_loaded do return
	s.is_loaded = true
	reset()
}

update :: proc() {
	profiler.push("update");defer profiler.pop()

	check_input()

	// TODO fix timestep
	foreach_tile(clear_tile_visibility)
	update_camera()
	player_pos := s.pos[s.player]
	{profiler.push("shadowcast");defer profiler.pop()
		shadow.shadowcast(player_pos, is_wall, reveal)
	}
	for e: Ent = 0; e < MAX_ENTS; e += 1 {
		s.ecs.pos_offset[e] -= s.ecs.pos_offset[e] * 0.7
	}
}

update_crawlers :: proc() {
	for e in s.camera_crawlers {
		for {
			next_p := s.pos[e] + s.dir[e]
			if in_room(next_p) && is_seen(next_p) {
				s.pos[e] = next_p
				continue
			}
			next_p = s.pos[e] + {s.dir[e].x, 0}
			if in_room(next_p) && is_seen(next_p) {
				s.pos[e] = next_p
				continue
			}
			next_p = s.pos[e] + {0, s.dir[e].y}
			if in_room(next_p) && is_seen(next_p) {
				s.pos[e] = next_p
				continue
			}
			break
		}
	}
}

update_camera :: proc() {
	player := s.pos[s.player]
	old_target := s.camera_target

	new_target := s.pos[s.player]
	// if player is next to a room, move target into the room
	if !in_room(new_target) {
		for dir in directions {
			p := new_target + dir
			if in_room(p) {
				new_target = p
				break
			}
		}
	}

	if new_target != old_target {
		s.camera_target = new_target
		for e in s.camera_crawlers {
			s.pos[e] = new_target
		}
		update_crawlers()
	}

	rect := kit.Rect{}
	rect.max = kit.to_v2(new_target)
	rect.min = kit.to_v2(new_target)
	for e in s.camera_crawlers {
		p := s.pos[e]
		if is_floor(p) do rect = kit.expand_rect_to_cover(rect, kit.to_v2(p))
	}

	s.camera_rect = rect

	old_camera_center := s.camera_center
	new_camera_center := kit.center_rect(rect)
	if s.camera_snap {
		s.camera_snap = false
		s.camera_offset = v2{0, 0}
	} else {
		s.camera_offset += old_camera_center - new_camera_center
	}
	s.camera_center = new_camera_center
	s.camera_offset -= s.camera_offset * 0.1
}

clear_tile_visibility :: proc(pos: v2i) {
	x := pos.x
	y := pos.y
	s.tiles[x][y].visible = false
}

foreach_tile :: proc(cb: proc(_: v2i)) {
	for tile_x := 0; tile_x < TILES_X; tile_x += 1 {
		for tile_y := 0; tile_y < TILES_Y; tile_y += 1 {
			cb({tile_x, tile_y})
		}
	}
}

reveal :: proc(pos: v2i) {
	assert(in_bounds(pos))
	x := pos.x
	y := pos.y
	s.tiles[x][y].visible = true
	s.tiles[x][y].seen = true
}

reset :: proc() {
	init_ents()
	reset_dungeon()
	{
		e := push_ent(PLAYER)
		s.player = e
		s.ecs.symbol[e] = '@'
		s.ecs.color[e] = WHITE
		s.hp[e] = 100
		s.hp_max[e] = 100
		pos := get_random_open_pos()
		put_ent(pos, e)
	}
	for dir, i in diagonals {
		e := push_ent(CAMERA_CRAWLER)
		s.camera_crawlers[i] = e
		s.dir[e] = dir
	}

	for num_monsters := 0; num_monsters > 0; num_monsters -= 1 {
		e := push_ent(SPACIAL)
		pos := get_random_open_pos()
		put_ent(pos, e)
		if (rand.float32() < 0.8) {
			// orc
			s.ecs.symbol[e] = 'o'
			s.ecs.color[e] = {63, 127, 63, 255}
			s.hp[e] = 1
			s.hp_max[e] = 1
		} else {
			// troll
			s.ecs.symbol[e] = 'T'
			s.ecs.color[e] = {0, 127, 0, 255}
			s.hp[e] = 2
			s.hp_max[e] = 2
		}
	}
	update_gradient_to_player()

	s.camera_snap = true
}

draw_tile_base_color :: proc(tile_pos: v2i) {
	x := tile_pos.x
	y := tile_pos.y
	visible := s.tiles[x][y].visible
	pos := pos_px(v2i{x, y})
	color := visible ? GRAY : BG
	rl.DrawRectangleV({pos.x, pos.y}, {TILE_SIZE_X, TILE_SIZE_Y}, color)
}

draw_floor_dots_or_walls :: proc(tile_pos: v2i) {
	tile_x := tile_pos.x
	tile_y := tile_pos.y
	if (!is_seen(tile_pos)) do return
	if (is_wall(tile_pos)) {
		color := (s.tiles[tile_x][tile_y].visible) ? WALL_COLOR_VISIBLE : WALL_COLOR
		draw_rune(color, '#', tile_pos, {0, 0})
	} else if (is_open(tile_pos)) {
		pos := pos_px(tile_pos) + DOT_OFFSET
		color := (is_visible(tile_pos)) ? FLOOR_DOT_COLOR : GRAY
		rl.DrawRectangleV({pos.x, pos.y}, DOT_SIZE, color)
	}
}

draw :: proc() {
	rl.ClearBackground(BG)

	camera_pos := s.camera_center + s.camera_offset // TODO should maybe be a camera_rect
	camera_px := pos_px(camera_pos)
	rl.BeginMode2D({
			zoom = VIRTUAL_PX,
			offset = v2{APP_WIDTH / 2, APP_HEIGHT / 2} - VIRTUAL_PX * camera_px,
		})


	foreach_tile(draw_tile_base_color)
	foreach_tile(draw_floor_dots_or_walls)

	spacial := Ent_Iterator{SPACIAL, 0}
	for e in next_ent(&spacial) {
		pos := s.ecs.pos[e]
		if (!is_visible(pos)) do continue
		draw_rune(s.ecs.color[e], s.ecs.symbol[e], pos, s.ecs.pos_offset[e])
		draw_hp(e)
	}

	// draw_grid_overlay(&s.gradient_to_player)

	draw_camera()

	rl.EndMode2D()
	rl.DrawFPS(5, 5)
}

draw_camera :: proc() {
	for e in s.camera_crawlers {
		// TODO

	}

	pos := pos_px(s.camera_rect.min)
	size := pos_px(s.camera_rect.max - s.camera_rect.min + {1, 1})
	rl.DrawRectangleLinesEx({
			x = pos.x,
			y = pos.y,
			width = size.x + 1,
			height = size.y + 1,
		}, 1, RED)

}

get_random_open_pos :: proc() -> v2i {
	for i in 0 ..< 100 {
		pos := get_random_pos()
		if is_open(pos) do return pos
	}
	unreachable()
}

get_random_pos :: proc() -> v2i {
	x := rand.int_max(TILES_X)
	y := rand.int_max(TILES_Y)
	return {x, y}
}

is_wall :: proc(pos: v2i) -> bool {
	if (!in_bounds(pos)) do return false
	x := pos.x
	y := pos.y
	return !s.tiles[x][y].open
}

is_floor :: proc(pos: v2i) -> bool {
	if (!in_bounds(pos)) do return false
	return s.tiles[pos.x][pos.y].open
}

is_visible :: proc(pos: v2i) -> bool {
	if (!in_bounds(pos)) do return false
	x := pos.x
	y := pos.y
	return s.tiles[x][y].visible
}

is_open :: proc(pos: v2i) -> bool {
	if (!in_bounds(pos)) do return false
	x := pos.x
	y := pos.y
	return s.tiles[x][y].open && s.tiles[x][y].ent == NIL_ENT
}

is_seen :: proc(pos: v2i) -> bool {
	if (!in_bounds(pos)) do return false
	x := pos.x
	y := pos.y
	return s.tiles[x][y].seen
}

in_bounds :: proc(pos: v2i) -> bool {
	x := pos.x
	y := pos.y
	return (x >= 0) && (y >= 0) && (x < TILES_X) && (y < TILES_Y)
}

pos_px_v2i :: proc(tp: v2i) -> v2 {
	return pos_px_v2(kit.to_v2(tp))
}

pos_px_v2 :: proc(tp: v2) -> v2 {
	return tp * TILE_SIZE_PX
}

pos_px :: proc {
	pos_px_v2,
	pos_px_v2i,
}

draw_rune :: proc(tint: Color, r: rune, pos: v2i, offset: v2) {
	p := TILE_SIZE_PX * (kit.to_v2(pos) + offset) + s.rune_offset
	rl.DrawTextCodepoint(s.font, r, {p.x, p.y}, FONT_SIZE, tint)
}

reset_dungeon :: proc() {
	// clear all entity references and tile states
	for x := 0; x < TILES_X; x += 1 {
		for y := 0; y < TILES_Y; y += 1 {
			s.tiles[x][y] = Tile {
				ent = NIL_ENT,
			}
		}
	}
	open_rect(2, TILES_X / 2 - 1, 2, TILES_Y / 2 - 1)
	open({1, 5})
	open({5, 1})
}

open_rect :: proc(x0, x1, y0, y1: int) {
	for x in x0 ..= x1 {
		for y in y0 ..= y1 {
			open({x, y})
		}
	}
}

open :: proc(p: v2i) {
	s.tiles[p.x][p.y].open = true

}

check_input :: proc() {
	switch {
	case player_is_dead():
		if int(rl.GetKeyPressed()) > 0 do reset()
	case waiting_for_player_input():
		{
			switch {
			case rl.IsKeyPressed(.S):
				{
					do_monster_turns()
				}
			case rl.IsKeyPressed(.C):
				do_player_action(DIR_SE)
			case rl.IsKeyPressed(.Z):
				do_player_action(DIR_SW)
			case rl.IsKeyPressed(.E):
				do_player_action(DIR_NE)
			case rl.IsKeyPressed(.Q):
				do_player_action(DIR_NW)
			case rl.IsKeyPressed(.W):
				do_player_action(DIR_N)
			case rl.IsKeyPressed(.A):
				do_player_action(DIR_W)
			case rl.IsKeyPressed(.D):
				do_player_action(DIR_E)
			case rl.IsKeyPressed(.X):
				do_player_action(DIR_S)
			case rl.IsKeyPressed(.R):
				reset()
			case rl.IsKeyPressed(.F):
				rl.ToggleFullscreen()
			}
		}
	}
}

player_is_dead :: proc() -> bool {
	return s.hp[s.player] <= 0
}

waiting_for_player_input :: proc() -> bool {
	return !player_is_dead()
}

do_player_action :: proc(dir: v2i) {
	player := s.player
	player_pos := s.pos[player]

	// what's in the target space?
	target_pos := player_pos + dir
	target_ent := ent_at(target_pos)
	if target_ent == NIL_ENT {
		did_move := move_entity(s.player, dir)
		if (did_move) do do_monster_turns()
	} else {
		fmt.println(target_ent, s.tags[target_ent])
		dmg(target_ent, 1)
		do_monster_turns()
	}
}

ent_at :: proc(pos: v2i) -> Ent {
	return s.tiles[pos.x][pos.y].ent
}

move_entity :: proc(e: Ent, dir: v2i) -> bool {
	assert(abs(dir.x) < 2 && abs(dir.y) < 2)
	// TODO should I assert or clamp dir?
	assert(is_spacial(e))
	ecs := &s.ecs
	curr_pos := s.pos[e]
	next_pos := curr_pos + dir
	if (!is_open(next_pos)) do return false

	// update tile
	put_ent(curr_pos, NIL_ENT)
	put_ent(next_pos, e)

	// set offset for animation
	dir_v2 := v2{f32(dir.x), f32(dir.y)}
	s.pos_offset[e] = {0, -STEP_HEIGHT}
	// ecs.pos_offset[e] = v2{0, -STEP_HEIGHT} - dir_v2

	update_gradient_to_player()

	return true
}

put_ent :: proc(pos: v2i, e: Ent) {
	if e != NIL_ENT {
		assert(ent_at(pos) == NIL_ENT)
		s.pos[e] = pos
	}
	s.tiles[pos.x][pos.y].ent = e
}

do_monster_turns :: proc() {
	for e: Ent = 0; e < MAX_ENTS; e += 1 {
		if (e == s.player) do continue
		if !is_spacial(e) do continue

		if can_see_player(e) {
			if is_player_adjacent(e) {
				dmg(s.player, 1)
				continue
			}
			current_p := s.pos[e]
			current_gradient := s.gradient_to_player[current_p.x][current_p.y]
			potential_dirs := sa.Small_Array(8, v2i){}
			for dir in directions {
				p := current_p + dir
				if !is_open(p) do continue
				gradient := s.gradient_to_player[p.x][p.y]
				if gradient < current_gradient {
					sa.append_elem(&potential_dirs, dir)
				}
			}
			if potential_dirs.len > 0 {
				i := rand.int_max(potential_dirs.len)
				move_entity(e, potential_dirs.data[i])
				continue
			}
		}
		move_entity(e, get_rand_dir())
	}
}

is_player_adjacent :: proc(e: Ent) -> bool {
	p := s.pos[e]
	dp := s.pos[s.player] - p
	return abs(dp.x) <= 1 && abs(dp.y) <= 1
}

can_see_player :: proc(e: Ent) -> bool {
	// player vision is symmetric currently, so until we change that, we can rely on the .visible property of the
	// ent's occupied tile
	pos := s.pos[e]
	return is_visible(pos)
}

is_spacial :: proc(e: Ent) -> bool {
	return s.tags[e] & SPACIAL == SPACIAL
}

get_rand_dir :: proc() -> v2i {
	dir := rand.int_max(8)
	return directions[dir]
}

draw_hp :: proc(e: Ent) {
	assert(s.hp_max[e] != 0)
	if s.hp[e] == s.hp_max[e] do return
	px := pos_px(s.pos[e])
	hp_w := f32(s.hp[e]) / f32(s.hp_max[e]) * (HEALTHBAR_W - 2)

	// draw healthbar bg
	rl.DrawRectangleV(px, {HEALTHBAR_W, HEALTHBAR_H}, HEALTHBAR_BG)
	rl.DrawRectangleV(px + {1, 1}, {hp_w, HEALTHBAR_H - 2}, RED)
}

update_gradient_to_player :: proc() {
	player := s.pos[s.player]
	grid := &s.gradient_to_player
	targets := sa.Small_Array(8, v2i){}
	for dir in directions {
		p := player + dir
		if is_open(p) do sa.push(&targets, p)
	} // TODO what if the player is completely surrounded?
	calc_gradient(grid, sa.slice(&targets))
}

calc_gradient :: proc(grid: ^[TILES_X][TILES_Y]int, targets: []v2i) {
	using sa

	// reset the map
	for x in 0 ..< TILES_X {
		for y in 0 ..< TILES_Y {
			grid[x][y] = max(int)
		}
	}
	for pos in targets do grid[pos.x][pos.y] = 0

	curr := Small_Array(1024, v2i){}
	next := Small_Array(1024, v2i){}
	append_elems(&curr, ..targets)
	dist := 1

	for {
		for pos in slice(&curr) {
			for dir in directions {
				pos := pos + dir
				x := pos.x
				y := pos.y
				if dist < grid[x][y] {
					grid[x][y] = dist
					if is_open(pos) do append_elem(&next, pos)
				}
			}
		}
		if next.len == 0 do break
		clear(&curr)
		append_elems(&curr, ..slice(&next))
		clear(&next)
		dist += 1
	}
}

Tile_Pos_Iterator :: struct {
	lower: v2i,
	upper: v2i,
	pos:   v2i,
}

next_tile_pos :: proc(iter: ^Tile_Pos_Iterator) -> (pos: v2i, ok: bool) {
	pos = iter.pos
	ok = pos.y <= iter.upper.y

	iter.pos.x += 1
	if iter.pos.x > iter.upper.x {
		iter.pos.y += 1
		iter.pos.x = iter.lower.x
	}
	return
}

all_tiles_iterator :: proc() -> Tile_Pos_Iterator {
	return {upper = v2i{TILES_X - 1, TILES_Y - 1}}
}

draw_grid_overlay :: proc(grid: ^[TILES_X][TILES_Y]int) {
	for col, x in grid {
		for val, y in col {
			if val == max(int) do continue
			tile := v2i{x, y}
			p := pos_px(tile)
			bytes: [32]u8
			s := strconv.itoa(bytes[:], val)
			rl.DrawText(s, int(p.x), int(p.y), 10, RED)
		}
	}
}

dmg :: proc(e: Ent, dmg: int) {
	s.hp[e] -= dmg
	if s.hp[e] <= 0 do free_ent(e)
}

is_tunnel :: proc(p: v2i) -> bool {
	empty_adjacent_count := 0
	if is_wall(p + DIR_E) && is_wall(p + DIR_W) do return true
	if is_wall(p + DIR_N) && is_wall(p + DIR_S) do return true
	// if is_wall(p + DIR_NE) && is_wall(p + DIR_SW) do return true
	// if is_wall(p + DIR_SE) && is_wall(p + DIR_NW) do return true
	return false
}

in_room :: proc(p: v2i) -> bool {
	return is_floor(p) && !is_tunnel(p)
}
