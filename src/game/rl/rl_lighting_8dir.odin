package rl

calc_lighting_8dir :: proc() {
	player_pos := get_player_pos()

	// spread visibility in each dir
	for dir in directions {
		prev := player_pos
		pos := prev + dir
		for in_bounds(pos) {
			spread_visibility(pos, prev)
			prev += dir
			pos += dir
		}
	}

	// fmt.println("here")
	// spread visibility in quadrants
	spread_visibility_quadrant :: proc(dir_x, dir_y: int) {
		player_pos := state.ecs.ents[state.player_e].pos

		dx := dir_x
		x := player_pos.x + dx

		for x >= 0 && x < TILES_X {
			dy := dir_y
			y := player_pos.y + dy
			for y >= 0 && y < TILES_Y {
				pos := Tile_Pos{x, y}
				assert(in_bounds(pos))
				for dir in nearest_dirs(-dx, -dy) {
					dir := dir + {x, y}
					assert(in_bounds(dir))
					spread_visibility({x, y}, dir)
				}
				dy += dir_y
				y = player_pos.y + dy
			}
			dx += dir_x
			x = player_pos.x + dx
		}
	}
	spread_visibility_quadrant(+1, +1)
	spread_visibility_quadrant(-1, -1)
	spread_visibility_quadrant(+1, -1)
	spread_visibility_quadrant(-1, +1)

	for x in player_pos.x ..= 0 {
		y := player_pos.y
		spread_visibility({x, y}, {x - 1, y})
	}
}
