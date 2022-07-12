#!/bin/sh -e

rm -rf bin
mkdir -p bin

time cc -o bin/game `pkg-config --libs --cflags raylib` src/host/host.c 
# zig cc -o bin/game src/host/host.c
./bin/game