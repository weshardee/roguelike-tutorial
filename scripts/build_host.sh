#!/bin/sh -e

rm -rf bin
mkdir -p bin

zig build run --prominent-compile-errors
# zig cc -o bin/game src/host/host.c
# ./bin/game