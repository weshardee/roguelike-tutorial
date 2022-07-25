package shared

Rect :: struct {
	min: v2,
	max: v2,
}

expand_rect_to_cover :: proc(_r: Rect, v: v2) -> (r: Rect) {
	r.min.x = min(_r.min.x, v.x)
	r.min.y = min(_r.min.y, v.y)
	r.max.x = max(_r.max.x, v.x)
	r.max.y = max(_r.max.y, v.y)
	return
}

center_rect :: proc(r: Rect) -> v2 {
	return v2{(r.min.x + r.max.x) / 2, (r.max.y + r.min.y) / 2}
}

center :: proc {
	center_rect,
}

v2i_to_v2 :: proc(v: v2i) -> v2 {
	return v2{f32(v.x), f32(v.y)}
}

to_v2 :: proc {
	v2i_to_v2,
}
