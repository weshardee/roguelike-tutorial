#pragma once

struct v2 {
  float x, y;
  v2(float _x, float _y) {
    x = _x;
    y = _y;
  };
  v2() {
    x = 0;
    y = 0;
  }
  v2 operator+(v2 b) { return {x + b.x, y + b.y}; };
  v2 operator-(v2 b) { return {x - b.x, y - b.y}; };
};

struct int2 {
  int x, y;
  int2 operator+(int2 b) { return {x + b.x, y + b.y}; };
  int2 operator-(int2 b) { return {x - b.x, y - b.y}; };
  operator v2() { return {(float)x, (float)y}; };
};