#pragma once
#include "rl_common.c"
#include "rl_draw.c"
#include "rl_reset.c"
#include "rl_shadowcast.c"

void check_input() {
  if (IsKeyPressed(KEY_S)) return move_player((int2){0, 0});
  if (IsKeyPressed(KEY_C)) return move_player(DIR_SE);
  if (IsKeyPressed(KEY_Z)) return move_player(DIR_SW);
  if (IsKeyPressed(KEY_E)) return move_player(DIR_NE);
  if (IsKeyPressed(KEY_Q)) return move_player(DIR_NW);
  if (IsKeyPressed(KEY_W)) return move_player(DIR_N);
  if (IsKeyPressed(KEY_A)) return move_player(DIR_W);
  if (IsKeyPressed(KEY_D)) return move_player(DIR_E);
  if (IsKeyPressed(KEY_X)) return move_player(DIR_S);
  if (IsKeyPressed(KEY_R)) return reset();
  if (IsKeyPressed(KEY_F)) return ToggleFullscreen();
}

void update_fixed() {
  // reset visibility
  for (int tile_x = 0; tile_x < TILES_X; tile_x++) {
    for (int tile_y = 0; tile_y < TILES_Y; tile_y++) {
      state->tiles[tile_x][tile_y].visible = false;
    }
  }

  Tile_Pos player_pos = state->ecs.ents.pos[state->player_e];

  // calc abs dist to player for all spaces -- direction gradient for
  // monster movement
  for (int x = 0; x < TILES_X; x++) {
    for (int y = 0; y < TILES_Y; y++) {
      state->tiles[x][y].dist_to_player = -1;
      state->tiles[x][y].abs_dist_to_player =
          max(abs(x - player_pos.x), abs(y - player_pos.y));
      state->tiles[x][y].dir_to_player = int2_add((int2){x, y}, player_pos);
    }
  }

  state->tiles[player_pos.x][player_pos.y].visible = true;

  // minimally, see all adjacent tiles
  for (int i = 0; i < len(directions); i++) {
    Tile_Pos dir = directions[i];
    Tile_Pos pos = int2_add(player_pos, dir);
    state->tiles[pos.x][pos.y].visible = true;
  }

  // calc_lighting_8dir()
  update_shadowcast();
}

void _update() {
  static float update_timer;

  if (state->font.baseSize != FONT_SIZE_HIRES || state->font_path != FONT) {
    if (state->font.glyphCount != 0) UnloadFont(state->font);
    state->font = LoadFontEx(FONT, FONT_SIZE_HIRES, NULL, 250);
    state->font_path = FONT;
  }
  GlyphInfo glyph_info = GetGlyphInfo(state->font, '@');
  state->rune_offset = v2_sub(
      MID_TILE, (v2){
                    (float)(glyph_info.image.width + glyph_info.offsetX) / 4,
                    (float)(glyph_info.offsetY + glyph_info.image.height) / 4,
                });

  check_input();

  // animations & physics
  update_timer += GetFrameTime();
  if (update_timer >= DT) {
    update_timer -= DT;
    update_fixed();
  }

  draw();
}
