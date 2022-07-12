#pragma once

typedef struct V2 {
  float x, y;
} v2;

v2 v2_add(v2 a, v2 b) { return (v2){a.x + b.x, a.y + b.y}; };
v2 v2_sub(v2 a, v2 b) { return (v2){a.x - b.x, a.y - b.y}; };

// v2 V2(int x, int y) { return (v2){x, y}; }

typedef struct int2 {
  int x, y;
} int2;

int2 int2_add(int2 a, int2 b) { return (int2){a.x + b.x, a.y + b.y}; };
int2 int2_sub(int2 a, int2 b) {
  int2 result;
  result.x = a.x - b.x;
  result.y = a.y - b.y;
  return result;
};

v2 int2_to_v2(int2 val) {
  v2 result;
  result.x = (float)val.x;
  result.y = (float)val.y;
  return result;
}
