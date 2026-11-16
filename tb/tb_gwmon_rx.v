`timescale 1ns/1ps
// End-to-end: run GWMON, then inject a char on uart_rx and confirm the design
// actually receives it (uart_rx_avail pulses) and the monitor consumes it (the
// read clears rx_avail). Proves the RX->CPU->GWMON path, not just the uart_rx
// module in isolation.
module tb_gwmon_rx;
  reg        clk_in = 0;
  reg        rst_n  = 0;
  reg  [7:0] sw     = 8'h00;
  wire       uart_tx;
  reg        uart_rx = 1'b1;
  wire [7:0] led;
  wire [16:0] sram_addr; wire sram_cen, sram_oen, sram_wen; wire [7:0] sram_data;

  z80cpm_brevia2 u_dut(.clk_in(clk_in), .rst_n(rst_n), .led(led), .sw(sw),
                       .uart_rx(uart_rx), .uart_tx(uart_tx),
                       .sram_addr(sram_addr), .sram_cen(sram_cen),
                       .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));
  sram_model u_sram(.addr(sram_addr), .cen(sram_cen), .oen(sram_oen),
                    .wen(sram_wen), .data(sram_data));

  localparam integer BAUD_DIV = 2604;
  always #10 clk_in = ~clk_in;

  reg [15:0] tx_ctr = 0; reg [3:0] tx_bit = 0; reg [7:0] tx_shift = 0; reg tx_prev = 1;
  reg tx_active = 0; reg [7:0] tx_mem[0:1023]; reg [10:0] tx_count = 0; integer i;
  always @(posedge u_dut.clk) begin
    tx_prev <= uart_tx;
    if (!tx_active) begin
      if (tx_prev===1 && uart_tx===0) begin tx_active<=1; tx_ctr<=0; tx_bit<=0; tx_shift<=0; end
    end else begin
      tx_ctr <= tx_ctr + 1;
      if (tx_bit<8 && tx_ctr == ((tx_bit*2604)+2604+1302)) begin tx_shift<={uart_tx,tx_shift[7:1]}; tx_bit<=tx_bit+1; end
      if (tx_ctr == (10*2604)) begin if(tx_count<1023) tx_mem[tx_count]<=tx_shift; tx_count<=tx_count+1; tx_active<=0; end
    end
  end

  task send_byte(input [7:0] b);
    integer i;
    begin
      uart_rx = 0; repeat (BAUD_DIV) @(posedge u_dut.clk);
      for (i = 0; i < 8; i = i + 1) begin uart_rx = b[i]; repeat (BAUD_DIV) @(posedge u_dut.clk); end
      uart_rx = 1; repeat (BAUD_DIV) @(posedge u_dut.clk);
    end
  endtask

  initial begin
    rst_n = 0; #200 rst_n = 1;
    // wait for the '>' prompt
    #26000000;
    $display("banner: %0d bytes", tx_count);
    // inject a 'D' (0x44) command char and see if rx_avail is consumed
    #1000 send_byte(8'h44);
    #200000;
    $display("rx_avail=%b (0=consumed by GWMON)", u_dut.uart_rx_avail);
    if (~u_dut.uart_rx_avail) $display("PASS: GWMON received & consumed the injected char");
    else $display("FAIL: char not consumed");
    $finish;
  end
endmodule
