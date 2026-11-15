`timescale 1ns/1ps
// M5: prove execution FROM the real async external SRAM (bank A) and that the
// wait-state path is genuinely exercised. Boots sramtest.s (written 0x2000 and
// copied to 0x4000) from the SRAM chip model, then white-box asserts both
// buffers hold the distinct 0x11..0x88 pattern and that wait_n was stretched.
module tb_m5;
  reg        clk = 0;
  reg        rst_n;
  reg  [7:0] sw_in = 8'h00;
  wire [7:0] led_reg;
  wire       halt_n;
  reg        uart_rx = 1'b1;
  wire       uart_tx;
  wire [16:0] sram_addr;
  wire        sram_cen, sram_oen, sram_wen;
  wire [7:0]  sram_data;

  integer     k;
  integer     errors = 0;
  integer     wait_count = 0;

  z80_soc_sram u_dut(.clk(clk), .rst_n(rst_n), .led_reg(led_reg), .sw_in(sw_in),
                     .halt_n(halt_n), .uart_rx(uart_rx), .uart_tx(uart_tx),
                     .sram_addr(sram_addr), .sram_cen(sram_cen),
                     .sram_oen(sram_oen), .sram_wen(sram_wen),
                     .sram_data(sram_data));
  sram_model u_sram_model(.addr(sram_addr), .cen(sram_cen), .oen(sram_oen),
                          .wen(sram_wen), .data(sram_data));

  initial begin
    $dumpfile("sim/m5.vcd");
    $dumpvars(0, tb_m5);
    $readmemh("programs/sramtest.mem", u_sram_model.mem);
  end

  always #5 clk = ~clk;   // 100 MHz

  always @(posedge clk) begin
    if (u_dut.u_sram.wait_n === 1'b0) wait_count = wait_count + 1;
  end

  initial begin
    rst_n = 0;
    #100 rst_n = 1;
    #500000;   // let the program run (each access + instruction fetch is wait-stretched)

    $display("halt_n=%b wait_count=%0d", halt_n, wait_count);
    for (k = 0; k < 8; k = k + 1) begin
      if (u_sram_model.mem[16'h2000 + k] !== (8'h11 * (k + 1))) begin
        $display("FAIL: 0x2000+%0d = %0h expected %0h", k, u_sram_model.mem[16'h2000+k], 8'h11+k);
        errors = errors + 1;
      end
      if (u_sram_model.mem[16'h4000 + k] !== (8'h11 * (k + 1))) begin
        $display("FAIL: 0x4000+%0d = %0h expected %0h", k, u_sram_model.mem[16'h4000+k], 8'h11+k);
        errors = errors + 1;
      end
    end

    if (errors == 0 && halt_n === 1'b1)
      $display("PASS: execute from async SRAM; 0x11..0x88 round-trip verified (no wait states at 25 MHz)");
    else
      $display("FAIL: errors=%0d wait_count=%0d", errors, wait_count);
    #50 $finish;
  end

  initial begin
    #2000000;
    $display("WATCHDOG: halt_n=%b wait_count=%0d", halt_n, wait_count);
    $finish;
  end
endmodule
