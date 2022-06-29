package gfx

import "core:math"
import "core:math/linalg"
import "core:fmt"

import sdl "vendor:sdl2"
import img "vendor:sdl2/image"
import "vendor:sdl2/ttf"

import "../app"

ColorRGB :: [3]u8
ColorRGBA :: [4]u8

Font :: ^ttf.Font
Texture :: ^sdl.Texture
Rect :: sdl.Rect

vec2 :: [2]f32

Circle :: struct {
	x, y, r: f32,
}

renderer: ^sdl.Renderer

BLACK :: ColorRGB{0, 0, 0}
WHITE :: ColorRGB{255, 255, 255}
RED :: ColorRGB{255, 0, 0}
GREEN :: ColorRGB{0, 255, 0}

// ------------------------------------------------------------------------
// utils 

init :: proc() {
	renderer = app.get_renderer()
}

clear :: proc() {
	sdl.RenderClear(renderer)
}

present :: proc() {
	sdl.RenderPresent(renderer)
}

set_view :: proc(x, y: i32) {
	sdl.RenderSetLogicalSize(renderer, x, y)
}

// ------------------------------------------------------------------------
// Color

rgba_floats :: proc(r, g, b, a: f32) -> ColorRGBA {
	return {u8(r * 255), u8(g * 255), u8(b * 255), u8(a * 255)}
}

rgba_hex :: proc(hex: u32) -> ColorRGBA {
	r := u8(hex >> 16 & 0xFF)
	g := u8(hex >> 8 & 0xFF)
	b := u8(hex & 0xFF)
	return {r, g, b, 255}
}

rgba :: proc {
	rgba_floats,
	rgba_hex,
}

set_color_rgb :: proc(color: ColorRGB) {
	sdl.SetRenderDrawColor(renderer, color.r, color.g, color.b, 1)
}

set_color_rgba :: proc(color: ColorRGBA) {
	sdl.SetRenderDrawColor(renderer, color.r, color.g, color.b, color.a)
}

set_color :: proc {
	set_color_rgb,
	set_color_rgba,
}

set_texture_color :: proc(texture: Texture, color: ColorRGB) {
	sdl.SetTextureColorMod(texture, color.r, color.g, color.b)
}

// ------------------------------------------------------------------------
// basic shapes 

line :: proc(a, b: vec2) {
	x0 := i32(a.x)
	y0 := i32(a.y)
	x1 := i32(b.x)
	y1 := i32(b.y)
	if x0 == x1 || y0 == y1 {
		sdl.RenderDrawLine(renderer, x0, y0, x1, y1)
		return
	}

	// SDL doesn't handle virtual pixels and diagonal lines propperly, so we're going to brute force it 
	dx := abs(x1 - x0)
	sx: i32 = x0 < x1 ? 1 : -1
	dy := -abs(y1 - y0)
	sy: i32 = y0 < y1 ? 1 : -1
	error := dx + dy

	for {
		sdl.RenderDrawPoint(renderer, x0, y0)
		if x0 == x1 && y0 == y1 do break
		e2 := 2 * error
		if e2 >= dy {
			if x0 == x1 do break
			error = error + dy
			x0 = x0 + sx
		}
		if e2 <= dx {
			if y0 == y1 do break
			error = error + dx
			y0 = y0 + sy
		}
	}
}

point :: proc(p: vec2) {
	px(i32(p.x), i32(p.y))
}

px :: proc(x, y: i32) {
	sdl.RenderDrawPoint(renderer, x, y)
}

rect :: proc(r: Rect) {
	r := r // SDL wants a pointer and Odin won't let us take a pointer of a procedure param
	sdl.RenderDrawRect(renderer, &r)
}

circ :: proc(c: Circle) {
	circle_px :: proc(xc, yc, x, y: i32) {
		px(i32(xc + x), i32(yc + y))
		px(i32(xc - x), i32(yc + y))
		px(i32(xc + x), i32(yc - y))
		px(i32(xc - x), i32(yc - y))
		px(i32(xc + y), i32(yc + x))
		px(i32(xc - y), i32(yc + x))
		px(i32(xc + y), i32(yc - x))
		px(i32(xc - y), i32(yc - x))
	}
	xc, yc, r, x, y, d: i32
	xc = auto_cast c.x
	yc = auto_cast c.y
	r = auto_cast c.r
	x = auto_cast 0
	y = auto_cast c.r
	d = 3 - 2 * r
	circle_px(xc, yc, x, y)
	for (y >= x) {
		// for each pixel we will
		// draw all eight pixels
		x += 1

		// check for decision parameter
		// and correspondingly
		// update d, x, y
		if (d > 0) {
			y -= 1
			d = d + 4 * (x - y) + 10
		} else {
			d = d + 4 * x + 6
		}
		circle_px(xc, yc, x, y)
	}
}


fill_rect :: proc(r: Rect) {
	r := r // SDL wants a pointer, but Odin doesn't let us take a pointer of a param
	sdl.RenderFillRect(renderer, &r)
}

fill_circ :: proc(c: Circle) {
	min_x := c.x - c.r
	max_x := c.x + c.r
	min_y := c.y - c.r
	max_y := c.y + c.r
	r_sq := c.r * c.r
	for x in min_x ..= max_x {
		for y in min_y ..= max_y {
			if x * x + y * y <= r_sq {
				point(vec2{x, y})
			}
		}
	}
	// TODO compare with midpoint/bresenham and drawing
	// vertical or horizontal bands
}

fill :: proc {
	fill_circ,
	fill_rect,
}

// ------------------------------------------------------------------------
// textures 

img :: proc(texture: Texture, src: sdl.Rect, dest: sdl.Rect) {
	src := src
	dest := dest
	sdl.RenderCopy(renderer, texture, &src, &dest)
}

load_texture_from_const :: proc(data: []byte) -> Texture {
	r := renderer
	rw := sdl.RWFromMem(raw_data(data), auto_cast len(data))
	texture := img.LoadTexture_RW(r, rw, true)
	return texture
}

load_texture :: proc {
	load_texture_from_const,
}

set_draw_blend_mode :: proc(mode: sdl.BlendMode) {
	sdl.SetRenderDrawBlendMode(renderer, mode)
}

load_font_from_const :: proc(data: []byte, size: int) -> Font {
	r := renderer
	rw := sdl.RWFromMem(raw_data(data), auto_cast len(data))
	return ttf.OpenFontRW(rw, true, i32(size))
}

load_font :: proc {
	load_font_from_const,
}
