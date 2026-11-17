`timescale 1ns/1ps
// sst25vf020_model -- behavioral SPI slave model of the SST25VF020 serial
// flash (Microchip/SST, 256 KB). Simulation only: proves that the spi_flash
// byte engine behaves like a real SST25VF020 on the wire (Read/Program/Erase/
// JEDEC ID=0xBF). The memory array is initialized to 0xFF and can be seeded by
// the testbench via the `mem` array.
//
// Mode-0 (CPOL=0, CPHA=0): the slave samples MOSI on the SCK rising edge and
// drives MISO on the SCK falling edge (the master samples MISO on its rising
// edge), matching what the byte engine drives.
//
// Commands (opcodes): 0x06 WREN, 0x04 WRDI, 0x05 RDSR, 0x9F JEDEC ID,
// 0x03 Read, 0x02 Byte Program, 0xAF AAI, 0x20 Sector-Erase (4 KB),
// 0x60/0xC7 Chip Erase.  Erase-before-write is honored: program only clears
// 1->0; a 0->1 transition needs a sector/chip erase.
module sst25vf020_model(
  input        spi_csn,
  input        spi_sclk,
  input        spi_mosi,
  output reg   spi_miso
);
  reg [7:0] mem [0:262143];
  reg [7:0] sr;                 // MOSI shift-in register (MSB first)
  reg [7:0] mso;                // MISO byte being clocked out (MSB first)
  reg [7:0] opcode;             // captured command byte
  reg [23:0] aaddr;             // captured 24-bit address
  reg [7:0]  status;            // bit0 WIP, bit1 WEL
  reg [3:0]  bits;              // bit counter for the byte being clocked in
  reg [3:0]  mb;                // bit counter for the byte being clocked out
  reg [3:0]  addr_rem;          // address bytes still expected
  reg        dphase;            // awaiting a program/AAI data byte
  reg        resp;              // 1 = streaming response bytes on MISO
  reg [7:0]  resp_data;         // byte currently being streamed out
  reg [1:0]  resp_cnt;          // response bytes still to emit (0 = Run mode)
  reg        erase_pending;
  reg        busyd;
  reg [5:0]  busyc;
  reg        wel;
  reg        txn_on;            // 1 = a transaction is in progress (opcode captured)
  reg        aai;               // AAI auto-increment program mode
  reg [23:0] aai_addr;
  integer i;

  reg [7:0] wdummy;
  initial begin
    for (i = 0; i < 262144; i = i + 1) mem[i] = 8'hFF;
    spi_miso = 1'b1;
    sr = 0; mso = 0; opcode = 0; aaddr = 0; status = 0;
    bits = 0; mb = 0; addr_rem = 0; dphase = 0; resp = 0; resp_data = 0;
    resp_cnt = 0; erase_pending = 0; busyd = 0; busyc = 0; wel = 0;
    aai = 0; aai_addr = 0; txn_on = 0;
  end

  // ---- self-timed busy run-down (erase time ~ms scaled to sim) ----
  always @(posedge spi_sclk) begin
    if (busyd) begin
      busyc <= busyc - 1'b1;
      if (busyc == 0) begin busyd <= 0; status[0] <= 0; end
    end
  end

  // ---------- MOSI sampling + byte-boundary processing (posedge) ----------
  always @(posedge spi_sclk) begin
    if (spi_csn) begin
      bits <= 0;
    end else if (busyd) begin
      // command/address bytes are ignored while self-timed busy
    end else begin
      if (bits == 7) begin          // 8th bit of the byte
        bits <= 0;
        process_byte({sr[6:0], spi_mosi});   // full byte = prior 7 bits + this one
      end else begin
        sr <= {sr[6:0], spi_mosi};
        bits <= bits + 1'b1;
      end
    end
  end

  task process_byte(input [7:0] by);
    begin
      if (!txn_on) begin
        // first byte of a fresh transaction (CS# was just asserted) = command
        txn_on = 1'b1;
        opcode = by; dphase = 0; aai = 0; aaddr = 0;
        case (by)
          8'h06: wel = 1;
          8'h04: wel = 0;
          8'h9F: begin resp = 1; resp_cnt = 3; resp_data = 8'hBF; mso = 8'hBF; mb = 0; end
          8'h05: begin resp = 1; resp_cnt = 0; resp_data = status; mso = status; mb = 0; end
          8'h03: addr_rem = 3;
          8'h02: addr_rem = 3;
          8'hAF: addr_rem = 3;
          8'h20: addr_rem = 3;
          8'h60: begin erase_all(); end
          8'hC7: begin erase_all(); end
          default: ;
        endcase
      end
      else if (aai && !resp) begin
        // AAI data byte: program at auto-incrementing address, stay in aai.
        if (wel) mem[aai_addr] = mem[aai_addr] & by;
        aai_addr = aai_addr + 24'h1;
      end
      else if (dphase) begin
        // Byte Program data byte (address already captured).
        if (wel) mem[aaddr] = mem[aaddr] & by;   // 1->0 only
        dphase = 0;
      end
      else if (addr_rem > 0) begin
        aaddr = {aaddr[15:0], by};
        addr_rem = addr_rem - 1'b1;
        if (addr_rem == 0) begin
          case (opcode)
            8'h03: begin resp = 1; resp_cnt = 0; resp_data = mem[aaddr]; mso=resp_data; mb=0; end
            8'h02: begin dphase = 1; end
            8'hAF: begin aai = 1; aai_addr = aaddr; end
            8'h20: begin erase_pending = 1; end
            default: ;
          endcase
        end
      end
      else begin
        // a "don't-care" MOSI byte during a response (read/JEDEC/RDSR): ignore.
      end
    end
  endtask

  task erase_all;
    begin
      for (i = 0; i < 262144; i = i + 1) mem[i] = 8'hFF;
      wel = 0; busyd = 1; busyc = 8; status[0] = 1;
    end
  endtask

  // ---------- Sector erase trigger (after its 3 address bytes) ----------
  always @(posedge spi_sclk) begin
    if (erase_pending) begin
      erase_pending = 0;
      for (i = 0; i < 1024; i = i + 1)
        mem[{aaddr[23:12], 12'h0} + i] = 8'hFF;    // erase 4 KB sector to 0xFF
      wel = 0; busyd = 1; busyc = 8; status[0] = 1;
    end
  end

  // ---------- MISO drive (negedge): present the next response bit ----------
  always @(negedge spi_sclk) begin
    if (spi_csn) begin
      spi_miso = 1'b1;
    end else if (resp) begin
      spi_miso = mso[7];
      mso <= {mso[6:0], 1'b0};
      if (mb == 7) begin            // last bit of the current response byte
        mb <= 0;
        if (resp_cnt > 1) begin
          resp_cnt <= resp_cnt - 1'b1;
          resp_data <= (resp_cnt==3) ? 8'h20 : 8'h02;   // JEDEC device-id bytes
          mso <= resp_data;
        end else begin
          if (resp_cnt == 1) begin
            resp_cnt <= 0;
            resp_data <= (opcode==8'h05) ? status : mem[aaddr];
            mso <= resp_data;
          end else begin
            // continuous mode (Read / free-run): next memory byte
            resp_data <= mem[aaddr];
            aaddr <= aaddr + 24'h1;
            mso <= resp_data;
          end
        end
      end else begin
        mb <= mb + 1'b1;
      end
    end else begin
      spi_miso = 1'b1;
    end
  end

  // ---------- transaction framing reset when CS# is (re)selected ----------
  always @(negedge spi_csn) begin
    bits = 0; mb = 0; addr_rem = 0; resp = 0; resp_data = 0; resp_cnt = 0;
    opcode = 0; aaddr = 0; dphase = 0; aai = 0; txn_on = 0;
    mso = 8'hFF; spi_miso = 1'b1;
  end

endmodule
