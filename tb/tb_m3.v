`timescale 1ns/1ps
// M3: ACIA console. Program hello.s prints "Hello from Z80!\r\n" then echoes RX.
// We decode uart_tx into a transcript and inject a byte into uart_rx; the
// echoed byte must appear in the transcript after the message.
module tb_m3;
  reg        clk = 0;
  reg        rst_n;
  reg  [7:0] sw_in = 8'h00;
  wire [7:0] led_reg;
  wire       halt_n;
  reg        uart_rx = 1'b1;
  wire       uart_tx;

  reg  [7:0] tx_mem [0:255];
  reg  [8:0] tx_count = 0;
  reg        tx_active = 0;
  reg [11:0] tx_ctr = 0;
  reg [3:0]  tx_bit = 0;
  reg [7:0]  tx_shift = 0;
  reg        tx_prev = 1'b1;
  integer    k;
  integer    errors = 0;
  integer    found_msg = 0;
  integer    found_echo = 0;

  localparam [8:0] BP = 217;   // clk cycles per bit (2 * BAUD_HALF)

  z80_soc_busless u_dut(.clk(clk), .rst_n(rst_n), .led_reg(led_reg),
                        .sw_in(sw_in), .halt_n(halt_n),
                        .uart_rx(uart_rx), .uart_tx(uart_tx));

  integer i;
  initial begin
    $dumpfile("sim/m3.vcd");
    $dumpvars(0, tb_m3);
    for (i = 0; i < 256; i = i + 1) tx_mem[i] = 8'h00;
    $readmemh("programs/hello.mem", u_dut.u_mem.mem);
  end

  always #20 clk = ~clk;  // 25 MHz

  // ---- Serial decoder on uart_tx (8N1, LSB first) ----
  always @(posedge clk) begin
    tx_prev <= uart_tx;
    if (!tx_active) begin
      if (tx_prev === 1'b1 && uart_tx === 1'b0) begin
        tx_active <= 1'b1; tx_ctr <= 0; tx_bit <= 0; tx_shift <= 0;
      end
    end else begin
      tx_ctr <= tx_ctr + 1;
      if (tx_bit < 8 && tx_ctr == ((tx_bit * BP) + BP + (BP/2))) begin
        tx_shift <= {uart_tx, tx_shift[7:1]};   // LSB first
        tx_bit <= tx_bit + 1;
      end
      if (tx_ctr == (10 * BP)) begin            // end of frame (after stop bit)
        if (tx_count < 255) begin
          tx_mem[tx_count] <= tx_shift; tx_count <= tx_count + 1;
        end
        tx_active <= 0;
      end
    end
  end

  // ---- RX injector (8N1, LSB first), bit period = BAUD_DIV clk cycles ----
  task uart_send_byte;
    input [7:0] b;
    integer k2, j2;
    begin
      uart_rx = 1'b0;
      for (j2 = 0; j2 < 217; j2 = j2 + 1) @(posedge clk);          // start bit
      for (k2 = 0; k2 < 8; k2 = k2 + 1) begin
        uart_rx = b[k2];
        for (j2 = 0; j2 < 217; j2 = j2 + 1) @(posedge clk);        // data bit
      end
      uart_rx = 1'b1;
      for (j2 = 0; j2 < 217; j2 = j2 + 1) @(posedge clk);          // stop bit
    end
  endtask

  initial begin
    rst_n = 0;
    #200 rst_n = 1;
    // wait for the message to be fully transmitted (17 bytes), then send one RX byte
    wait (tx_count >= 17);
    #20000;
    uart_send_byte(8'h41);   // 'A'
    wait (tx_count >= 18);
    #100000;

    $display("transcript (%0d bytes):", tx_count);
    for (k = 0; k < tx_count; k = k + 1) $write("%02x ", tx_mem[k]);
    $write("\n");

    // check for "Hello from Z80!" substring
    for (k = 0; k + 15 < tx_count; k = k + 1) begin
      if (tx_mem[k]==8'h48 && tx_mem[k+1]==8'h65 && tx_mem[k+2]==8'h6c &&
          tx_mem[k+3]==8'h6c && tx_mem[k+4]==8'h6f && tx_mem[k+5]==8'h20 &&
          tx_mem[k+6]==8'h66 && tx_mem[k+7]==8'h72 && tx_mem[k+8]==8'h6f &&
          tx_mem[k+9]==8'h6d && tx_mem[k+10]==8'h20 && tx_mem[k+11]==8'h5a &&
          tx_mem[k+12]==8'h38 && tx_mem[k+13]==8'h30 && tx_mem[k+14]==8'h21)
        found_msg = 1;
    end
    // check the echoed 'A' (0x41) appears after the message
    for (k = 0; k < tx_count; k = k + 1)
      if (tx_mem[k] == 8'h41) found_echo = 1;

    $display("halt_n=%b found_msg=%0d found_echo=%0d", halt_n, found_msg, found_echo);
    if (found_msg && found_echo && halt_n === 1'b1)
      $display("PASS: console prints message and echoes RX byte");
    else
      $display("FAIL: found_msg=%0d found_echo=%0d", found_msg, found_echo);
    #100 $finish;
  end

  initial begin
    #20000000;
    $display("WATCHDOG: tx_count=%0d", tx_count);
    for (k = 0; k < tx_count; k = k + 1) $write("%02x ", tx_mem[k]);
    $write("\n");
    $finish;
  end
endmodule
