#!/bin/sh -e

# MAIN_OUT=main.bin

# # macOS caches dynamic libraries with the same name, so we need o be sneaky
# GAME_OUT=game_$RANDOM.dylib
# # GAME_OUT=game.dylib

# rm -f game*

# if pgrep -x $MAIN_OUT > /dev/null
# then
#   odin build src/game -build-mode:shared -out:$GAME_OUT
#   echo $PWD/$GAME_OUT > game
# else 
#   odin build src -out:$MAIN_OUT
#   exec ./$MAIN_OUT
# fi

# rm -rf bin
./scripts/build_host.sh
