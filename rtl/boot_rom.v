`timescale 1ns/1ps
// boot_rom -- generated LUT case-ROM (console test program). Auto-generated.
module boot_rom(input [15:0] addr_in, output [7:0] dout);
  function [7:0] byte_read;
    input [15:0] a;
    begin
      case (a)
        16'h0000: byte_read = 8'h3E;
        16'h0001: byte_read = 8'hAA;
        16'h0002: byte_read = 8'hD3;
        16'h0003: byte_read = 8'h40;
        16'h0004: byte_read = 8'hC3;
        16'h0005: byte_read = 8'h04;
        16'h0006: byte_read = 8'h00;
        default: byte_read = 8'h00;
      endcase
    end
  endfunction
  assign dout = byte_read(addr_in);
endmodule
