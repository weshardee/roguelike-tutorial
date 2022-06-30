package roguelike

import "core:fmt"
import "core:math"
import "core:math/rand"

// MIN_ROOM_SIZE :: 6 // includes walls
// MAX_ROOM_SPLIT_DEPTH :: 3
// MAX_ROOMS :: 256

Room_Card :: struct {
	w, h:  int,
	tiles: string,
}

room_cards := []Room_Card{
	{7, 7, `
#######
#.....#
#.....#
#.....#
#.....#
#.....#
#######`},
}

reset_dungeon :: proc() {
	state := get_state()
	state.tiles = {}

	x, y: int
	for {
		room := room_cards[0]
		add_room(x, y, room)
		x += room.w - 1
		if (x > 10) {
			y += room.h - 1
			x = 0
		}
		if (y > 10) do return
	}
}

add_room :: proc(_x, _y: int, card: Room_Card) {
	x := _x
	y := _y - 1
	for c in card.tiles {
		switch c {
		case '\n':
			{
				x = _x
				y += 1
			}
		case '.':
			{
				open_tile({x, y})
				x += 1
			}
		case '#':
			x += 1
		}
	}
}
