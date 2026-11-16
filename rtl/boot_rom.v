`timescale 1ns/1ps
// boot_rom -- generated LUT case-ROM (console test program). Auto-generated.
module boot_rom(input [15:0] addr_in, output [7:0] dout);
  function [7:0] byte_read;
    input [15:0] a;
    begin
      case (a)
        16'h0000: byte_read = 8'h3E;
        16'h0001: byte_read = 8'h00;
        16'h0002: byte_read = 8'hD3;
        16'h0003: byte_read = 8'h40;
        16'h0004: byte_read = 8'hC6;
        16'h0005: byte_read = 8'h01;
        16'h0006: byte_read = 8'h16;
        16'h0007: byte_read = 8'h00;
        16'h0008: byte_read = 8'h1E;
        16'h0009: byte_read = 8'h00;
        16'h000A: byte_read = 8'h1D;
        16'h000B: byte_read = 8'hC2;
        16'h000C: byte_read = 8'h0A;
        16'h000D: byte_read = 8'h00;
        16'h000E: byte_read = 8'h15;
        16'h000F: byte_read = 8'hC2;
        16'h0010: byte_read = 8'h08;
        16'h0011: byte_read = 8'h00;
        16'h0012: byte_read = 8'hC3;
        16'h0013: byte_read = 8'h02;
        16'h0014: byte_read = 8'h00;
        default: byte_read = 8'h00;
      endcase
    end
  endfunction
  assign dout = byte_read(addr_in);
endmodule
