`timescale 1ns/1ps
// Behavioral pmi_pll model for IVERILOG SIMULATION ONLY.
// This file is NOT added to the Diamond project (LSE synthesizes the real
// on-chip XP2 PLL primitive). It lets the board-top testbench run: CLKOP is
// driven at CLKI/2, matching the PLL configured for 50 MHz in / 25 MHz out.
module pmi_pll #(
  parameter pmi_freq_clki   = 50,
  parameter pmi_freq_clkfb  = 25,
  parameter pmi_freq_clkop  = 25,
  parameter pmi_freq_clkos  = 25,
  parameter pmi_freq_clkok  = 12.5,
  parameter pmi_family      = "XP2",
  parameter pmi_phase_adj   = 0,
  parameter pmi_duty_cycle  = 50,
  parameter pmi_clkfb_source= "CLKOP",
  parameter pmi_fdel        = "off",
  parameter pmi_fdel_val    = 0,
  parameter module_type     = "pmi_pll")
( input  CLKI, input  CLKFB, input  RESET,
  output CLKOP, output CLKOS, output CLKOK, output CLKOK2,
  output LOCK
);
  reg clkop = 1'b0;
  always @(posedge CLKI) begin
    if (RESET) clkop <= 1'b0;
    else        clkop <= ~clkop;
  end
  assign CLKOP  = clkop;
  assign CLKOS  = 1'bz;
  assign CLKOK  = 1'bz;
  assign CLKOK2 = 1'bz;
  assign LOCK   = ~RESET;
endmodule
