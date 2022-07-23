#!/bin/sh -e

rm -rf bin
mkdir -p bin

odin run src/host -out:bin/game
