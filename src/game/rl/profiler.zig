const std = @import("std");
const print = std.debug.print;
const assert = std.debug.assert;
const rl = @import("raylib");

const MAX_STACK_SIZE = 256;

var stack = [_]Sample{.{}} ** MAX_STACK_SIZE;
var i: usize = 0;

const Sample = struct {
    name: []const u8 = undefined,
    start: f64 = 0,
};

pub fn push(name: []const u8) void {
    stack[i].name = name;
    stack[i].start = rl.GetTime();
    i += 1;
}

pub fn pop() void {
    i -= 1;
    var ii = @as(usize, 0);
    while (ii < i) : (ii += 1) {
        print("{s};", .{stack[ii].name});
    }
    const name = stack[i].name;
    const start = stack[i].start;
    const end = rl.GetTime();
    print("{s} {d:2.4}\n", .{ name, ms(end - start) });
}

fn ms(s: f64) f64 {
    return s * 1000;
}
