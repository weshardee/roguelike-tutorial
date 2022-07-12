#pragma once
#include "rl_common.c"

#define RL_BG ((Color){46, 52, 64, 255})
#define RL_WHITE ((Color){216, 222, 234, 255})
#define RL_BLACK ((Color){0, 0, 0, 255})
#define RL_BLUE ((Color){129, 161, 193, 255})
#define RL_MAUVE ((Color){180, 142, 173, 255})
#define RL_YELLOW ((Color){235, 203, 139, 255})
#define RL_BRIGHT_BLUE ((Color){136, 192, 208, 255})
#define RL_RED ((Color){191, 97, 106, 255})
#define RL_GRAY ((Color){59, 66, 82, 255})
#define RL_BROWN ((Color){209, 135, 112, 255})
#define RL_GREEN ((Color){163, 190, 140, 255})

#define WALL_COLOR GRAY
#define WALL_COLOR_VISIBLE WHITE
#define FLOOR_DOT_COLOR ((Color){226, 233, 255, 40})

#define DOT_SIZE ((Vector2){TILE_SIZE_X / 4, TILE_SIZE_Y / 4})
#define DOT_OFFSET \
  ((v2){TILE_SIZE_X_HALF - DOT_SIZE.x / 2, TILE_SIZE_Y_HALF - DOT_SIZE.y / 2})

enum Wall_Open_Dir {
  N,
  NE,
  E,
  SE,
  S,
  SW,
  W,
  NW,
};

// Wall_Open_Dirs :: bit_set[Wall_Open_Dir]

enum Drawable_Symbol {
  Player,
  Floor,
  Wall,
};

v2 pos_v2(Tile_Pos tp) {
  return (v2){(float)(tp.x) * TILE_SIZE_X, (float)(tp.y) * TILE_SIZE_Y};
}

void draw_rune(Color tint, char c, Tile_Pos pos, v2 offset) {
  v2 p = v2_add(pos_v2(pos), offset);
  p = v2_add(p, state->rune_offset);
  DrawTextCodepoint(state->font, c, (Vector2){p.x, p.y}, FONT_SIZE, tint);
}

v2 center(Tile_Pos tp) {
  return v2_add(pos_v2(tp), (v2){TILE_SIZE_X_HALF, TILE_SIZE_Y_HALF});
}

void draw() {
  BeginDrawing();
  ClearBackground(RL_BG);

  BeginMode2D((Camera2D){.offset = {}, .zoom = VIRTUAL_PX});

  int2 player_pos = get_player_pos();

  for (int x = 0; x < TILES_X; x++) {
    for (int y = 0; y < TILES_Y; y++) {
      bool visible = state->tiles[x][y].visible;
      v2 pos = pos_v2((int2){x, y});
      Color color = visible ? RL_GRAY : RL_BG;
      DrawRectangleV((Vector2){pos.x, pos.y},
                     (Vector2){TILE_SIZE_X, TILE_SIZE_Y}, color);

      // d := player_pos - {x, y}
      // dirs := nearest_dirs(d.x, d.y)
      // for dir in dirs {
      // end_pos := pos + pos_v2(dir) / 2
      // DrawLineV(pos + MID_TILE, end_pos + MID_TILE, {255, 255, 255,
      // 100})
      // }

      // dir := step_dir({x, y}, player_pos)
      // end_pos := pos + pos_v2(dir) / 2
      // DrawLineV(pos + MID_TILE, end_pos + MID_TILE, {255, 255, 255,
      // 100})
    }
  }

  // draw floor dots
  for (int tile_x = 0; tile_x < TILES_X; tile_x++) {
    for (int tile_y = 0; tile_y < TILES_Y; tile_y++) {
      int2 tile_pos = (Tile_Pos){tile_x, tile_y};
      if (!is_seen(tile_pos)) continue;
      if (is_open(tile_pos)) {
        // draw_rune(FLOOR_DOT_COLOR, '.', tile_pos)
        v2 pos = v2_add(pos_v2(tile_pos), DOT_OFFSET);
        DrawRectangleV((Vector2){pos.x, pos.y}, DOT_SIZE, FLOOR_DOT_COLOR);
      } else {
        Color color = state->tiles[tile_x][tile_y].visible ? WALL_COLOR_VISIBLE
                                                           : WALL_COLOR;
        draw_rune(color, '#', tile_pos, (v2){0, 0});
      }
    }
  }

  Ecs* ecs = &state->ecs;
  Ents* ents = &ecs->ents;
  Ent_Iterator spacial = ent_iterator(ecs, (Ent_Tags){.spacial = true});
  for (Ent e = each(&spacial); !spacial.done; e = each(&spacial)) {
    int2 pos = ents->pos[e];
    if (state->tiles[pos.x][pos.y].visible) {
      draw_rune(ents->color[e], ents->rune[e], pos, (v2){0, 0});
    }
  }
  EndMode2D();
  EndDrawing();
}
