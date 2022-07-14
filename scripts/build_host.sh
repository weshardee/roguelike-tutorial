#!/bin/sh -e

rm -rf bin
mkdir -p bin

zig build run
# zig cc -o bin/game src/host/host.c
# ./bin/game