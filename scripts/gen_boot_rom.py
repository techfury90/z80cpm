#!/usr/bin/env python3
"""Generate boot_rom.v (a combinational LUT case-ROM) from an a85 Intel HEX file.
Covers 0x0000..(len-1); the rest of the 4K window is NOP (0x00)."""
import sys
from intel_hex_to_mem import parse_intel_hex

def main():
    data = parse_intel_hex(sys.argv[1])
    maxaddr = max(data) if data else 0
    lines = []
    lines.append("`timescale 1ns/1ps")
    lines.append("// boot_rom -- generated LUT case-ROM (console test program). Auto-generated.")
    lines.append("module boot_rom(input [15:0] addr_in, output [7:0] dout);")
    lines.append("  function [7:0] byte_read;")
    lines.append("    input [15:0] a;")
    lines.append("    begin")
    lines.append("      case (a)")
    for a in sorted(data):
        lines.append("        16'h%04X: byte_read = 8'h%02X;" % (a, data[a]))
    lines.append("        default: byte_read = 8'h00;")
    lines.append("      endcase")
    lines.append("    end")
    lines.append("  endfunction")
    lines.append("  assign dout = byte_read(addr_in);")
    lines.append("endmodule")
    open(sys.argv[2], "w").write("\n".join(lines) + "\n")
    print("wrote %s (%d bytes, max 0x%04X)" % (sys.argv[2], len(data), maxaddr))

if __name__ == "__main__":
    main()
