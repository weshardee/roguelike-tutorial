package host

// The initializer module. This launches the application, sets up the window and
// rendering.

import "../shared"
import rl "vendor:raylib"
import "../game";

main :: proc() {
    ctx := shared.App_Context{}
    context.user_ptr = &ctx
    populate_api()

    rl.InitWindow(game.APP_WIDTH, game.APP_HEIGHT, game.APP_TITLE);
    rl.SetTargetFPS(60);
    rl.SetWindowPosition(0, 0)

    load();
    for (!rl.WindowShouldClose()) {
        update()
        rl.BeginDrawing()
        draw()
        rl.EndDrawing()
    }
    rl.CloseWindow();
}
