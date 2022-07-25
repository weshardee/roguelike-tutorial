package shared
import "core:mem"
import "vendor:raylib"
import "core:math/linalg"
import "core:fmt"

// common data and logic shared by the game and platform layers of the app

// I just like these aliases since I use these types a lot
v2 :: linalg.Vector2f32
v2i :: [2]int

Mem :: struct {
	data: rawptr,
	size: int,
}

App_Context :: struct {
	rl:  Raylib,
	mem: Mem,
}

get_ctx :: #force_inline proc() -> ^App_Context {
	return (^App_Context)(context.user_ptr)
}

mem :: proc($T: typeid) -> ^T {
	m := &get_ctx().mem
	if (size_of(T) > m.size) {
		old_data := m.data
		old_size := m.size
		m.data = new(T)
		m.size = size_of(T)
		if (old_size > 0) {
			mem.copy(m.data, old_data, old_size)
			free(old_data)
		}
	}
	return (^T)(m.data)
}
