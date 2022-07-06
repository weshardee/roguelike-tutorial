package rl

import "core:fmt"
import "core:math/rand"
import "core:math/linalg"
import "vendor:raylib"
import stbi "vendor:stb/image"

import "../../shared"

APP_TITLE :: "Roguelike"
APP_WIDTH :: VIRTUAL_W * VIRTUAL_PX
APP_HEIGHT :: VIRTUAL_H * VIRTUAL_PX

VIRTUAL_W :: TILE_SIZE * TILES_X
VIRTUAL_H :: TILE_SIZE * TILES_Y
VIRTUAL_PX :: 4
TILE_SIZE :: 8
TILE_SIZE_HALF :: TILE_SIZE / 2
TILES_X :: 20
TILES_Y :: 20

WALLS_BMP :: #load("walls.bmp")
WALLS_PNG :: #load("walls.png")

FLOOR_DOT_COLOR :: Color{90, 90, 90, 255}

PLAYER_DIR_DELAY :: 0.1
DT :: 1.0 / 60
OFFSET_SPEED :: 30 * DT
STEP_HEIGHT :: 0.1

Tile_Pos :: [2]int
Color :: shared.Color
Image :: shared.Image
Texture2D :: shared.Texture2D
Rectangle :: shared.Rectangle
Vector2 :: shared.Vector2
V2 :: Vector2

State :: struct {
	loaded:    bool,
	player_e:  Ent,
	ecs:       Ecs,
	tiles:     Tilemap,
	test_rune: Rune,
	walls:     Texture2D,
}

Tile :: struct {
	open: bool,
}

Tilemap :: [TILES_X][TILES_Y]Tile

state: ^State
api: ^shared.Platform_API
reload := true
update_timer: f32

load :: proc() {
	using api
	if state.loaded {
		UnloadTexture(state.walls)
	}
	state.loaded = true
	state.walls = LoadTexture("src/game/rl/walls.png")
	fmt.println("load walls", state.walls)
	init_ecs()
	reset()
}

update :: proc() {
	using api

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
	// ents := get_ents()
	// spacial := ent_iterator({.Spacial})
	// for e in each_ent(&spacial) {
	// 	if (ents[e].pos_offset == {}) do continue
	// 	dist := linalg.length(ents[e].pos_offset)
	// 	step := min(dist, OFFSET_SPEED)
	// 	dir := -ents[e].pos_offset / dist
	// 	ents[e].pos_offset += step * dir
	// }

}

Rune :: enum {
	Empty,
	Ground_1,
	Ground_2,
	Ground_3,
	Ground_4,
	Grass_1,
	Grass_2,
	Grass_3,
	Road_A0,
	Road_A1,
	Road_A2,
	Road_A3,
	Road_A4,
	Ehh0,
	Ehh1,
	Ehh2,
	Wall,
	Road_0,
	Road_1,
	Road_2,
	Num0 = 868,
	Num1,
	Num2,
	Num3,
	Num4,
	Num5,
	Num6,
	Num7,
	Num8,
	Num9,
	Colon,
	Period,
	Percent,
	Weird_Block,
	Wall_BL,
	Wall_BM,
	Wall_BR,
	Block0,
	Block1,
	Arch,
	Door_Closed,
	Block2,
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

	state.test_rune = .Num9

	reset_dungeon()

	state.player_e = push_ent({.Player, .Spacial})
	ents[state.player_e].char = .Num0
	ents[state.player_e].pos = get_random_open_pos()

	npc_e := push_ent({.Spacial})
	ents[npc_e].char = .Num1
	ents[npc_e].pos = get_random_open_pos()
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

get_random_pos :: proc() -> Tile_Pos {
	return {rand_between(1, TILES_X - 1), rand_between(1, TILES_Y - 1)}
}

rand_between :: proc(a, b: int) -> int {
	assert(b > a)
	return a + rand.int_max(b - a)
}

// load_texture_from_mem :: proc(file_type: cstring, data: []u8) -> Texture2D {
// 	image: Image
// 	format: i32
// 	image.data = stbi.load_from_memory(&data[0], i32(len(data)), &image.width, &image.height,
// 		&format, 0)
// 	image.mipmaps = 1

// 	switch format {
// 	case 1:
// 		image.format = .UNCOMPRESSED_GRAYSCALE
// 	case 2:
// 		image.format = .UNCOMPRESSED_GRAY_ALPHA
// 	case 3:
// 		image.format = .UNCOMPRESSED_R8G8B8
// 	case 4:
// 		image.format = .UNCOMPRESSED_R8G8B8A8
// 	}

// 	// img := LoadImageFromMemory(file_type, &data[0], auto_cast len(data))
// 	fmt.println(image)
// 	texture := api.LoadTextureFromImage(image)
// 	return texture
// }
