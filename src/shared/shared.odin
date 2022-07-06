package shared

// common data and logic shared by the game and platform layers of the app

import "core:math/linalg"
import "core:mem"
import "core:fmt"
import "vendor:raylib"

MAX_TEXTURES :: 256

App_Context :: struct {
	using api:     Platform_API,
	state_data:    rawptr,
	state_size:    int,
	texture_slots: [MAX_TEXTURES]^Texture,
}

Event :: distinct int

get_ctx :: proc() -> ^App_Context {
	assert(context.user_ptr != nil)
	return auto_cast context.user_ptr
}

// Initializes game state memory on first request. We store it like this
// for hot-reloading. This lets the game code keep state in the platform layer memory.
get_state :: proc($T: typeid) -> ^T {
	ctx := get_ctx()
	size := size_of(T)
	if size > ctx.state_size {
		// TODO for hot reloading, we'll want to increase the allocated memory size if needed
		assert(ctx.state_size == 0)

		// init game memory
		ctx.state_data = mem.alloc(size)
		ctx.state_size = size
	}
	return auto_cast ctx.state_data
}
