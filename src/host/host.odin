package host

// The initializer module. This launches the application, sets up the window and rendering.

import "vendor:raylib"

import "../shared"
import "game_code"

main :: proc() {
	using raylib

	ctx := new(shared.App_Context)
	context.user_ptr = ctx
	populate_api()

	InitWindow(game_code.APP_WIDTH, game_code.APP_HEIGHT, game_code.APP_TITLE)
	SetTargetFPS(60)
	SetWindowPosition(0, 0)

	game_code.load()
	for !WindowShouldClose() {
		game_code.update()
	}
	CloseWindow()
}
