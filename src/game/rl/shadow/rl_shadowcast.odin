package rl_shadowcast

import "core:math/linalg"
import "core:math/bits"
import "core:math"

v2i :: [2]int

// https://www.albertford.com/shadowcasting/

INVALID_TILE :: Tile{bits.I32_MIN, bits.I32_MIN}

Cardinal :: enum {
	north,
	east,
	south,
	west,
}

// round_ties_up && round_ties_down round n to the nearest integer. If n
// ends in .5, round_ties_up rounds up && round_ties_down rounds down.
// Note: round_ties_up is not the same as Python’s round. Zig’s round
// will round away from 0, resulting in unwanted behavior for negative
// numbers.
round_ties_up :: proc(n: f32) -> int {
	return int(math.floor(n + 0.5))
}

round_ties_down :: proc(n: f32) -> int {
	return int(math.ceil(n - 0.5))
}

Quadrant :: struct {
	cardinal:     Cardinal,
	origin:       v2i,
	is_blocking:  proc(_: v2i) -> bool,
	mark_visible: proc(_: v2i),
}

transform :: proc(quadrant: Quadrant, tile: Tile) -> v2i {
	row := tile.row
	col := tile.col
	cardinal := quadrant.cardinal
	origin := quadrant.origin
	x := origin.x
	y := origin.y
	if (cardinal == .north) do return {x + col, y - row}
	if (cardinal == .south) do return {x + col, y + row}
	if (cardinal == .east) do return {x + row, y + col}
	if (cardinal == .west) do return {x - row, y + col}
	unreachable()
}
reveal :: proc(quadrant: Quadrant, tile: Tile) {
	pos := transform(quadrant, tile)
	quadrant.mark_visible(pos)
}
is_wall :: proc(quadrant: Quadrant, tile: Tile) -> bool {
	if tile == INVALID_TILE do return false
	pos := transform(quadrant, tile)
	return quadrant.is_blocking(pos)
}
is_floor :: proc(quadrant: Quadrant, tile: Tile) -> bool {
	if tile == INVALID_TILE do return false
	pos := transform(quadrant, tile)
	return !quadrant.is_blocking(pos)
}
scan :: proc(quadrant: Quadrant, row: Row) {
	prev_tile := INVALID_TILE
	depth := f32(row.depth)
	min_col := round_ties_up(depth * row.start_slope)
	max_col := round_ties_down(depth * row.end_slope)
	next_start_slope := row.start_slope
	for col := min_col; col <= max_col; col += 1 {
		tile := Tile {
			col = col,
			row = row.depth,
		}
		// is_floor :: quadrant.is_floor(tile);
		// is_wall :: quadrant.is_wall(tile);
		if (is_wall(quadrant, tile) || is_symmetric(row, col)) {
			reveal(quadrant, tile)
		}
		if (is_wall(quadrant, prev_tile) && is_floor(quadrant, tile)) {
			// TODO I think I can just move this down && not use prev_tile
			next_start_slope = slope(tile)
		} else if (is_floor(quadrant, prev_tile) && is_wall(quadrant, tile)) {
			next_end_slope := slope(tile)
			next_row := Row {
				depth       = row.depth + 1,
				start_slope = next_start_slope,
				end_slope   = next_end_slope,
			}
			scan(quadrant, next_row)
		}
		prev_tile = tile
	}
	if (is_floor(quadrant, prev_tile)) {
		next_row := Row {
			depth       = row.depth + 1,
			start_slope = next_start_slope,
			end_slope   = row.end_slope,
		}
		scan(quadrant, next_row)
	}
}

Row :: struct {
	depth:       int,
	start_slope: f32,
	end_slope:   f32,
}

Tile :: struct {
	row: int,
	col: int,
}

slope :: proc(tile: Tile) -> f32 {
	return f32(2 * tile.col - 1) / f32(2 * tile.row)
}

is_symmetric :: proc(row: Row, _col: int) -> bool {
	depth := f32(row.depth)
	col := f32(_col)
	return (col >= (depth * row.start_slope) && col <= (depth * row.end_slope))
}

CARDINALS :: []Cardinal{.north, .south, .east, .west}

shadowcast :: proc(
	origin: v2i,
	is_blocking: proc(v: v2i) -> bool,
	mark_visible: proc(v: v2i),
) {
	mark_visible(origin)
	for cardinal in CARDINALS {
		quadrant := Quadrant{cardinal, origin, is_blocking, mark_visible}
		first_row := Row {
			depth       = 1,
			start_slope = -1,
			end_slope   = 1,
		}
		scan(quadrant, first_row)
	}
}
