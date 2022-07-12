#pragma once
// common data and logic shared by the game and platform layers of the app

#include <assert.h>
#include <math.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "linalg.h"

typedef uint8_t u8;
typedef int8_t i8;
typedef uint16_t u16;
typedef int16_t i16;
typedef uint32_t u32;
typedef int32_t i32;
typedef uint64_t u64;
typedef int64_t i64;
typedef float f32;
typedef double f64;
typedef int i32;
typedef char* cstring;

#define bit(x) (1 << (x))
#define max(a, b) ((a) > (b) ? (a) : (b))
#define abs(val) ((val) < 0 ? -(val) : (val))
#define len(arr) (sizeof(arr) / sizeof(*arr))
#define clamp(x, lower, upper) min(max((x), (lower)), (upper))

#define unreachable (assert(false))

int rand(int max) { return rand() % max; }
int rand(int a, int b) {
  assert(b > a);
  return a + rand(b - a);
}
float rand_float() { return (float)rand() / (float)RAND_MAX; }
bool rand_bool() { return rand_float() < 0.5f; }

// void println(...) {
//   va_list vl;
//   va_start(vl);
//   for (int i = 0; i < va.length) printf_s()
// }

struct Mem {
  void* data;
  size_t size;
};

struct App_Context {
  Mem state;
};
