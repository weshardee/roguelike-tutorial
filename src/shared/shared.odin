package shared
import "core:mem"
import "vendor:raylib"
import "core:math/linalg"

// common data and logic shared by the game and platform layers of the app

// I just like these aliases since I use these types a lot
v2 :: linalg.Vector2f32
v2i :: [2]i32

Mem :: struct {
	data: rawptr,
	size: int,
}

App_Context :: struct {
	rl: Raylib,
    mem: Mem,
}

get_ctx :: #force_inline proc() -> ^App_Context {
	return (^App_Context)(context.user_ptr)
}

mem :: proc($T: typeid) -> ^T {
	m := get_ctx().mem
	if (size_of(T) > m.size) {
		old := m
		m.data = new(T)
		m.size = size_of(T)
		if (old.size > 0) {
			mem.copy(m.data, old.data, old.size)
			free(old.data)
		}
	}
	return (^T)(m.data)
}


