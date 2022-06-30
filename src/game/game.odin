package roguelike

import "core:fmt"
import "core:math/rand"
import "core:math/linalg"
import sdl "vendor:sdl2"

import "../app"
import "../gfx"

APP_TITLE :: "Roguelike"
APP_WIDTH :: VIRTUAL_W * VIRTUAL_PX
APP_HEIGHT :: VIRTUAL_H * VIRTUAL_PX

VIRTUAL_W :: TILE_SIZE * TILES_X
VIRTUAL_H :: TILE_SIZE * TILES_Y
VIRTUAL_PX :: 2
TILE_SIZE :: 16
TILES_X :: 48
TILES_Y :: 27

TILESHEET_BMP :: #load("colored-transparent.bmp")
TILESHEET_TILES_X :: 49
TILESHEET_TILES_Y :: 22
TILESHEET_GUTTER :: 1
TILESHEET_TOTAL_TILES :: TILESHEET_TILES_X * TILESHEET_TILES_Y

FLOOR_DOT_COLOR :: ColorRGB{90, 90, 90}

PLAYER_DIR_DELAY :: 0.1
DT :: 1.0 / 60
OFFSET_SPEED :: 30 * DT
STEP_HEIGHT :: 0.1

V2 :: [2]f32
Tile_Pos :: [2]int
ColorRGB :: gfx.ColorRGB

State :: struct {
	tilesheet: Tilesheet,
	player_e:  Ent,
	ecs:       Ecs,
	tiles:     Tilemap,
	test_rune: Rune,
}

Tilesheet :: struct {
	texture: gfx.Texture,
	tiles:   [TILESHEET_TOTAL_TILES]gfx.Rect,
}

Tile :: struct {
	open: bool,
}

Tilemap :: [TILES_X][TILES_Y]Tile

update_timer: f32

get_state :: proc() -> ^State {
	return app.get_state(State)
}

load :: proc() {
	state := get_state()
	ents := get_ents()

	gfx.init()
	load_tilesheet()

	reset()
}

update :: proc(dt: f32) {
	state := get_state()

	// animations & physics
	update_timer += dt
	if update_timer < DT do return
	update_timer -= DT

	ents := get_ents()
	spacial := ent_iterator({.Spacial})
	for e in each_ent(&spacial) {
		if (ents[e].pos_offset == {}) do continue
		dist := linalg.length(ents[e].pos_offset)
		step := min(dist, OFFSET_SPEED)
		dir := -ents[e].pos_offset / dist
		ents[e].pos_offset += step * dir
	}
}

draw :: proc() {
	state := get_state()
	ents := get_ents()

	gfx.set_color(gfx.BLACK)
	gfx.clear()
	defer gfx.present()

	gfx.set_view(VIRTUAL_W, VIRTUAL_H)

	// draw floor dots
	ts := &state.tilesheet
	for x in 0 ..< TILES_X {
		for y in 0 ..< TILES_Y {
			pos := V2{auto_cast x, auto_cast y}
			if state.tiles[x][y].open {
				draw_rune(.Period, pos)
			} else {
				draw_rune(.Wall, pos)
			}
		}
	}

	spacial := ent_iterator({.Spacial})
	for e in each_ent(&spacial) {
		draw_rune(ents[e].char, V2{auto_cast ents[e].pos.x, auto_cast ents[e].pos.y} +
			ents[e].pos_offset)
	}

	// draw_rune(state.test_rune, {1, 1})
	draw_num(auto_cast state.test_rune, {2, 1})
}

Rune :: enum {
	Empty,
	Ground_1,
	Ground_2,
	Ground_3,
	Ground_4,
	Grass_1,
	Grass_2,
	Grass_3,
	Road_A0,
	Road_A1,
	Road_A2,
	Road_A3,
	Road_A4,
	Ehh0,
	Ehh1,
	Ehh2,
	Wall,
	Road_0,
	Road_1,
	Road_2,
	Num0 = 868,
	Num1,
	Num2,
	Num3,
	Num4,
	Num5,
	Num6,
	Num7,
	Num8,
	Num9,
	Colon,
	Period,
	Percent,
	Weird_Block,
	Wall_BL,
	Wall_BM,
	Wall_BR,
	Block0,
	Block1,
	Arch,
	Door_Closed,
	Block2,
}

draw_rune :: proc(r: Rune, pos: V2) {
	state := get_state()
	ts := &state.tilesheet
	src := ts.tiles[r]
	dest := gfx.Rect{
		auto_cast (pos.x * TILE_SIZE),
		auto_cast (pos.y * TILE_SIZE),
		auto_cast TILE_SIZE,
		auto_cast TILE_SIZE,
	}
	gfx.img(ts.texture, src, dest)
}

draw_num :: proc(num: int, pos: V2) {
	ones := num % 10
	tens := (num / 10) % 10
	hundreds := (num / 100) % 10
	pos := pos
	draw_digit(hundreds, pos)
	pos.x += 1
	draw_digit(tens, pos)
	pos.x += 1
	draw_digit(ones, pos)
	pos.x += 1
}

draw_digit :: proc(num: int, pos: V2) {
	assert(num < 10)
	switch num {
	case 0:
		draw_rune(.Num0, pos)
	case 1:
		draw_rune(.Num1, pos)
	case 2:
		draw_rune(.Num2, pos)
	case 3:
		draw_rune(.Num3, pos)
	case 4:
		draw_rune(.Num4, pos)
	case 5:
		draw_rune(.Num5, pos)
	case 6:
		draw_rune(.Num6, pos)
	case 7:
		draw_rune(.Num7, pos)
	case 8:
		draw_rune(.Num8, pos)
	case 9:
		draw_rune(.Num9, pos)
	}
}

load_tilesheet :: proc() {
	state := get_state()
	tm := &state.tilesheet
	tm.texture = gfx.load_texture(TILESHEET_BMP)

	tile_x, tile_y: int
	for i in 0 ..< TILESHEET_TOTAL_TILES {
		x := tile_x * (TILE_SIZE + TILESHEET_GUTTER)
		y := tile_y * (TILE_SIZE + TILESHEET_GUTTER)
		tm.tiles[i] = {auto_cast x, auto_cast y, TILE_SIZE, TILE_SIZE}
		tile_x += 1
		if tile_x >= TILESHEET_TILES_X {
			tile_x = 0
			tile_y += 1
		}
	}
}

input :: proc(e: sdl.Event) {
	switch {
	case keydown(e, .S):
		move_player({0, 1})
	case keydown(e, .W):
		move_player({0, -1})
	case keydown(e, .A):
		move_player({-1, 0})
	case keydown(e, .D):
		move_player({1, 0})
	case keydown(e, .R):
		reset()
	}
}

keydown :: proc(e: sdl.Event, scancode: sdl.Scancode) -> bool {
	return e.type == .KEYDOWN && e.key.keysym.scancode == scancode
}

move_player :: proc(dir: V2) {
	state := get_state()
	did_move := move_entity(state.player_e, dir)
	if did_move {
		for e in 0 ..< MAX_ENTS {
			if e == state.player_e do continue
			move_entity(e, rand_dir())
		}
	}
}

move_entity :: proc(e: Ent, dir: V2) -> bool {
	ents := get_ents()
	next_pos := ents[e].pos + {auto_cast dir.x, auto_cast dir.y}
	if !walkable(next_pos) {
		return false
	}
	ents[e].pos = next_pos
	ents[e].pos_offset = -dir
	ents[e].pos_offset += {0, -STEP_HEIGHT}
	return true
}

walkable :: proc(pos: Tile_Pos) -> bool {
	state := get_state()
	return in_bounds(pos) && state.tiles[pos.x][pos.y].open
}

in_bounds :: proc(pos: Tile_Pos) -> bool {
	return pos.x >= 0 && pos.y >= 0 && pos.x < TILES_X && pos.y < TILES_Y
}

rand_dir :: proc() -> V2 {
	dir := rand.int_max(3)
	switch dir {
	case 0:
		return {1, 0}
	case 1:
		return {-1, 0}
	case 2:
		return {0, 1}
	case 3:
		return {0, -1}
	case:
		unreachable()
	}
}

open_rect :: proc(x0, y0, x1, y1: int) {
	assert(in_bounds({x0, y0}))
	assert(in_bounds({x1, y1}))
	for x in x0 ..= x1 {
		for y in y0 ..= y1 {
			open_tile({x, y})
		}
	}
}

open_tile :: proc(pos: Tile_Pos) {
	assert(in_bounds(pos))
	state := get_state()
	state.tiles[pos.x][pos.y].open = true
}

rand_bool :: proc() -> bool {
	return rand.float32() < 0.5
}

reset :: proc() {
	state := get_state()
	ents := get_ents()
	init_ecs()

	state.test_rune = .Num9

	reset_dungeon()

	state.player_e = push_ent({.Player, .Spacial})
	ents[state.player_e].char = .Num0
	ents[state.player_e].pos = get_random_open_pos()

	npc_e := push_ent({.Spacial})
	ents[npc_e].char = .Num1
	ents[npc_e].pos = get_random_open_pos()
}

get_random_open_pos :: proc() -> Tile_Pos {
	state := get_state()
	pos := get_random_pos()
	for !is_open(pos) {
		pos = get_random_pos()
	}
	return pos
}

is_open :: proc(pos: Tile_Pos) -> bool {
	state := get_state()
	return state.tiles[pos.x][pos.y].open
}

get_random_pos :: proc() -> Tile_Pos {
	return {rand_between(1, TILES_X - 1), rand_between(1, TILES_Y - 1)}
}

rand_between :: proc(a, b: int) -> int {
	assert(b > a)
	return a + rand.int_max(b - a)
}
