package rl

import "../../shared"
import "core:math"
import "core:math/linalg"
import "core:fmt"

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

DOT_SIZE :: TILE_SIZE_Y * 0.25
DOT_SIZE_V2 :: V2{DOT_SIZE, DOT_SIZE}
DOT_OFFSET :: V2{TILE_SIZE_X_HALF - DOT_SIZE / 2, TILE_SIZE_Y_HALF - DOT_SIZE / 2}


Wall_Open_Dir :: enum {
	N,
	NE,
	E,
	SE,
	S,
	SW,
	W,
	NW,
}

Wall_Open_Dirs :: bit_set[Wall_Open_Dir]

draw :: proc() {
	using api
	using state.ecs

	BeginDrawing()
	ClearBackground(BG)
	defer EndDrawing()

	BeginMode2D({offset = {}, zoom = VIRTUAL_PX})
	defer EndMode2D()

	player_pos := state.ecs.ents[state.player_e].pos

	for x in 0 ..< TILES_X {
		for y in 0 ..< TILES_Y {
			visible := state.tiles[x][y].visible
			pos := pos_v2({x, y})
			color := visible ? GRAY : BG

			DrawRectangleV(pos, {TILE_SIZE_X, TILE_SIZE_Y}, color)

			// d := player_pos - {x, y}
			// dirs := nearest_dirs(d.x, d.y)
			// for dir in dirs {
			// end_pos := pos + pos_v2(dir) / 2
			// DrawLineV(pos + MID_TILE, end_pos + MID_TILE, {255, 255, 255, 100})
			// }

			// dir := step_dir({x, y}, player_pos)
			// end_pos := pos + pos_v2(dir) / 2
			// DrawLineV(pos + MID_TILE, end_pos + MID_TILE, {255, 255, 255, 100})
		}
	}

	// draw floor dots
	for tile_x in 0 ..< TILES_X {
		for tile_y in 0 ..< TILES_Y {
			tile_pos := Tile_Pos{tile_x, tile_y}
			if !is_seen(tile_pos) do continue
			if is_open(tile_pos) {
				// draw_rune(FLOOR_DOT_COLOR, '.', tile_pos)
				pos := pos_v2(tile_pos) + DOT_OFFSET
				DrawRectangleV(pos, DOT_SIZE_V2, FLOOR_DOT_COLOR)
			} else {
				color := state.tiles[tile_x][tile_y].visible ? WALL_COLOR_VISIBLE : WALL_COLOR
				draw_rune(color, '#', tile_pos)
			}
		}
	}


	spacial := ent_iterator({.Spacial})
	for e in each_ent(&spacial) {
		pos := ents[e].pos
		if state.tiles[pos.x][pos.y].visible {
			draw_rune(ents[e].color, ents[e].char, pos)
		}
	}
}

Drawable_Symbol :: enum {
	Player,
	Floor,
	Wall,
}

draw_rune :: proc(c: Color, r: rune, pos: Tile_Pos, offset: V2 = {}) {
	pos := pos_v2(pos) + offset
	pos += state.rune_offset
	api.DrawTextCodepoint(state.font, FONT_SIZE, r, pos, c)
}

pos_v2 :: proc(tp: Tile_Pos) -> V2 {
	return {f32(tp.x) * TILE_SIZE_X, f32(tp.y) * TILE_SIZE_Y}
}

center :: proc(tp: Tile_Pos) -> V2 {
	return pos_v2(tp) + {TILE_SIZE_X_HALF, TILE_SIZE_Y_HALF}
}
