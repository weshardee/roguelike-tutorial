#pragma once
#include "../../shared/shared.cpp"
#include "raylib.h"

#define APP_TITLE "Roguelike"
#define APP_WIDTH (VIRTUAL_W * VIRTUAL_PX)
#define APP_HEIGHT (VIRTUAL_H * VIRTUAL_PX)

#define VIRTUAL_W (TILE_SIZE_X * TILES_X)
#define VIRTUAL_H (TILE_SIZE_Y * TILES_Y)
#define VIRTUAL_PX 1
#define TILE_SIZE_X 24
#define TILE_SIZE_Y 24
#define TILE_SIZE_X_HALF (TILE_SIZE_X / 2)
#define TILE_SIZE_Y_HALF (TILE_SIZE_Y / 2)
#define MID_TILE ((v2){TILE_SIZE_X_HALF, TILE_SIZE_Y_HALF})
#define TILES_X 20
#define TILES_Y 20
#define TILE_PAD 6
// #define FONT_SIZE (TILE_SIZE_Y - TILE_PAD * 2) * 2
#define FONT_SIZE 24
#define FONT_SIZE_HIRES (FONT_SIZE * 2)

#define PLAYER_DIR_DELAY 0.1f
#define DT (1.0f / 60.0f)
#define OFFSET_SPEED (30 * DT)
#define STEP_HEIGHT 0.1f

static const auto FONT = "src/game/rl/square.ttf";

#define MAX_VIEW_DISTANCE 2
#define VIEW_GRID_CENTER MAX_VIEW_DISTANCE
#define VIEW_GRID_ACROSS (MAX_VIEW_DISTANCE * 2 + 1)

#define Tile_Pos int2

typedef struct {
  int dist;
  Tile_Pos tile;
  bool visible;
  bool seen;
} View_Info;

struct Tile {
  bool open;
  bool visible;
  bool seen;
  int dist_to_player;
  int abs_dist_to_player;
  Tile_Pos dir_to_player;
};

#define Ent int

#define MAX_ENTS 1024

#define Ent int

typedef union {
  int bits;
  struct {
    bool player;
    bool spacial;
  };
} Ent_Tags;

typedef struct {
  Ent_Tags tags[MAX_ENTS];
  int2 pos[MAX_ENTS];
  char rune[MAX_ENTS];
  Color color[MAX_ENTS];
  v2 pos_offset[MAX_ENTS];
  int hp[MAX_ENTS];
  // for the linked list of available ents
  Ent next[MAX_ENTS];
} Ents;

typedef struct {
  Ents ents;
  Ent next;
} Ecs;

void init_ecs(Ecs* ecs) {
  for (Ent e = 0; e < MAX_ENTS; e++) {
    ecs->ents.next[e] = e + 1;
  }
}

Ent push_ent(Ecs* ecs, Ent_Tags tags) {
  Ent e = ecs->next;
  ecs->next = ecs->ents.next[e];
  assert(tags.bits != 0);
  ecs->ents.tags[e] = tags;
  return e;
}

void free_ent(Ecs* ecs, Ent e) {
  assert(ecs->ents.tags[e].bits != 0);
  ecs->ents.tags[e] = {};
  ecs->ents.next[e] = ecs->next;
  ecs->next = e;
}

struct Ent_Iterator {
  Ecs* ecs;
  Ent_Tags tags;
  Ent e;
  bool done;
};

Ent_Iterator ent_iterator(Ecs* ecs, Ent_Tags tags) {
  return (Ent_Iterator){ecs, tags};
}

Ent each(Ent_Iterator* iter) {
  Ents* ents = &iter->ecs->ents;
  while (iter->e < MAX_ENTS) {
    Ent e = iter->e;
    iter->e += 1;
    if ((iter->tags.bits & ents->tags[e].bits) == iter->tags.bits) {
      return e;
    }
  }
  iter->done = true;
  return -1;
}

struct State {
  bool loaded;
  Ent player_e;
  Ecs ecs;
  Tile tiles[TILES_X][TILES_Y];
  Texture2D walls;
  Font font;
  const char* font_path;
  v2 rune_offset;
  View_Info fov[VIEW_GRID_ACROSS][VIEW_GRID_ACROSS];
};

static State* state;
static App_Context* ctx;
// api: ^shared.Platform_API;
static float update_timer;

#define Tile_Pos int2

#define DIR_N ((Tile_Pos){0, -1})
#define DIR_S ((Tile_Pos){0, 1})
#define DIR_E ((Tile_Pos){1, 0})
#define DIR_W ((Tile_Pos){-1, 0})
#define DIR_NW ((Tile_Pos){-1, -1})
#define DIR_NE ((Tile_Pos){1, -1})
#define DIR_SW ((Tile_Pos){-1, 1})
#define DIR_SE ((Tile_Pos){1, 1})

static const Tile_Pos directions[8] = {DIR_NW, DIR_N, DIR_NE, DIR_E,
                                       DIR_SE, DIR_S, DIR_SW, DIR_W};

Tile_Pos get_player_pos() { return state->ecs.ents.pos[state->player_e]; }

void update_found_spaces() {
  for (int x = 0; x < TILES_X; x++) {
    for (int y = 0; y < TILES_Y; y++) {
      state->tiles[x][y].seen |= state->tiles[x][y].visible;
    }
  }
}

bool is_wall(Tile_Pos pos) { return !state->tiles[pos.x][pos.y].open; }

bool is_floor(Tile_Pos pos) { return state->tiles[pos.x][pos.y].open; }

bool is_visible(Tile_Pos pos) { return state->tiles[pos.x][pos.y].visible; }

void reveal(Tile_Pos pos) {
  state->tiles[pos.x][pos.y].visible = true;
  state->tiles[pos.x][pos.y].seen = true;
}

Tile_Pos rand_dir() {
  auto dir = rand() % 4;
  if (dir == 0) return DIR_NE;
  if (dir == 1) return DIR_E;
  if (dir == 2) return DIR_SE;
  if (dir == 3) return DIR_S;
  if (dir == 4) return DIR_SW;
  if (dir == 5) return DIR_W;
  if (dir == 6) return DIR_NW;
  if (dir == 7) return DIR_N;
  unreachable;
}

bool in_bounds(Tile_Pos pos) {
  return pos.x >= 0 && pos.y >= 0 && pos.x < TILES_X && pos.y < TILES_Y;
}

bool walkable(Tile_Pos pos) {
  return in_bounds(pos) && state->tiles[pos.x][pos.y].open;
}

bool move_entity(Ent e, Tile_Pos dir) {
  auto ents = &state->ecs.ents;
  auto next_pos = ents->pos[e] + (Tile_Pos){dir.x, dir.y};
  if (!walkable(next_pos)) {
    return false;
  }
  ents->pos[e] = next_pos;
  ents->pos_offset[e] = v2(0, -STEP_HEIGHT) - (v2)dir;
  return true;
}

void move_player(Tile_Pos dir) {
  auto did_move = move_entity(state->player_e, dir);
  if (did_move) {
    for (Ent e = 0; e < MAX_ENTS; e++) {
      if (e == state->player_e) continue;
      move_entity(e, rand_dir());
    }
  }
}

void open_tile(Tile_Pos pos) {
  assert(in_bounds(pos));
  state->tiles[pos.x][pos.y].open = true;
}

void open_rect(int x0, int y0, int x1, int y1) {
  assert(in_bounds({x0, y0}));
  assert(in_bounds({x1, y1}));
  for (int x = x0; x <= x1; x++) {
    for (int y = y0; y <= y1; y++) {
      open_tile({x, y});
    }
  }
}

bool is_open(Tile_Pos pos) {
  return in_bounds(pos) && state->tiles[pos.x][pos.y].open;
}

Tile_Pos get_random_pos() { return {rand(TILES_X), rand(TILES_Y)}; }

Tile_Pos get_random_open_pos() {
  auto pos = get_random_pos();
  while (!is_open(pos)) {
    pos = get_random_pos();
  }
  return pos;
}

bool is_seen(Tile_Pos pos) {
  return in_bounds(pos) && state->tiles[pos.x][pos.y].seen;
}
