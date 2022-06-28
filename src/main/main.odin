package main

// The initializer module. This launches the application, sets up the window and rendering.

import "core:fmt"
import "core:strings"
import "core:os"
import sdl "vendor:sdl2"

import "../app"
import "../game"

// TODO set up hot-reloading

main :: proc() {
	ctx := app.App_Context{}
	context.user_ptr = &ctx

	sdl_assert(sdl.Init({.AUDIO, .VIDEO, .GAMECONTROLLER}) == 0, "SDL_Init")

	ctx.sdl_window = sdl.CreateWindow(strings.clone_to_cstring(game.APP_TITLE), 0, 0, auto_cast game.APP_WIDTH,
		auto_cast game.APP_HEIGHT, sdl.WINDOW_SHOWN)
	sdl_assert(ctx.sdl_window != nil, "SDL_CreateWindow")

	// TODO I should probably move this into the graphics module 
	ctx.sdl_renderer = sdl.CreateRenderer(ctx.sdl_window, -1, {.ACCELERATED, .PRESENTVSYNC})
	sdl_assert(ctx.sdl_renderer != nil, "SDL_CreateRenderer")

	game.load()

	// do this once otherwise first update hangs - probably some internal SDL initialization logic?
	process_events()

	update_prev := sdl.GetPerformanceCounter()
	for {
		process_events()

		// update
		now := sdl.GetPerformanceCounter()
		dt := f32(now - update_prev) / f32(sdl.GetPerformanceFrequency())
		update_prev = now
		game.update(dt)

		// draw
		game.draw()
	}
}

sdl_assert :: proc(val: bool, msg: string) {
	if !val {
		fmt.println(msg, "Error:", sdl.GetError())
		sdl.Quit()
		os.exit(1)
	}
}

process_events :: proc() {
	e: sdl.Event
	for sdl.PollEvent(&e) != 0 {
		#partial switch (e.type) {
		case .QUIT:
			os.exit(0)
		case:
			game.input(e)
		}
	}
}
