#pragma once
#include "rl_common.c"
#include "rl_reset.c"

void _load() {
  if (state->loaded) {
    UnloadTexture(state->walls);
  } else {
    state->loaded = true;
    state->walls = LoadTexture("src/game/rl/walls.png");
    init_ecs(&state->ecs);
    reset();
  }
}
