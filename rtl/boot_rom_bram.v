`timescale 1ns/1ps
// boot_rom -- EBR BLOCK RAM boot ROM via the Lattice pmi_rom primitive.
//
// The original boot_rom.v is a combinational LUT case-ROM. This variant bakes
// GWMON into on-chip EBR block RAM instead, which is what README/AGENTS describe
// as the intended design ("baked into the FPGA bitstream in EBR").
//
// WHY pmi_rom and not `reg [7:0] rom[0:N]` + $readmemh? Lattice Diamond does
// NOT infer a read-only block ROM from that pattern (it emits VDB-1002 and
// leaves the array undriven). pmi_rom is the scuba EBR primitive and is the
// only reliable way to get real block RAM on an XP2.
//
// TIMING / WAIT-STATE QUESTION (VERIFIED): XP2 EBR has two output register
// modes -- NOREG (default) and OUTREG (pipelined). We use NOREG (chosen
// below): the ADDRESS is registered at the input of the memory array and the
// OUTPUT is a read-through (combinational off the registered address). The A/B
// simulation (tb_gwmon_bram vs tb_gwmon_lut, using Lattice's OWN sim model)
// proves GWMON boots to the identical banner with the CPU's wait_n held HIGH
// throughout -> NO wait state is required. Reason: the tv80 memory-read / M1
// M-cycle is inherently multi-T-state; the address is presented in T1 and `di`
// is sampled at tstate[2], giving a full clock for the EBR to register the
// address and present the read-through data before the CPU samples it. Only
// the OUTREG (pipelined, +1 full cycle) mode would exceed that slack and
// require a wait state. The AGENTS.md "boot-ROM WB slave must be a WAIT-STATE
// slave" guidance is over-conservative for this direct-bus design.
//
// OutClock must be the design system clock (`clk`, 25 MHz), not a gated one.
module boot_rom_bram(
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
