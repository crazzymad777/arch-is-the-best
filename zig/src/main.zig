const std = @import("std");

pub fn main() !void {
        const writer = std.io.getStdOut().writer();
        nosuspend writer.print("Arch is the best!\n", .{}) catch return;
}

