const std = @import("std");
const linalg = @import("../../linalg.zig");
const v2i = linalg.v2i;

// https://www.albertford.com/shadowcasting/

const Cardinal = enum {
    north,
    east,
    south,
    west,
};

// round_ties_up and round_ties_down round n to the nearest integer. If n
// ends in .5, round_ties_up rounds up and round_ties_down rounds down.
// Note: round_ties_up is not the same as Python’s round. Zig’s round
// will round away from 0, resulting in unwanted behavior for negative
// numbers.
fn round_ties_up(n: f32) i32 {
    return @floatToInt(i32, @floor(n + 0.5));
}
fn round_ties_down(n: f32) i32 {
    return @floatToInt(i32, @ceil(n - 0.5));
}

// fn slope(tile: Tile) f32 {
//   return (2.0 * @intToFloat(f32,tile.col) - 1.0) / (2.0 * @intToFloat(f32,tile.row));
// }

// fn is_symmetric(row: *Row, tile: Tile) bool {
//   return (@intToFloat(f32, tile.col) >= (@intToFloat(f32, row.depth) * row.start_slope)) and
//     (@intToFloat(f32, tile.col) <= (@intToFloat(f32, row.depth) * row.end_slope));
// }

pub fn cast(origin: v2i, is_blocking: fn (v2i) bool, mark_visible: fn (v2i) void) void {
    mark_visible(origin);
    for (std.enums.values(Cardinal)) |cardinal| {
        const quadrant = Quadrant{ .cardinal = cardinal, .origin = origin, .is_blocking = is_blocking, .mark_visible = mark_visible };
        const first_row = Row{ .depth = 1, .start_slope = -1, .end_slope = 1 };
        quadrant.scan(first_row);
    }
}

const Quadrant = struct {
    cardinal: Cardinal,
    origin: v2i,
    is_blocking: fn (v2i) bool,
    mark_visible: fn (v2i) void,
    fn transform(quadrant: Quadrant, tile: Tile) v2i {
        const row = tile.row;
        const col = tile.col;
        const cardinal = quadrant.cardinal;
        const origin = quadrant.origin;
        const x = origin[0];
        const y = origin[1];
        if (cardinal == .north) return v2i{ x + col, y - row };
        if (cardinal == .south) return v2i{ x + col, y + row };
        if (cardinal == .east) return v2i{ x + row, y + col };
        if (cardinal == .west) return v2i{ x - row, y + col };
        unreachable;
    }
    fn reveal(quadrant: Quadrant, tile: Tile) void {
        const pos = quadrant.transform(tile);
        quadrant.mark_visible(pos);
    }
    fn is_wall(quadrant: Quadrant, maybe_tile: ?Tile) bool {
        if (maybe_tile) |tile| {
            const pos = quadrant.transform(tile);
            return quadrant.is_blocking(pos);
        }
        return false;
    }
    fn is_floor(quadrant: Quadrant, maybe_tile: ?Tile) bool {
        if (maybe_tile) |tile| {
            const pos = quadrant.transform(tile);
            return !quadrant.is_blocking(pos);
        }
        return false;
    }
    fn scan(quadrant: Quadrant, row: Row) void {
        var prev_tile: ?Tile = null;
        const depth = @intToFloat(f32, row.depth);
        const min_col = round_ties_up(depth * row.start_slope);
        const max_col = round_ties_down(depth * row.end_slope);
        var next_start_slope = row.start_slope;
        var col = min_col;
        while (col <= max_col) : (col += 1) {
            const tile = Tile{ .col = col, .row = row.depth };
            // const is_floor = quadrant.is_floor(tile);
            // const is_wall = quadrant.is_wall(tile);
            if (quadrant.is_wall(tile) or is_symmetric(row, col)) {
                quadrant.reveal(tile);
            }
            if (quadrant.is_wall(prev_tile) and quadrant.is_floor(tile)) {
                // TODO I think I can just move this down and not use prev_tile
                next_start_slope = slope(tile);
            } else if (quadrant.is_floor(prev_tile) and quadrant.is_wall(tile)) {
                const next_end_slope = slope(tile);
                var next_row = Row{ .depth = row.depth + 1, .start_slope = next_start_slope, .end_slope = next_end_slope };
                quadrant.scan(next_row);
            }
            prev_tile = tile;
        }
        if (quadrant.is_floor(prev_tile)) {
            const next_row = Row{ .depth = row.depth + 1, .start_slope = next_start_slope, .end_slope = row.end_slope };
            quadrant.scan(next_row);
        }
    }
};

const Row = struct {
    depth: i32,
    start_slope: f32,
    end_slope: f32,
};

const Tile = struct {
    row: i32,
    col: i32,
};

fn slope(tile: Tile) f32 {
    return @intToFloat(f32, 2 * tile.col - 1) / @intToFloat(f32, 2 * tile.row);
}

fn is_symmetric(row: Row, _col: i32) bool {
    const depth = @intToFloat(f32, row.depth);
    const col = @intToFloat(f32, _col);
    return (col >= (depth * row.start_slope) and col <= (depth * row.end_slope));
}
