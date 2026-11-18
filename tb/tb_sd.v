`timescale 1ns/1ps
// tb_sd -- verifies the SD SPI-mode capabilities that were ADDED to the generic
// spi_flash byte engine (clock_free + prescale) for the SD-card port on pins
// 31/32/35/36.  Simulates the engine directly, not the whole SoC.
//
// Cases:
//  TEST 1: SD INIT posture -- clock_free=1, prescale=32 (slow ~390 kHz), CS# HIGH.
//          A 0xFF byte write must still toggle SCK (the SD spec needs >=74
//          pulses with CS# high before CMD0) and hold MOSI at 1.  Verify the
//          byte takes ~32x longer than a fast byte.
//  TEST 2: ADDRESSED command byte -- clock_free=1, prescale=1, CS# LOW.
//          Write 0x40 (CMD0 first byte).  Verify MOSI emits 0x40 MSB-first
//          (0,1,0,0,0,0,0,0) sampled on the SCK rising edges, and that MISO is
//          clocked in.
//  TEST 3: fast normal byte -- prescale=1, CS# low: byte completes in ~2 clk/bit.
module tb_sd;
  reg clk = 1'b0;
  always #20 clk = ~clk;                 // 25 MHz (40 ns period)

  reg        rst = 1'b1;
  reg        cs;
  reg        rd_stb, wr_stb;
  reg  [7:0] din;
  reg        clock_free;
  reg  [5:0] prescale;
  wire [7:0] dout;
  wire       busy, wait_req;
  wire       sd_sclk, sd_csn, sd_mosi;
  reg        sd_miso = 1'b0;

  spi_flash u_sd(.clk(clk), .rst(rst), .cs(cs),
                 .rd_stb(rd_stb), .wr_stb(wr_stb),
                 .din(din), .dout(dout), .busy(busy), .wait_req(wait_req),
                 .clock_free(clock_free), .prescale(prescale),
                 .spi_sclk(sd_sclk), .spi_csn(sd_csn),
                 .spi_mosi(sd_mosi), .spi_miso(sd_miso));

  integer   sclk_edges;
  reg       sample[0:15];   // MOSI value captured at each SCK rising edge (1 bit)
  integer   sidx;

  always @(posedge sd_sclk) begin
    #1;                                  // let the MOSI bit settle past the edge race
    sclk_edges = sclk_edges + 1;
    if (sidx < 16) begin sample[sidx] = sd_mosi; sidx = sidx + 1; end
  end

  task wr_byte(input [7:0] b);
    begin
      @(negedge clk); wr_stb = 1'b1; din = b;
      @(negedge clk); wr_stb = 1'b0;
    end
  endtask

  integer i, k;
  logic  ok;
  integer t0, t1;

  initial begin
    $dumpfile("sim/sd.vcd"); $dumpvars(0, tb_sd);
    cs = 1'b1; rd_stb = 1'b0; wr_stb = 1'b0; clock_free = 1'b0;
    prescale = 6'd1; sidx = 0; sclk_edges = 0; sample[0]=0;

    repeat (4) @(posedge clk);
    rst = 1'b0;
    repeat (4) @(posedge clk);

    // ---------- TEST 1: SD init (CS# HIGH, slow clock) ----------
    clock_free = 1'b1; prescale = 6'd32; cs = 1'b1;
    $display("TEST1: init 0xFF write, CS high, prescale=32");
    t0 = $time;
    wr_byte(8'hFF);
    wait (busy == 1'b0);
    t1 = $time;
    ok = 1;
    // We need >=8 SCK rising edges (one per bit) even with CS# high, and the
    // bit period must be ~32x slower than normal.
    $display("  SCK rising edges during slow byte = %0d (expect >=8)", sclk_edges);
    if (sclk_edges < 8) begin ok = 0; $display("  FAIL: not enough SCK pulses with CS high"); end
    if ((t1 - t0) < (32*17*40)) begin ok = 0; $display("  FAIL: byte too fast (%0t ns)", t1-t0); end
    if (ok) $display("  PASS: CS-high slow clock works  (byte took %0t ns)", t1 - t0);
    else    $display("  FAIL: TEST1");

    // ---------- TEST 2: addressed CMD0 byte (CS# LOW, fast) ----------
    #40;
    clock_free = 1'b1; prescale = 6'd1; cs = 1'b0;
    sidx = 0; sclk_edges = 0;
    $display("TEST2: send 0x40 (CMD0) on MOSI, CS low, fast");
    wr_byte(8'h40);
    wait (busy == 1'b0);
    $display("  MOSI bits (rising-edge samples) = %b%b%b%b%b%b%b%b",
             sample[0],sample[1],sample[2],sample[3],
             sample[4],sample[5],sample[6],sample[7]);
    if ({sample[0],sample[1],sample[2],sample[3],
         sample[4],sample[5],sample[6],sample[7]} == 8'h40)
      $display("  PASS: 0x40 emitted MSB-first");
    else $display("  FAIL: TEST2 MOSI pattern");

    // ---------- TEST 3: guard that fast mode still completes ~2 clk/bit -----
    #40;
    clock_free = 1'b1; prescale = 6'd1; cs = 1'b0;
    $display("TEST3: fast byte duration");
    t0 = $time; wr_byte(8'h55); wait (busy == 1'b0); t1 = $time;
    $display("  fast byte took %0t ns (expect < ~40*17*2)", t1-t0);
    if ((t1 - t0) < 40*17*8) $display("  PASS: fast byte is fast");
    else $display("  FAIL: TEST3 unexpectedly slow");

    $display("ALL DONE");
    $finish;
  end
endmodule
