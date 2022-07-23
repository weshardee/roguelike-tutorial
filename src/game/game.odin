package game
import "../shared"

// here I'll keep a list of game projects and I can sub out which one I'm
import _game "rl"

// pub const State = _game.State;

APP_TITLE :: _game.APP_TITLE
APP_WIDTH :: _game.APP_WIDTH
APP_HEIGHT :: _game.APP_HEIGHT

@(export)
load :: proc() {
	_game.load()
}

@(export)
update :: proc() {
	_game.update()
}

@(export)
draw :: proc() {
	_game.draw()
}
