package profiler

import "core:fmt"
import rl"vendor:raylib"

MAX_STACK_SIZE :: 256;

stack := [MAX_STACK_SIZE]Sample{}
i := 0;

Sample :: struct {
    name: string,
    start: f64,
};

push::proc(name: string) {
    stack[i].name = name;
    stack[i].start = rl.GetTime();
    i += 1;
}

pop::proc() {
    i -= 1;
    for ii := 0; ii < i ; ii += 1 {
        // fmt.print(stack[ii].name);
    }
    name := stack[i].name;
    start := stack[i].start;
    end := rl.GetTime();
    // fmt.println(name, ms(end - start));
}

ms :: proc(s: f64) -> f64 {
    return s * 1000;
}
