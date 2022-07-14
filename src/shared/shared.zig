// common data and logic shared by the game and platform layers of the app
const std = @import("std");
const Allocator = std.mem.Allocator;

pub const Mem = struct {
    data: *void,
    size: i32,
    fn init(comptime T: type) Mem {
        return .{ Allocator.create(T), @sizeOf(T) };
    }
    fn load(mem: *Mem, comptime T: type) void {
        if (@sizeOf(T) > mem.size) {
            var old_data = mem.data;
            var old_size = mem.size;
            mem.data = Allocator.create(T);
            mem.size = @sizeOf(T);
            @memcpy(mem.data, old_data, old_size);
            Allocator.delete(old_data);
        }
    }
};

pub const App_Context = struct {
    state: Mem,

    pub fn init(comptime T: type) App_Context {
        const ctx = App_Context{
            Mem.init(T),
        };
        return ctx;
    }

    pub fn load(ctx: *App_Context, comptime T: type) void {
        ctx.mem.load(T);
    }
};
