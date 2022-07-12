
#include "../shared/shared.c"

// here I'll keep a list of game projects and I can sub out which one I'm
// working on #include _game "rl2"
#include "rl/rl.c"
// #include _game "wander"

void load(App_Context* ctx) {
  if (sizeof(State) > ctx->state.size) {
    Mem old = ctx->state;
    ctx->state = (Mem){malloc(sizeof(State)), sizeof(State)};
    state = (State*)ctx->state.data;
    if (old.data != NULL) {
      unreachable;
      //   memcpy(state, old_state, old_size);
      //   free(old_state);
    }
  }
  _load();
}

void update() { _update(); }
