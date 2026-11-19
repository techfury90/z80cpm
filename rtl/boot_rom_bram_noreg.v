`timescale 1ns/1ps
// boot_rom -- EBR BLOCK RAM boot ROM (pmi_rom), pmi_regmode="noreg".
// "noreg" = registered address, COMBINATIONAL read-through output (no output
// pipeline register). This is the closest a real EBR gets to the async LUT ROM
// it replaces, and is the variant that needs NO wait state (see tb_gwmon_bram).
//
// Compare with pmi_regmode="reg" (registered output, +1 cycle latency) which is
// the fully-pipelined EBR and DOES need a wait state on this bus.
module boot_rom_bram_noreg(
  input         clk,
  input  [15:0] addr_in,
  output [7:0]  dout
);
  wire [7:0] q;
  pmi_rom #(
    .pmi_addr_depth         (4096),
    .pmi_addr_width         (12),
    .pmi_data_width         (8),
    .pmi_regmode            ("noreg"),
    .pmi_gsr                ("disable"),
    .pmi_resetmode          ("sync"),
    .pmi_optimization       ("speed"),
    .pmi_init_file          ("C:/Users/techf/Desktop/brevia2/z80cpm/rtl/boot_rom.mem"),
    .pmi_init_file_format   ("hex"),
    .pmi_family             ("XP2"),
    .module_type            ("pmi_rom"))
  u_rom(
    .Address(addr_in[11:0]),
    .OutClock(clk),
    .OutClockEn(1'b1),
    .Reset(1'b0),
    .Q(q));
  assign dout = q;
endmodule
