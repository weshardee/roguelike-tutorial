#pragma once
#include "rl_common.c"

#define Tile_Pos int2

// https://www.albertford.com/shadowcasting/

typedef enum {
  north,
  east,
  south,
  west,
} Cardinal;

typedef struct {
  Cardinal cardinal;
  Tile_Pos origin;
} Quadrant;

typedef struct {
  Quadrant quadrant;
  int depth;
  float start_slope;
  float end_slope;
} Quad_Row;

#define INVALID_TILE \
  (Quad_Tile) { .row = -1, .col = -1 }

typedef struct {
  Quadrant quadrant;
  int row, col;
} Quad_Tile;

bool valid(Quad_Tile tile) { return tile.row != -1 && tile.col != -1; }

Quad_Row next(Quad_Row* row) {
  return (Quad_Row){row->quadrant, row->depth + 1, row->start_slope,
                    row->end_slope};
}

typedef struct {
  Quadrant quadrant;
  int depth;
  int min_col;
  int max_col;
  int col;
} Quad_Row_Iterator;

struct Quad_Row_Iterator_Result {
  Quad_Tile tile;
  bool ok;
};

// round_ties_up and round_ties_down round n to the nearest integer. If n
// ends in .5, round_ties_up rounds up and round_ties_down rounds down.
// Note: round_ties_up is not the same as Python’s round. Python’s round
// will round away from 0, resulting in unwanted behavior for negative
// numbers.
float round_ties_up(float n) { return floor(n + 0.5); }

float round_ties_down(float n) { return ceil(n - 0.5); }

Quad_Row_Iterator row_tiles(Quad_Row* row) {
  int depth = row->depth;
  int min_col = round_ties_up((float)depth * row->start_slope);
  int max_col = round_ties_down((float)depth * row->end_slope);
  return (Quad_Row_Iterator){row->quadrant, depth, (int)(min_col),
                             (int)(max_col), (int)(min_col)};
}

Quad_Tile iter_row_tiles(Quad_Row_Iterator* iter) {
  while (iter->min_col <= iter->col && iter->col <= iter->max_col) {
    int col = iter->col;
    iter->col += 1;
    return (Quad_Tile){iter->quadrant, iter->depth, col};
  }
  return INVALID_TILE;
}

Tile_Pos transform(Quad_Tile tile) {
  int row = tile.row;
  int col = tile.col;
  int cardinal = tile.quadrant.cardinal;
  int2 origin = tile.quadrant.origin;
  if (cardinal == north) return (Tile_Pos){origin.x + col, origin.y - row};
  if (cardinal == south) return (Tile_Pos){origin.x + col, origin.y + row};
  if (cardinal == east) return (Tile_Pos){origin.x + row, origin.y + col};
  if (cardinal == west) return (Tile_Pos){origin.x - row, origin.y + col};
  unreachable;
}

void quad_reveal(Quad_Tile tile) {
  int2 pos = transform(tile);
  reveal(pos);
}

bool quad_is_wall(Quad_Tile tile) {
  int2 pos = transform(tile);
  return is_wall(pos);
}

bool quad_is_floor(Quad_Tile tile) {
  int2 pos = transform(tile);
  return is_floor(pos);
}

float slope(Quad_Tile tile) {
  return (2.0f * (float)(tile.col) - 1.0f) / (2.0f * (float)tile.row);
}

bool is_symmetric(Quad_Row* row, Quad_Tile tile) {
  return (float)tile.col >= ((float)(row->depth) * row->start_slope) &&
         (float)(tile.col) <= ((float)(row->depth) * row->end_slope);
}

void scan(Quad_Row* row) {
  Quad_Tile prev_tile = INVALID_TILE;
  Quad_Row_Iterator iter = row_tiles(row);
  for (Quad_Tile tile = iter_row_tiles(&iter); valid(tile);
       tile = iter_row_tiles(&iter)) {
    if (quad_is_wall(tile) || is_symmetric(row, tile)) {
      quad_reveal(tile);
    }
    if (valid(prev_tile) && quad_is_wall(prev_tile) && quad_is_floor(tile)) {
      row->start_slope = slope(tile);
    }
    if (valid(prev_tile) && quad_is_floor(prev_tile) && quad_is_wall(tile)) {
      Quad_Row next_row = next(row);
      next_row.end_slope = slope(tile);
      scan(&next_row);
    }
    prev_tile = tile;
  }
  if (quad_is_floor(prev_tile)) {
    Quad_Row next_row = next(row);
    scan(&next_row);
  }
}

void update_shadowcast() {
  Tile_Pos origin = get_player_pos();
  reveal(origin);

  for (int i = 0; i < 4; i++) {
    Quadrant quadrant = (Quadrant){(Cardinal)i, origin};
    Quad_Row first_row = (Quad_Row){quadrant, 1, -1, 1};
    scan(&first_row);
  }
}
