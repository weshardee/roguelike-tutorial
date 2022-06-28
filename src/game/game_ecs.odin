package roguelike

import "core:fmt"
import sdl "vendor:sdl2"

MAX_ENTS :: Ent(1024)

Ent :: distinct int

Ent_Tags :: enum {
	Player,
	Runed,
}

Ent_Tag_Set :: bit_set[Ent_Tags]

Ent_Props :: struct {
	tags:       Ent_Tag_Set,
	pos:        Tile_Pos,
	char:       rune,
	// TODO color
	pos_offset: V2,
	// for the linked list of available ents
	next:       Ent,
}

Ents :: #soa[MAX_ENTS]Ent_Props

Ecs :: struct {
	ents: Ents,
	next: Ent,
}

get_ecs :: proc() -> ^Ecs {
	state := get_state()
	return &state.ecs
}

get_ents :: proc() -> ^Ents {
	ecs := get_ecs()
	return &ecs.ents
}

init_ecs :: proc() {
	ents := get_ents()
	for i in 0 ..< MAX_ENTS {
		ents[i].next = Ent(i + 1)
	}
}

push_ent :: proc(tags: Ent_Tag_Set) -> Ent {
	ecs := get_ecs()
	e := ecs.next
	ecs.next = ecs.ents[e].next

	assert(tags != {})
	ecs.ents[e].tags = tags

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
