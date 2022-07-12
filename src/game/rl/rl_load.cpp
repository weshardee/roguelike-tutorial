#pragma once
#include "rl_common.cpp"
#include "rl_reset.cpp"

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
