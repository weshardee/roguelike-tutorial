#pragma once
#include "rl_common.cpp"
#include "rl_dungeon_gen.cpp"

void reset() {
  init_ecs(&state->ecs);
  Ecs* ecs = &state->ecs;
  Ents* ents = &state->ecs.ents;
  reset_dungeon();

  state->player_e = push_ent(ecs, {.player = true, .spacial = true});
  ents->rune[state->player_e] = '@';
  ents->pos[state->player_e] = get_random_open_pos();
  ents->color[state->player_e] = WHITE;

  auto npc_e = push_ent(ecs, {.spacial = true});
  ents->rune[npc_e] = 'N';
  ents->pos[npc_e] = get_random_open_pos();
  ents->color[npc_e] = WHITE;
}
