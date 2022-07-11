package rl

import "core:math"

update_lighting_raycast :: proc() {
	player := get_player_pos()
	x := player.x
	y := player.y
	for i := 0.0; i < 360; i += 0.05 {
		xVal := math.cos(f32(i) * 0.01745)
		yVal := math.sin(f32(i) * 0.01745)

		ox := f32(x) + 0.5
		oy := f32(y) + 0.5

		for j := 0; j < max(TILES_X, TILES_Y); j += 1 {
			pos := Tile_Pos({int(ox), int(oy)})
			if !in_bounds(pos) do continue
			reveal(pos)
			if (!is_open(pos)) do break
			ox += xVal
			oy += yVal
		}
	}
}
