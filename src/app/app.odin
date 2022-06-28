package app

// common data and logic shared by the game and platform layers of the app

import "core:mem"
import sdl "vendor:sdl2"

App_Context :: struct {
	sdl_window:   ^sdl.Window,
	sdl_renderer: ^sdl.Renderer,
	state_data:   rawptr,
	state_size:   int,
}

get_ctx :: proc() -> ^App_Context {
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

// TODO I might want to move all references to the renderer into the gfx module
get_renderer :: proc() -> ^sdl.Renderer {
	return get_ctx().sdl_renderer
}
