// M2: prove the native-bus SoC fetches/executes from RAM and performs an I/O
// write. Program led.s writes 0x5A then 0xA5 to I/O port 0x40 then loops. We
// white-box assert the LED latch saw 0x5A then 0xA5, and that halt_n stayed
// HIGH (the loop is a JMP, no HLT -> running, not halted).
`timescale 1ns/1ps
module tb_m2;
  reg        clk = 0;
  reg        rst_n;
  reg  [7:0] sw_in = 8'h00;
  wire [7:0] led_reg;
  wire       halt_n;

  reg        seen_5a = 0;
  reg        seen_a5 = 0;

  z80_soc_busless u_dut(.clk(clk), .rst_n(rst_n), .led_reg(led_reg),
                        .sw_in(sw_in), .halt_n(halt_n));

  initial begin
    $dumpfile("sim/m2.vcd");
    $dumpvars(0, tb_m2);
    $readmemh("programs/led.mem", u_dut.u_mem.mem);
  end

  always #5 clk = ~clk;

  always @(negedge clk) begin
    if (led_reg == 8'h5A) seen_5a = 1'b1;
    else if (seen_5a && led_reg == 8'hA5) seen_a5 = 1'b1;
  end

  initial begin
    rst_n = 0;
    #100 rst_n = 1;
    wait (seen_a5);
    #1;
    $display("led_reg=%0h halt_n=%b", led_reg, halt_n);
    if (seen_5a && seen_a5 && halt_n === 1'b1)
      $display("PASS: native decode + fetch from RAM + I/O write to port 0x40 (0x5A then 0xA5)");
    else
      $display("FAIL: seen_5a=%b seen_a5=%b halt_n=%b", seen_5a, seen_a5, halt_n);
    #50 $finish;
  end

  initial begin
    #100000;
    $display("WATCHDOG: led_reg=%0h halt_n=%b seen_5a=%b seen_a5=%b",
             led_reg, halt_n, seen_5a, seen_a5);
    $finish;
  end
endmodule
