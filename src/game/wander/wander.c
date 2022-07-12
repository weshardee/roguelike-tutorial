package vs

import "core:fmt"
import "../../shared"
import "vendor:raylib"

APP_TITLE :: "Wander"
APP_WIDTH :: 600
APP_HEIGHT :: 480

State :: struct {}

state: ^State
api: ^shared.Host_API

COLOR_BG :: shared.Color{55, 255, 255, 255}
COLOR_TEXT :: shared.Color{200, 200, 200, 255}

init :: proc() {
}

load :: proc() {
}

update :: proc() {
	using api
	BeginDrawing()
	ClearBackground(COLOR_BG)
	DrawText("Congrats! You created your first window!", 190, 200, 20, COLOR_TEXT)
	EndDrawing()
}
