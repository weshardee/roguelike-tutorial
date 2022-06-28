package roguelike

import "core:fmt"
import "core:math/linalg"
import sdl "vendor:sdl2"

import "../app"
import "../gfx"

APP_TITLE :: "Roguelike"
APP_WIDTH :: VIRTUAL_W * VIRTUAL_PX
APP_HEIGHT :: VIRTUAL_H * VIRTUAL_PX

VIRTUAL_W :: TILE_SIZE * TILES_X
VIRTUAL_H :: TILE_SIZE * TILES_Y
VIRTUAL_PX :: 4
TILE_SIZE :: 5
TILES_X :: 48
TILES_Y :: 27
TILEMAP :: #load("dejavu10x10_gs_tc.png")

PLAYER_DIR_DELAY :: 0.1
DT :: 1.0 / 60
STEP_SPEED :: 30 * DT

V2 :: [2]f32
Tile_Pos :: [2]int

State :: struct {
	tileset:                  Tileset,
	player_e:                 Ent,
	player_pending_dir:       Tile_Pos,
	player_pending_dir_delay: f32,
	ecs:                      Ecs,
}

Tileset :: struct {
	tilesize: int,
	texture:  gfx.Texture,
	m:        map[rune]gfx.Rect,
}

update_timer: f32

get_state :: proc() -> ^State {
	return app.get_state(State)
}

load :: proc() {
	state := get_state()
	ents := get_ents()

	gfx.init()

	state.tileset = load_tileset(TILEMAP, 10)

	state.player_e = push_ent({.Player, .Runed})
	ents[state.player_e].char = '@'
}

update :: proc(dt: f32) {
	state := get_state()
	if state.player_pending_dir_delay > 0 {
		state.player_pending_dir_delay -= dt
		if state.player_pending_dir_delay <= 0 {
			do_player_movement()
		}
	}

	// animations & physics
	update_timer += dt
	if update_timer < DT do return
	update_timer -= DT

	ents := get_ents()
	runed := ent_iterator({.Runed})
	for e in each_ent(&runed) {
		if (ents[e].pos_offset == {}) do continue
		dist := linalg.length(ents[e].pos_offset)
		step := min(dist, STEP_SPEED)
		dir := -ents[e].pos_offset / dist
		ents[e].pos_offset += step * dir
	}
}

draw :: proc() {
	state := get_state()
	ents := get_ents()

	gfx.clear()
	defer gfx.present()

	gfx.set_view(VIRTUAL_W, VIRTUAL_H)

	runed := ent_iterator({.Runed})
	for e in each_ent(&runed) {
		draw_rune(ents[e].char, auto_cast ents[e].pos.x +
			ents[e].pos_offset.x, auto_cast ents[e].pos.y + ents[e].pos_offset.y)
	}
}

draw_rune :: proc(r: rune, x: f32, y: f32) {
	// TODO add color
	state := get_state()
	tileset := &state.tileset
	src := state.tileset.m[r]
	dest := gfx.Rect{
		auto_cast (x * TILE_SIZE),
		auto_cast (y * TILE_SIZE),
		auto_cast TILE_SIZE,
		auto_cast TILE_SIZE,
	}
	gfx.img(tileset.texture, src, dest)
}

// right now, I'm using the image provided by the tutorial
CHARMAP :: []string{
	"!\"#$%&'()*+,-./0123456789:;<=>?",
	"@[\\]^_{|}~░▒▓",
	"",
	"ABCDEFGHIJKLMNOPQRSTUVWXYZ",
	"abcdefghijklmnopqrstuvwxyz",
}

load_tileset :: proc(data: []byte, size: int) -> Tileset {
	texture := gfx.load_texture(data)
	m := make(map[rune]gfx.Rect)
	charmap := CHARMAP
	for _y in 0 ..< len(charmap) {
		y := _y * size
		x: int
		for r in charmap[_y] {
			m[r] = {auto_cast x, auto_cast y, auto_cast size, auto_cast size}
			x += size
		}
	}
	return Tileset{tilesize = size, texture = texture, m = m}
}

input :: proc(e: sdl.Event) {
	switch {
	case e.type == .KEYDOWN && e.key.keysym.scancode == .S:
		queue_player_dir({0, 1})
	case e.type == .KEYDOWN && e.key.keysym.scancode == .W:
		queue_player_dir({0, -1})
	case e.type == .KEYDOWN && e.key.keysym.scancode == .A:
		queue_player_dir({-1, 0})
	case e.type == .KEYDOWN && e.key.keysym.scancode == .D:
		queue_player_dir({1, 0})
	case (e.type == .KEYUP && e.key.keysym.scancode == .S) | (e.type == .KEYUP && e.key.keysym.scancode == .W) | (e.type == .KEYUP && e.key.keysym.scancode == .A) | (e.type == .KEYUP && e.key.keysym.scancode == .D):
	// do_player_movement()
	}
}

// we debounce player movement to help with diagonal moves
// this way, we allow for the small delta in time between the player pressing each direction key
queue_player_dir :: proc(dir: Tile_Pos) {
	state := get_state()
	state.player_pending_dir += dir
	if state.player_pending_dir_delay == 0 {
		state.player_pending_dir_delay = PLAYER_DIR_DELAY
	} else {
		do_player_movement()
	}
}

do_player_movement :: proc() {
	state := get_state()
	move_entity(state.player_e, state.player_pending_dir)
	state.player_pending_dir = {}
	state.player_pending_dir_delay = 0
}

move_entity :: proc(e: Ent, dir: Tile_Pos) {
	ents := get_ents()
	ents[e].pos += dir
	ents[e].pos_offset -= V2{auto_cast dir.x, auto_cast dir.y}
}
