#!/bin/sh -e

mkdir -p bin
echo "build game library"

OUT=bin/game_$RANDOM.dylib
TXT=bin/game.txt

if odin build src/game -debug -build-mode:shared -out:$OUT
then
  echo $OUT > $TXT
  echo "done"
else
  echo "done"
fi
  
