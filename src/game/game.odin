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
OFFSET_SPEED :: 10 * DT
STEP_HEIGHT :: 0.3

V2 :: [2]f32
Tile_Pos :: [2]int
ColorRGB :: gfx.ColorRGB

State :: struct {
	tileset:  Tileset,
	player_e: Ent,
	ecs:      Ecs,
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
	init_ecs()

	state.tileset = load_tileset(TILEMAP, 10)

	state.player_e = push_ent({.Player, .Spacial})
	ents[state.player_e].char = '@'
	ents[state.player_e].color = gfx.WHITE

	npc_e := push_ent({.Spacial})
	ents[npc_e].char = '@'
	ents[npc_e].color = gfx.GREEN
	ents[npc_e].pos = {10, 10}
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

	spacial := ent_iterator({.Spacial})
	for e in each_ent(&spacial) {
		gfx.set_texture_color(state.tileset.texture, ents[e].color)
		draw_rune(ents[e].char, V2{auto_cast ents[e].pos.x, auto_cast ents[e].pos.y} +
			ents[e].pos_offset)
	}
}

draw_rune :: proc(r: rune, pos: V2) {
	state := get_state()
	tileset := &state.tileset
	src := state.tileset.m[r]
	dest := gfx.Rect{
		auto_cast (pos.x * TILE_SIZE),
		auto_cast (pos.y * TILE_SIZE),
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
		move_player({0, 1})
	case e.type == .KEYDOWN && e.key.keysym.scancode == .W:
		move_player({0, -1})
	case e.type == .KEYDOWN && e.key.keysym.scancode == .A:
		move_player({-1, 0})
	case e.type == .KEYDOWN && e.key.keysym.scancode == .D:
		move_player({1, 0})
	}
}

move_player :: proc(dir: V2) {
	state := get_state()
	move_entity(state.player_e, dir)
}

move_entity :: proc(e: Ent, dir: V2) {
	ents := get_ents()
	ents[e].pos += {auto_cast dir.x, auto_cast dir.y}
	ents[e].pos_offset = -dir
	ents[e].pos_offset += {0, -STEP_HEIGHT}
}
