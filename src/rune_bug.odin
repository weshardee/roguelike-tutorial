package rune_bug

C :: struct {
	a: u8,
}

main :: proc() {
	assert(foo('h') == 'h')
}

foo :: proc(r: rune, c: C = {}) -> rune {
	return r
}
