// The initializer module. This launches the application, sets up the window and
// rendering.

const rl = @import("raylib");
// const shared = @import("shared/shared.zig");
// const game_code = @import("game_code");
const game = @import("game.zig");

pub fn main() !void {
    // const ctx = shared.App_Context.init(game.State);
    // populate_api()

    rl.InitWindow(game.APP_WIDTH, game.APP_HEIGHT, game.APP_TITLE);
    // rl.InitWindow(400, 400, "Hello World");
    rl.SetTargetFPS(60);
    rl.SetWindowPosition(0, 0);

    game.load();
    while (!rl.WindowShouldClose()) {
        game.update();
    }
    rl.CloseWindow();
}
