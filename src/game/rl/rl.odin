package rl

import "../../shared"
import "profiler"
import "core:math/linalg"
import "core:math/rand"
import "core:fmt"
import "shadow"

v2 :: linalg.Vector2f32
v2i :: [2]i32

Color :: shared.Color
Texture2D :: shared.Texture2D
Font :: shared.Font

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
DOT_SIZE :: shared.Vector2{TILE_SIZE_X / 4, TILE_SIZE_Y / 4} // TODO test if I can use v2 or v2i
DOT_OFFSET :: v2{TILE_SIZE_X_HALF - DOT_SIZE.x / 2, TILE_SIZE_Y_HALF - DOT_SIZE.y / 2}
FONT_SIZE :: 24
FONT_SIZE_HIRES :: FONT_SIZE * 2
FONT :: "src/game/rl/square.ttf"
STEP_HEIGHT :: 0.1

DIR_N :: v2i{0, -1}
DIR_S :: v2i{0, 1}
DIR_E :: v2i{1, 0}
DIR_W :: v2i{-1, 0}
DIR_NW :: v2i{-1, -1}
DIR_NE :: v2i{1, -1}
DIR_SW :: v2i{-1, 1}
DIR_SE :: v2i{1, 1}

directions :: [8]v2i{DIR_NW, DIR_N, DIR_NE, DIR_E, DIR_SE, DIR_S, DIR_SW, DIR_W}

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
HEALTHBAR_H :: 4
HEALTHBAR_BG :: Color{0,0,0,130}
HEALTHBAR_COLOR :: RED

EntTags :: i32
SPACIAL: EntTags : 1 << 0
PLAYER: EntTags : SPACIAL | (1 << 1)

Ent_Props :: struct {
	tags:       EntTags,
	pos:        v2i,
	symbol:     rune,
	color:      Color,
	pos_offset: v2,
	hp:         i32,
	hp_max:         i32,
	// for the linked list of available ents
	next:       Ent,
}

Ecs :: #soa[MAX_ENTS]Ent_Props

init_ents :: proc() {
	s.ecs = Ecs{}
	for i in 0 ..< MAX_ENTS {
		s.ecs.next[i] = i + 1
	}
	s.ecs.next[MAX_ENTS - 1] = NIL_ENT
}

push_ent :: proc(tags: EntTags) -> Ent {
	assert(tags != 0)
	e := s.ecs_head
	s.ecs_head = s.ecs.next[e]
	s.ecs.tags[e] = tags
	return e
}

free_ent :: proc(e: Ent) {
	if e == s.player_e {
		fmt.println("here")
	}
	assert(s.ecs.tags[e] != 0)
	s.ecs.tags[e] = EntTags{}
	s.ecs.next[e] = s.ecs_head
	s.ecs_head = e

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
	player_e:    Ent,
	using ecs:   Ecs,
	ecs_head:    Ent,
	tiles:       Tiles,
	walls:       Texture2D,
	font:        Font,
	font_path:   string,
	rune_offset: v2,
}

s : ^State // populated by game.odin
rl : shared.Raylib 
// import rl "vendor:raylib"

load :: proc() {
	s = shared.mem(State)     
	rl = shared.get_ctx().rl

	s.font = rl.LoadFontEx(FONT, FONT_SIZE_HIRES, nil, 250)
	fmt.println(s.font)
	reset()
}

update :: proc() {
	profiler.push("update");defer profiler.pop()

	check_input()
	foreach_tile(clear_tile_visibility)
	player_pos := s.ecs.pos[s.player_e]

	{profiler.push("shadowcast");defer profiler.pop()
		shadow.shadowcast(player_pos, is_wall, reveal)
	}
	for e: Ent = 0; e < MAX_ENTS; e += 1 {
		s.ecs.pos_offset[e] -= s.ecs.pos_offset[e] * 0.7
	}
	for e: Ent = 0; e < MAX_ENTS; e += 1 {
		if s.tags[e] & SPACIAL != SPACIAL do continue
		if s.hp[e] <= 0 {
			free_ent(e)
		}
	}
}

clear_tile_visibility :: proc(pos: v2i) {
	x := pos.x
	y := pos.y
	s.tiles[x][y].visible = false
}

foreach_tile :: proc(cb: proc(_: v2i)) {
	for tile_x := 0; tile_x < TILES_X; tile_x += 1 {
		for tile_y := 0; tile_y < TILES_Y; tile_y += 1 {
			cb({i32(tile_x), i32(tile_y)})
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
		s.player_e = e
		s.ecs.symbol[e] = '@'
		s.ecs.color[e] = WHITE
		s.hp[e] = 10
		pos := get_random_open_pos()
		put_ent(pos, e)
	}

	for num_monsters := 10; num_monsters > 0; num_monsters -= 1 {
		e := push_ent(SPACIAL)
		pos := get_random_open_pos()
		put_ent(pos, e)
		if (rand.float32() < 0.8) {
			// orc
			s.ecs.symbol[e] = 'o'
			s.ecs.color[e] = {63, 127, 63, 255}
			s.hp[e] = 1
		} else {
			// troll
			s.ecs.symbol[e] = 'T'
			s.ecs.color[e] = {0, 127, 0, 255}
			s.hp[e] = 2
		}
	}
}

draw_tile_base_color :: proc(tile_pos: v2i) {
	x := tile_pos.x
	y := tile_pos.y
	visible := s.tiles[x][y].visible
	pos := pos_px({i32(x), i32(y)})
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
	rl.BeginMode2D({zoom = VIRTUAL_PX})

	foreach_tile(draw_tile_base_color)
	foreach_tile(draw_floor_dots_or_walls)

	spacial := Ent_Iterator{SPACIAL, 0}
	for e in next_ent(&spacial) {
		pos := s.ecs.pos[e]
		if (!is_visible(pos)) do continue
		draw_rune(s.ecs.color[e], s.ecs.symbol[e], pos, s.ecs.pos_offset[e])
	}

	rl.DrawFPS(5, 5)
	rl.EndMode2D()
}

get_random_open_pos :: proc() -> v2i {
	for i in 0 ..< 100 {
		pos := get_random_pos()
		if is_open(pos) do return pos
	}
	unreachable()
}

get_random_pos :: proc() -> v2i {
	x := i32(rand.int_max(TILES_X))
	y := i32(rand.int_max(TILES_Y))
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

pos_px :: proc(tp: v2i) -> v2 {
	return v2i_to_v2(tp) * TILE_SIZE_PX
}

v2i_to_v2 :: proc(p: v2i) -> v2 {
	x := f32(p.x)
	y := f32(p.y)
	return {x, y}
}

draw_rune :: proc(tint: Color, r: rune, pos: v2i, offset: v2) {
	p := TILE_SIZE_PX * (v2i_to_v2(pos) + offset) + s.rune_offset
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
	for x := 2; x < (TILES_X - 2); x += 1 {
		for y := 2; y < (TILES_Y - 2); y += 1 {
			s.tiles[x][y].open = true
		}
	}
	for x := (TILES_X / 2 - 2); x < (TILES_X / 2 + 2); x += 1 {
		for y := (TILES_Y / 2 - 2); y < (TILES_Y / 2 + 2); y += 1 {
			s.tiles[x][y].open = false
		}
	}
}

check_input :: proc() {
	switch {
	case rl.IsKeyPressed(.S):
		do_monster_turns()
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

do_player_action :: proc(dir: v2i) {
	player_e := s.player_e
	player_pos := s.pos[player_e]

	// what's in the target space?
	target_pos := player_pos + dir
	target_ent := ent_at(target_pos)
	if target_ent == NIL_ENT {
		move_player(dir)
	} else {
		s.hp[target_ent] -= 1
		do_monster_turns()
	}
}

ent_at :: proc(pos: v2i) -> Ent {
	return s.tiles[pos.x][pos.y].ent
}

move_entity :: proc(e: Ent, dir: v2i) -> bool {
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
	ecs.pos_offset[e] = v2{0, -STEP_HEIGHT} - dir_v2

	return true
}

put_ent :: proc(pos: v2i, e: Ent) {
	if e != NIL_ENT {
		assert(ent_at(pos) == NIL_ENT)
		s.pos[e] = pos
	}
	s.tiles[pos.x][pos.y].ent = e
}

move_player :: proc(dir: v2i) {
	did_move := move_entity(s.player_e, dir)
	if (did_move) do do_monster_turns()
}

do_monster_turns :: proc() {
	for e: Ent = 0; e < MAX_ENTS; e += 1 {
		if (e == s.player_e) do continue
		if !is_spacial(e) do continue

		if can_see_player(e) {
			dir := s.pos[s.player_e] - s.pos[e]
			dir.x = clamp(dir.x, -1, 1)
			dir.y = clamp(dir.y, -1, 1)
			move_entity(e, dir)
		} else {
			move_entity(e, get_rand_dir())
		}
	}
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
	switch (dir) {
	case 0:
		return DIR_NE
	case 1:
		return DIR_E
	case 2:
		return DIR_SE
	case 3:
		return DIR_S
	case 4:
		return DIR_SW
	case 5:
		return DIR_W
	case 6:
		return DIR_NW
	case 7:
		return DIR_N
	case:
		unreachable()
	}
}

draw_hp :: proc(e: Ent) {
	assert(s.hp_max[e] != 0)
	px := pos_px(s.pos[e])

	// draw healthbar bg
	rl.DrawRectangleV(px, {HEALTHBAR_W, HEALTHBAR_H}, HEALTHBAR_BG)
}
