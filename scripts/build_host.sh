#!/bin/sh -e

rm -rf bin
mkdir -p bin

time cc -std=c++11 -o bin/game `pkg-config --libs --cflags raylib` src/host/host.cpp 
# zig cc -o bin/game src/host/host.c
./bin/game