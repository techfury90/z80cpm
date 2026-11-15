`timescale 1ns/1ps
// Pure-LUT NOP ROM for the M1 core-execution proof.
// All 8'h00 = NOP, except two 2-byte LD A,n at 0x0000 and 0x0002 to prove the
// PC advances by 2 for multi-byte instructions (vs +1 for NOPs).
module nop_rom(input [15:0] addr_in, output [7:0] dout);

  function [7:0] rom_byte;
    input [15:0] a;
    begin
      case (a)
        16'h0000: rom_byte = 8'h3E; // LD A,imm (2 bytes)
        16'h0001: rom_byte = 8'h00;
        16'h0002: rom_byte = 8'h3E; // LD A,imm (2 bytes)
        16'h0003: rom_byte = 8'h01;
        default:  rom_byte = 8'h00; // NOP
      endcase
    end
  endfunction

  assign dout = rom_byte(addr_in);
endmodule
