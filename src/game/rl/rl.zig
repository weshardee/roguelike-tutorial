const rl = @import("raylib");
const linalg = @import("../../linalg.zig");
const std = @import("std");
const assert = std.debug.assert;
const eql = std.mem.eql;
const zeroes = std.mem.zeroes;
const print = std.debug.print;
const shadow = @import("rl_shadowcast.zig");

var rand = std.rand.DefaultPrng.init(0);

const v2 = linalg.v2;
const v2i = linalg.v2i;

const Color = rl.Color;
const Texture2D = rl.Texture2D;
const Font = rl.Font;

pub const APP_TITLE = "Roguelike";
pub const APP_WIDTH = VIRTUAL_W * VIRTUAL_PX;
pub const APP_HEIGHT = VIRTUAL_H * VIRTUAL_PX;

const VIRTUAL_PX = 2;
const VIRTUAL_W = TILE_SIZE_X * TILES_X;
const VIRTUAL_H = TILE_SIZE_Y * TILES_Y;
const TILE_SIZE_X = 24;
const TILE_SIZE_Y = 24;
const TILES_X = 20;
const TILES_Y = 20;
const TILE_SIZE_X_HALF = TILE_SIZE_X / 2;
const TILE_SIZE_Y_HALF = TILE_SIZE_Y / 2;
const MID_TILE = v2{ TILE_SIZE_X_HALF, TILE_SIZE_Y_HALF };
const Tiles = [TILES_X][TILES_Y]Tile;
const Ent = usize;
const MAX_ENTS = 256;
const DOT_SIZE = rl.Vector2{ .x = TILE_SIZE_X / 4, .y = TILE_SIZE_Y / 4 };
const DOT_OFFSET =
    v2{ TILE_SIZE_X_HALF - DOT_SIZE.x / 2, TILE_SIZE_Y_HALF - DOT_SIZE.y / 2 };
const FONT_SIZE = 24;
const FONT_SIZE_HIRES = FONT_SIZE * 2;
const FONT = "src/game/rl/square.ttf";
const STEP_HEIGHT = 0.1;

const DIR_N = v2i{ 0, -1 };
const DIR_S = v2i{ 0, 1 };
const DIR_E = v2i{ 1, 0 };
const DIR_W = v2i{ -1, 0 };
const DIR_NW = v2i{ -1, -1 };
const DIR_NE = v2i{ 1, -1 };
const DIR_SW = v2i{ -1, 1 };
const DIR_SE = v2i{ 1, 1 };

const directions = [8]v2i{ DIR_NW, DIR_N, DIR_NE, DIR_E, DIR_SE, DIR_S, DIR_SW, DIR_W };

const BG = Color{ .r = 46, .g = 52, .b = 64, .a = 255 };
const WHITE = Color{ .r = 216, .g = 222, .b = 234, .a = 255 };
const BLACK = Color{ .r = 0, .g = 0, .b = 0, .a = 255 };
const BLUE = Color{ .r = 129, .g = 161, .b = 193, .a = 255 };
const MAUVE = Color{ .r = 180, .g = 142, .b = 173, .a = 255 };
const YELLOW = Color{ .r = 235, .g = 203, .b = 139, .a = 255 };
const BRIGHT_BLUE = Color{ .r = 136, .g = 192, .b = 208, .a = 255 };
const RED = Color{ .r = 191, .g = 97, .b = 106, .a = 255 };
const GRAY = Color{ .r = 59, .g = 66, .b = 82, .a = 255 };
const BROWN = Color{ .r = 209, .g = 135, .b = 112, .a = 255 };
const GREEN = Color{ .r = 163, .g = 190, .b = 140, .a = 255 };
const WALL_COLOR = GRAY;
const WALL_COLOR_VISIBLE = WHITE;
const FLOOR_DOT_COLOR = Color{ .r = 226, .g = 233, .b = 255, .a = 40 };

const EntTags = i32;
const SPACIAL = 1 << 0;
const PLAYER = SPACIAL | (1 << 1);

const Ecs = struct {
    // components
    tags: [MAX_ENTS]EntTags,
    pos: [MAX_ENTS]v2i,
    rune: [MAX_ENTS]u8,
    color: [MAX_ENTS]Color,
    pos_offset: [MAX_ENTS]v2,
    hp: [MAX_ENTS]i32,
    // for the linked list of available ents
    next: [MAX_ENTS]Ent = undefined,
    head: Ent = 0,

    pub fn init() Ecs {
        var ecs = std.mem.zeroInit(Ecs, .{});
        for (ecs.next) |*next, i| {
            next.* = i + 1;
        }
        return ecs;
    }
    pub fn push(ecs: *Ecs, tags: EntTags) Ent {
        const e: Ent = ecs.head;
        ecs.head = ecs.next[e];
        ecs.tags[e] = tags;
        return e;
    }
    pub fn free(ecs: *Ecs, e: Ent) void {
        assert(ecs.ents.tags[e].bits != 0);
        ecs.tags[e] = EntTags.empty();
        ecs.next[e] = ecs.first_free;
        ecs.first_free = e;
    }
    pub fn iter(ecs: *Ecs, tags: EntTags) Ecs_Iterator {
        return Ecs_Iterator{ .ecs = ecs, .tags = tags };
    }
};

const Ecs_Iterator = struct {
    ecs: *Ecs,
    tags: EntTags,
    e: Ent = 0,

    pub fn next(self: *Ecs_Iterator) ?Ent {
        const ecs = self.ecs;
        while (self.e < MAX_ENTS) {
            const e = self.e;
            self.e += 1;
            if ((self.tags & ecs.tags[e]) == self.tags) {
                return e;
            }
        }
        return null;
    }
};

const Tile = struct {
    open: bool,
    visible: bool,
    seen: bool,
    dist_to_player: i32,
    abs_dist_to_player: i32,
    dir_to_player: v2i,
};

pub const State = struct {
    player_e: Ent = 0,
    ecs: Ecs = Ecs.init(),
    tiles: Tiles = zeroes(Tiles),
    walls: Texture2D = undefined,
    font: Font = undefined,
    font_path: *const [:0]u8 = undefined,
    rune_offset: v2 = v2{ 0, 0 },
};

var state = State{};

pub fn load() void {
    state.font = rl.LoadFontEx(FONT, FONT_SIZE_HIRES, null, 250);
    reset();
}

pub fn update() void {
    check_input();

    // reset visibility
    foreach_tile(clear_tile_visibility);

    // reveal the spot the player is on
    // const player_pos = state.ecs.pos[state.player_e];
    const player_pos = state.ecs.pos[state.player_e];
    reveal(player_pos);
    shadow.cast(
        player_pos,
        is_wall,
        reveal,
    );
    draw();
}

fn clear_tile_visibility(pos: v2i) void {
    const x = @intCast(usize, pos[0]);
    const y = @intCast(usize, pos[1]);
    state.tiles[x][y].visible = false;
}

fn foreach_tile(callback: fn (tile_pos: v2i) void) void {
    var tile_x: i32 = 0;
    while (tile_x < TILES_X) : (tile_x += 1) {
        var tile_y: i32 = 0;
        while (tile_y < TILES_Y) : (tile_y += 1) {
            callback(.{ tile_x, tile_y });
        }
    }
}

fn reveal(pos: v2i) void {
    assert(in_bounds(pos));
    const x = @intCast(usize, pos[0]);
    const y = @intCast(usize, pos[1]);
    state.tiles[x][y].visible = true;
    state.tiles[x][y].seen = true;
}

fn reset() void {
    state.ecs = Ecs.init();
    reset_dungeon();

    var ecs = &state.ecs;
    state.player_e = ecs.push(PLAYER);
    ecs.rune[state.player_e] = '@';
    ecs.pos[state.player_e] = get_random_open_pos();
    ecs.color[state.player_e] = WHITE;

    var npc_e = ecs.push(SPACIAL);
    ecs.rune[npc_e] = 'N';
    ecs.pos[npc_e] = get_random_open_pos();
    ecs.color[npc_e] = WHITE;
}

fn draw() void {
    rl.BeginDrawing();
    defer rl.EndDrawing();
    rl.ClearBackground(BG);

    rl.BeginMode2D(.{ .offset = .{ .x = 0, .y = 0 }, .zoom = VIRTUAL_PX, .target = .{ .x = 0, .y = 0 }, .rotation = 0 });

    var x: usize = 0;
    while (x < TILES_X) : (x += 1) {
        var y: usize = 0;
        while (y < TILES_Y) : (y += 1) {
            var visible = state.tiles[x][y].visible;
            var pos = pos_px(.{ @intCast(i32, x), @intCast(i32, y) });
            var color = if (visible) GRAY else BG;
            rl.DrawRectangleV(.{ .x = pos[0], .y = pos[1] }, .{ .x = TILE_SIZE_X, .y = TILE_SIZE_Y }, color);
        }
    }

    // draw floor dots
    var tile_x: usize = 0;
    while (tile_x < TILES_X) : (tile_x += 1) {
        var tile_y: usize = 0;
        while (tile_y < TILES_Y) : (tile_y += 1) {
            var tile_pos = v2i{ @intCast(i32, tile_x), @intCast(i32, tile_y) };
            if (!is_seen(tile_pos)) continue;
            if (is_open(tile_pos)) {
                var pos = pos_px(tile_pos) + DOT_OFFSET;
                rl.DrawRectangleV(.{ .x = pos[0], .y = pos[1] }, DOT_SIZE, FLOOR_DOT_COLOR);
            } else {
                var color = if (state.tiles[tile_x][tile_y].visible) WALL_COLOR_VISIBLE else WALL_COLOR;
                draw_rune(color, '#', tile_pos, .{ 0, 0 });
            }
        }
    }

    const ecs = &state.ecs;
    var spacial = ecs.iter(SPACIAL);
    while (spacial.next()) |e| {
        var pos = ecs.pos[e];
        if (!is_visible(pos)) continue;
        draw_rune(ecs.color[e], ecs.rune[e], pos, ecs.pos_offset[e]);
    }
    rl.EndMode2D();
}

fn get_random_open_pos() v2i {
    var pos = get_random_pos();
    while (!is_open(pos)) {
        pos = get_random_pos();
    }
    return pos;
}

fn get_random_pos() v2i {
    var x = @mod(rand.random().int(i32), TILES_X);
    var y = @mod(rand.random().int(i32), TILES_Y);
    return .{ x, y };
}

fn is_wall(pos: v2i) bool {
    if (!in_bounds(pos)) return false;
    var x = @intCast(usize, pos[0]);
    var y = @intCast(usize, pos[1]);
    return !state.tiles[x][y].open;
}

fn is_floor(pos: v2i) bool {
    if (!in_bounds(pos)) return false;
    return state.tiles[pos.x][pos.y].open;
}

fn is_visible(pos: v2i) bool {
    if (!in_bounds(pos)) return false;
    var x = @intCast(usize, pos[0]);
    var y = @intCast(usize, pos[1]);
    return state.tiles[x][y].visible;
}

fn is_open(pos: v2i) bool {
    if (!in_bounds(pos)) return false;
    var x = @intCast(usize, pos[0]);
    var y = @intCast(usize, pos[1]);
    return state.tiles[x][y].open;
}

fn is_seen(pos: v2i) bool {
    if (!in_bounds(pos)) return false;
    var x = @intCast(usize, pos[0]);
    var y = @intCast(usize, pos[1]);
    return state.tiles[x][y].seen;
}

fn in_bounds(pos: v2i) bool {
    const x = pos[0];
    const y = pos[1];
    return (x >= 0) and (y >= 0) and (x < TILES_X) and (y < TILES_Y);
}

fn pos_px(tp: v2i) v2 {
    const x = @intToFloat(f32, tp[0]) * TILE_SIZE_X;
    const y = @intToFloat(f32, tp[1]) * TILE_SIZE_Y;
    return .{ x, y };
}

fn draw_rune(tint: Color, rune: u8, pos: v2i, offset: v2) void {
    const p = pos_px(pos) + offset + state.rune_offset;
    rl.DrawTextCodepoint(state.font, rune, .{ .x = p[0], .y = p[1] }, FONT_SIZE, tint);
}

fn reset_dungeon() void {
    var x: usize = 0;
    while (x < TILES_X) : (x += 1) {
        var y: usize = 0;
        while (y < TILES_Y) : (y += 1) {
            state.tiles[x][y] = std.mem.zeroInit(Tile, .{});
        }
    }
    x = 2;
    while (x < (TILES_X - 2)) : (x += 1) {
        var y: usize = 2;
        while (y < (TILES_Y - 2)) : (y += 1) {
            state.tiles[x][y].open = true;
        }
    }
    x = (TILES_X / 2 - 2);
    while (x < (TILES_X / 2 + 2)) : (x += 1) {
        var y: usize = (TILES_Y / 2 - 2);
        while (y < (TILES_Y / 2 + 2)) : (y += 1) {
            state.tiles[x][y].open = false;
        }
    }
}

fn check_input() void {
    if (rl.IsKeyPressed(.KEY_S)) return move_player(.{ 0, 0 });
    if (rl.IsKeyPressed(.KEY_C)) return move_player(DIR_SE);
    if (rl.IsKeyPressed(.KEY_Z)) return move_player(DIR_SW);
    if (rl.IsKeyPressed(.KEY_E)) return move_player(DIR_NE);
    if (rl.IsKeyPressed(.KEY_Q)) return move_player(DIR_NW);
    if (rl.IsKeyPressed(.KEY_W)) return move_player(DIR_N);
    if (rl.IsKeyPressed(.KEY_A)) return move_player(DIR_W);
    if (rl.IsKeyPressed(.KEY_D)) return move_player(DIR_E);
    if (rl.IsKeyPressed(.KEY_X)) return move_player(DIR_S);
    if (rl.IsKeyPressed(.KEY_R)) return reset();
    if (rl.IsKeyPressed(.KEY_F)) return rl.ToggleFullscreen();
}

fn move_entity(e: Ent, dir: v2i) bool {
    const ecs = &state.ecs;
    const next_pos = ecs.pos[e] + dir;
    if (!is_open(next_pos)) return false;
    ecs.pos[e] = next_pos;
    const dir_v2 = v2{
        @intToFloat(f32, dir[0]),
        @intToFloat(f32, dir[1]),
    };
    ecs.pos_offset[e] = v2{ 0, -STEP_HEIGHT } - dir_v2;
    return true;
}

fn move_player(dir: v2i) void {
    const did_move = move_entity(state.player_e, dir);
    if (!did_move) return;
    var e: Ent = 0;
    while (e < MAX_ENTS) : (e += 1) {
        if (e == state.player_e) continue;
        _ = move_entity(e, get_rand_dir());
    }
}

fn get_rand_dir() v2i {
    const dir: i32 = @mod(rand.random().int(i32), 8);
    switch (dir) {
        0 => return DIR_NE,
        1 => return DIR_E,
        2 => return DIR_SE,
        3 => return DIR_S,
        4 => return DIR_SW,
        5 => return DIR_W,
        6 => return DIR_NW,
        7 => return DIR_N,
        else => unreachable,
    }
}
