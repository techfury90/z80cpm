`timescale 1ns/1ps
module dbg3d;
  reg clk=0; reg rst_n; reg [7:0] sw_in=0; wire [7:0] led_reg; wire halt_n;
  reg uart_rx=1; wire uart_tx;
  reg active=0; reg [11:0] ctr=0; reg [3:0] biti=0; reg [7:0] sh=0; reg prev=1;
  z80_soc_busless u_dut(.clk(clk),.rst_n(rst_n),.led_reg(led_reg),.sw_in(sw_in),.halt_n(halt_n),.uart_rx(uart_rx),.uart_tx(uart_tx));
  initial $readmemh("programs/hello.mem", u_dut.u_mem.mem);
  always #20 clk=~clk;
  always @(posedge clk) begin
    prev <= uart_tx;
    if (!active) begin
      if (prev===1'b1 && uart_tx===1'b0) begin active<=1; ctr<=0; biti<=0; sh<=0; end
    end else begin
      ctr <= ctr+1;
      if (biti<8 && ctr==(biti*216 + 216 + 108)) begin
        sh <= {uart_tx, sh[7:1]};
        $write("bit%0d=%b ", biti, uart_tx);
        biti <= biti+1;
      end
      if (ctr==(10*216)) begin
        $write("=> byte=%0h\n", sh);
        active<=0;
      end
    end
  end
  initial begin rst_n=0; #200 rst_n=1; #4000000; $finish; end
endmodule
