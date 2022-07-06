package game_code

// this package wraps the game code library and does hot-reloading

import "core:os"
import "core:fmt"
import "core:dynlib"
import "core:time"

import _game "../../game"

when ODIN_OS == .Darwin {
	GAME_CODE_PATH :: "bin/game.txt"
	Time :: time.Time
}
when ODIN_OS == .Windows {
	GAME_CODE_PATH :: "bin/game.dll"
}

APP_TITLE :: _game.APP_TITLE
APP_WIDTH :: _game.APP_WIDTH
APP_HEIGHT :: _game.APP_HEIGHT

_game_library: dynlib.Library // pointer to the loaded library
_game_library_timestamp: os.File_Time
_game_library_update := _game.update
_game_library_load := _game.load

load :: _game.load

update :: proc() {
	_maybe_reload_library()
	_game_library_update()
}

// TODO remove this once os.last_write_time_by_name is implemented in core:os
when ODIN_OS == .Darwin {
	_last_write_time_by_name :: proc(name: string) -> (os.File_Time, os.Errno) {
		info, err := os.stat(GAME_CODE_PATH, context.temp_allocator)
		return os.File_Time(info.modification_time._nsec), err
	}
} else {
	_last_write_time_by_name :: os.last_write_time_by_name
}

_maybe_reload_library :: proc(force := false) {
	timestamp, timestamp_err := _last_write_time_by_name(GAME_CODE_PATH)
	if timestamp_err != 0 do return

	if !force && timestamp <= _game_library_timestamp do return
	_game_library_timestamp = timestamp
	fmt.println("timestamp changed", timestamp)
	_unload_library()
	_load_library()
}

_unload_library :: proc() {
	if _game_library == nil do return
	fmt.println("unloading game code library")
	dynlib.unload_library(_game_library)
	_game_library = nil
}

_load_library :: proc() -> bool {
	assert(_game_library == nil)

	when ODIN_OS == .Darwin {
		// apple caches the library so we change the name each time to bust that cache
		data := os.read_entire_file(GAME_CODE_PATH, context.temp_allocator) or_return
		// game_code_path = strings.string_from_ptr(&file_txt[0], len(file_txt))
		library_path := cast(string)data[:len(data) - 1]
	} else {
		library_path := GAME_CODE_PATH
	}

	lib, lib_ok := dynlib.load_library(library_path)
	assert(lib_ok && lib != nil)
	lib_load, load_ok := dynlib.symbol_address(lib, "load")
	assert(load_ok)
	lib_update, update_ok := dynlib.symbol_address(lib, "update")
	assert(update_ok)

	_game_library = lib
	_game_library_load = auto_cast lib_load
	_game_library_update = auto_cast lib_update

	fmt.println("game code library loaded")

	_game_library_load()
	return true
}
