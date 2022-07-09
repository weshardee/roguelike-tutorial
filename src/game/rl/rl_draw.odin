package rl

import "../../shared"
import "core:math"
import "core:fmt"

WHITE :: Color{255, 255, 255, 255}
BLACK :: Color{0, 0, 0, 255}
WALL_COLOR :: Color{180, 180, 255, 255}
FLOOR_COLOR := Color{180, 180, 255, 50}

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
	ClearBackground(BLACK)
	defer EndDrawing()
	
	BeginMode2D({offset = {}, zoom = VIRTUAL_PX})
	DrawTextureV(state.walls, {0, 0}, {255, 255, 255, 255})
	defer EndMode2D()

	// draw floor dots
	for tile_x in 0 ..< TILES_X {
		for tile_y in 0 ..< TILES_Y {
			if is_open({tile_x, tile_y}) {
				x := tile_x * TILE_SIZE + TILE_SIZE * 0.5 - 1
				y := tile_y * TILE_SIZE + TILE_SIZE * 0.5 - 1
				w := 2
				h := 2
				// DrawRectangle(x, y, w, h, FLOOR_DOT_COLOR)
			} else {
				// 			is_open_w := is_open({tile_x - 1, tile_y})
				// 			is_open_e := is_open({tile_x + 1, tile_y})
				// 			is_open_n := is_open({tile_x, tile_y - 1})
				// 			is_open_s := is_open({tile_x, tile_y + 1})
				// 			is_open_nw := is_open({tile_x - 1, tile_y - 1})
				// 			is_open_ne := is_open({tile_x + 1, tile_y - 1})
				// 			is_open_sw := is_open({tile_x - 1, tile_y + 1})
				// 			is_open_se := is_open({tile_x + 1, tile_y + 1})

				// 			x0 := tile_x * TILE_SIZE
				// 			y0 := tile_y * TILE_SIZE
				// 			x1 := x0 + TILE_SIZE_HALF
				// 			y1 := y0 + TILE_SIZE_HALF
				// 			x2 := x1 + TILE_SIZE_HALF
				// 			y2 := x2 + TILE_SIZE_HALF

				// 			w: i32 = TILE_SIZE_HALF
				// 			h: i32 = TILE_SIZE_HALF

				// 			gfx.set_color(gfx.rgba(1, 1, 1, 0.07))
				// 			gfx.fill_rect({auto_cast x0, auto_cast y0, TILE_SIZE, TILE_SIZE})
				// 			gfx.set_color(wall_color)

				// 			if is_open_w || is_open_n || is_open_nw {
				// 				switch {
				// 				case is_open_w && is_open_n:
				// 					draw_tile_nw(x0, y0)
				// 				case is_open_w:
				// 					draw_tile_w(x0, y0)
				// 				case is_open_n:
				// 					draw_tile_n(x0, y0)
				// 				case is_open_nw:
				// 					draw_tile_junction_nw(x0, y0)
				// 				}
				// 			}
				// 			if is_open_e || is_open_s || is_open_se {
				// 				switch {
				// 				case is_open_e && is_open_s:
				// 					draw_tile_se(x1, y1)
				// 				case is_open_s:
				// 					draw_tile_s(x1, y1)
				// 				case is_open_e:
				// 					draw_tile_e(x1, y1)
				// 				case is_open_se:
				// 					draw_tile_junction_se(x1, y1)
				// 				}
				// 			}
				// 			if is_open_w || is_open_s || is_open_sw {
				// 				switch {
				// 				case is_open_w && is_open_s:
				// 					draw_tile_sw(x0, y1)
				// 				case is_open_w:
				// 					draw_tile_w(x0, y1)
				// 				case is_open_s:
				// 					draw_tile_s(x0, y1)
				// 				case:
				// 					draw_tile_junction_sw(x0, y1)
				// 				}
				// 			}
				// 			if is_open_e || is_open_n || is_open_ne {
				// 				switch {
				// 				case is_open_n && is_open_e:
				// 					draw_tile_ne(x1, y0)
				// 				case is_open_n:
				// 					draw_tile_n(x1, y0)
				// 				case is_open_e:
				// 					draw_tile_e(x1, y0)
				// 				case:
				// 					draw_tile_junction_ne(x1, y0)
				// 				}
				// 			}
			}
		}
	}

	// spacial := ent_iterator({.Spacial})
	// for e in each_ent(&spacial) {
	// 	draw_rune(ents[e].char, V2{auto_cast ents[e].pos.x, auto_cast ents[e].pos.y} +
	// 		ents[e].pos_offset)
	// }

	// draw_rune(state.test_rune, {1, 1})
	// draw_num(auto_cast state.test_rune, {2, 1})
	// fmt.println("here", state.test_rune)
}

wall_tile :: proc(x, y, sheet_x, sheet_y: int) {
	using api

	source := Rectangle{
		f32(sheet_x * TILE_SIZE_HALF),
		f32(sheet_y * TILE_SIZE_HALF),
		TILE_SIZE_HALF,
		TILE_SIZE_HALF,
	}
	pos := Vector2{f32(x), f32(y)}
	DrawTextureRec(state.walls, source, pos, {})
	// gfx.img(state.walls, src, dest)
}

draw_tile_n :: proc(x, y: int) {
	wall_tile(x, y, 1, 0)
}

draw_tile_ne :: proc(x, y: int) {
	wall_tile(x, y, 2, 0)
}

draw_tile_e :: proc(x, y: int) {
	wall_tile(x, y, 2, 1)
}

draw_tile_se :: proc(x, y: int) {
	wall_tile(x, y, 2, 2)
}

draw_tile_s :: proc(x, y: int) {
	wall_tile(x, y, 1, 2)
}

draw_tile_sw :: proc(x, y: int) {
	wall_tile(x, y, 0, 2)
}

draw_tile_w :: proc(x, y: int) {
	wall_tile(x, y, 0, 1)
}

draw_tile_nw :: proc(x, y: int) {
	wall_tile(x, y, 0, 0)
}

draw_tile_junction_ne :: proc(x, y: int) {
	wall_tile(x, y, 4, 0)
}

draw_tile_junction_nw :: proc(x, y: int) {
	wall_tile(x, y, 3, 0)
}

draw_tile_junction_sw :: proc(x, y: int) {
	wall_tile(x, y, 3, 1)
}

draw_tile_junction_se :: proc(x, y: int) {
	wall_tile(x, y, 4, 1)
}
