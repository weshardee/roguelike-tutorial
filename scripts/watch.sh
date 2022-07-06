#!/bin/sh -e

# npm install -g chokidar-cli
chokidar "src/game/**/*.odin" -c "./scripts/build_game.sh"