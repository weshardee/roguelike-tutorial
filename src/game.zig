const std = @import("std");
const rl = @import("raylib");

// here I'll keep a list of game projects and I can sub out which one I'm
const _game = @import("game/rl/rl.zig");

const assert = std.debug.assert;
pub const State = _game.State;

pub const APP_TITLE = _game.APP_TITLE;
pub const APP_WIDTH = _game.APP_WIDTH;
pub const APP_HEIGHT = _game.APP_HEIGHT;

pub fn load() void {
    _game.load();
}

pub fn update() void {
    _game.update();
}
