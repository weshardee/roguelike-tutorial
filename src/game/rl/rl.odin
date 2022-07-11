package rl

import "core:fmt"
import "core:math"
import "core:math/rand"
import "core:math/linalg"
import "vendor:raylib"
import stbi "vendor:stb/image"

import "../../shared"

APP_TITLE :: "Roguelike"
APP_WIDTH :: VIRTUAL_W * VIRTUAL_PX
APP_HEIGHT :: VIRTUAL_H * VIRTUAL_PX

VIRTUAL_W :: TILE_SIZE_X * TILES_X
VIRTUAL_H :: TILE_SIZE_Y * TILES_Y
VIRTUAL_PX :: 1
TILE_SIZE_X :: 24
TILE_SIZE_Y :: 24
TILE_SIZE_X_HALF :: TILE_SIZE_X / 2
TILE_SIZE_Y_HALF :: TILE_SIZE_Y / 2
MID_TILE :: V2{TILE_SIZE_X_HALF, TILE_SIZE_Y_HALF}
TILES_X :: 20
TILES_Y :: 20
TILE_PAD :: 6
// FONT_SIZE :: (TILE_SIZE_Y - TILE_PAD * 2) * 2
FONT_SIZE :: 24
FONT_SIZE_HIRES :: FONT_SIZE * 2

WALLS_PNG :: #load("walls.png")

PLAYER_DIR_DELAY :: 0.1
DT :: 1.0 / 60
OFFSET_SPEED :: 30 * DT
STEP_HEIGHT :: 0.1

Tile_Pos :: [2]int
Color :: shared.Color
Image :: shared.Image
Texture2D :: shared.Texture2D
Font :: shared.Font
Rectangle :: shared.Rectangle
Vector2 :: shared.Vector2
V2 :: Vector2

// FONT :: "src/game/rl/SpaceMono-Regular.ttf"
// FONT :: "src/game/rl/Kenney Mini Square Mono.ttf"
FONT :: "src/game/rl/square.ttf"

MAX_VIEW_DISTANCE :: 2
VIEW_GRID_CENTER :: MAX_VIEW_DISTANCE
VIEW_GRID_ACROSS :: MAX_VIEW_DISTANCE * 2 + 1

View_Info :: struct {
	dist:    int,
	tile:    Tile_Pos,
	visible: bool,
	seen:    bool,
}

State :: struct {
	loaded:      bool,
	player_e:    Ent,
	ecs:         Ecs,
	tiles:       Tilemap,
	walls:       Texture2D,
	font:        Font,
	font_path:   string,
	rune_offset: Vector2,
	fov:         [VIEW_GRID_ACROSS][VIEW_GRID_ACROSS]View_Info,
}

Tile :: struct {
	open:               bool,
	visible:            bool,
	seen:               bool,
	dist_to_player:     int,
	abs_dist_to_player: int,
	dir_to_player:      Tile_Pos,
}

Tilemap :: [TILES_X][TILES_Y]Tile

DIR_N :: Tile_Pos{0, -1}
DIR_S :: Tile_Pos{0, 1}
DIR_E :: Tile_Pos{1, 0}
DIR_W :: Tile_Pos{-1, 0}
DIR_NW :: Tile_Pos{-1, -1}
DIR_NE :: Tile_Pos{1, -1}
DIR_SW :: Tile_Pos{-1, 1}
DIR_SE :: Tile_Pos{1, 1}

directions: [8]Tile_Pos = {DIR_NW, DIR_N, DIR_NE, DIR_E, DIR_SE, DIR_S, DIR_SW, DIR_W}

Visibility_Tree_Node :: struct {
	pos:     Tile_Pos,
	parents: [2]int,
}

Visibility_Tree :: struct {
	nodes: [TILES_X * TILES_Y]Visibility_Tree_Node,
}

state: ^State
api: ^shared.Platform_API
update_timer: f32

load :: proc() {
	using api
	if state.loaded {
		UnloadTexture(state.walls)
	} else {
		state.loaded = true
		state.walls = LoadTexture("src/game/rl/walls.png")
		init_ecs()
		reset()
	}
}

update :: proc() {
	using api

	if state.font.baseSize != FONT_SIZE_HIRES || state.font_path != FONT {
		if state.font.charsCount != 0 do UnloadFont(state.font)
		state.font = LoadFontEx(FONT, FONT_SIZE_HIRES, {}, 250)
		state.font_path = FONT
	}
	glyph_info := GetGlyphInfo(state.font, '@')
	state.rune_offset = {
		TILE_SIZE_X_HALF - f32(glyph_info.image.width + glyph_info.offsetX) / 4,
		TILE_SIZE_Y_HALF - f32(glyph_info.offsetY + glyph_info.image.height) / 4,
	}

	check_input()

	// animations & physics
	update_timer += GetFrameTime()
	if update_timer >= DT {
		update_timer -= DT
		update_fixed()
	}

	draw()
}

update_fixed :: proc() {
	using api

	// reset visibility
	for tile_x in 0 ..< TILES_X {
		for tile_y in 0 ..< TILES_Y {
			state.tiles[tile_x][tile_y].visible = false
		}
	}

	player_pos := state.ecs.ents[state.player_e].pos

	// calc abs dist to player for all spaces -- direction gradient for monster movement
	for x in 0 ..< TILES_X {
		for y in 0 ..< TILES_Y {
			state.tiles[x][y].dist_to_player = -1
			state.tiles[x][y].abs_dist_to_player = max(abs(x - player_pos.x), abs(
					y - player_pos.y,
				))
			state.tiles[x][y].dir_to_player = {x, y} - player_pos
		}
	}

	state.tiles[player_pos.x][player_pos.y].visible = true

	// minimally, see all adjacent tiles
	for dir in directions {
		pos := player_pos + dir
		state.tiles[pos.x][pos.y].visible = true
	}

	// calc_lighting_8dir()
	update_lighting_shadowcast()
}

update_found_spaces :: proc() {
	for x in 0 ..< TILES_X {
		for y in 0 ..< TILES_Y {
			state.tiles[x][y].seen |= state.tiles[x][y].visible
		}
	}
}

is_wall :: proc(pos: Tile_Pos) -> bool {
	return !state.tiles[pos.x][pos.y].open
}

is_floor :: proc(pos: Tile_Pos) -> bool {
	return state.tiles[pos.x][pos.y].open
}

is_visible :: proc(pos: Tile_Pos) -> bool {
	return state.tiles[pos.x][pos.y].visible
}

reveal :: proc(pos: Tile_Pos) {
	state.tiles[pos.x][pos.y].visible = true
	state.tiles[pos.x][pos.y].seen = true
}

nearest_dirs :: proc(dx, dy: int) -> [2]Tile_Pos {
	straight: Tile_Pos
	switch {
	case abs(dy) > abs(dx) && dy < 0:
		straight = DIR_N
	case abs(dy) > abs(dx) && dy > 0:
		straight = DIR_S
	case abs(dy) < abs(dx) && dx > 0:
		straight = DIR_E
	case abs(dy) < abs(dx) && dx < 0:
		straight = DIR_W
	}
	diag: Tile_Pos
	pos_x := dx > 0
	pos_y := dy > 0
	switch {
	case dy < 0 && dx < 0:
		diag = DIR_NW
	case dy < 0 && dx > 0:
		diag = DIR_NE
	case dy > 0 && dx < 0:
		diag = DIR_SW
	case dy > 0 && dx > 0:
		diag = DIR_SE
	}
	return {straight, diag}
}

spread_visibility :: proc(dst: Tile_Pos, src: Tile_Pos) {
	state.tiles[dst.x][dst.y].visible |= state.tiles[src.x][src.y].visible && state.tiles[src.x][src.y].open
}

check_input :: proc() {
	using api
	switch {
	case IsKeyPressed(.C):
		move_player({1, 1})
	case IsKeyPressed(.Z):
		move_player({-1, 1})
	case IsKeyPressed(.E):
		move_player({1, -1})
	case IsKeyPressed(.Q):
		move_player({-1, -1})
	case IsKeyPressed(.S):
		move_player({0, 0})
	case IsKeyPressed(.W):
		move_player({0, -1})
	case IsKeyPressed(.A):
		move_player({-1, 0})
	case IsKeyPressed(.D):
		move_player({1, 0})
	case IsKeyPressed(.X):
		move_player({0, 1})
	case IsKeyPressed(.R):
		reset()
	case IsKeyPressed(.F):
		ToggleFullscreen()
	}
}

move_player :: proc(dir: V2) {
	did_move := move_entity(state.player_e, dir)
	if did_move {
		for e in 0 ..< MAX_ENTS {
			if e == state.player_e do continue
			move_entity(e, rand_dir())
		}
	}
}

move_entity :: proc(e: Ent, dir: V2) -> bool {
	ents := get_ents()
	next_pos := ents[e].pos + {auto_cast dir.x, auto_cast dir.y}
	if !walkable(next_pos) {
		return false
	}
	ents[e].pos = next_pos
	ents[e].pos_offset = -dir
	ents[e].pos_offset += {0, -STEP_HEIGHT}
	return true
}

walkable :: proc(pos: Tile_Pos) -> bool {
	return in_bounds(pos) && state.tiles[pos.x][pos.y].open
}

in_bounds :: proc(pos: Tile_Pos) -> bool {
	return pos.x >= 0 && pos.y >= 0 && pos.x < TILES_X && pos.y < TILES_Y
}

rand_dir :: proc() -> V2 {
	dir := rand.int_max(3)
	switch dir {
	case 0:
		return {1, 0}
	case 1:
		return {-1, 0}
	case 2:
		return {0, 1}
	case 3:
		return {0, -1}
	case:
		unreachable()
	}
}

open_rect :: proc(x0, y0, x1, y1: int) {
	assert(in_bounds({x0, y0}))
	assert(in_bounds({x1, y1}))
	for x in x0 ..= x1 {
		for y in y0 ..= y1 {
			open_tile({x, y})
		}
	}
}

open_tile :: proc(pos: Tile_Pos) {
	assert(in_bounds(pos))
	state.tiles[pos.x][pos.y].open = true
}

rand_bool :: proc() -> bool {
	return rand.float32() < 0.5
}

reset :: proc() {
	ents := get_ents()
	init_ecs()

	reset_dungeon()

	state.player_e = push_ent({.Player, .Spacial})
	ents[state.player_e].char = '@'
	ents[state.player_e].pos = get_random_open_pos()
	ents[state.player_e].color = WHITE

	npc_e := push_ent({.Spacial})
	ents[npc_e].char = 'N'
	ents[npc_e].pos = get_random_open_pos()
	ents[npc_e].color = WHITE
}

get_random_open_pos :: proc() -> Tile_Pos {
	pos := get_random_pos()
	for !is_open(pos) {
		pos = get_random_pos()
	}
	return pos
}

is_open :: proc(pos: Tile_Pos) -> bool {
	return in_bounds(pos) && state.tiles[pos.x][pos.y].open
}

is_seen :: proc(pos: Tile_Pos) -> bool {
	return in_bounds(pos) && state.tiles[pos.x][pos.y].seen
}

get_random_pos :: proc() -> Tile_Pos {
	return {rand_between(1, TILES_X - 1), rand_between(1, TILES_Y - 1)}
}

rand_between :: proc(a, b: int) -> int {
	assert(b > a)
	return a + rand.int_max(b - a)
}

get_player_pos :: proc() -> Tile_Pos {
	return state.ecs.ents[state.player_e].pos
}
