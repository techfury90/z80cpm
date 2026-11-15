// M1: prove the TV80 core fetches and executes, independent of any bus fabric.
// Feed it from a pure-LUT NOP ROM and count falling edges of m1_n (M1 =
// instruction fetch). The recorded fetch-address sequence must be
// {0,2,4,5,6,7,8,...}: the +1 steps come from 1-byte NOPs, the +2 steps at the
// start from the two 2-byte LD A,n. That 0,2,4,5,6,7 shape is the smoking gun
// that the core truly fetches/decodes, not merely clocks.
`timescale 1ns/1ps
module tb_m1;
  reg        clk = 0;
  reg        reset_n;
  wire       m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, halt_n, busak_n;
  wire [15:0] A;
  wire [7:0]  rom_out;

  reg  [7:0]  fetch_addr [0:1023];
  reg  [9:0]  cnt = 0;
  integer     k;
  integer     errors = 0;

  nop_rom u_rom(.addr_in(A), .dout(rom_out));

  tv80n u_cpu(
    .reset_n(reset_n), .clk(clk), .wait_n(1'b1), .int_n(1'b1),
    .nmi_n(1'b1), .busrq_n(1'b1),
    .m1_n(m1_n), .mreq_n(mreq_n), .iorq_n(iorq_n), .rd_n(rd_n), .wr_n(wr_n),
    .rfsh_n(rfsh_n), .halt_n(halt_n), .busak_n(busak_n),
    .A(A), .di(rom_out), .dout()
  );

  always #5 clk = ~clk;  // 100 MHz test clock

  always @(negedge m1_n) begin
    if (cnt < 1024) begin
      fetch_addr[cnt] = A;
      cnt = cnt + 1;
    end
  end

  initial begin
    $dumpfile("sim/m1.vcd");
    $dumpvars(0, tb_m1);
    reset_n = 0;
    #100 reset_n = 1;
    wait (cnt >= 200);
    #1;

    $display("Recorded %0d M1 fetches", cnt);
    for (k = 0; k < 16; k = k + 1) begin
      if (k == 0) begin
        if (fetch_addr[0] !== 16'h0000) begin
          $display("FAIL: fetch[0]=%0h expected 0", fetch_addr[0]); errors = errors + 1;
        end
      end else if (k == 1) begin
        if (fetch_addr[1] !== 16'h0002) begin
          $display("FAIL: fetch[1]=%0h expected 2", fetch_addr[1]); errors = errors + 1;
        end
      end else begin
        if (fetch_addr[k] !== (k + 2)) begin
          $display("FAIL: fetch[%0d]=%0h expected %0h", k, fetch_addr[k], k + 2);
          errors = errors + 1;
        end
      end
    end

    $display("Fetch sequence (first 16): %0h %0h %0h %0h %0h %0h %0h %0h %0h %0h %0h %0h %0h %0h %0h %0h",
      fetch_addr[0], fetch_addr[1], fetch_addr[2], fetch_addr[3], fetch_addr[4],
      fetch_addr[5], fetch_addr[6], fetch_addr[7], fetch_addr[8], fetch_addr[9],
      fetch_addr[10], fetch_addr[11], fetch_addr[12], fetch_addr[13], fetch_addr[14], fetch_addr[15]);

    if (errors == 0)
      $display("PASS: TV80 core executes (PC walk 0,2,4,5,6,7,...)");
    else
      $display("FAIL: %0d mismatches", errors);

    #50 $finish;
  end

  // Watchdog: if the core never fetches, bound the run and report.
  initial begin
    #40000;
    $display("WATCHDOG: cnt=%0d m1_n=%b A=%0h reset_n=%b", cnt, m1_n, A, reset_n);
    $display("  internal: mcycle=%0d tstate=%0d", u_cpu.i_tv80_core.mcycle, u_cpu.i_tv80_core.tstate);
    $finish;
  end
endmodule
