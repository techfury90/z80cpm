`timescale 1ns/1ps
// boot_rom -- generated LUT case-ROM (console test program). Auto-generated.
module boot_rom(input [15:0] addr_in, output [7:0] dout);
  function [7:0] byte_read;
    input [15:0] a;
    begin
      case (a)
        16'h0000: byte_read = 8'h21;
        16'h0001: byte_read = 8'h32;
        16'h0002: byte_read = 8'h00;
        16'h0003: byte_read = 8'h7E;
        16'h0004: byte_read = 8'hB7;
        16'h0005: byte_read = 8'hCA;
        16'h0006: byte_read = 8'h0F;
        16'h0007: byte_read = 8'h00;
        16'h0008: byte_read = 8'hCD;
        16'h0009: byte_read = 8'h18;
        16'h000A: byte_read = 8'h00;
        16'h000B: byte_read = 8'h23;
        16'h000C: byte_read = 8'hC3;
        16'h000D: byte_read = 8'h03;
        16'h000E: byte_read = 8'h00;
        16'h000F: byte_read = 8'hCD;
        16'h0010: byte_read = 8'h24;
        16'h0011: byte_read = 8'h00;
        16'h0012: byte_read = 8'hCD;
        16'h0013: byte_read = 8'h18;
        16'h0014: byte_read = 8'h00;
        16'h0015: byte_read = 8'hC3;
        16'h0016: byte_read = 8'h0F;
        16'h0017: byte_read = 8'h00;
        16'h0018: byte_read = 8'hF5;
        16'h0019: byte_read = 8'hDB;
        16'h001A: byte_read = 8'h80;
        16'h001B: byte_read = 8'hE6;
        16'h001C: byte_read = 8'h01;
        16'h001D: byte_read = 8'hC2;
        16'h001E: byte_read = 8'h19;
        16'h001F: byte_read = 8'h00;
        16'h0020: byte_read = 8'hF1;
        16'h0021: byte_read = 8'hD3;
        16'h0022: byte_read = 8'h81;
        16'h0023: byte_read = 8'hC9;
        16'h0024: byte_read = 8'hF5;
        16'h0025: byte_read = 8'hDB;
        16'h0026: byte_read = 8'h80;
        16'h0027: byte_read = 8'hE6;
        16'h0028: byte_read = 8'h02;
        16'h0029: byte_read = 8'hCA;
        16'h002A: byte_read = 8'h25;
        16'h002B: byte_read = 8'h00;
        16'h002C: byte_read = 8'hDB;
        16'h002D: byte_read = 8'h81;
        16'h002E: byte_read = 8'h47;
        16'h002F: byte_read = 8'hF1;
        16'h0030: byte_read = 8'h78;
        16'h0031: byte_read = 8'hC9;
        16'h0032: byte_read = 8'h48;
        16'h0033: byte_read = 8'h65;
        16'h0034: byte_read = 8'h6C;
        16'h0035: byte_read = 8'h6C;
        16'h0036: byte_read = 8'h6F;
        16'h0037: byte_read = 8'h20;
        16'h0038: byte_read = 8'h66;
        16'h0039: byte_read = 8'h72;
        16'h003A: byte_read = 8'h6F;
        16'h003B: byte_read = 8'h6D;
        16'h003C: byte_read = 8'h20;
        16'h003D: byte_read = 8'h5A;
        16'h003E: byte_read = 8'h38;
        16'h003F: byte_read = 8'h30;
        16'h0040: byte_read = 8'h21;
        16'h0041: byte_read = 8'h0D;
        16'h0042: byte_read = 8'h0A;
        16'h0043: byte_read = 8'h00;
        default: byte_read = 8'h00;
      endcase
    end
  endfunction
  assign dout = byte_read(addr_in);
endmodule
