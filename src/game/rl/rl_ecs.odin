package rl

import "core:fmt"
import "vendor:raylib"

MAX_ENTS :: Ent(1024)

Ent :: distinct int

Ent_Tags :: enum {
	Player,
	Spacial,
}

Ent_Tag_Set :: bit_set[Ent_Tags]

Ent_Props :: struct {
	tags:       Ent_Tag_Set,
	pos:        Tile_Pos,
	char:       Rune,
	color:      Color,
	pos_offset: V2,
	hp:         int,
	// for the linked list of available ents
	next:       Ent,
}

Ents :: #soa[MAX_ENTS]Ent_Props

Ecs :: struct {
	ents: Ents,
	next: Ent,
}

get_ecs :: proc() -> ^Ecs {
	return &state.ecs
}

get_ents :: proc() -> ^Ents {
	return &state.ecs.ents
}

init_ecs :: proc() {
	using state.ecs
	for e in Ent(0) ..< MAX_ENTS {
		ents[e] = {
			next = e + 1,
		}
	}
}

push_ent :: proc(tags: Ent_Tag_Set) -> Ent {
	using state.ecs
	e := next
	next = ents[e].next

	assert(tags != {})
	ents[e].tags = tags

	return e
}

free_ent :: proc(e: Ent) {
	ecs := get_ecs()
	assert(ecs.ents[e].tags != {})
	ecs.ents[e] = {}
	ecs.ents[e].next = ecs.next
	ecs.next = e
}

Ent_Iterator :: struct {
	tags: Ent_Tag_Set,
	e:    Ent,
}

ent_iterator :: proc(tags: Ent_Tag_Set) -> Ent_Iterator {
	return Ent_Iterator{tags = tags}
}

each_ent :: proc(iter: ^Ent_Iterator) -> (Ent, bool) {
	ents := get_ents()
	for iter.e < MAX_ENTS {
		e := iter.e
		iter.e = Ent(1 + iter.e)
		if iter.tags <= ents[e].tags {
			return e, true
		}
	}
	return iter.e, false
}
