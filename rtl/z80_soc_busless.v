`timescale 1ns/1ps
// z80_soc_busless -- minimal native-bus Z80 SoC.
// TV80 (negative-edge wrapper) + synchronous RAM (bank A) + I/O:
//   port 0x40  : LED latch (write) / switch (read)
//   port 0x80  : console status (read: bit0 tx_busy, bit1 rx_avail)
//   port 0x81  : console TX data (write) / RX data (read)
// The console is a simple custom 8N1 UART (we control the framing exactly; no
// 6850/8251 register-decode quirks).
//
// Decode discipline: memory vs I/O separated by the core's OWN iorq_n, never by
// an address-range guess (the Z80 stack lives at 0xFFxx).
module z80_soc_busless(
  input         clk,
  input         rst_n,
  output [7:0]  led_reg,
  input  [7:0]  sw_in,
  output        halt_n,
  input         uart_rx,
  output        uart_tx
);

  wire        m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, busak_n;
  wire [15:0] A;
  wire [7:0]  cpu_dout;
  wire [7:0]  bus_din;

  wire        mem_rd = ~mreq_n & ~rd_n;
  wire        mem_wr = ~mreq_n & ~wr_n;
  wire        io_rd  = ~iorq_n & ~rd_n;
  wire        io_wr  = ~iorq_n & ~wr_n;

  wire [7:0]  mem_dout;
  sync_mem u_mem(.clk(clk), .addr(A), .wdata(cpu_dout), .we(mem_wr), .rdata(mem_dout));

  // ---- I/O port 0x40: LED ----
  reg [7:0] led;
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) led <= 8'h00;
    else if (io_wr && (A[7:0] == 8'h40)) led <= cpu_dout;
  end

  // ---- Console UART ----
  wire        uart_wr = io_wr && (A[7:0] == 8'h81);   // TX data write
  wire        uart_rd = io_rd && (A[7:0] == 8'h81);   // RX data read
  wire [7:0]  uart_rx_data;
  wire        uart_rx_avail, uart_tx_busy;
  uart_tx u_tx(.clk(clk), .rst_n(rst_n), .tx_data(cpu_dout), .tx_start(uart_wr),
               .tx_busy(uart_tx_busy), .txd(uart_tx));
  uart_rx u_rx(.clk(clk), .rst_n(rst_n), .rxd(uart_rx), .rx_data(uart_rx_data),
               .rx_avail(uart_rx_avail), .rx_consume(uart_rd));

  // ---- I/O readback mux ----
  reg [7:0] io_rdata;
  always @(*) begin
    io_rdata = 8'h00;
    if (io_rd && (A[7:0] == 8'h40)) io_rdata = sw_in;
    else if (io_rd && (A[7:0] == 8'h81)) io_rdata = uart_rx_data;
    else if (io_rd && (A[7:0] == 8'h80)) io_rdata = {6'h00, uart_rx_avail, uart_tx_busy};
  end

  assign led_reg = led;
  assign bus_din = mem_rd ? mem_dout : io_rdata;

  tv80n u_cpu(
    .reset_n(rst_n), .clk(clk), .wait_n(1'b1), .int_n(1'b1), .nmi_n(1'b1), .busrq_n(1'b1),
    .m1_n(m1_n), .mreq_n(mreq_n), .iorq_n(iorq_n), .rd_n(rd_n), .wr_n(wr_n),
    .rfsh_n(rfsh_n), .halt_n(halt_n), .busak_n(busak_n),
    .A(A), .di(bus_din), .dout(cpu_dout)
  );

endmodule
