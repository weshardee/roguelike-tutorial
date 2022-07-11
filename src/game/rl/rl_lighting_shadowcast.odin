package rl

import "core:math"

// https://www.albertford.com/shadowcasting/

update_lighting_shadowcast :: proc() {
	origin := get_player_pos()
	reveal(origin)

	for i in Cardinal {
		quadrant := Quadrant{i, origin}
		first_row := Quad_Row{quadrant, 1, -1, 1}
		scan(&first_row)
	}

	NIL_TILE :: Quad_Tile {
		row = -1,
		col = -1,
	}

	Quad_Row :: struct {
		quadrant:    Quadrant,
		depth:       int,
		start_slope: f32,
		end_slope:   f32,
	}

	next :: proc(row: ^Quad_Row) -> Quad_Row {
		return {row.quadrant, row.depth + 1, row.start_slope, row.end_slope}
	}

	Quad_Row_Iterator :: struct {
		quadrant: Quadrant,
		depth:    int,
		min_col:  int,
		max_col:  int,
		col:      int,
	}

	// round_ties_up and round_ties_down round n to the nearest integer. If n ends in .5, round_ties_up rounds up and round_ties_down rounds down. Note: round_ties_up is not the same as Python’s round. Python’s round will round away from 0, resulting in unwanted behavior for negative numbers.
	round_ties_up :: proc(n: f32) -> f32 {
		return math.floor(n + 0.5)
	}

	round_ties_down :: proc(n: f32) -> f32 {
		return math.ceil(n - 0.5)
	}

	row_tiles :: proc(row: ^Quad_Row) -> Quad_Row_Iterator {
		depth := row.depth
		min_col := round_ties_up(f32(depth) * row.start_slope)
		max_col := round_ties_down(f32(depth) * row.end_slope)
		return {row.quadrant, depth, int(min_col), int(max_col), int(min_col)}
	}

	iter_row_tiles :: proc(iter: ^Quad_Row_Iterator) -> (Quad_Tile, bool) {
		for iter.min_col <= iter.col && iter.col <= iter.max_col {
			col := iter.col
			iter.col += 1
			return {iter.quadrant, iter.depth, col}, true
		}
		return {}, false
	}

	Quad_Tile :: struct {
		quadrant: Quadrant,
		row, col: int,
	}

	Cardinal :: enum {
		north,
		east,
		south,
		west,
	}

	Quadrant :: struct {
		cardinal: Cardinal,
		origin:   Tile_Pos,
	}

	transform :: proc(tile: Quad_Tile) -> Tile_Pos {
		row := tile.row
		col := tile.col
		cardinal := tile.quadrant.cardinal
		origin := tile.quadrant.origin
		if cardinal == .north {
			return {origin.x + col, origin.y - row}
		}
		if cardinal == .south {
			return {origin.x + col, origin.y + row}
		}
		if cardinal == .east {
			return {origin.x + row, origin.y + col}
		}
		if cardinal == .west {
			return {origin.x - row, origin.y + col}
		}
		unreachable()
	}

	quad_reveal :: proc(tile: Quad_Tile) {
		pos := transform(tile)
		reveal(pos)
	}

	quad_is_wall :: proc(tile: Quad_Tile) -> bool {
		pos := transform(tile)
		return is_wall(pos)
	}

	quad_is_floor :: proc(tile: Quad_Tile) -> bool {
		pos := transform(tile)
		return is_floor(pos)
	}

	slope :: proc(tile: Quad_Tile) -> f32 {
		return (2 * f32(tile.col) - 1) / (2 * f32(tile.row))
	}

	is_symmetric :: proc(row: ^Quad_Row, tile: Quad_Tile) -> bool {
		return f32(tile.col) >= (f32(row.depth) * row.start_slope) && f32(tile.col) <= (f32(row.depth) * row.end_slope)
	}

	scan :: proc(row: ^Quad_Row) {
		prev_tile: Quad_Tile = NIL_TILE
		iter := row_tiles(row)
		for tile in iter_row_tiles(&iter) {
			if quad_is_wall(tile) || is_symmetric(row, tile) {
				quad_reveal(tile)
			}
			if prev_tile != NIL_TILE && quad_is_wall(prev_tile) && quad_is_floor(tile) {
				row.start_slope = slope(tile)
			}
			if prev_tile != NIL_TILE && quad_is_floor(prev_tile) && quad_is_wall(tile) {
				next_row := next(row)
				next_row.end_slope = slope(tile)
				scan(&next_row)
			}
			prev_tile = tile
		}
		if quad_is_floor(prev_tile) {
			next_row := next(row)
			scan(&next_row)
		}
	}
}
