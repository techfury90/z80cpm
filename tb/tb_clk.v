`timescale 1ns/1ps
// tb_clk -- verify the fabric uptime clock added to z80cpm_brevia2:
//   1) the 32-bit ms counter advances over time;
//   2) writing port 0x41 latches the counter and ports 0x42..0x45 read it back.
// Drives the CPU-side control wires by force so we don't need a boot program.
module tb_clk;
  reg        clk_in = 0;
  reg        rst_n = 0;
  reg  [7:0] sw = 8'h00;
  wire [7:0] led;
  reg        uart_rx = 1'b1;
  wire       uart_tx;
  wire [16:0] sram_addr; wire sram_cen, sram_oen, sram_wen; wire [7:0] sram_data;

  z80cpm_brevia2 u_dut(.clk_in(clk_in), .rst_n(rst_n), .led(led), .sw(sw),
                       .uart_rx(uart_rx), .uart_tx(uart_tx),
                       .sram_addr(sram_addr), .sram_cen(sram_cen),
                       .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));
  sram_model u_sram(.addr(sram_addr), .cen(sram_cen), .oen(sram_oen),
                    .wen(sram_wen), .data(sram_data));
  always #10 clk_in = ~clk_in;   // 50 MHz input -> cpu clk 25 MHz

  reg [15:0] ms_a, ms_b;
  integer ok;
  initial begin
    $dumpfile("sim/clk.vcd"); $dumpvars(0, tb_clk);
    rst_n = 0; #200 rst_n = 1;
    // Part 1: free-running counter must advance.  1 ms tick = 25000 clk cycles
    // at 25 MHz = 1,000,000 ns of sim time, so sample a few ms apart.
    #300000;  ms_a = u_dut.ck_ms[15:0];   // ~0.3 ms
    #2600000; ms_b = u_dut.ck_ms[15:0];   // ~2.6 ms
    ok = (ms_b - ms_a);
    if (ok >= 2) $display("PASS: ck_ms advanced %0d ms over sim window", ok);
    else          $display("FAIL: ck_ms advanced only %0d", ok);
  end

  // Part 0: port 0x40 must still read the switch bus.
  initial begin
    #300;  sw = 8'hA5;
    force u_dut.io_rd = 1'b1; force u_dut.A = 16'h0040;
    #30; $display("SW read (0x40) = %b %s", u_dut.io_rdata,
                  (u_dut.io_rdata==8'hA5)?"(PASS, expect A5)":"(FAIL)");
    release u_dut.io_rd; release u_dut.A;
  end

  // Part 2: force a known counter value, latch, read all 4 bytes back.
  initial begin
    #3000000;                       // past the advance probe, then override
    force u_dut.ck_ms = 32'h12345678;
    force u_dut.io_wr = 1'b1; force u_dut.A = 16'h0041;
    #30; release u_dut.io_wr; release u_dut.A;
    #50;
    force u_dut.io_rd = 1'b1;
    force u_dut.A = 16'h0042; #20; $display("CLK byte0 (0x42) = %h %s", u_dut.io_rdata, (u_dut.io_rdata==8'h78)?"(PASS, expect 78)":"(FAIL)");
    force u_dut.A = 16'h0043; #20; $display("CLK byte1 (0x43) = %h %s", u_dut.io_rdata, (u_dut.io_rdata==8'h56)?"(PASS, expect 56)":"(FAIL)");
    force u_dut.A = 16'h0044; #20; $display("CLK byte2 (0x44) = %h %s", u_dut.io_rdata, (u_dut.io_rdata==8'h34)?"(PASS, expect 34)":"(FAIL)");
    force u_dut.A = 16'h0045; #20; $display("CLK byte3 (0x45) = %h %s", u_dut.io_rdata, (u_dut.io_rdata==8'h12)?"(PASS, expect 12)":"(FAIL)");
    release u_dut.io_rd; release u_dut.A;
    release u_dut.ck_ms;
    #200 $finish;
  end

  initial begin
    #20000000;  // 20 ms guard
    $display("WATCHDOG: ck_ms=%0d", u_dut.ck_ms);
    $finish;
  end
endmodule
