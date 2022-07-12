#pragma once
#include "rl_common.cpp"

// MIN_ROOM_SIZE :: 6 // includes walls
// MAX_ROOM_SPLIT_DEPTH :: 3
// MAX_ROOMS :: 256

struct Room_Card {
  int w, h;
  char tiles[];
};

// static const Room_Card room_cards[] = {
//     { 7,
//      "#######"
//      "#.....#"
//      "#.#.#.#"
//      "...####"
//      "#...#.#"
//      "#.....#"
//      "#######"},
// };

void reset_dungeon() {
  for (int x = 0; x < TILES_X; x++) {
    for (int y = 0; y < TILES_Y; y++) {
      state->tiles[x][y] = {};
    }
  }
  for (int x = 2; x < (TILES_X - 2); x++) {
    for (int y = 2; y < (TILES_Y - 2); y++) {
      state->tiles[x][y].open = true;
    }
  }
  for (int x = (TILES_X / 2 - 2); x < (TILES_X / 2 + 2); x++) {
    for (int y = (TILES_Y / 2 - 2); y < (TILES_Y / 2 + 2); y++) {
      state->tiles[x][y].open = false;
    }
  }
  // x, y: int
  // for {
  // 	room := room_cards[0]
  // 	add_room(x, y, room)
  // 	x += room.w - 1
  // 	if (x > 10) {
  // 		y += room.h - 1
  // 		x = 0
  // 	}
  // 	if (y > 10) do return
  // }
}

// void add_room(int _x, int _y, Room_Card card) {
//   int x = _x;
//   int y = _y - 1;
//   int i = 0;
//   for (int x = 0; x < card.w; x++) {
//     for (int y = 0; y < card.h; y++) {
//       switch (card.tiles[i++]) {
//       case '\n': {
//         x = _x;
//         y += 1;
//         break;
//       }
//       case '.': {
//         open_tile({x, y});
//         x += 1;
//         break;
//       }
//       case '#': x += 1; break;
//       }
//     }
//   }
