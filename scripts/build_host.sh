#!/bin/sh -e

rm -rf bin
mkdir -p bin
odin run src/host -debug -out:"bin/game"