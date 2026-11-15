`timescale 1ns/1ps
// z80_soc_sram -- M5: SoC with the REAL async external SRAM (bank A), vaulted
// through a wait-state controller (demand-pulled wait_n), plus the console UART
// and LED I/O. This is the memory-foundation step toward the real board.
module z80_soc_sram(
  input         clk,
  input         rst_n,
  output [7:0]  led_reg,
  input  [7:0]  sw_in,
  output        halt_n,
  input         uart_rx,
  output        uart_tx,
  output [16:0] sram_addr,
  output        sram_cen,
  output        sram_oen,
  output        sram_wen,
  inout  [7:0]  sram_data
);
  wire        m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, busak_n;
  wire [15:0] A;
  wire [7:0]  cpu_dout;
  wire [7:0]  bus_din;

  wire        mem_rd = ~mreq_n & ~rd_n;
  wire        mem_we = ~mreq_n & ~wr_n;
  wire        io_rd  = ~iorq_n & ~rd_n;
  wire        io_wr  = ~iorq_n & ~wr_n;

  wire        mem_wait;
  wire [7:0]  mem_rdata;
  sram_async u_sram(.clk(clk), .rst_n(rst_n), .addr(A), .wdata(cpu_dout),
                    .mem_rd(mem_rd), .mem_we(mem_we), .wait_n(mem_wait),
                    .rdata(mem_rdata), .sram_addr(sram_addr), .sram_cen(sram_cen),
                    .sram_oen(sram_oen), .sram_wen(sram_wen), .sram_data(sram_data));

  // LED port 0x40
  reg [7:0] led;
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) led <= 8'h00;
    else if (io_wr && (A[7:0] == 8'h40)) led <= cpu_dout;
  end

  // console UART (0x80 status, 0x81 data)
  wire        uart_wr = io_wr && (A[7:0] == 8'h81);
  wire        uart_rd = io_rd && (A[7:0] == 8'h81);
  wire [7:0]  uart_rx_data;
  wire        uart_rx_avail, uart_tx_busy;
  uart_tx u_tx(.clk(clk), .rst_n(rst_n), .tx_data(cpu_dout), .tx_start(uart_wr),
               .tx_busy(uart_tx_busy), .txd(uart_tx));
  uart_rx u_rx(.clk(clk), .rst_n(rst_n), .rxd(uart_rx), .rx_data(uart_rx_data),
               .rx_avail(uart_rx_avail), .rx_consume(uart_rd));

  reg [7:0] io_rdata;
  always @(*) begin
    io_rdata = 8'h00;
    if (io_rd && (A[7:0] == 8'h40)) io_rdata = sw_in;
    else if (io_rd && (A[7:0] == 8'h81)) io_rdata = uart_rx_data;
    else if (io_rd && (A[7:0] == 8'h80)) io_rdata = {6'h00, uart_rx_avail, uart_tx_busy};
  end

  assign led_reg = led;
  assign bus_din = mem_rd ? mem_rdata : io_rdata;

  tv80n u_cpu(
    .reset_n(rst_n), .clk(clk), .wait_n(mem_wait), .int_n(1'b1), .nmi_n(1'b1), .busrq_n(1'b1),
    .m1_n(m1_n), .mreq_n(mreq_n), .iorq_n(iorq_n), .rd_n(rd_n), .wr_n(wr_n),
    .rfsh_n(rfsh_n), .halt_n(halt_n), .busak_n(busak_n),
    .A(A), .di(bus_din), .dout(cpu_dout)
  );
endmodule
