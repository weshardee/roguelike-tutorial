// The initializer module. This launches the application, sets up the window and
// rendering.

#include "../shared/shared.c"
#include "raylib.h"
// #include "game_code"
#include "../game/game.c"

int main(void) {
  App_Context ctx = {};
  // populate_api()

  InitWindow(APP_WIDTH, APP_HEIGHT, APP_TITLE);
  SetTargetFPS(60);
  SetWindowPosition(0, 0);

  load(&ctx);
  while (!WindowShouldClose()) {
    update();
  }
  CloseWindow();
}
