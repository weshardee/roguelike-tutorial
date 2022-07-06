package game

import "vendor:raylib"
import "core:fmt"
import "../shared"

// here I'll keep a list of game projects and I can sub out which one I'm working on
// import _game "rl2"
import _game "rl"
// import _game "wander"

APP_TITLE :: _game.APP_TITLE
APP_WIDTH :: _game.APP_WIDTH
APP_HEIGHT :: _game.APP_HEIGHT


@(export)
load :: proc() {
	_game.state = shared.get_state(_game.State)
	_game.api = shared.get_api()
	_game.load()
}

@(export)
update :: proc() {
	_game.update()
}
