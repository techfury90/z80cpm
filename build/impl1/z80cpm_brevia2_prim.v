// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Nov 15 21:03:40 2026
//
// Verilog Description of module z80cpm_brevia2
//

module z80cpm_brevia2 (clk_in, rst_n, led, sw, uart_rx, uart_tx, 
            sram_addr, sram_cen, sram_oen, sram_wen, sram_data) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(13[8:22])
    input clk_in;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(14[17:23])
    input rst_n;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(15[17:22])
    output [7:0]led;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    input [7:0]sw;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    input uart_rx;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(18[17:24])
    output uart_tx;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(19[17:24])
    output [16:0]sram_addr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    output sram_cen;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(21[17:25])
    output sram_oen;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(22[17:25])
    output sram_wen;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(23[17:25])
    inout [7:0]sram_data;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(24[17:26])
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    wire clk_N_309 /* synthesis is_inv_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(25[17:23])
    
    wire VCC_net, clk_in_c, rst_n_c, led_c_7, led_c_6, led_c_5, 
        led_c_4, led_c_3, led_c_2, led_c_1, led_c_0, sw_c_7, sw_c_6, 
        sw_c_5, sw_c_4, sw_c_3, sw_c_2, sw_c_1, sw_c_0, uart_rx_c, 
        uart_tx_c, sram_addr_0_15, sram_addr_0_14, sram_addr_0_13, sram_addr_0_12, 
        sram_addr_0_11, sram_addr_0_10, sram_addr_0_9, sram_addr_0_8, 
        sram_addr_0_7, sram_addr_0_6, sram_addr_0_5, sram_addr_0_4, 
        sram_addr_0_3, sram_addr_0_2, sram_addr_0_1, sram_addr_0_0, 
        rst_m, rst_s, mreq_n, iorq_n, rd_n, wr_n;
    wire [7:0]cpu_dout;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(63[15:23])
    wire [7:0]bus_din;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(64[15:22])
    
    wire mem_rd, sram_oen_N_89;
    wire [7:0]led_reg;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(87[13:20])
    
    wire uart_rd;
    wire [7:0]uart_rx_data;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(96[15:27])
    
    wire uart_rx_avail, uart_tx_busy;
    wire [7:0]io_rdata;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(103[13:21])
    
    wire rst_n_N_66, sram_go_N_77, led_reg_7__N_56, io_rdata_7__N_54, 
        n32382, rx_state;
    wire [11:0]k_adj_1982;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(15[17:18])
    wire [3:0]bitidx;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(16[16:22])
    wire [7:0]sr_adj_1983;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(17[16:18])
    
    wire n18105, n32385, n114, n18103;
    wire [6:0]tstate;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    wire [7:0]BusB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(152[17:21])
    wire [3:0]ALU_Op_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(161[17:25])
    
    wire n32655, n9467, n18101, n29795, n18125, n122, n18099, 
        n123, n17980, n39884, n18097, n127, n128, n21, n25, 
        n621, n620, n619, n618, n617, n616, n615, n614, n613, 
        n612, n611, n610, n609, n608, n607, n606, n9490, n33771, 
        n5;
    wire [3:0]ALU_Op_3__N_1269;
    
    wire n18111, n39875;
    wire [7:0]Q_7__N_1607;
    
    wire F_Out_7__N_1651, n37532;
    wire [8:0]Q_7__N_1567;
    wire [7:0]Q_7__N_1599;
    
    wire n2831, n29794, clk_op_enable_128, n29793, n130, n29792, 
        n118, n29791, n116, n18107, n29790, n3, n18119, n33545, 
        n32621, n37507, n129, n120, n13, n14, n115, n29789, 
        n29788, n7, n34262, n36301, n36300, n113, n37559, n29799, 
        n32383, n37866, n29798, n23, n19, n36281, n36280, n18, 
        n15, n22, n10, n13_adj_1977, n12, n11, n124, n37852, 
        n37510, n37851, n37554, n37847, n29797, n39879, clk_op_enable_311, 
        n37836, n32735, n2, n11485, n37828, n6, n11098, n11684, 
        n111, n109, n9, n24, n4, n8, n16, n17, n18115, n27499, 
        n20, clk_op_enable_307, n7_adj_1978, n107, n106, n108, n119, 
        n121, n125, n126, n110, n112, n18121, n16763, n37800, 
        n39882, n18117, n10869, n12_adj_1979, n117, clk_op_enable_284, 
        clk_op_enable_299, n37773, n18109, n37758, n37750, n37742, 
        n29796, n35174, n18123, n37936, n10770, n37724, n34387, 
        n39880, sram_data_out_7, n18113, n37673, sram_data_out_6, 
        sram_data_out_5, sram_data_out_4, sram_data_out_3, sram_data_out_2, 
        sram_data_out_1, sram_data_out_0, n37649, n32730, n37542, 
        n37646, n37645, n37938, n39877, n37937, n37639, n39871, 
        n34074, n22415, n39876, n32380, n37518, n39878, n32384, 
        n37508, n32381, n37599, n32712, GND_net, n37585;
    
    VHI i2 (.Z(VCC_net));
    INV i34436 (.A(clk_op), .Z(clk_N_309));
    FD1S3AY rst_s_52 (.D(rst_m), .CK(clk_op), .Q(rst_s)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52.GSR = "ENABLED";
    FD1S3AY rst_m_51 (.D(rst_n_N_66), .CK(clk_op), .Q(rst_m)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_m_51.GSR = "ENABLED";
    pmi_pll0o500X125252550d29c740 \pmi_pll0offCLKOP500XP212.50000025252550  (.CLKI(clk_in_c), 
            .CLKFB(clk_op), .RESET(GND_net), .CLKOP(clk_op)) /* synthesis syn_instantiated=1 */ ;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .module_type = "pmi_pll";
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_fdel_val = 0;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_fdel = "off";
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_clkfb_source = "CLKOP";
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_duty_cycle = 50;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_phase_adj = 0;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_family = "XP2";
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_freq_clkok = "12.500000";
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_freq_clkos = 25;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_freq_clkop = 25;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_freq_clkfb = 25;
    defparam \pmi_pll0offCLKOP500XP212.50000025252550 .pmi_freq_clki = 50;
    CCU2B hb_5688_add_4_23 (.A0(n4), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n3), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29798), 
          .COUT(n29799), .S0(n109), .S1(n108));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_23.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_23.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_23.INJECT1_0 = "NO";
    defparam hb_5688_add_4_23.INJECT1_1 = "NO";
    CCU2B hb_5688_add_4_21 (.A0(n6), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n5), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29797), 
          .COUT(n29798), .S0(n111), .S1(n110));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_21.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_21.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_21.INJECT1_0 = "NO";
    defparam hb_5688_add_4_21.INJECT1_1 = "NO";
    CCU2B hb_5688_add_4_19 (.A0(n8), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n7), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29796), 
          .COUT(n29797), .S0(n113), .S1(n112));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_19.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_19.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_19.INJECT1_0 = "NO";
    defparam hb_5688_add_4_19.INJECT1_1 = "NO";
    CCU2B hb_5688_add_4_17 (.A0(n10), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n9), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29795), 
          .COUT(n29796), .S0(n115), .S1(n114));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_17.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_17.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_17.INJECT1_0 = "NO";
    defparam hb_5688_add_4_17.INJECT1_1 = "NO";
    CCU2B hb_5688_add_4_15 (.A0(n12), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n11), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29794), 
          .COUT(n29795), .S0(n117), .S1(n116));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_15.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_15.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_15.INJECT1_0 = "NO";
    defparam hb_5688_add_4_15.INJECT1_1 = "NO";
    CCU2B hb_5688_add_4_13 (.A0(n14), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n13_adj_1977), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n29793), .COUT(n29794), .S0(n119), .S1(n118));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_13.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_13.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_13.INJECT1_0 = "NO";
    defparam hb_5688_add_4_13.INJECT1_1 = "NO";
    CCU2B hb_5688_add_4_11 (.A0(n16), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n15), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29792), 
          .COUT(n29793), .S0(n121), .S1(n120));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_11.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_11.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_11.INJECT1_0 = "NO";
    defparam hb_5688_add_4_11.INJECT1_1 = "NO";
    CCU2B hb_5688_add_4_9 (.A0(n18), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n17), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29791), 
          .COUT(n29792), .S0(n123), .S1(n122));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_9.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_9.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_9.INJECT1_0 = "NO";
    defparam hb_5688_add_4_9.INJECT1_1 = "NO";
    CCU2B hb_5688_add_4_7 (.A0(n20), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n19), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29790), 
          .COUT(n29791), .S0(n125), .S1(n124));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_7.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_7.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_7.INJECT1_0 = "NO";
    defparam hb_5688_add_4_7.INJECT1_1 = "NO";
    CCU2B hb_5688_add_4_5 (.A0(n22), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n21), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29789), 
          .COUT(n29790), .S0(n127), .S1(n126));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_5.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_5.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_5.INJECT1_0 = "NO";
    defparam hb_5688_add_4_5.INJECT1_1 = "NO";
    CCU2B hb_5688_add_4_3 (.A0(n24), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n23), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29788), 
          .COUT(n29789), .S0(n129), .S1(n128));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_3.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_3.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_3.INJECT1_0 = "NO";
    defparam hb_5688_add_4_3.INJECT1_1 = "NO";
    CCU2B hb_5688_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n25), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n29788), 
          .S1(n130));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_1.INIT0 = 16'h0000;
    defparam hb_5688_add_4_1.INIT1 = 16'h555f;
    defparam hb_5688_add_4_1.INJECT1_0 = "NO";
    defparam hb_5688_add_4_1.INJECT1_1 = "NO";
    PFUMX i8797 (.BLUT(io_rdata[1]), .ALUT(n11684), .C0(mem_rd), .Z(bus_din[1]));
    BB sram_data_pad_6 (.I(cpu_dout[6]), .T(n37646), .B(sram_data[6]), 
       .O(sram_data_out_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    FD1P3DX led_reg__i1 (.D(cpu_dout[0]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n39876), .Q(led_reg[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i1.GSR = "ENABLED";
    PFUMX i6864 (.BLUT(io_rdata[0]), .ALUT(n9467), .C0(mem_rd), .Z(bus_din[0]));
    PFUMX i8266 (.BLUT(io_rdata[4]), .ALUT(n11098), .C0(mem_rd), .Z(bus_din[4]));
    PFUMX i7947 (.BLUT(io_rdata[7]), .ALUT(n10770), .C0(mem_rd), .Z(bus_din[7]));
    PFUMX i8039 (.BLUT(io_rdata[6]), .ALUT(n10869), .C0(mem_rd), .Z(bus_din[6]));
    PFUMX i8636 (.BLUT(io_rdata[2]), .ALUT(n11485), .C0(mem_rd), .Z(bus_din[2]));
    ORCALUT4 rst_n_I_0_1_lut (.A(rst_n_c), .Z(rst_n_N_66)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(51[14:20])
    defparam rst_n_I_0_1_lut.init = 16'h5555;
    ORCALUT4 i31788_3_lut_then_4_lut (.A(n37866), .B(Q_7__N_1599[3]), .C(BusB[3]), 
            .D(n32621), .Z(n37937)) /* synthesis lut_function=(A (C (D))+!A (B)) */ ;
    defparam i31788_3_lut_then_4_lut.init = 16'he444;
    ORCALUT4 i31788_3_lut_else_4_lut (.A(ALU_Op_r[2]), .B(n37828), .C(BusB[3]), 
            .D(Q_7__N_1607[3]), .Z(n37936)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i31788_3_lut_else_4_lut.init = 16'hf780;
    ORCALUT4 n22669_bdd_4_lut (.A(io_rdata_7__N_54), .B(uart_rd), .C(uart_rx_data[5]), 
            .D(sw_c_5), .Z(n36301)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam n22669_bdd_4_lut.init = 16'hea40;
    FD1S3AX hb_5688__i0 (.D(n130), .CK(clk_op), .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i0.GSR = "ENABLED";
    ORCALUT4 n22669_bdd_4_lut_32564 (.A(io_rdata_7__N_54), .B(uart_rd), 
            .C(uart_rx_data[3]), .D(sw_c_3), .Z(n36281)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam n22669_bdd_4_lut_32564.init = 16'hea40;
    ORCALUT4 i1_2_lut_rep_697 (.A(sram_addr_0_7), .B(sram_addr_0_1), .Z(n37800)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i1_2_lut_rep_697.init = 16'heeee;
    ORCALUT4 i32211_3_lut_rep_496_4_lut (.A(sram_addr_0_7), .B(sram_addr_0_1), 
            .C(n37649), .D(sram_go_N_77), .Z(n37599)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i32211_3_lut_rep_496_4_lut.init = 16'h0100;
    ORCALUT4 i32314_2_lut_rep_542_3_lut_4_lut (.A(sram_addr_0_7), .B(sram_addr_0_1), 
            .C(n37851), .D(sram_addr_0_2), .Z(n37645)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i32314_2_lut_rep_542_3_lut_4_lut.init = 16'h0001;
    BB sram_data_pad_7 (.I(cpu_dout[7]), .T(n37646), .B(sram_data[7]), 
       .O(sram_data_out_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    ORCALUT4 sw_c_1_bdd_4_lut (.A(sw_c_1), .B(n37645), .C(n32383), .D(sram_addr_0_6), 
            .Z(n37507)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam sw_c_1_bdd_4_lut.init = 16'h88f0;
    FD1S3AY rst_s_52_rep_810 (.D(rst_m), .CK(clk_op), .Q(n39884)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_810.GSR = "ENABLED";
    FD1S3AY rst_s_52_rep_808 (.D(rst_m), .CK(clk_op), .Q(n39882)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_808.GSR = "ENABLED";
    ORCALUT4 sw_c_0_bdd_4_lut (.A(sw_c_0), .B(n37645), .C(n32384), .D(sram_addr_0_6), 
            .Z(n37508)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam sw_c_0_bdd_4_lut.init = 16'h88f0;
    ORCALUT4 i1_2_lut_4_lut (.A(n37773), .B(n32655), .C(sram_addr_0_6), 
            .D(uart_rx_data[1]), .Z(n32380)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0400;
    ORCALUT4 i1_2_lut_4_lut_adj_630 (.A(n37773), .B(n32655), .C(sram_addr_0_6), 
            .D(uart_rx_data[0]), .Z(n32381)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_630.init = 16'h0400;
    ORCALUT4 i21026_4_lut (.A(BusB[7]), .B(Q_7__N_1567[7]), .C(ALU_Op_r[2]), 
            .D(n37724), .Z(n2831)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(161[17:25])
    defparam i21026_4_lut.init = 16'hc0ca;
    CCU2B hb_5688_add_4_25 (.A0(n2), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(led_c_7), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29799), 
          .S0(n107), .S1(n106));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688_add_4_25.INIT0 = 16'haaa0;
    defparam hb_5688_add_4_25.INIT1 = 16'haaa0;
    defparam hb_5688_add_4_25.INJECT1_0 = "NO";
    defparam hb_5688_add_4_25.INJECT1_1 = "NO";
    FD1S3AY rst_s_52_rep_806 (.D(rst_m), .CK(clk_op), .Q(n39880)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_806.GSR = "ENABLED";
    ORCALUT4 i10567_2_lut_rep_733 (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), .Z(n37836)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(161[17:25])
    defparam i10567_2_lut_rep_733.init = 16'h6666;
    ORCALUT4 i7222_2_lut_rep_639_3_lut (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[2]), .Z(n37742)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(161[17:25])
    defparam i7222_2_lut_rep_639_3_lut.init = 16'h0606;
    ORCALUT4 i31964_3_lut_4_lut_4_lut (.A(ALU_Op_r[0]), .B(ALU_Op_r[1]), 
            .C(n37532), .D(ALU_Op_r[2]), .Z(F_Out_7__N_1651)) /* synthesis lut_function=(!(A (B (C)+!B ((D)+!C))+!A (B (C+(D))+!B !(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(161[17:25])
    defparam i31964_3_lut_4_lut_4_lut.init = 16'h193c;
    FD1S3AX hb_5688__i24 (.D(n106), .CK(clk_op), .Q(led_c_7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i24.GSR = "ENABLED";
    ORCALUT4 i32098_2_lut_rep_744 (.A(iorq_n), .B(rd_n), .Z(n37847)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam i32098_2_lut_rep_744.init = 16'h1111;
    ORCALUT4 i32054_2_lut_3_lut (.A(iorq_n), .B(rd_n), .C(n32730), .Z(uart_rd)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam i32054_2_lut_3_lut.init = 16'h0101;
    FD1S3AX hb_5688__i23 (.D(n107), .CK(clk_op), .Q(n2)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i23.GSR = "ENABLED";
    FD1S3AX hb_5688__i22 (.D(n108), .CK(clk_op), .Q(n3)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i22.GSR = "ENABLED";
    FD1S3AX hb_5688__i21 (.D(n109), .CK(clk_op), .Q(n4)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i21.GSR = "ENABLED";
    FD1S3AX hb_5688__i20 (.D(n110), .CK(clk_op), .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i20.GSR = "ENABLED";
    FD1S3AX hb_5688__i19 (.D(n111), .CK(clk_op), .Q(n6)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i19.GSR = "ENABLED";
    FD1S3AX hb_5688__i18 (.D(n112), .CK(clk_op), .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i18.GSR = "ENABLED";
    FD1S3AX hb_5688__i17 (.D(n113), .CK(clk_op), .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i17.GSR = "ENABLED";
    FD1S3AX hb_5688__i16 (.D(n114), .CK(clk_op), .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i16.GSR = "ENABLED";
    FD1S3AX hb_5688__i15 (.D(n115), .CK(clk_op), .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i15.GSR = "ENABLED";
    FD1S3AX hb_5688__i14 (.D(n116), .CK(clk_op), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i14.GSR = "ENABLED";
    FD1S3AX hb_5688__i13 (.D(n117), .CK(clk_op), .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i13.GSR = "ENABLED";
    FD1S3AX hb_5688__i12 (.D(n118), .CK(clk_op), .Q(n13_adj_1977)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i12.GSR = "ENABLED";
    FD1S3AX hb_5688__i11 (.D(n119), .CK(clk_op), .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i11.GSR = "ENABLED";
    FD1S3AX hb_5688__i10 (.D(n120), .CK(clk_op), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i10.GSR = "ENABLED";
    FD1S3AX hb_5688__i9 (.D(n121), .CK(clk_op), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i9.GSR = "ENABLED";
    FD1S3AX hb_5688__i8 (.D(n122), .CK(clk_op), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i8.GSR = "ENABLED";
    FD1S3AX hb_5688__i7 (.D(n123), .CK(clk_op), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i7.GSR = "ENABLED";
    FD1S3AX hb_5688__i6 (.D(n124), .CK(clk_op), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i6.GSR = "ENABLED";
    FD1S3AX hb_5688__i5 (.D(n125), .CK(clk_op), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i5.GSR = "ENABLED";
    FD1S3AX hb_5688__i4 (.D(n126), .CK(clk_op), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i4.GSR = "ENABLED";
    FD1S3AX hb_5688__i3 (.D(n127), .CK(clk_op), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i3.GSR = "ENABLED";
    FD1S3AX hb_5688__i2 (.D(n128), .CK(clk_op), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i2.GSR = "ENABLED";
    FD1S3AX hb_5688__i1 (.D(n129), .CK(clk_op), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(59[31:40])
    defparam hb_5688__i1.GSR = "ENABLED";
    FD1P3DX led_reg__i7 (.D(cpu_dout[6]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n39884), .Q(led_reg[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i7.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_rep_748 (.A(sram_addr_0_3), .B(sram_addr_0_5), .C(sram_addr_0_4), 
            .Z(n37851)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[34:51])
    defparam i2_3_lut_rep_748.init = 16'hfefe;
    ORCALUT4 i1_2_lut_rep_670_4_lut (.A(sram_addr_0_3), .B(sram_addr_0_5), 
            .C(sram_addr_0_4), .D(sram_addr_0_2), .Z(n37773)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[34:51])
    defparam i1_2_lut_rep_670_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_749 (.A(iorq_n), .B(wr_n), .Z(n37852)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_749.init = 16'heeee;
    ORCALUT4 i19814_2_lut_rep_451_3_lut_4_lut (.A(iorq_n), .B(wr_n), .C(uart_tx_busy), 
            .D(n32730), .Z(n37554)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19814_2_lut_rep_451_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_482_3_lut (.A(iorq_n), .B(wr_n), .C(n32730), 
            .Z(n37585)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_482_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(iorq_n), .B(wr_n), .C(uart_tx_busy), 
            .D(n32730), .Z(clk_op_enable_284)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0f1;
    ORCALUT4 i4_4_lut (.A(n7_adj_1978), .B(sram_addr_0_0), .C(sram_addr_0_7), 
            .D(sram_addr_0_1), .Z(n32730)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i4_4_lut.init = 16'hffbf;
    ORCALUT4 i6_4_lut (.A(rx_state), .B(n12_adj_1979), .C(n32385), .D(n32712), 
            .Z(clk_op_enable_128)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    ORCALUT4 i5_4_lut (.A(bitidx[3]), .B(uart_rx_c), .C(n39878), .D(k_adj_1982[11]), 
            .Z(n12_adj_1979)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i5_4_lut.init = 16'h0800;
    FD1P3DX led_reg__i6 (.D(cpu_dout[5]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n39875), .Q(led_reg[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i6.GSR = "ENABLED";
    FD1P3DX led_reg__i5 (.D(cpu_dout[4]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n39875), .Q(led_reg[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i5.GSR = "ENABLED";
    FD1P3DX led_reg__i4 (.D(cpu_dout[3]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n39875), .Q(led_reg[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i4.GSR = "ENABLED";
    FD1P3DX led_reg__i3 (.D(cpu_dout[2]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n39875), .Q(led_reg[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i3.GSR = "ENABLED";
    FD1P3DX led_reg__i2 (.D(cpu_dout[1]), .SP(led_reg_7__N_56), .CK(clk_op), 
            .CD(n39875), .Q(led_reg[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(90[10:62])
    defparam led_reg__i2.GSR = "ENABLED";
    ORCALUT4 i4_4_lut_adj_631 (.A(n34262), .B(sram_addr_0_5), .C(n32655), 
            .D(sram_addr_0_2), .Z(n32382)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i4_4_lut_adj_631.init = 16'h0010;
    ORCALUT4 i30718_2_lut (.A(sram_addr_0_3), .B(sram_addr_0_4), .Z(n34262)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i30718_2_lut.init = 16'heeee;
    FD1S3AY rst_s_52_rep_805 (.D(rst_m), .CK(clk_op), .Q(n39879)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_805.GSR = "ENABLED";
    ORCALUT4 i32074_2_lut_rep_543_3_lut (.A(sram_go_N_77), .B(mreq_n), .C(wr_n), 
            .Z(n37646)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(73[28:66])
    defparam i32074_2_lut_rep_543_3_lut.init = 16'hfefe;
    BB sram_data_pad_5 (.I(cpu_dout[5]), .T(n37646), .B(sram_data[5]), 
       .O(sram_data_out_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_4 (.I(cpu_dout[4]), .T(n37646), .B(sram_data[4]), 
       .O(sram_data_out_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_3 (.I(cpu_dout[3]), .T(n37646), .B(sram_data[3]), 
       .O(sram_data_out_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_2 (.I(cpu_dout[2]), .T(n37646), .B(sram_data[2]), 
       .O(sram_data_out_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_1 (.I(cpu_dout[1]), .T(n37646), .B(sram_data[1]), 
       .O(sram_data_out_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_0 (.I(cpu_dout[0]), .T(n37646), .B(sram_data[0]), 
       .O(sram_data_out_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    ORCALUT4 i32072_3_lut_rep_570_4_lut (.A(sram_go_N_77), .B(mreq_n), .C(wr_n), 
            .D(rd_n), .Z(n37673)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(73[28:66])
    defparam i32072_3_lut_rep_570_4_lut.init = 16'hfeee;
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(16[17:20])
    OB uart_tx_pad (.I(uart_tx_c), .O(uart_tx));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(19[17:24])
    OB sram_addr_pad_16 (.I(GND_net), .O(sram_addr[16]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_15 (.I(sram_addr_0_15), .O(sram_addr[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_14 (.I(sram_addr_0_14), .O(sram_addr[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_13 (.I(sram_addr_0_13), .O(sram_addr[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_12 (.I(sram_addr_0_12), .O(sram_addr[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_11 (.I(sram_addr_0_11), .O(sram_addr[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_10 (.I(sram_addr_0_10), .O(sram_addr[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_9 (.I(sram_addr_0_9), .O(sram_addr[9]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_8 (.I(sram_addr_0_8), .O(sram_addr[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_7 (.I(sram_addr_0_7), .O(sram_addr[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_6 (.I(sram_addr_0_6), .O(sram_addr[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_5 (.I(sram_addr_0_5), .O(sram_addr[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_4 (.I(sram_addr_0_4), .O(sram_addr[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_3 (.I(sram_addr_0_3), .O(sram_addr[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_2 (.I(sram_addr_0_2), .O(sram_addr[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_1 (.I(sram_addr_0_1), .O(sram_addr[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_addr_pad_0 (.I(sram_addr_0_0), .O(sram_addr[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    OB sram_cen_pad (.I(n37673), .O(sram_cen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(21[17:25])
    OB sram_oen_pad (.I(sram_oen_N_89), .O(sram_oen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(22[17:25])
    OB sram_wen_pad (.I(n37646), .O(sram_wen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(23[17:25])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(14[17:23])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(15[17:22])
    IB sw_pad_7 (.I(sw[7]), .O(sw_c_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_6 (.I(sw[6]), .O(sw_c_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_5 (.I(sw[5]), .O(sw_c_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_4 (.I(sw[4]), .O(sw_c_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_3 (.I(sw[3]), .O(sw_c_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_2 (.I(sw[2]), .O(sw_c_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_1 (.I(sw[1]), .O(sw_c_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB sw_pad_0 (.I(sw[0]), .O(sw_c_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(17[17:19])
    IB uart_rx_pad (.I(uart_rx), .O(uart_rx_c));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(18[17:24])
    ORCALUT4 i32076_2_lut_3_lut_3_lut_4_lut (.A(sram_go_N_77), .B(mreq_n), 
            .C(wr_n), .D(rd_n), .Z(sram_oen_N_89)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(73[28:66])
    defparam i32076_2_lut_3_lut_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i2_3_lut (.A(n39878), .B(ALU_Op_3__N_1269[3]), .C(n9490), 
            .Z(n33771)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam i2_3_lut.init = 16'hefef;
    ORCALUT4 led_reg_6__I_0_i7_1_lut (.A(led_reg[6]), .Z(led_c_6)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i7_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i6_1_lut (.A(led_reg[5]), .Z(led_c_5)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i6_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i5_1_lut (.A(led_reg[4]), .Z(led_c_4)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i5_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i4_1_lut (.A(led_reg[3]), .Z(led_c_3)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i4_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i3_1_lut (.A(led_reg[2]), .Z(led_c_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i3_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i2_1_lut (.A(led_reg[1]), .Z(led_c_1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i2_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i1_1_lut (.A(led_reg[0]), .Z(led_c_0)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(119[21:34])
    defparam led_reg_6__I_0_i1_1_lut.init = 16'h5555;
    ORCALUT4 i32307_3_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n27499), 
            .D(uart_tx_busy), .Z(clk_op_enable_311)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i32307_3_lut_3_lut_4_lut.init = 16'h0f11;
    ORCALUT4 i19117_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n621), 
            .D(uart_tx_busy), .Z(n18125)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19117_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i19116_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n620), 
            .D(uart_tx_busy), .Z(n18123)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19116_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i19115_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n619), 
            .D(uart_tx_busy), .Z(n18121)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19115_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i19114_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n618), 
            .D(uart_tx_busy), .Z(n18119)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19114_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i19113_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n617), 
            .D(uart_tx_busy), .Z(n18117)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19113_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i19112_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n616), 
            .D(uart_tx_busy), .Z(n18115)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19112_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i19106_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n615), 
            .D(uart_tx_busy), .Z(n18113)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19106_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i19098_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n612), 
            .D(uart_tx_busy), .Z(n18107)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19098_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i1_2_lut (.A(uart_tx_busy), .B(n32382), .Z(n32384)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam i1_2_lut.init = 16'h8888;
    ORCALUT4 i19085_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n611), 
            .D(uart_tx_busy), .Z(n18105)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19085_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i19083_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n610), 
            .D(uart_tx_busy), .Z(n18103)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19083_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i19082_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n609), 
            .D(uart_tx_busy), .Z(n18101)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19082_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i19081_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n608), 
            .D(uart_tx_busy), .Z(n18099)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19081_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i19080_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n607), 
            .D(uart_tx_busy), .Z(n18097)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19080_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i1_3_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n37639), 
            .D(uart_tx_busy), .Z(clk_op_enable_307)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h0f11;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_632 (.A(n32730), .B(n37852), .C(n613), 
            .D(uart_tx_busy), .Z(n18109)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i1_2_lut_3_lut_4_lut_adj_632.init = 16'hf0e0;
    ORCALUT4 i19103_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n614), 
            .D(uart_tx_busy), .Z(n18111)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i19103_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i18802_2_lut_3_lut_4_lut (.A(n32730), .B(n37852), .C(n606), 
            .D(uart_tx_busy), .Z(n17980)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(108[23:40])
    defparam i18802_2_lut_3_lut_4_lut.init = 16'hf0f1;
    GSR GSR_INST (.GSR(VCC_net));
    ORCALUT4 i30835_4_lut (.A(sr_adj_1983[7]), .B(uart_rx_c), .C(bitidx[1]), 
            .D(n37518), .Z(n34387)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i30835_4_lut.init = 16'hcaaa;
    ORCALUT4 i1_2_lut_adj_633 (.A(uart_rx_avail), .B(n32382), .Z(n32383)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam i1_2_lut_adj_633.init = 16'h8888;
    FD1S3AY rst_s_52_rep_804 (.D(rst_m), .CK(clk_op), .Q(n39878)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_804.GSR = "ENABLED";
    FD1S3AY rst_s_52_rep_803 (.D(rst_m), .CK(clk_op), .Q(n39877)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_803.GSR = "ENABLED";
    ORCALUT4 n16406_bdd_4_lut (.A(n37750), .B(n37758), .C(n33545), .D(n39871), 
            .Z(n37510)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n16406_bdd_4_lut.init = 16'h88f0;
    FD1S3AY rst_s_52_rep_802 (.D(rst_m), .CK(clk_op), .Q(n39876)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_802.GSR = "ENABLED";
    ORCALUT4 i5903_2_lut (.A(tstate[2]), .B(n39878), .Z(clk_op_enable_299)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5903_2_lut.init = 16'heeee;
    ORCALUT4 i8635_4_lut (.A(sram_data_out_2), .B(n37599), .C(sram_go_N_77), 
            .D(n35174), .Z(n11485)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i8635_4_lut.init = 16'hca0a;
    ORCALUT4 io_rdata_7__I_0_56_i3_4_lut (.A(uart_rx_data[2]), .B(sw_c_2), 
            .C(io_rdata_7__N_54), .D(uart_rd), .Z(io_rdata[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_56_i3_4_lut.init = 16'hcac0;
    ORCALUT4 i1_2_lut_adj_634 (.A(sram_addr_0_7), .B(sram_addr_0_1), .Z(n32655)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam i1_2_lut_adj_634.init = 16'h2222;
    ORCALUT4 i8038_4_lut (.A(sram_data_out_6), .B(n34074), .C(sram_go_N_77), 
            .D(n16763), .Z(n10869)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i8038_4_lut.init = 16'hcafa;
    ORCALUT4 i32085_4_lut (.A(sram_addr_0_14), .B(sram_addr_0_15), .C(sram_addr_0_12), 
            .D(sram_addr_0_13), .Z(sram_go_N_77)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(72[37:55])
    defparam i32085_4_lut.init = 16'h0001;
    ORCALUT4 io_rdata_7__I_0_56_i7_4_lut (.A(uart_rx_data[6]), .B(sw_c_6), 
            .C(io_rdata_7__N_54), .D(uart_rd), .Z(io_rdata[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_56_i7_4_lut.init = 16'hcac0;
    ORCALUT4 i7946_4_lut (.A(sram_data_out_7), .B(n37542), .C(sram_go_N_77), 
            .D(n13), .Z(n10770)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i7946_4_lut.init = 16'hfa3a;
    ORCALUT4 io_rdata_7__I_0_56_i8_4_lut (.A(uart_rx_data[7]), .B(sw_c_7), 
            .C(io_rdata_7__N_54), .D(uart_rd), .Z(io_rdata[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_56_i8_4_lut.init = 16'hcac0;
    ORCALUT4 i32050_2_lut (.A(mreq_n), .B(rd_n), .Z(mem_rd)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i32050_2_lut.init = 16'h1111;
    FD1S3AY rst_s_52_rep_801 (.D(rst_m), .CK(clk_op), .Q(n39875)) /* synthesis lse_init_val=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(50[10] 53[6])
    defparam rst_s_52_rep_801.GSR = "ENABLED";
    ORCALUT4 i2_2_lut_3_lut (.A(sram_addr_0_2), .B(n37851), .C(sram_addr_0_6), 
            .Z(n7_adj_1978)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[34:51])
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i8265_4_lut (.A(sram_data_out_4), .B(n37542), .C(sram_go_N_77), 
            .D(n32735), .Z(n11098)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i8265_4_lut.init = 16'h3afa;
    ORCALUT4 io_rdata_7__I_0_56_i5_4_lut (.A(uart_rx_data[4]), .B(sw_c_4), 
            .C(io_rdata_7__N_54), .D(uart_rd), .Z(io_rdata[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam io_rdata_7__I_0_56_i5_4_lut.init = 16'hcac0;
    ORCALUT4 i6863_3_lut (.A(sram_data_out_0), .B(n22415), .C(sram_go_N_77), 
            .Z(n9467)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i6863_3_lut.init = 16'h3a3a;
    ORCALUT4 i1_4_lut (.A(n37847), .B(n37508), .C(n32381), .D(sram_addr_0_0), 
            .Z(io_rdata[0])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam i1_4_lut.init = 16'ha088;
    PFUMX i32565 (.BLUT(n36301), .ALUT(n36300), .C0(mem_rd), .Z(bus_din[5]));
    ORCALUT4 i8796_4_lut (.A(sram_data_out_1), .B(n22415), .C(sram_go_N_77), 
            .D(n37559), .Z(n11684)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(112[20] 114[42])
    defparam i8796_4_lut.init = 16'h3afa;
    ORCALUT4 i1_4_lut_adj_635 (.A(n37847), .B(n37507), .C(n32380), .D(sram_addr_0_0), 
            .Z(io_rdata[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(107[10] 108[90])
    defparam i1_4_lut_adj_635.init = 16'ha088;
    PFUMX i32549 (.BLUT(n36281), .ALUT(n36280), .C0(mem_rd), .Z(bus_din[3]));
    tv80n u_cpu (.wr_n(wr_n), .clk_N_309(clk_N_309), .mreq_n(mreq_n), 
          .n39882(n39882), .rd_n(rd_n), .n39884(n39884), .clk_op(clk_op), 
          .clk_op_enable_299(clk_op_enable_299), .n39880(n39880), .bus_din({bus_din}), 
          .\tstate[2] (tstate[2]), .\ALU_Op_3__N_1269[3] (ALU_Op_3__N_1269[3]), 
          .n39878(n39878), .iorq_n(iorq_n), .n33771(n33771), .n39877(n39877), 
          .rst_s(rst_s), .n39879(n39879), .sram_addr_0_0(sram_addr_0_0), 
          .n39876(n39876), .sram_addr_0_10(sram_addr_0_10), .ALU_Op_r({ALU_Op_r}), 
          .sram_addr_0_9(sram_addr_0_9), .VCC_net(VCC_net), .sram_addr_0_8(sram_addr_0_8), 
          .n39875(n39875), .cpu_dout({cpu_dout}), .sram_addr_0_7(sram_addr_0_7), 
          .sram_addr_0_6(sram_addr_0_6), .sram_addr_0_5(sram_addr_0_5), 
          .sram_addr_0_4(sram_addr_0_4), .sram_addr_0_3(sram_addr_0_3), 
          .sram_addr_0_2(sram_addr_0_2), .sram_addr_0_1(sram_addr_0_1), 
          .n37866(n37866), .\BusB[7] (BusB[7]), .sram_addr_0_15(sram_addr_0_15), 
          .sram_addr_0_14(sram_addr_0_14), .sram_addr_0_13(sram_addr_0_13), 
          .sram_addr_0_12(sram_addr_0_12), .sram_addr_0_11(sram_addr_0_11), 
          .n37836(n37836), .\BusB[3] (BusB[3]), .n2831(n2831), .n37828(n37828), 
          .\Q_7__N_1607[3] (Q_7__N_1607[3]), .n39871(n39871), .F_Out_7__N_1651(F_Out_7__N_1651), 
          .n37724(n37724), .n37750(n37750), .n33545(n33545), .n9490(n9490), 
          .n37510(n37510), .n37758(n37758), .n32621(n32621), .\Q_7__N_1567[7] (Q_7__N_1567[7]), 
          .n37742(n37742), .n37532(n37532), .\Q_7__N_1599[3] (Q_7__N_1599[3]), 
          .n37938(n37938)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(121[9] 126[4])
    PFUMX i33304 (.BLUT(n37936), .ALUT(n37937), .C0(ALU_Op_r[3]), .Z(n37938));
    uart_rx u_rx (.uart_rx_data({uart_rx_data}), .clk_op(clk_op), .clk_op_enable_128(clk_op_enable_128), 
            .uart_rx_avail(uart_rx_avail), .n39877(n39877), .rx_state(rx_state), 
            .n39884(n39884), .uart_rx_c(uart_rx_c), .n39875(n39875), .\sr[7] (sr_adj_1983[7]), 
            .\bitidx[3] (bitidx[3]), .n32712(n32712), .k({k_adj_1982[11], 
            Open_0, Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, 
            Open_7, Open_8, Open_9, Open_10}), .VCC_net(VCC_net), 
            .\bitidx[1] (bitidx[1]), .n39879(n39879), .n39880(n39880), 
            .n32385(n32385), .uart_rd(uart_rd), .n34387(n34387), .n37518(n37518)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(100[11] 101[63])
    boot_rom u_rom (.n16763(n16763), .sram_addr_0_0(sram_addr_0_0), .n37542(n37542), 
            .sram_addr_0_6(sram_addr_0_6), .sram_addr_0_10(sram_addr_0_10), 
            .n37649(n37649), .sram_addr_0_7(sram_addr_0_7), .n37599(n37599), 
            .sram_addr_0_2(sram_addr_0_2), .n22415(n22415), .n32735(n32735), 
            .sram_data_out_3(sram_data_out_3), .sram_go_N_77(sram_go_N_77), 
            .n36280(n36280), .sram_data_out_5(sram_data_out_5), .n36300(n36300), 
            .n37645(n37645), .n37852(n37852), .led_reg_7__N_56(led_reg_7__N_56), 
            .n37847(n37847), .io_rdata_7__N_54(io_rdata_7__N_54), .n37800(n37800), 
            .n37559(n37559), .sram_addr_0_1(sram_addr_0_1), .sram_addr_0_8(sram_addr_0_8), 
            .sram_addr_0_11(sram_addr_0_11), .sram_addr_0_9(sram_addr_0_9), 
            .n37851(n37851), .n13(n13), .n34074(n34074), .n35174(n35174)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(76[12:47])
    uart_tx u_tx (.uart_tx_busy(uart_tx_busy), .clk_op(clk_op), .n39882(n39882), 
            .VCC_net(VCC_net), .n27499(n27499), .n32730(n32730), .wr_n(wr_n), 
            .iorq_n(iorq_n), .uart_tx_c(uart_tx_c), .n39880(n39880), .clk_op_enable_284(clk_op_enable_284), 
            .n605({n606, n607, n608, n609, n610, n611, n612, n613, 
            n614, n615, n616, n617, n618, n619, n620, n621}), 
            .n37639(n37639), .clk_op_enable_311(clk_op_enable_311), .n18125(n18125), 
            .n39877(n39877), .n18123(n18123), .n18121(n18121), .n18119(n18119), 
            .n18117(n18117), .n18115(n18115), .n18113(n18113), .n37585(n37585), 
            .n18111(n18111), .cpu_dout({cpu_dout}), .n37554(n37554), .n18109(n18109), 
            .n18107(n18107), .rst_s(rst_s), .n18105(n18105), .n18103(n18103), 
            .n18101(n18101), .n18099(n18099), .n39879(n39879), .n18097(n18097), 
            .clk_op_enable_307(clk_op_enable_307), .n17980(n17980)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(98[11] 99[54])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module tv80n
//

module tv80n (wr_n, clk_N_309, mreq_n, n39882, rd_n, n39884, clk_op, 
            clk_op_enable_299, n39880, bus_din, \tstate[2] , \ALU_Op_3__N_1269[3] , 
            n39878, iorq_n, n33771, n39877, rst_s, n39879, sram_addr_0_0, 
            n39876, sram_addr_0_10, ALU_Op_r, sram_addr_0_9, VCC_net, 
            sram_addr_0_8, n39875, cpu_dout, sram_addr_0_7, sram_addr_0_6, 
            sram_addr_0_5, sram_addr_0_4, sram_addr_0_3, sram_addr_0_2, 
            sram_addr_0_1, n37866, \BusB[7] , sram_addr_0_15, sram_addr_0_14, 
            sram_addr_0_13, sram_addr_0_12, sram_addr_0_11, n37836, 
            \BusB[3] , n2831, n37828, \Q_7__N_1607[3] , n39871, F_Out_7__N_1651, 
            n37724, n37750, n33545, n9490, n37510, n37758, n32621, 
            \Q_7__N_1567[7] , n37742, n37532, \Q_7__N_1599[3] , n37938) /* synthesis syn_module_defined=1 */ ;
    output wr_n;
    input clk_N_309;
    output mreq_n;
    input n39882;
    output rd_n;
    input n39884;
    input clk_op;
    input clk_op_enable_299;
    input n39880;
    input [7:0]bus_din;
    output \tstate[2] ;
    output \ALU_Op_3__N_1269[3] ;
    input n39878;
    output iorq_n;
    input n33771;
    input n39877;
    input rst_s;
    input n39879;
    output sram_addr_0_0;
    input n39876;
    output sram_addr_0_10;
    output [3:0]ALU_Op_r;
    output sram_addr_0_9;
    input VCC_net;
    output sram_addr_0_8;
    input n39875;
    output [7:0]cpu_dout;
    output sram_addr_0_7;
    output sram_addr_0_6;
    output sram_addr_0_5;
    output sram_addr_0_4;
    output sram_addr_0_3;
    output sram_addr_0_2;
    output sram_addr_0_1;
    output n37866;
    output \BusB[7] ;
    output sram_addr_0_15;
    output sram_addr_0_14;
    output sram_addr_0_13;
    output sram_addr_0_12;
    output sram_addr_0_11;
    input n37836;
    output \BusB[3] ;
    input n2831;
    output n37828;
    output \Q_7__N_1607[3] ;
    output n39871;
    input F_Out_7__N_1651;
    output n37724;
    output n37750;
    output n33545;
    output n9490;
    input n37510;
    output n37758;
    output n32621;
    output \Q_7__N_1567[7] ;
    input n37742;
    output n37532;
    output \Q_7__N_1599[3] ;
    input n37938;
    
    wire clk_N_309 /* synthesis is_inv_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(25[17:23])
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire n9492, n37530, nxt_mreq_n, nxt_rd_n;
    wire [7:0]di_reg;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(50[17:23])
    
    wire write, iorq_N_329, n22293;
    wire [6:0]mc;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(65[17:19])
    
    wire NoRead_N_1539, n33919;
    
    FD1S3JX wr_n_45 (.D(n37530), .CK(clk_N_309), .PD(n9492), .Q(wr_n)) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam wr_n_45.GSR = "ENABLED";
    FD1S3JX mreq_n_47 (.D(nxt_mreq_n), .CK(clk_N_309), .PD(n39882), .Q(mreq_n)) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam mreq_n_47.GSR = "ENABLED";
    FD1S3JX rd_n_44 (.D(nxt_rd_n), .CK(clk_N_309), .PD(n39884), .Q(rd_n)) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam rd_n_44.GSR = "ENABLED";
    FD1P3IX di_reg__i0 (.D(bus_din[0]), .SP(clk_op_enable_299), .CD(n39880), 
            .CK(clk_op), .Q(di_reg[0])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i0.GSR = "ENABLED";
    ORCALUT4 i32093_2_lut_rep_427 (.A(\tstate[2] ), .B(write), .Z(n37530)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(109[15] 114[20])
    defparam i32093_2_lut_rep_427.init = 16'h7777;
    ORCALUT4 i6886_2_lut (.A(\ALU_Op_3__N_1269[3] ), .B(n39878), .Z(n9492)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(138[9] 143[12])
    defparam i6886_2_lut.init = 16'heeee;
    FD1S3JX iorq_n_46 (.D(iorq_N_329), .CK(clk_N_309), .PD(n33771), .Q(iorq_n)) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam iorq_n_46.GSR = "ENABLED";
    ORCALUT4 i2_4_lut (.A(n22293), .B(write), .C(mc[6]), .D(NoRead_N_1539), 
            .Z(n33919)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut.init = 16'hffec;
    FD1P3IX di_reg__i7 (.D(bus_din[7]), .SP(clk_op_enable_299), .CD(n39882), 
            .CK(clk_op), .Q(di_reg[7])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i7.GSR = "ENABLED";
    FD1P3IX di_reg__i6 (.D(bus_din[6]), .SP(clk_op_enable_299), .CD(n39882), 
            .CK(clk_op), .Q(di_reg[6])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i6.GSR = "ENABLED";
    FD1P3IX di_reg__i5 (.D(bus_din[5]), .SP(clk_op_enable_299), .CD(n39882), 
            .CK(clk_op), .Q(di_reg[5])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i5.GSR = "ENABLED";
    FD1P3IX di_reg__i4 (.D(bus_din[4]), .SP(clk_op_enable_299), .CD(n39877), 
            .CK(clk_op), .Q(di_reg[4])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i4.GSR = "ENABLED";
    FD1P3IX di_reg__i3 (.D(bus_din[3]), .SP(clk_op_enable_299), .CD(n39877), 
            .CK(clk_op), .Q(di_reg[3])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i3.GSR = "ENABLED";
    FD1P3IX di_reg__i2 (.D(bus_din[2]), .SP(clk_op_enable_299), .CD(rst_s), 
            .CK(clk_op), .Q(di_reg[2])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i2.GSR = "ENABLED";
    FD1P3IX di_reg__i1 (.D(bus_din[1]), .SP(clk_op_enable_299), .CD(n39877), 
            .CK(clk_op), .Q(di_reg[1])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i1.GSR = "ENABLED";
    \tv80_core(Mode=0)  i_tv80_core (.clk_op(clk_op), .n39879(n39879), .n39884(n39884), 
            .sram_addr_0_0(sram_addr_0_0), .n39876(n39876), .n39882(n39882), 
            .sram_addr_0_10(sram_addr_0_10), .n39880(n39880), .n39877(n39877), 
            .ALU_Op_r({ALU_Op_r}), .sram_addr_0_9(sram_addr_0_9), .VCC_net(VCC_net), 
            .rst_s(rst_s), .sram_addr_0_8(sram_addr_0_8), .n39875(n39875), 
            .\mc[6] (mc[6]), .cpu_dout({cpu_dout}), .sram_addr_0_7(sram_addr_0_7), 
            .sram_addr_0_6(sram_addr_0_6), .sram_addr_0_5(sram_addr_0_5), 
            .sram_addr_0_4(sram_addr_0_4), .sram_addr_0_3(sram_addr_0_3), 
            .sram_addr_0_2(sram_addr_0_2), .sram_addr_0_1(sram_addr_0_1), 
            .di_reg({di_reg}), .\ALU_Op_3__N_1269[3] (\ALU_Op_3__N_1269[3] ), 
            .n37866(n37866), .\tstate[2] (\tstate[2] ), .\BusB[7] (\BusB[7] ), 
            .bus_din({bus_din}), .sram_addr_0_15(sram_addr_0_15), .sram_addr_0_14(sram_addr_0_14), 
            .sram_addr_0_13(sram_addr_0_13), .sram_addr_0_12(sram_addr_0_12), 
            .sram_addr_0_11(sram_addr_0_11), .n37836(n37836), .\BusB[3] (\BusB[3] ), 
            .n2831(n2831), .n37828(n37828), .\Q_7__N_1607[3] (\Q_7__N_1607[3] ), 
            .n39871(n39871), .F_Out_7__N_1651(F_Out_7__N_1651), .NoRead_N_1539(NoRead_N_1539), 
            .n37724(n37724), .n37750(n37750), .n33545(n33545), .n33919(n33919), 
            .nxt_rd_n(nxt_rd_n), .write(write), .n9490(n9490), .n37510(n37510), 
            .n37758(n37758), .n32621(n32621), .n22293(n22293), .nxt_mreq_n(nxt_mreq_n), 
            .iorq_N_329(iorq_N_329), .\Q_7__N_1567[7] (\Q_7__N_1567[7] ), 
            .n37742(n37742), .n37532(n37532), .\Q_7__N_1599[3] (\Q_7__N_1599[3] ), 
            .n37938(n37938)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    
endmodule
//
// Verilog Description of module \tv80_core(Mode=0) 
//

module \tv80_core(Mode=0)  (clk_op, n39879, n39884, sram_addr_0_0, n39876, 
            n39882, sram_addr_0_10, n39880, n39877, ALU_Op_r, sram_addr_0_9, 
            VCC_net, rst_s, sram_addr_0_8, n39875, \mc[6] , cpu_dout, 
            sram_addr_0_7, sram_addr_0_6, sram_addr_0_5, sram_addr_0_4, 
            sram_addr_0_3, sram_addr_0_2, sram_addr_0_1, di_reg, \ALU_Op_3__N_1269[3] , 
            n37866, \tstate[2] , \BusB[7] , bus_din, sram_addr_0_15, 
            sram_addr_0_14, sram_addr_0_13, sram_addr_0_12, sram_addr_0_11, 
            n37836, \BusB[3] , n2831, n37828, \Q_7__N_1607[3] , n39871, 
            F_Out_7__N_1651, NoRead_N_1539, n37724, n37750, n33545, 
            n33919, nxt_rd_n, write, n9490, n37510, n37758, n32621, 
            n22293, nxt_mreq_n, iorq_N_329, \Q_7__N_1567[7] , n37742, 
            n37532, \Q_7__N_1599[3] , n37938) /* synthesis syn_module_defined=1 */ ;
    input clk_op;
    input n39879;
    input n39884;
    output sram_addr_0_0;
    input n39876;
    input n39882;
    output sram_addr_0_10;
    input n39880;
    input n39877;
    output [3:0]ALU_Op_r;
    output sram_addr_0_9;
    input VCC_net;
    input rst_s;
    output sram_addr_0_8;
    input n39875;
    output \mc[6] ;
    output [7:0]cpu_dout;
    output sram_addr_0_7;
    output sram_addr_0_6;
    output sram_addr_0_5;
    output sram_addr_0_4;
    output sram_addr_0_3;
    output sram_addr_0_2;
    output sram_addr_0_1;
    input [7:0]di_reg;
    output \ALU_Op_3__N_1269[3] ;
    output n37866;
    output \tstate[2] ;
    output \BusB[7] ;
    input [7:0]bus_din;
    output sram_addr_0_15;
    output sram_addr_0_14;
    output sram_addr_0_13;
    output sram_addr_0_12;
    output sram_addr_0_11;
    input n37836;
    output \BusB[3] ;
    input n2831;
    output n37828;
    output \Q_7__N_1607[3] ;
    output n39871;
    input F_Out_7__N_1651;
    output NoRead_N_1539;
    output n37724;
    output n37750;
    output n33545;
    input n33919;
    output nxt_rd_n;
    output write;
    output n9490;
    input n37510;
    output n37758;
    output n32621;
    output n22293;
    output nxt_mreq_n;
    output iorq_N_329;
    output \Q_7__N_1567[7] ;
    input n37742;
    output n37532;
    output \Q_7__N_1599[3] ;
    input n37938;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    wire [15:0]TmpAddr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(117[17:24])
    
    wire clk_op_enable_320, n18070, Save_ALU_r, n8407, clk_op_enable_204;
    wire [15:0]n1900;
    wire [7:0]BusB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(152[17:21])
    wire [7:0]BusB_7__N_756;
    wire [7:0]IR;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(118[17:19])
    
    wire clk_op_enable_324, n963;
    wire [15:0]n798;
    wire [15:0]n938;
    
    wire n34498, n18068;
    wire [15:0]RegBusA_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(120[17:26])
    wire [15:0]RegBusA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(104[17:24])
    wire [7:0]n1177;
    wire [7:0]n1196;
    
    wire n34491, n18044;
    wire [4:0]Read_To_Reg_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(158[17:30])
    wire [4:0]n11;
    wire [7:0]Ap;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(96[17:19])
    
    wire clk_op_enable_127;
    wire [7:0]ACC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(95[17:20])
    
    wire n18072;
    wire [1:0]ISet;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    
    wire clk_op_enable_111;
    wire [1:0]ISet_1__N_641;
    wire [7:0]Fp;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(96[21:23])
    wire [7:0]F;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(95[22:23])
    wire [2:0]mcycles;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(164[17:24])
    wire [2:0]mcycles_d;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(167[17:26])
    wire [7:0]I;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(97[17:18])
    
    wire clk_op_enable_89;
    wire [15:0]SP;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(101[17:19])
    
    wire clk_op_enable_78;
    wire [15:0]n2619;
    wire [2:0]RegAddrA_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(107[17:27])
    wire [3:0]Set_BusA_To;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(178[18:29])
    
    wire n1660, PreserveC_r, PreserveC, n37001;
    wire [2:0]RegAddrB_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(109[17:27])
    wire [3:0]Set_BusB_To;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(177[18:29])
    
    wire n1669;
    wire [2:0]RegAddrC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(111[17:25])
    
    wire n1684, n33539;
    wire [8:0]Q_7__N_1718;
    wire [7:0]BusA_7__N_764;
    wire [2:0]Pre_XY_F_M;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(141[17:27])
    
    wire clk_op_enable_194, n32138, Halt_FF, clk_op_enable_20, n34386, 
        n609;
    wire [7:0]n900;
    
    wire n34731;
    wire [7:0]n1154;
    
    wire IntE_FF2, IntE_FF2_N_904, No_BTR, No_BTR_N_948, n17917, n29825, 
        GND_net;
    wire [15:0]n87;
    
    wire n29826, n36233, n36232, n2823, n36234, n12431, n37157, 
        n37751, n37158;
    wire [2:0]RegAddrC_2__N_731;
    
    wire n29824, n33678;
    wire [2:0]Set_Addr_To_2__N_1413;
    wire [2:0]RegAddrB_r_2__N_728;
    
    wire n18066, n36619, n30986, n100, n37859, n37775, n37710, 
        n37720, n30107, n18064, clk_op_enable_46, n18062;
    wire [1:0]XY_State;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(140[17:25])
    
    wire clk_op_enable_308, n18060, last_tstate;
    wire [6:0]n2210;
    
    wire n18058, n18056, n18054, n18052, n18050, n18048, n18046;
    wire [6:0]mc;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(65[17:19])
    
    wire n32638, n32639, n32633;
    wire [3:0]Set_BusA_To_3__N_1198;
    
    wire n32632, RegWEH_N_867, n37623, Arith16_r, n32534, clk_op_enable_282;
    wire [2:0]RegAddrA_r_2__N_725;
    
    wire Auto_Wait_t1, n34061, clk_op_enable_73, Z16_r, n33833, Auto_Wait_t2, 
        n8409, clk_op_enable_81;
    wire [7:0]n1187;
    
    wire n17973, clk_op_enable_92;
    wire [7:0]F_7__N_669;
    
    wire n18042, n18040, n18038, n18036, n14634, n37632, n39857;
    wire [6:0]ts;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(66[17:19])
    
    wire n32819;
    wire [15:0]RegBusC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(106[17:24])
    wire [15:0]SP16_A;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[24:30])
    
    wire n18034, n18032;
    wire [7:0]ALU_Q;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(154[17:22])
    wire [7:0]Save_Mux_7__N_523;
    
    wire n34569;
    wire [7:0]Save_Mux;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(123[17:25])
    wire [15:0]PC16_B_15__N_566;
    
    wire BTR_r_N_963, clk_op_enable_119, clk_op_enable_129, n33646, 
        n29823, n29822;
    wire [15:0]SP16_B;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[32:38])
    wire [15:0]SP16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[18:22])
    
    wire clk_op_enable_136, n18028, n22322;
    wire [7:0]Q_7__N_1607;
    wire [7:0]BusA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(153[17:21])
    wire [7:0]n2865;
    
    wire n29821, n22352;
    wire [7:0]n2742;
    
    wire n29820, n29819, n29818, n29817;
    wire [15:0]ID16_B;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(217[18:24])
    
    wire RegWEH_N_887;
    wire [3:0]IncDec_16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(173[17:26])
    
    wire n39841, n5, RegAddrA_2__N_471, n37863;
    wire [2:0]RegAddrA_2__N_467;
    wire [2:0]RegAddrA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(108[17:25])
    
    wire n2542, n38436, n47;
    wire [4:0]n723;
    
    wire n4, Jump, n37537, n37513, n5_adj_1915, n4_adj_1916, n34381, 
        n34382, n29816, n34378, n5_adj_1917, n34379, n34375, n27;
    wire [7:0]n2417;
    
    wire n37830, n37546, n37332, n37160, n1172, n37311, n34376, 
        n34369, n37313, n37548;
    wire [7:0]F_Out;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(155[17:22])
    
    wire n28, n37920, n1170, n37529, n47_adj_1918, n37919, n34370, 
        n1165, BTR_r_N_965, n34744, n34366, n34367, n34363, clk_op_enable_147, 
        n34364, n34360, n34361;
    wire [15:0]RegBusB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(105[17:24])
    wire [7:0]n2408;
    
    wire n37757, n37573, n15935, clk_op_enable_148, n17975, n32637, 
        n37582, n34729;
    wire [6:0]tstate;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    
    wire clk_op_enable_325, n18025, n37706, n34340, n12, n47_adj_1919, 
        n37551, n22, n18, n37, n36244;
    wire [2:0]Special_LD;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(193[18:28])
    
    wire n37547, n17947, n17961, n17959, n8_adj_1920, n37514, n34433, 
        n17951, n17953, n17955, n17949, n17957, n37636, n37638, 
        n37393, n970, n18023, n37620, n37515, n37395, n37396, 
        n969, n968, n967;
    wire [3:0]Set_BusA_To_3__N_1202;
    
    wire n966;
    wire [15:0]n855;
    wire [15:0]n2599;
    
    wire n965;
    wire [7:0]n2468;
    
    wire n33726;
    wire [7:0]n2482;
    
    wire n964;
    wire [15:0]PC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(101[21:23])
    wire [7:0]n2435;
    
    wire n37584, RegsL_7_1, RegsL_6_1, n34811, RegsL_5_1, RegsL_4_1, 
        n34810, RegsL_3_1, RegsL_2_1, n34809, RegsL_1_1, RegsL_0_1, 
        n34808, RegsL_7_0, RegsL_6_0, n34804, RegsL_5_0, RegsL_4_0, 
        n34803, RegsL_3_0, RegsL_2_0, n34802, RegsL_1_0, RegsL_0_0, 
        n34801, RegsH_7_6, RegsH_6_6, n34797, RegsH_5_6, RegsH_4_6, 
        n34796, RegsH_3_6, RegsH_2_6, n34795, n29815, RegsH_1_6, 
        RegsH_0_6, n34794, RegsL_7_7, RegsL_6_7, n34790, RegsL_5_7, 
        RegsL_4_7, n34789, RegsL_3_7, RegsL_2_7, n34788, RegsL_1_7, 
        RegsL_0_7, n34787, n37801, n37802, RegsL_7_5, RegsL_6_5, 
        n34783, n37733, RegsL_5_5, RegsL_4_5, n34782, RegsL_3_5, 
        RegsL_2_5, n34781, RegsL_1_5, RegsL_0_5, n34780, RegsL_7_4, 
        RegsL_6_4, n34776, n36242, RegsL_5_4, RegsL_4_4, n34775, 
        n18021, n17105, RegsL_3_4, RegsL_2_4, n34774, RegsL_1_4, 
        RegsL_0_4, n34773, n29855, n957;
    wire [15:0]n559;
    wire [15:0]PC16_B;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(215[18:24])
    wire [15:0]n19;
    
    wire RegsL_7_3, RegsL_6_3, n34769, RegsL_5_3, RegsL_4_3, n34768, 
        RegsL_3_3, RegsL_2_3, n34767, RegsL_1_3, RegsL_0_3, n34766, 
        RegsL_7_6, RegsL_6_6, n34762, RegsL_5_6, RegsL_4_6, n34761, 
        RegsL_3_6, RegsL_2_6, n34760, RegsL_1_6, RegsL_0_6, n34759, 
        RegsH_7_0, RegsH_6_0, n35091, RegsH_5_0, RegsH_4_0, n35090, 
        RegsH_3_0, RegsH_2_0, n35089, RegsH_1_0, RegsH_0_0, n35088, 
        RegsH_7_1, RegsH_6_1, n35084, n37886, n38429, n38430, n17958, 
        n7158, n2384, n17815, RegsH_5_1, RegsH_4_1, n35083, n32720, 
        n18019, RegsH_3_1, RegsH_2_1, n35082, RegsH_1_1, RegsH_0_1, 
        n35081, n38428, JumpE_N_1507, RegsH_7_2, RegsH_6_2, n35077, 
        RegsH_5_2, RegsH_4_2, n35076, RegsH_3_2, RegsH_2_2, n35075, 
        Alternate, clk_op_enable_170, Alternate_N_899, n37698, n37553, 
        RegsH_1_2, RegsH_0_2, n35074, RegsH_7_3, RegsH_6_3, n35070, 
        RegsH_5_3, RegsH_4_3, n35069, RegsH_3_3, RegsH_2_3, n35068, 
        RegsH_1_3, RegsH_0_3, n35067, n64, n37596, n37656, n37538, 
        RegsH_7_4, RegsH_6_4, n35063, RegsH_5_4, RegsH_4_4, n35062, 
        RegsH_3_4, RegsH_2_4, n35061, n38426, n38425, RegsH_1_4, 
        RegsH_0_4, n35060, RegsH_7_7, RegsH_6_7, n35056, RegsH_5_7, 
        RegsH_4_7, n35055, RegsH_3_7, RegsH_2_7, n35054, n38431, 
        RegsH_1_7, RegsH_0_7, n35053, RegsH_7_5, RegsH_6_5, n35049, 
        n38432, n38433, RegsH_5_5, RegsH_4_5, n35048, n38427, n39843, 
        n38434, n38, n32900, n38435, RegsH_3_5, RegsH_2_5, n35047, 
        RegsH_1_5, RegsH_0_5, n35046, n18017, RegsL_7_2, RegsL_6_2, 
        n35042, clk_op_enable_304, RegsL_5_2, RegsL_4_2, n35041, n18015, 
        RegsL_3_2, RegsL_2_2, n35040, n29854, n29853, n17817, n29852, 
        RegsL_1_2, RegsL_0_2, n35039, n29851, n17948, n17813, n29850, 
        n29849, n941, n32631, n29848, n940, XY_Ind, clk_op_enable_182, 
        n37754, n17627, n37527, n22513, n17811, n17809, n17807, 
        n17803, n34356, n34357, last_mcycle, RegAddrA_2__N_737, n37587, 
        n37569, n15889, n4_adj_1925, n22859, n37312, n37579, n35924, 
        n35925, n15803, n43, n93, n6_adj_1926, n4_adj_1927;
    wire [2:0]TStates_2__N_1410;
    
    wire n37464, n35158, n16830, n39845, n9_adj_1928, n17954, n37845, 
        n49, n37581, n1, n2;
    wire [2:0]n2116;
    
    wire n33995, n4_adj_1929, n5_adj_1930, n34280, n34365, n37576, 
        n37577, n34374, n34377, n34380, n34383, n34359, LDZ, n34362, 
        n34368;
    wire [15:0]ID16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(122[17:21])
    wire [7:0]RegDIL_7__N_748;
    
    wire n36703, ExchangeRp, n37574, n37756, n35505, n17950, n34655, 
        n16241;
    wire [7:0]RegDIH_7__N_739;
    
    wire n2536, n37835, n1175, n37827, n5_adj_1931, n34468, n29838, 
        n37812;
    wire [3:0]IncDec_16_3__N_1012;
    
    wire n14261, n34416, n37716;
    wire [4:0]n2680;
    
    wire n33676, n37625, n33731, n37_adj_1932, n29837, n29836, n4_adj_1933, 
        n16, n6_adj_1934, n4_adj_1935, n37759, n1145, n29835, n29834, 
        n2183;
    wire [15:0]n1921;
    wire [15:0]n2013;
    
    wire n2195;
    wire [15:0]n2036;
    
    wire n29833, n29832, n29831;
    wire [15:0]n1956;
    
    wire n9937, IncDecZ, n17800, n14278, n32709, n37523, n33599, 
        n39455, n39456, n39454, n36726, n39453, n36717, n39482, 
        n39483, n39484, n39485, n39859, n39840, n37769, n39842, 
        n32973, n37600, n37695, n34236, n37791, n48;
    wire [15:0]n1938;
    
    wire n2189;
    wire [15:0]n1993;
    
    wire n39553, n36724, n39552, n39554, n39555, Q_7__N_1566, n6_adj_1936, 
        n23008, n34653, Save_ALU, n36616;
    wire [3:0]ALU_Op_3__N_1040;
    
    wire n36617, n23405, n27_adj_1937, n17, n30, n26, n18_adj_1938, 
        IncDecZ_N_972, stop, n17799, n13, n14, n1143;
    wire [7:0]RegDIL_7__N_456;
    wire [7:0]RegDIL;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(103[17:23])
    wire [7:0]RegDIH_7__N_447;
    wire [7:0]RegDIH;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(102[17:23])
    
    wire n21;
    wire [15:0]n525;
    
    wire n23097, n17971, n34751, n37627, n23273, n33787, n37837, 
        n37862, Read_To_Acc, n57, n34056, n23316, n37588, n36714, 
        RegWEL, n37680, n37624, n37707, n32647, n37619, n37824, 
        n32696, n37792, n37788, n36618, n17962, n6_adj_1939, n817, 
        n933, n17624, n37533, n34292, n8_adj_1940, IncDecZ_N_974;
    wire [2:0]RegAddrA_2__N_734;
    
    wire n37700, n37858, n37805, n15839, n37784, n32574, n17952, 
        n8_adj_1941, n7, F_Out_7__N_1638, n17956, n37686, n20, n17_adj_1942, 
        n35501, n37583, n4_adj_1943, n10995, n7_adj_1944, n32784, 
        n37806, n8_adj_1945, n37834, n35923, n32363, n37813, n3, 
        n26_adj_1946, n37461, n37856, n37787, n33232, n32987;
    wire [2:0]Set_Addr_To;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(183[18:29])
    wire [2:0]Set_Addr_To_2__N_1044;
    wire [15:0]n2582;
    
    wire IntE_FF2_N_905, n15, n37703, I_BTR, No_BTR_N_958, n4_adj_1947, 
        n33648, n37572, n37821, n17960, n36243, n13_adj_1948, n14_adj_1949, 
        n30700, n34412;
    wire [7:0]n2830;
    
    wire n37771, n37621, n27_adj_1950, n23, n6_adj_1951;
    wire [2:0]RegAddrB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(110[17:25])
    
    wire n2185, n33463, n37517, n22386, n2193, n32394, n15845, 
        F_Out_7__N_1645;
    wire [7:0]n2311;
    
    wire n1228, n34738, n37622, n14_adj_1954, n37516, n33979, n7_adj_1955, 
        n13_adj_1956, n14_adj_1957, n1142, n15_adj_1958, n23093, n32965, 
        n34711, n17_adj_1959, n18076, n17978, n18074, n29830, n56, 
        n53, n22510, n34037, n29829, n33268, n26_adj_1960, n33013, 
        n29828, n37826;
    wire [2:0]tstates;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(168[17:24])
    
    wire n34372, n31176, n31172, n34371, n37333, n34385, n6_adj_1961;
    wire [7:0]n2775;
    
    wire n6_adj_1962, n6_adj_1963, n10904, n32557, n6_adj_1964, n6_adj_1965, 
        n6_adj_1966, n6_adj_1967, n37539, n33981, n6_adj_1968, n36034, 
        n37685, n37555, n1_adj_1969, m1_n_N_803, n1_adj_1970, n1_adj_1971, 
        n1_adj_1972, n29827;
    wire [7:0]n2456;
    wire [7:0]n2495;
    
    wire n39854, n37777, n33871, n34384, n39873, n39869, n39867, 
        n37803, n37676, n17_adj_1973, n32891, n10_adj_1974, n37562, 
        n37563, n33980, n28_adj_1975, n6_adj_1976, n33, n33743, 
        n37549, n37512, n37273, n37159, n12430, n9458, n12441, 
        n37394, n34, n37833, n37335, n39865, n12434, n37334, n12437, 
        n37269, Read_To_Reg, n39863, n39861, n37807, n37741, n37728, 
        n37841, n37755, n14257, n37763, n37641;
    wire [7:0]Q_7__N_1599;
    
    wire F_Out_7__N_1636;
    
    FD1P3DX TmpAddr_i4 (.D(n18070), .SP(clk_op_enable_320), .CK(clk_op), 
            .CD(n39879), .Q(TmpAddr[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i4.GSR = "ENABLED";
    FD1S3DX Save_ALU_r_761 (.D(n8407), .CK(clk_op), .CD(n39884), .Q(Save_ALU_r)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Save_ALU_r_761.GSR = "ENABLED";
    FD1P3DX A__i1 (.D(n1900[0]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39884), .Q(sram_addr_0_0)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i1.GSR = "ENABLED";
    FD1S3AX BusB_i1 (.D(BusB_7__N_756[1]), .CK(clk_op), .Q(BusB[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i1.GSR = "ENABLED";
    FD1P3DX IR_i0_i0 (.D(n963), .SP(clk_op_enable_324), .CK(clk_op), .CD(n39876), 
            .Q(IR[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i0.GSR = "ENABLED";
    PFUMX i14570 (.BLUT(n798[5]), .ALUT(n938[5]), .C0(n34498), .Z(n18068));
    FD1S3AX RegBusA_r_i15 (.D(RegBusA[15]), .CK(clk_op), .Q(RegBusA_r[15])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i15.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i14 (.D(RegBusA[14]), .CK(clk_op), .Q(RegBusA_r[14])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i14.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i13 (.D(RegBusA[13]), .CK(clk_op), .Q(RegBusA_r[13])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i13.GSR = "ENABLED";
    FD1P3DX TmpAddr_i5 (.D(n18068), .SP(clk_op_enable_320), .CK(clk_op), 
            .CD(n39882), .Q(TmpAddr[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i5.GSR = "ENABLED";
    PFUMX i14546 (.BLUT(n1177[1]), .ALUT(n1196[1]), .C0(n34491), .Z(n18044));
    FD1S3AX RegBusA_r_i12 (.D(RegBusA[12]), .CK(clk_op), .Q(RegBusA_r[12])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i12.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r__i0 (.D(n11[0]), .CK(clk_op), .CD(n39879), .Q(Read_To_Reg_r[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i0.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i11 (.D(RegBusA[11]), .CK(clk_op), .Q(RegBusA_r[11])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i11.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i10 (.D(RegBusA[10]), .CK(clk_op), .Q(RegBusA_r[10])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i10.GSR = "ENABLED";
    FD1P3BX Ap_i0_i0 (.D(ACC[0]), .SP(clk_op_enable_127), .CK(clk_op), 
            .PD(n39884), .Q(Ap[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i0.GSR = "ENABLED";
    PFUMX i14574 (.BLUT(n798[3]), .ALUT(n938[3]), .C0(n34498), .Z(n18072));
    FD1P3DX A__i11 (.D(n1900[10]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39879), .Q(sram_addr_0_10)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i11.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i9 (.D(RegBusA[9]), .CK(clk_op), .Q(RegBusA_r[9])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i9.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i8 (.D(RegBusA[8]), .CK(clk_op), .Q(RegBusA_r[8])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i8.GSR = "ENABLED";
    FD1P3DX ISet_i0 (.D(ISet_1__N_641[0]), .SP(clk_op_enable_111), .CK(clk_op), 
            .CD(n39884), .Q(ISet[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ISet_i0.GSR = "ENABLED";
    FD1P3BX Fp_i0_i0 (.D(F[0]), .SP(clk_op_enable_127), .CK(clk_op), .PD(n39884), 
            .Q(Fp[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i0.GSR = "ENABLED";
    FD1S3DX mcycles_i0 (.D(mcycles_d[0]), .CK(clk_op), .CD(n39880), .Q(mcycles[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i0.GSR = "ENABLED";
    FD1P3DX I_i0_i0 (.D(ACC[0]), .SP(clk_op_enable_89), .CK(clk_op), .CD(n39880), 
            .Q(I[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i0.GSR = "ENABLED";
    FD1P3BX SP_i0_i0 (.D(n2619[0]), .SP(clk_op_enable_78), .CK(clk_op), 
            .PD(n39884), .Q(SP[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i0.GSR = "ENABLED";
    FD1S3JX RegAddrA_r_i0 (.D(n1660), .CK(clk_op), .PD(Set_BusA_To[1]), 
            .Q(RegAddrA_r[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i0.GSR = "ENABLED";
    FD1S3DX PreserveC_r_762 (.D(PreserveC), .CK(clk_op), .CD(n39877), 
            .Q(PreserveC_r)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PreserveC_r_762.GSR = "ENABLED";
    FD1S3DX ALU_Op_r__i0 (.D(n37001), .CK(clk_op), .CD(n39876), .Q(ALU_Op_r[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i0.GSR = "ENABLED";
    PFUMX i14572 (.BLUT(n798[4]), .ALUT(n938[4]), .C0(n34498), .Z(n18070));
    FD1S3JX RegAddrB_r_i0 (.D(n1669), .CK(clk_op), .PD(Set_BusB_To[1]), 
            .Q(RegAddrB_r[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i0.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i7 (.D(RegBusA[7]), .CK(clk_op), .Q(RegBusA_r[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i7.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i6 (.D(RegBusA[6]), .CK(clk_op), .Q(RegBusA_r[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i6.GSR = "ENABLED";
    FD1S3JX RegAddrC_i0 (.D(n33539), .CK(clk_op), .PD(n1684), .Q(RegAddrC[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i0.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0 (.D(RegBusA[0]), .CK(clk_op), .Q(RegBusA_r[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0.GSR = "ENABLED";
    FD1S3AX BusB_i0 (.D(BusB_7__N_756[0]), .CK(clk_op), .Q(BusB[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i0.GSR = "ENABLED";
    FD1S3AX BusA_i1 (.D(BusA_7__N_764[0]), .CK(clk_op), .Q(Q_7__N_1718[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i1.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i5 (.D(RegBusA[5]), .CK(clk_op), .Q(RegBusA_r[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i5.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i4 (.D(RegBusA[4]), .CK(clk_op), .Q(RegBusA_r[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i4.GSR = "ENABLED";
    FD1P3DX Pre_XY_F_M_i0_i0 (.D(n32138), .SP(clk_op_enable_194), .CK(clk_op), 
            .CD(n39884), .Q(Pre_XY_F_M[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i0.GSR = "ENABLED";
    FD1P3DX Halt_FF_778 (.D(n34386), .SP(clk_op_enable_20), .CK(clk_op), 
            .CD(n39882), .Q(Halt_FF)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Halt_FF_778.GSR = "ENABLED";
    PFUMX mux_276_i6 (.BLUT(n609), .ALUT(n900[5]), .C0(n34731), .Z(n1154[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    FD1S3DX IntE_FF2_783 (.D(IntE_FF2_N_904), .CK(clk_op), .CD(n39882), 
            .Q(IntE_FF2)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam IntE_FF2_783.GSR = "ENABLED";
    FD1S3DX No_BTR_784 (.D(No_BTR_N_948), .CK(clk_op), .CD(n39884), .Q(No_BTR)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam No_BTR_784.GSR = "ENABLED";
    FD1S3BX ACC_i0 (.D(n17917), .CK(clk_op), .PD(n39880), .Q(ACC[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i0.GSR = "ENABLED";
    FD1P3DX A__i10 (.D(n1900[9]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39879), .Q(sram_addr_0_9)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i10.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i3 (.D(RegBusA[3]), .CK(clk_op), .Q(RegBusA_r[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i3.GSR = "ENABLED";
    CCU2B add_868_add_4_7 (.A0(TmpAddr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n29825), .COUT(n29826), .S0(n87[5]), .S1(n87[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_7.INIT0 = 16'haaaa;
    defparam add_868_add_4_7.INIT1 = 16'haaaa;
    defparam add_868_add_4_7.INJECT1_0 = "NO";
    defparam add_868_add_4_7.INJECT1_1 = "NO";
    FD1S3AX RegBusA_r_i2 (.D(RegBusA[2]), .CK(clk_op), .Q(RegBusA_r[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i2.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i1 (.D(RegBusA[1]), .CK(clk_op), .Q(RegBusA_r[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i1.GSR = "ENABLED";
    PFUMX i32528 (.BLUT(n36233), .ALUT(n36232), .C0(n2823), .Z(n36234));
    PFUMX i33084 (.BLUT(n12431), .ALUT(n37157), .C0(n37751), .Z(n37158));
    FD1S3AX RegAddrC_i2 (.D(RegAddrC_2__N_731[2]), .CK(clk_op), .Q(RegAddrC[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i2.GSR = "ENABLED";
    CCU2B add_868_add_4_5 (.A0(TmpAddr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n29824), .COUT(n29825), .S0(n87[3]), .S1(n87[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_5.INIT0 = 16'haaaa;
    defparam add_868_add_4_5.INIT1 = 16'haaaa;
    defparam add_868_add_4_5.INJECT1_0 = "NO";
    defparam add_868_add_4_5.INJECT1_1 = "NO";
    FD1S3JX RegAddrC_i1 (.D(Set_Addr_To_2__N_1413[1]), .CK(clk_op), .PD(n33678), 
            .Q(RegAddrC[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i1.GSR = "ENABLED";
    FD1S3AX RegAddrB_r_i2 (.D(RegAddrB_r_2__N_728[2]), .CK(clk_op), .Q(RegAddrB_r[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i2.GSR = "ENABLED";
    FD1S3AX RegAddrB_r_i1 (.D(Set_BusB_To[2]), .CK(clk_op), .Q(RegAddrB_r[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i1.GSR = "ENABLED";
    FD1P3DX TmpAddr_i6 (.D(n18066), .SP(clk_op_enable_320), .CK(clk_op), 
            .CD(n39879), .Q(TmpAddr[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i6.GSR = "ENABLED";
    FD1S3DX ALU_Op_r__i3 (.D(n36619), .CK(clk_op), .CD(rst_s), .Q(ALU_Op_r[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i3.GSR = "ENABLED";
    FD1P3DX A__i9 (.D(n1900[8]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39880), .Q(sram_addr_0_8)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i9.GSR = "ENABLED";
    FD1S3DX ALU_Op_r__i2 (.D(n30986), .CK(clk_op), .CD(n39875), .Q(ALU_Op_r[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i2.GSR = "ENABLED";
    FD1S3DX ALU_Op_r__i1 (.D(n100), .CK(clk_op), .CD(n39876), .Q(ALU_Op_r[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r__i1.GSR = "ENABLED";
    ORCALUT4 i2_4_lut (.A(n37859), .B(n37775), .C(n37710), .D(n37720), 
            .Z(n30107)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;
    defparam i2_4_lut.init = 16'hfafe;
    FD1P3DX TmpAddr_i7 (.D(n18064), .SP(clk_op_enable_320), .CK(clk_op), 
            .CD(n39882), .Q(TmpAddr[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i7.GSR = "ENABLED";
    FD1P3DX TmpAddr_i8 (.D(n18062), .SP(clk_op_enable_46), .CK(clk_op), 
            .CD(n39882), .Q(TmpAddr[8])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i8.GSR = "ENABLED";
    FD1P3DX XY_State__i1 (.D(n18060), .SP(clk_op_enable_308), .CK(clk_op), 
            .CD(n39882), .Q(XY_State[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_State__i1.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i6 (.D(n2210[6]), .SP(last_tstate), .CK(clk_op), 
            .CD(n39884), .Q(\mc[6] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i6.GSR = "ENABLED";
    FD1P3DX TmpAddr_i9 (.D(n18058), .SP(clk_op_enable_46), .CK(clk_op), 
            .CD(n39879), .Q(TmpAddr[9])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i9.GSR = "ENABLED";
    FD1P3DX TmpAddr_i10 (.D(n18056), .SP(clk_op_enable_46), .CK(clk_op), 
            .CD(n39879), .Q(TmpAddr[10])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i10.GSR = "ENABLED";
    FD1P3DX TmpAddr_i11 (.D(n18054), .SP(clk_op_enable_46), .CK(clk_op), 
            .CD(n39882), .Q(TmpAddr[11])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i11.GSR = "ENABLED";
    FD1P3DX TmpAddr_i12 (.D(n18052), .SP(clk_op_enable_46), .CK(clk_op), 
            .CD(n39879), .Q(TmpAddr[12])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i12.GSR = "ENABLED";
    FD1P3DX TmpAddr_i13 (.D(n18050), .SP(clk_op_enable_46), .CK(clk_op), 
            .CD(n39882), .Q(TmpAddr[13])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i13.GSR = "ENABLED";
    FD1P3DX TmpAddr_i14 (.D(n18048), .SP(clk_op_enable_46), .CK(clk_op), 
            .CD(n39879), .Q(TmpAddr[14])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i14.GSR = "ENABLED";
    FD1P3DX TmpAddr_i15 (.D(n18046), .SP(clk_op_enable_46), .CK(clk_op), 
            .CD(n39879), .Q(TmpAddr[15])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i15.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i5 (.D(n2210[5]), .SP(last_tstate), .CK(clk_op), 
            .CD(n39882), .Q(mc[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i5.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i4 (.D(n32638), .SP(last_tstate), .CK(clk_op), .CD(n39882), 
            .Q(mc[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i4.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i3 (.D(n32639), .SP(last_tstate), .CK(clk_op), .CD(n39882), 
            .Q(mc[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i3.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i2 (.D(n32633), .SP(last_tstate), .CK(clk_op), .CD(n39876), 
            .Q(mc[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i2.GSR = "ENABLED";
    FD1P3DX mcycle_i0_i1 (.D(n32632), .SP(last_tstate), .CK(clk_op), .CD(n39876), 
            .Q(Set_BusA_To_3__N_1198[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i1.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_rep_520 (.A(RegWEH_N_867), .B(Read_To_Reg_r[1]), .C(Read_To_Reg_r[4]), 
            .Z(n37623)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut_rep_520.init = 16'hdfdf;
    FD1S3DX Arith16_r_757 (.D(n32534), .CK(clk_op), .CD(n39876), .Q(Arith16_r)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Arith16_r_757.GSR = "ENABLED";
    FD1P3DX dout_i1 (.D(n18044), .SP(clk_op_enable_282), .CK(clk_op), 
            .CD(n39879), .Q(cpu_dout[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i1.GSR = "ENABLED";
    FD1P3DX A__i8 (.D(n1900[7]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39876), .Q(sram_addr_0_7)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i8.GSR = "ENABLED";
    FD1S3AX RegAddrA_r_i2 (.D(RegAddrA_r_2__N_725[2]), .CK(clk_op), .Q(RegAddrA_r[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i2.GSR = "ENABLED";
    FD1S3AX RegAddrA_r_i1 (.D(Set_BusA_To[2]), .CK(clk_op), .Q(RegAddrA_r[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i1.GSR = "ENABLED";
    FD1S3DX Auto_Wait_t1_785 (.D(n34061), .CK(clk_op), .CD(n39880), .Q(Auto_Wait_t1)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Auto_Wait_t1_785.GSR = "ENABLED";
    FD1P3DX A__i7 (.D(n1900[6]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39880), .Q(sram_addr_0_6)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i7.GSR = "ENABLED";
    FD1P3DX A__i6 (.D(n1900[5]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39880), .Q(sram_addr_0_5)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i6.GSR = "ENABLED";
    FD1P3BX SP_i0_i15 (.D(n2619[15]), .SP(clk_op_enable_73), .CK(clk_op), 
            .PD(n39880), .Q(SP[15])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i15.GSR = "ENABLED";
    FD1P3BX SP_i0_i14 (.D(n2619[14]), .SP(clk_op_enable_73), .CK(clk_op), 
            .PD(n39880), .Q(SP[14])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i14.GSR = "ENABLED";
    FD1P3BX SP_i0_i13 (.D(n2619[13]), .SP(clk_op_enable_73), .CK(clk_op), 
            .PD(n39880), .Q(SP[13])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i13.GSR = "ENABLED";
    FD1P3BX SP_i0_i12 (.D(n2619[12]), .SP(clk_op_enable_73), .CK(clk_op), 
            .PD(n39880), .Q(SP[12])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i12.GSR = "ENABLED";
    FD1P3BX SP_i0_i11 (.D(n2619[11]), .SP(clk_op_enable_73), .CK(clk_op), 
            .PD(n39880), .Q(SP[11])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i11.GSR = "ENABLED";
    FD1S3DX Z16_r_759 (.D(n33833), .CK(clk_op), .CD(n39876), .Q(Z16_r)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Z16_r_759.GSR = "ENABLED";
    FD1S3DX Auto_Wait_t2_786 (.D(n8409), .CK(clk_op), .CD(n39877), .Q(Auto_Wait_t2)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Auto_Wait_t2_786.GSR = "ENABLED";
    FD1P3DX A__i5 (.D(n1900[4]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39880), .Q(sram_addr_0_4)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i5.GSR = "ENABLED";
    FD1P3BX SP_i0_i10 (.D(n2619[10]), .SP(clk_op_enable_73), .CK(clk_op), 
            .PD(n39880), .Q(SP[10])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i10.GSR = "ENABLED";
    FD1P3BX SP_i0_i9 (.D(n2619[9]), .SP(clk_op_enable_73), .CK(clk_op), 
            .PD(n39880), .Q(SP[9])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i9.GSR = "ENABLED";
    FD1P3BX SP_i0_i8 (.D(n2619[8]), .SP(clk_op_enable_73), .CK(clk_op), 
            .PD(n39880), .Q(SP[8])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i8.GSR = "ENABLED";
    FD1P3BX SP_i0_i7 (.D(n2619[7]), .SP(clk_op_enable_78), .CK(clk_op), 
            .PD(n39880), .Q(SP[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i7.GSR = "ENABLED";
    FD1P3BX SP_i0_i6 (.D(n2619[6]), .SP(clk_op_enable_78), .CK(clk_op), 
            .PD(n39879), .Q(SP[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i6.GSR = "ENABLED";
    FD1P3BX SP_i0_i5 (.D(n2619[5]), .SP(clk_op_enable_78), .CK(clk_op), 
            .PD(n39884), .Q(SP[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i5.GSR = "ENABLED";
    FD1P3BX SP_i0_i4 (.D(n2619[4]), .SP(clk_op_enable_78), .CK(clk_op), 
            .PD(n39884), .Q(SP[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i4.GSR = "ENABLED";
    FD1P3BX SP_i0_i3 (.D(n2619[3]), .SP(clk_op_enable_78), .CK(clk_op), 
            .PD(n39884), .Q(SP[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i3.GSR = "ENABLED";
    FD1P3DX A__i4 (.D(n1900[3]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39879), .Q(sram_addr_0_3)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i4.GSR = "ENABLED";
    FD1P3BX SP_i0_i2 (.D(n2619[2]), .SP(clk_op_enable_81), .CK(clk_op), 
            .PD(n39875), .Q(SP[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i2.GSR = "ENABLED";
    FD1P3BX SP_i0_i1 (.D(n2619[1]), .SP(clk_op_enable_81), .CK(clk_op), 
            .PD(n39882), .Q(SP[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i1.GSR = "ENABLED";
    FD1P3DX I_i0_i7 (.D(ACC[7]), .SP(clk_op_enable_89), .CK(clk_op), .CD(n39882), 
            .Q(I[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i7.GSR = "ENABLED";
    FD1P3DX I_i0_i6 (.D(ACC[6]), .SP(clk_op_enable_89), .CK(clk_op), .CD(n39880), 
            .Q(I[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i6.GSR = "ENABLED";
    PFUMX i14475 (.BLUT(n1177[0]), .ALUT(n1187[0]), .C0(n34491), .Z(n17973));
    FD1P3DX A__i3 (.D(n1900[2]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39880), .Q(sram_addr_0_2)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i3.GSR = "ENABLED";
    FD1P3DX I_i0_i5 (.D(ACC[5]), .SP(clk_op_enable_89), .CK(clk_op), .CD(n39880), 
            .Q(I[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i5.GSR = "ENABLED";
    FD1P3DX I_i0_i4 (.D(ACC[4]), .SP(clk_op_enable_89), .CK(clk_op), .CD(n39880), 
            .Q(I[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i4.GSR = "ENABLED";
    FD1P3DX I_i0_i3 (.D(ACC[3]), .SP(clk_op_enable_89), .CK(clk_op), .CD(n39880), 
            .Q(I[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i3.GSR = "ENABLED";
    FD1P3DX I_i0_i2 (.D(ACC[2]), .SP(clk_op_enable_89), .CK(clk_op), .CD(n39880), 
            .Q(I[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i2.GSR = "ENABLED";
    FD1P3DX I_i0_i1 (.D(ACC[1]), .SP(clk_op_enable_89), .CK(clk_op), .CD(n39880), 
            .Q(I[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i1.GSR = "ENABLED";
    FD1P3BX F_i5 (.D(F_7__N_669[5]), .SP(clk_op_enable_92), .CK(clk_op), 
            .PD(n39880), .Q(F[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i5.GSR = "ENABLED";
    FD1S3BX F_i4 (.D(F_7__N_669[4]), .CK(clk_op), .PD(n39876), .Q(F[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i4.GSR = "ENABLED";
    FD1P3DX A__i2 (.D(n1900[1]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39880), .Q(sram_addr_0_1)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i2.GSR = "ENABLED";
    FD1P3BX F_i3 (.D(F_7__N_669[3]), .SP(clk_op_enable_92), .CK(clk_op), 
            .PD(n39879), .Q(F[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i3.GSR = "ENABLED";
    FD1P3DX dout_i2 (.D(n18042), .SP(clk_op_enable_282), .CK(clk_op), 
            .CD(n39879), .Q(cpu_dout[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i2.GSR = "ENABLED";
    FD1P3DX dout_i3 (.D(n18040), .SP(clk_op_enable_282), .CK(clk_op), 
            .CD(n39879), .Q(cpu_dout[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i3.GSR = "ENABLED";
    FD1P3DX dout_i4 (.D(n18038), .SP(clk_op_enable_282), .CK(clk_op), 
            .CD(n39879), .Q(cpu_dout[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i4.GSR = "ENABLED";
    FD1P3DX dout_i5 (.D(n18036), .SP(clk_op_enable_282), .CK(clk_op), 
            .CD(n39879), .Q(cpu_dout[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i5.GSR = "ENABLED";
    ORCALUT4 i1_4_lut (.A(n14634), .B(n37632), .C(n39857), .D(ts[4]), 
            .Z(n32819)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i1_4_lut.init = 16'hbbba;
    ORCALUT4 SP_15__I_0_793_i6_3_lut (.A(SP[5]), .B(RegBusC[5]), .C(ts[3]), 
            .Z(SP16_A[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i6_3_lut.init = 16'hcaca;
    FD1P3DX dout_i6 (.D(n18034), .SP(clk_op_enable_282), .CK(clk_op), 
            .CD(n39882), .Q(cpu_dout[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i6.GSR = "ENABLED";
    FD1P3DX dout_i7 (.D(n18032), .SP(clk_op_enable_282), .CK(clk_op), 
            .CD(n39880), .Q(cpu_dout[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i7.GSR = "ENABLED";
    FD1S3DX mcycles_i2 (.D(mcycles_d[2]), .CK(clk_op), .CD(n39879), .Q(mcycles[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i2.GSR = "ENABLED";
    FD1S3DX mcycles_i1 (.D(mcycles_d[1]), .CK(clk_op), .CD(n39879), .Q(mcycles[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i1.GSR = "ENABLED";
    FD1P3BX Fp_i0_i7 (.D(F[7]), .SP(clk_op_enable_127), .CK(clk_op), .PD(n39879), 
            .Q(Fp[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i7.GSR = "ENABLED";
    FD1P3BX Fp_i0_i6 (.D(F[6]), .SP(clk_op_enable_127), .CK(clk_op), .PD(n39884), 
            .Q(Fp[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i6.GSR = "ENABLED";
    FD1P3BX Fp_i0_i5 (.D(F[5]), .SP(clk_op_enable_127), .CK(clk_op), .PD(n39882), 
            .Q(Fp[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i5.GSR = "ENABLED";
    FD1P3BX Fp_i0_i4 (.D(F[4]), .SP(clk_op_enable_127), .CK(clk_op), .PD(n39876), 
            .Q(Fp[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i4.GSR = "ENABLED";
    FD1P3BX Fp_i0_i3 (.D(F[3]), .SP(clk_op_enable_127), .CK(clk_op), .PD(n39880), 
            .Q(Fp[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i3.GSR = "ENABLED";
    FD1P3BX Fp_i0_i2 (.D(F[2]), .SP(clk_op_enable_127), .CK(clk_op), .PD(n39882), 
            .Q(Fp[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i2.GSR = "ENABLED";
    FD1P3BX Fp_i0_i1 (.D(F[1]), .SP(clk_op_enable_127), .CK(clk_op), .PD(n39882), 
            .Q(Fp[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i1.GSR = "ENABLED";
    FD1P3DX ISet_i1 (.D(ISet_1__N_641[1]), .SP(clk_op_enable_111), .CK(clk_op), 
            .CD(n39882), .Q(ISet[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ISet_i1.GSR = "ENABLED";
    PFUMX Save_Mux_7__I_0_i1 (.BLUT(ALU_Q[0]), .ALUT(Save_Mux_7__N_523[0]), 
          .C0(n34569), .Z(Save_Mux[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    FD1P3DX BTR_r_758 (.D(BTR_r_N_963), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39879), .Q(PC16_B_15__N_566[15])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam BTR_r_758.GSR = "ENABLED";
    FD1P3BX F_i1 (.D(F_7__N_669[1]), .SP(clk_op_enable_119), .CK(clk_op), 
            .PD(n39880), .Q(F[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i1.GSR = "ENABLED";
    FD1P3BX Ap_i0_i7 (.D(ACC[7]), .SP(clk_op_enable_127), .CK(clk_op), 
            .PD(n39884), .Q(Ap[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i7.GSR = "ENABLED";
    FD1P3BX Ap_i0_i6 (.D(ACC[6]), .SP(clk_op_enable_127), .CK(clk_op), 
            .PD(n39884), .Q(Ap[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i6.GSR = "ENABLED";
    FD1P3BX Ap_i0_i5 (.D(ACC[5]), .SP(clk_op_enable_127), .CK(clk_op), 
            .PD(n39879), .Q(Ap[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i5.GSR = "ENABLED";
    FD1P3BX Ap_i0_i4 (.D(ACC[4]), .SP(clk_op_enable_127), .CK(clk_op), 
            .PD(n39884), .Q(Ap[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i4.GSR = "ENABLED";
    FD1P3BX Ap_i0_i3 (.D(ACC[3]), .SP(clk_op_enable_127), .CK(clk_op), 
            .PD(n39884), .Q(Ap[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i3.GSR = "ENABLED";
    FD1P3BX Ap_i0_i2 (.D(ACC[2]), .SP(clk_op_enable_127), .CK(clk_op), 
            .PD(n39884), .Q(Ap[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i2.GSR = "ENABLED";
    FD1P3BX Ap_i0_i1 (.D(ACC[1]), .SP(clk_op_enable_127), .CK(clk_op), 
            .PD(n39884), .Q(Ap[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i1.GSR = "ENABLED";
    FD1P3BX F_i2 (.D(F_7__N_669[2]), .SP(clk_op_enable_129), .CK(clk_op), 
            .PD(n39882), .Q(F[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i2.GSR = "ENABLED";
    ORCALUT4 SP_15__I_0_793_i7_3_lut (.A(SP[6]), .B(RegBusC[6]), .C(ts[3]), 
            .Z(SP16_A[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i7_3_lut.init = 16'hcaca;
    FD1S3DX Read_To_Reg_r__i4 (.D(n11[4]), .CK(clk_op), .CD(n39882), .Q(Read_To_Reg_r[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i4.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r__i3 (.D(n33646), .CK(clk_op), .CD(n39882), .Q(Read_To_Reg_r[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i3.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r__i2 (.D(n11[2]), .CK(clk_op), .CD(n39884), .Q(Read_To_Reg_r[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i2.GSR = "ENABLED";
    CCU2B add_868_add_4_3 (.A0(TmpAddr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n29823), .COUT(n29824), .S0(n87[1]), .S1(n87[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_3.INIT0 = 16'haaaa;
    defparam add_868_add_4_3.INIT1 = 16'haaaa;
    defparam add_868_add_4_3.INJECT1_0 = "NO";
    defparam add_868_add_4_3.INJECT1_1 = "NO";
    CCU2B add_868_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(TmpAddr[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n29823), .S1(n87[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_1.INIT0 = 16'h0000;
    defparam add_868_add_4_1.INIT1 = 16'h555a;
    defparam add_868_add_4_1.INJECT1_0 = "NO";
    defparam add_868_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 SP_15__I_0_793_i4_3_lut (.A(SP[3]), .B(RegBusC[3]), .C(ts[3]), 
            .Z(SP16_A[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i4_3_lut.init = 16'hcaca;
    CCU2B SP16_A_15__I_0_add_4_17 (.A0(SP16_B[7]), .B0(n39857), .C0(RegBusC[15]), 
          .D0(SP[15]), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29822), .S0(SP16[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_17.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_17.INIT1 = 16'h0000;
    defparam SP16_A_15__I_0_add_4_17.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_17.INJECT1_1 = "NO";
    FD1P3BX F_i6 (.D(n18028), .SP(clk_op_enable_136), .CK(clk_op), .PD(n39876), 
            .Q(F[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i6.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r__i1 (.D(n11[1]), .CK(clk_op), .CD(n39882), .Q(Read_To_Reg_r[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r__i1.GSR = "ENABLED";
    ORCALUT4 mux_1680_i6_4_lut_4_lut (.A(ALU_Op_r[3]), .B(n22322), .C(Q_7__N_1607[5]), 
            .D(BusA[5]), .Z(n2865[5])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1680_i6_4_lut_4_lut.init = 16'hd850;
    CCU2B SP16_A_15__I_0_add_4_15 (.A0(SP16_B[7]), .B0(n39857), .C0(RegBusC[13]), 
          .D0(SP[13]), .A1(SP16_B[7]), .B1(n39857), .C1(RegBusC[14]), 
          .D1(SP[14]), .CIN(n29821), .COUT(n29822), .S0(SP16[13]), .S1(SP16[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_15.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_15.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_15.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 i19342_4_lut (.A(SP[4]), .B(n22352), .C(SP[12]), .D(Set_BusA_To[0]), 
            .Z(n2742[4])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i19342_4_lut.init = 16'hc088;
    CCU2B SP16_A_15__I_0_add_4_13 (.A0(SP16_B[7]), .B0(n39857), .C0(RegBusC[11]), 
          .D0(SP[11]), .A1(SP16_B[7]), .B1(n39857), .C1(RegBusC[12]), 
          .D1(SP[12]), .CIN(n29820), .COUT(n29821), .S0(SP16[11]), .S1(SP16[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_13.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_13.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_13.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_13.INJECT1_1 = "NO";
    CCU2B SP16_A_15__I_0_add_4_11 (.A0(SP16_B[7]), .B0(n39857), .C0(RegBusC[9]), 
          .D0(SP[9]), .A1(SP16_B[7]), .B1(n39857), .C1(RegBusC[10]), 
          .D1(SP[10]), .CIN(n29819), .COUT(n29820), .S0(SP16[9]), .S1(SP16[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_11.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_11.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_11.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_11.INJECT1_1 = "NO";
    CCU2B SP16_A_15__I_0_add_4_9 (.A0(SP16_B[7]), .B0(n39857), .C0(RegBusC[7]), 
          .D0(SP[7]), .A1(SP16_B[7]), .B1(n39857), .C1(RegBusC[8]), 
          .D1(SP[8]), .CIN(n29818), .COUT(n29819), .S0(SP16[7]), .S1(SP16[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_9.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_9.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_9.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_9.INJECT1_1 = "NO";
    CCU2B SP16_A_15__I_0_add_4_7 (.A0(SP16_A[5]), .B0(n39857), .C0(di_reg[5]), 
          .D0(ID16_B[15]), .A1(SP16_A[6]), .B1(n39857), .C1(di_reg[6]), 
          .D1(ID16_B[15]), .CIN(n29817), .COUT(n29818), .S0(SP16[5]), 
          .S1(SP16[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_7.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_7.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_7.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i11503_3_lut (.A(RegWEH_N_887), .B(IncDec_16[0]), .C(IncDec_16[1]), 
            .Z(n14634)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i11503_3_lut.init = 16'h2a2a;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(IR[4]), .B(IR[5]), .C(\ALU_Op_3__N_1269[3] ), 
            .D(n39841), .Z(n5)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h00c8;
    ORCALUT4 RegAddrA_2__I_0_i2_rep_19_3_lut_4_lut (.A(RegAddrA_2__N_471), 
            .B(n37863), .C(IncDec_16[1]), .D(RegAddrA_2__N_467[1]), .Z(RegAddrA[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(935[11:95])
    defparam RegAddrA_2__I_0_i2_rep_19_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i2_3_lut_4_lut (.A(Set_BusB_To[1]), .B(Set_BusB_To[0]), .C(Set_BusB_To[2]), 
            .D(Set_BusB_To[3]), .Z(n2542)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'he000;
    ORCALUT4 sram_addr_c_bdd_2_lut_33005_4_lut (.A(n38436), .B(n47), .C(ISet[1]), 
            .D(clk_op_enable_204), .Z(n37001)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam sram_addr_c_bdd_2_lut_33005_4_lut.init = 16'hca00;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_3_lut_4_lut (.A(ALU_Op_r[2]), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[0]), .D(n723[0]), .Z(n4)) /* synthesis lut_function=(A (D)+!A !(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'hab00;
    ORCALUT4 i1_2_lut_rep_410_3_lut (.A(Jump), .B(n37537), .C(clk_op_enable_204), 
            .Z(n37513)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_410_3_lut.init = 16'h1010;
    ORCALUT4 tstates_2__I_0_i4_3_lut_4_lut (.A(ts[4]), .B(ts[5]), .C(n5_adj_1915), 
            .D(\mc[6] ), .Z(n4_adj_1916)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam tstates_2__I_0_i4_3_lut_4_lut.init = 16'hccca;
    ORCALUT4 i19341_4_lut (.A(SP[5]), .B(n22352), .C(SP[13]), .D(Set_BusA_To[0]), 
            .Z(n2742[5])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i19341_4_lut.init = 16'hc088;
    ORCALUT4 i30829_3_lut (.A(di_reg[5]), .B(ACC[5]), .C(Set_BusA_To[0]), 
            .Z(n34381)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30829_3_lut.init = 16'hcaca;
    ORCALUT4 i31897_3_lut (.A(n34381), .B(n2742[5]), .C(Set_BusA_To[3]), 
            .Z(n34382)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i31897_3_lut.init = 16'hcaca;
    ORCALUT4 i19340_4_lut (.A(SP[6]), .B(n22352), .C(SP[14]), .D(Set_BusA_To[0]), 
            .Z(n2742[6])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i19340_4_lut.init = 16'hc088;
    CCU2B SP16_A_15__I_0_add_4_5 (.A0(SP16_A[3]), .B0(n39857), .C0(di_reg[3]), 
          .D0(ID16_B[15]), .A1(SP16_A[4]), .B1(n39857), .C1(di_reg[4]), 
          .D1(ID16_B[15]), .CIN(n29816), .COUT(n29817), .S0(SP16[3]), 
          .S1(SP16[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_5.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_5.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_5.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i30826_3_lut (.A(di_reg[6]), .B(ACC[6]), .C(Set_BusA_To[0]), 
            .Z(n34378)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30826_3_lut.init = 16'hcaca;
    ORCALUT4 i19256_2_lut_3_lut (.A(ts[6]), .B(n5_adj_1915), .C(\mc[6] ), 
            .Z(n5_adj_1917)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam i19256_2_lut_3_lut.init = 16'h0202;
    ORCALUT4 i31895_3_lut (.A(n34378), .B(n2742[6]), .C(Set_BusA_To[3]), 
            .Z(n34379)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i31895_3_lut.init = 16'hcaca;
    ORCALUT4 i19339_4_lut (.A(SP[7]), .B(n22352), .C(SP[15]), .D(Set_BusA_To[0]), 
            .Z(n2742[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i19339_4_lut.init = 16'hc088;
    ORCALUT4 i30823_3_lut (.A(di_reg[7]), .B(ACC[7]), .C(Set_BusA_To[0]), 
            .Z(n34375)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30823_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1518_i2_3_lut_4_lut (.A(ACC[1]), .B(SP[1]), .C(\mc[6] ), 
            .D(n27), .Z(n2417[1])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1518_i2_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1518_i3_3_lut_4_lut (.A(ACC[2]), .B(SP[2]), .C(\mc[6] ), 
            .D(n27), .Z(n2417[2])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1518_i3_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1518_i4_3_lut_4_lut (.A(ACC[3]), .B(SP[3]), .C(\mc[6] ), 
            .D(n27), .Z(n2417[3])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1518_i4_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1518_i5_3_lut_4_lut (.A(ACC[4]), .B(SP[4]), .C(\mc[6] ), 
            .D(n27), .Z(n2417[4])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1518_i5_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1518_i6_3_lut_4_lut (.A(ACC[5]), .B(SP[5]), .C(\mc[6] ), 
            .D(n27), .Z(n2417[5])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1518_i6_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1518_i7_3_lut_4_lut (.A(ACC[6]), .B(SP[6]), .C(\mc[6] ), 
            .D(n27), .Z(n2417[6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1518_i7_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1518_i8_3_lut_4_lut (.A(ACC[7]), .B(SP[7]), .C(\mc[6] ), 
            .D(n27), .Z(n2417[7])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1518_i8_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 mux_1518_i1_3_lut_4_lut (.A(ACC[0]), .B(SP[0]), .C(\mc[6] ), 
            .D(n27), .Z(n2417[0])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1518_i1_3_lut_4_lut.init = 16'hacaa;
    ORCALUT4 Q_7__N_1607_5__bdd_3_lut_33178_4_lut (.A(n37830), .B(n37546), 
            .C(n1154[5]), .D(Save_Mux[5]), .Z(n37332)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Q_7__N_1607_5__bdd_3_lut_33178_4_lut.init = 16'hf870;
    ORCALUT4 n37160_bdd_3_lut_4_lut (.A(n37830), .B(n37546), .C(Save_Mux[7]), 
            .D(n37160), .Z(F_7__N_669[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam n37160_bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i287_3_lut_4_lut (.A(n37830), .B(n37546), .C(Save_Mux[2]), 
            .D(n1154[2]), .Z(n1172)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i287_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 n22859_bdd_4_lut (.A(n37866), .B(n37751), .C(ALU_Op_r[3]), 
            .D(ALU_Op_r[1]), .Z(n37311)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam n22859_bdd_4_lut.init = 16'hdfff;
    ORCALUT4 i31893_3_lut (.A(n34375), .B(n2742[7]), .C(Set_BusA_To[3]), 
            .Z(n34376)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i31893_3_lut.init = 16'hcaca;
    ORCALUT4 i19345_4_lut (.A(SP[1]), .B(n22352), .C(SP[9]), .D(Set_BusA_To[0]), 
            .Z(n2742[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i19345_4_lut.init = 16'hc088;
    ORCALUT4 i30817_3_lut (.A(di_reg[1]), .B(ACC[1]), .C(Set_BusA_To[0]), 
            .Z(n34369)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30817_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_4_lut_adj_557 (.A(n37830), .B(n37546), .C(n37313), 
            .D(n37548), .Z(clk_op_enable_92)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_3_lut_4_lut_adj_557.init = 16'hfff8;
    ORCALUT4 mux_1727_i1_3_lut_4_lut (.A(n37830), .B(n37546), .C(Save_Mux[0]), 
            .D(n900[0]), .Z(F_Out[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1727_i1_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i14491_4_lut_then_2_lut (.A(n28), .B(\tstate[2] ), .Z(n37920)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam i14491_4_lut_then_2_lut.init = 16'h8888;
    ORCALUT4 i285_3_lut_4_lut (.A(n37830), .B(n37546), .C(Save_Mux[6]), 
            .D(n1154[6]), .Z(n1170)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i285_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i14491_4_lut_else_2_lut (.A(n37529), .B(\tstate[2] ), .C(last_tstate), 
            .D(n47_adj_1918), .Z(n37919)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam i14491_4_lut_else_2_lut.init = 16'heca0;
    ORCALUT4 i31905_3_lut (.A(n34369), .B(n2742[1]), .C(Set_BusA_To[3]), 
            .Z(n34370)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i31905_3_lut.init = 16'hcaca;
    ORCALUT4 i18898_4_lut (.A(SP[0]), .B(n22352), .C(SP[8]), .D(Set_BusA_To[0]), 
            .Z(n2742[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i18898_4_lut.init = 16'hc088;
    ORCALUT4 i32187_3_lut_4_lut (.A(n37830), .B(n37546), .C(n1165), .D(BTR_r_N_965), 
            .Z(n34744)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i32187_3_lut_4_lut.init = 16'hfff8;
    ORCALUT4 i30814_3_lut (.A(di_reg[0]), .B(ACC[0]), .C(Set_BusA_To[0]), 
            .Z(n34366)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30814_3_lut.init = 16'hcaca;
    ORCALUT4 i31890_3_lut (.A(n34366), .B(n2742[0]), .C(Set_BusA_To[3]), 
            .Z(n34367)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i31890_3_lut.init = 16'hcaca;
    ORCALUT4 i19344_4_lut (.A(SP[2]), .B(n22352), .C(SP[10]), .D(Set_BusA_To[0]), 
            .Z(n2742[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i19344_4_lut.init = 16'hc088;
    ORCALUT4 i30811_3_lut (.A(di_reg[2]), .B(ACC[2]), .C(Set_BusA_To[0]), 
            .Z(n34363)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30811_3_lut.init = 16'hcaca;
    FD1P3BX F_i7 (.D(F_7__N_669[7]), .SP(clk_op_enable_147), .CK(clk_op), 
            .PD(n39884), .Q(F[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i7.GSR = "ENABLED";
    ORCALUT4 i31903_3_lut (.A(n34363), .B(n2742[2]), .C(Set_BusA_To[3]), 
            .Z(n34364)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i31903_3_lut.init = 16'hcaca;
    ORCALUT4 i19343_4_lut (.A(SP[3]), .B(n22352), .C(SP[11]), .D(Set_BusA_To[0]), 
            .Z(n2742[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i19343_4_lut.init = 16'hc088;
    ORCALUT4 i30808_3_lut (.A(di_reg[3]), .B(ACC[3]), .C(Set_BusA_To[0]), 
            .Z(n34360)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30808_3_lut.init = 16'hcaca;
    ORCALUT4 i31901_3_lut (.A(n34360), .B(n2742[3]), .C(Set_BusA_To[3]), 
            .Z(n34361)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i31901_3_lut.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_793_i5_3_lut (.A(SP[4]), .B(RegBusC[4]), .C(ts[3]), 
            .Z(SP16_A[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1517_i1_3_lut (.A(di_reg[0]), .B(RegBusB[0]), .C(Set_BusB_To[0]), 
            .Z(n2408[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1517_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_4_lut (.A(n37757), .B(n37573), .C(n15935), .D(n36234), 
            .Z(n2210[6])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:46])
    defparam i1_2_lut_4_lut.init = 16'h7500;
    FD1P3BX F_i0 (.D(n17975), .SP(clk_op_enable_148), .CK(clk_op), .PD(n39876), 
            .Q(F[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i0.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_4_lut_adj_558 (.A(n37757), .B(n37573), .C(n15935), 
            .D(n2823), .Z(n32637)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:46])
    defparam i1_2_lut_4_lut_adj_558.init = 16'h0075;
    ORCALUT4 i32214_3_lut_4_lut (.A(n37830), .B(n37546), .C(n37582), .D(n37548), 
            .Z(n34729)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i32214_3_lut_4_lut.init = 16'hff8f;
    FD1P3DX tstate_i0_i1 (.D(n18025), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n39877), .Q(tstate[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i1.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_559 (.A(n37706), .B(IR[5]), .C(n34340), .D(n12), 
            .Z(n47_adj_1919)) /* synthesis lut_function=((B ((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_559.init = 16'hdd5d;
    ORCALUT4 mux_293_i3_3_lut (.A(BusB[6]), .B(Save_Mux[2]), .C(n37551), 
            .Z(n1196[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(823[19] 827[24])
    defparam mux_293_i3_3_lut.init = 16'hcaca;
    PFUMX i42 (.BLUT(n22), .ALUT(n18), .C0(ALU_Op_r[3]), .Z(n37));
    ORCALUT4 i1_2_lut_4_lut_adj_560 (.A(n37757), .B(n37573), .C(n15935), 
            .D(n36244), .Z(n2210[5])) /* synthesis lut_function=(A (B+((D)+!C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:46])
    defparam i1_2_lut_4_lut_adj_560.init = 16'hff8a;
    ORCALUT4 mux_1517_i8_3_lut (.A(di_reg[7]), .B(RegBusB[7]), .C(Set_BusB_To[0]), 
            .Z(n2408[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1517_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1517_i7_3_lut (.A(di_reg[6]), .B(RegBusB[6]), .C(Set_BusB_To[0]), 
            .Z(n2408[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1517_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1517_i6_3_lut (.A(di_reg[5]), .B(RegBusB[5]), .C(Set_BusB_To[0]), 
            .Z(n2408[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1517_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1517_i5_3_lut (.A(di_reg[4]), .B(RegBusB[4]), .C(Set_BusB_To[0]), 
            .Z(n2408[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1517_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i14449_3_lut_4_lut (.A(Special_LD[0]), .B(n37547), .C(I[5]), 
            .D(ACC[5]), .Z(n17947)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14449_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14463_3_lut_4_lut (.A(Special_LD[0]), .B(n37547), .C(I[7]), 
            .D(ACC[7]), .Z(n17961)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14463_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14461_3_lut_4_lut (.A(Special_LD[0]), .B(n37547), .C(I[0]), 
            .D(ACC[0]), .Z(n17959)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14461_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i32086_3_lut_4_lut (.A(Special_LD[0]), .B(n37547), .C(n8_adj_1920), 
            .D(n37514), .Z(n34433)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;
    defparam i32086_3_lut_4_lut.init = 16'hf444;
    ORCALUT4 i14453_3_lut_4_lut (.A(Special_LD[0]), .B(n37547), .C(I[2]), 
            .D(ACC[2]), .Z(n17951)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14453_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14455_3_lut_4_lut (.A(Special_LD[0]), .B(n37547), .C(I[4]), 
            .D(ACC[4]), .Z(n17953)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14455_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14457_3_lut_4_lut (.A(Special_LD[0]), .B(n37547), .C(I[1]), 
            .D(ACC[1]), .Z(n17955)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14457_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14451_3_lut_4_lut (.A(Special_LD[0]), .B(n37547), .C(I[3]), 
            .D(ACC[3]), .Z(n17949)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14451_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14459_3_lut_4_lut (.A(Special_LD[0]), .B(n37547), .C(I[6]), 
            .D(ACC[6]), .Z(n17957)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14459_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 n3_bdd_4_lut (.A(n37859), .B(n37636), .C(n37638), .D(ACC[3]), 
            .Z(n37393)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;
    defparam n3_bdd_4_lut.init = 16'h1104;
    ORCALUT4 mux_1517_i4_3_lut (.A(di_reg[3]), .B(RegBusB[3]), .C(Set_BusB_To[0]), 
            .Z(n2408[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1517_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1517_i3_3_lut (.A(di_reg[2]), .B(RegBusB[2]), .C(Set_BusB_To[0]), 
            .Z(n2408[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1517_i3_3_lut.init = 16'hcaca;
    FD1P3DX IR_i0_i7 (.D(n970), .SP(clk_op_enable_324), .CK(clk_op), .CD(n39876), 
            .Q(IR[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i7.GSR = "ENABLED";
    FD1P3DX tstate_i0_i2 (.D(n18023), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n39875), .Q(\tstate[2] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i2.GSR = "ENABLED";
    ORCALUT4 mux_1517_i2_3_lut (.A(di_reg[1]), .B(RegBusB[1]), .C(Set_BusB_To[0]), 
            .Z(n2408[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1517_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_rep_412_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(n37620), 
            .C(n15935), .D(n37757), .Z(n37515)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (C+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(361[12:44])
    defparam i1_3_lut_rep_412_4_lut.init = 16'hd0ff;
    ORCALUT4 n37395_bdd_3_lut (.A(n37395), .B(ALU_Q[3]), .C(n37548), .Z(n37396)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37395_bdd_3_lut.init = 16'hcaca;
    FD1P3DX IR_i0_i6 (.D(n969), .SP(clk_op_enable_324), .CK(clk_op), .CD(n39876), 
            .Q(IR[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i6.GSR = "ENABLED";
    FD1P3DX IR_i0_i5 (.D(n968), .SP(clk_op_enable_324), .CK(clk_op), .CD(n39882), 
            .Q(IR[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i5.GSR = "ENABLED";
    FD1P3DX IR_i0_i4 (.D(n967), .SP(clk_op_enable_324), .CK(clk_op), .CD(n39876), 
            .Q(IR[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i4.GSR = "ENABLED";
    FD1P3DX IR_i0_i3 (.D(n966), .SP(clk_op_enable_324), .CK(clk_op), .CD(n39879), 
            .Q(Set_BusA_To_3__N_1202[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i3.GSR = "ENABLED";
    ORCALUT4 mux_1588_i1_3_lut (.A(Save_Mux[0]), .B(n855[0]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i1_3_lut.init = 16'hcaca;
    FD1P3DX IR_i0_i2 (.D(n965), .SP(clk_op_enable_324), .CK(clk_op), .CD(n39876), 
            .Q(IR[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i2.GSR = "ENABLED";
    ORCALUT4 mux_1535_i1_3_lut (.A(n2468[0]), .B(RegBusB[8]), .C(n33726), 
            .Z(n2482[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1535_i1_3_lut.init = 16'hcaca;
    FD1P3DX IR_i0_i1 (.D(n964), .SP(clk_op_enable_324), .CK(clk_op), .CD(rst_s), 
            .Q(IR[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i1.GSR = "ENABLED";
    ORCALUT4 mux_1520_i1_3_lut (.A(F[0]), .B(PC[0]), .C(Set_BusB_To[2]), 
            .Z(n2435[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1520_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i31259_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_7_1), 
            .D(RegsL_6_1), .Z(n34811)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31259_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31258_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_5_1), 
            .D(RegsL_4_1), .Z(n34810)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31258_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31257_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_3_1), 
            .D(RegsL_2_1), .Z(n34809)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31257_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31256_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_1_1), 
            .D(RegsL_0_1), .Z(n34808)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31256_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31252_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_7_0), 
            .D(RegsL_6_0), .Z(n34804)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31252_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31251_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_5_0), 
            .D(RegsL_4_0), .Z(n34803)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31251_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31250_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_3_0), 
            .D(RegsL_2_0), .Z(n34802)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31250_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31249_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_1_0), 
            .D(RegsL_0_0), .Z(n34801)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31249_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31245_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_7_6), 
            .D(RegsH_6_6), .Z(n34797)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31245_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31244_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_5_6), 
            .D(RegsH_4_6), .Z(n34796)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31244_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31243_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_3_6), 
            .D(RegsH_2_6), .Z(n34795)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31243_3_lut_4_lut.init = 16'hf1e0;
    CCU2B SP16_A_15__I_0_add_4_3 (.A0(SP16_A[1]), .B0(n39857), .C0(di_reg[1]), 
          .D0(ID16_B[15]), .A1(SP16_A[2]), .B1(n39857), .C1(di_reg[2]), 
          .D1(ID16_B[15]), .CIN(n29815), .COUT(n29816), .S0(SP16[1]), 
          .S1(SP16[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_3.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_3.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_3.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i31242_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_1_6), 
            .D(RegsH_0_6), .Z(n34794)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31242_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1535_i8_3_lut (.A(n2468[7]), .B(RegBusB[15]), .C(n33726), 
            .Z(n2482[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1535_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1520_i8_3_lut (.A(F[7]), .B(PC[7]), .C(Set_BusB_To[2]), 
            .Z(n2435[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1520_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i31238_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_7_7), 
            .D(RegsL_6_7), .Z(n34790)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31238_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1535_i7_3_lut (.A(n2468[6]), .B(RegBusB[14]), .C(n33726), 
            .Z(n2482[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1535_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i31237_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_5_7), 
            .D(RegsL_4_7), .Z(n34789)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31237_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31236_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_3_7), 
            .D(RegsL_2_7), .Z(n34788)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31236_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i865_2_lut_3_lut (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), .C(\mc[6] ), 
            .Z(n2823)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i865_2_lut_3_lut.init = 16'h0606;
    ORCALUT4 i31235_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_1_7), 
            .D(RegsL_0_7), .Z(n34787)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31235_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32101_2_lut_rep_698 (.A(Pre_XY_F_M[0]), .B(\mc[6] ), .Z(n37801)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i32101_2_lut_rep_698.init = 16'h1111;
    ORCALUT4 i6023_3_lut_rep_699 (.A(Pre_XY_F_M[2]), .B(Pre_XY_F_M[1]), 
            .C(Pre_XY_F_M[0]), .Z(n37802)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i6023_3_lut_rep_699.init = 16'h6a6a;
    ORCALUT4 i31231_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_7_5), 
            .D(RegsL_6_5), .Z(n34783)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31231_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i864_2_lut_rep_630_4_lut (.A(Pre_XY_F_M[2]), .B(Pre_XY_F_M[1]), 
            .C(Pre_XY_F_M[0]), .D(\mc[6] ), .Z(n37733)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i864_2_lut_rep_630_4_lut.init = 16'h006a;
    ORCALUT4 i31230_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_5_5), 
            .D(RegsL_4_5), .Z(n34782)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31230_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31229_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_3_5), 
            .D(RegsL_2_5), .Z(n34781)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31229_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31228_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_1_5), 
            .D(RegsL_0_5), .Z(n34780)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31228_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31224_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_7_4), 
            .D(RegsL_6_4), .Z(n34776)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31224_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 n2823_bdd_2_lut_32534_3_lut_3_lut_3_lut (.A(Pre_XY_F_M[2]), .B(Pre_XY_F_M[0]), 
            .C(\mc[6] ), .Z(n36232)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam n2823_bdd_2_lut_32534_3_lut_3_lut_3_lut.init = 16'h0202;
    ORCALUT4 mux_1520_i7_3_lut (.A(F[6]), .B(PC[6]), .C(Set_BusB_To[2]), 
            .Z(n2435[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1520_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1535_i6_3_lut (.A(n2468[5]), .B(RegBusB[13]), .C(n33726), 
            .Z(n2482[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1535_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1520_i6_3_lut (.A(F[5]), .B(PC[5]), .C(Set_BusB_To[2]), 
            .Z(n2435[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1520_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1535_i5_3_lut (.A(n2468[4]), .B(RegBusB[12]), .C(n33726), 
            .Z(n2482[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1535_i5_3_lut.init = 16'hcaca;
    ORCALUT4 n2823_bdd_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[2]), .B(Pre_XY_F_M[1]), 
            .C(Pre_XY_F_M[0]), .D(\mc[6] ), .Z(n36242)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam n2823_bdd_2_lut_3_lut_4_lut.init = 16'h0060;
    ORCALUT4 i31223_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_5_4), 
            .D(RegsL_4_4), .Z(n34775)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31223_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1520_i5_3_lut (.A(F[4]), .B(PC[4]), .C(Set_BusB_To[2]), 
            .Z(n2435[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1520_i5_3_lut.init = 16'hcaca;
    FD1P3DX tstate_i0_i3 (.D(n18021), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n39877), .Q(ts[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i3.GSR = "ENABLED";
    CCU2B SP16_A_15__I_0_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(di_reg[0]), .B1(n39857), .C1(RegBusC[0]), 
          .D1(SP[0]), .COUT(n29815), .S1(SP16[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_1.INIT0 = 16'h0000;
    defparam SP16_A_15__I_0_add_4_1.INIT1 = 16'h487b;
    defparam SP16_A_15__I_0_add_4_1.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 mux_1535_i4_3_lut (.A(n2468[3]), .B(RegBusB[11]), .C(n33726), 
            .Z(n2482[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1535_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1520_i4_3_lut (.A(F[3]), .B(PC[3]), .C(Set_BusB_To[2]), 
            .Z(n2435[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1520_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_3_lut (.A(Pre_XY_F_M[2]), .B(Pre_XY_F_M[1]), 
            .C(Pre_XY_F_M[0]), .Z(n17105)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h7e7e;
    ORCALUT4 mux_1535_i3_3_lut (.A(n2468[2]), .B(RegBusB[10]), .C(n33726), 
            .Z(n2482[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1535_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i31222_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_3_4), 
            .D(RegsL_2_4), .Z(n34774)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31222_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31221_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_1_4), 
            .D(RegsL_0_4), .Z(n34773)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31221_3_lut_4_lut.init = 16'hf1e0;
    CCU2B PC_5691_add_4_17 (.A0(PC[14]), .B0(n957), .C0(n559[14]), .D0(PC16_B[7]), 
          .A1(PC[15]), .B1(n957), .C1(n559[15]), .D1(PC16_B[7]), .CIN(n29855), 
          .S0(n19[14]), .S1(n19[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691_add_4_17.INIT0 = 16'h74b8;
    defparam PC_5691_add_4_17.INIT1 = 16'h74b8;
    defparam PC_5691_add_4_17.INJECT1_0 = "NO";
    defparam PC_5691_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 i31217_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_7_3), 
            .D(RegsL_6_3), .Z(n34769)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31217_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31216_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_5_3), 
            .D(RegsL_4_3), .Z(n34768)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31216_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1520_i3_3_lut (.A(F[2]), .B(PC[2]), .C(Set_BusB_To[2]), 
            .Z(n2435[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1520_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1535_i2_3_lut (.A(n2468[1]), .B(RegBusB[9]), .C(n33726), 
            .Z(n2482[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1535_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i31215_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_3_3), 
            .D(RegsL_2_3), .Z(n34767)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31215_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31214_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_1_3), 
            .D(RegsL_0_3), .Z(n34766)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31214_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31210_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_7_6), 
            .D(RegsL_6_6), .Z(n34762)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31210_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1520_i2_3_lut (.A(F[1]), .B(PC[1]), .C(Set_BusB_To[2]), 
            .Z(n2435[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1520_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i31209_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_5_6), 
            .D(RegsL_4_6), .Z(n34761)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31209_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31208_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_3_6), 
            .D(RegsL_2_6), .Z(n34760)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31208_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31207_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_1_6), 
            .D(RegsL_0_6), .Z(n34759)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31207_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31539_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_7_0), 
            .D(RegsH_6_0), .Z(n35091)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31539_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31538_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_5_0), 
            .D(RegsH_4_0), .Z(n35090)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31538_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31537_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_3_0), 
            .D(RegsH_2_0), .Z(n35089)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31537_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_1588_i9_3_lut (.A(n855[8]), .B(Save_Mux[0]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i9_3_lut.init = 16'hcaca;
    ORCALUT4 i31536_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_1_0), 
            .D(RegsH_0_0), .Z(n35088)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31536_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31532_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_7_1), 
            .D(RegsH_6_1), .Z(n35084)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31532_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 n37886_bdd_3_lut_34329 (.A(n37886), .B(n38429), .C(IR[7]), 
            .Z(n38430)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37886_bdd_3_lut_34329.init = 16'hcaca;
    ORCALUT4 i14319_4_lut (.A(n17958), .B(Save_Mux[6]), .C(n7158), .D(n2384), 
            .Z(n17815)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14319_4_lut.init = 16'hc0ca;
    ORCALUT4 i31531_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_5_1), 
            .D(RegsH_4_1), .Z(n35083)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31531_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_2_lut_4_lut_adj_561 (.A(RegWEH_N_867), .B(Read_To_Reg_r[1]), 
            .C(Read_To_Reg_r[4]), .D(n37830), .Z(n32720)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_561.init = 16'h2000;
    FD1P3DX tstate_i0_i4 (.D(n18019), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n39876), .Q(ts[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i4.GSR = "ENABLED";
    ORCALUT4 i31530_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_3_1), 
            .D(RegsH_2_1), .Z(n35082)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31530_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31529_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_1_1), 
            .D(RegsH_0_1), .Z(n35081)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31529_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 n37886_bdd_3_lut_33564 (.A(Set_BusA_To_3__N_1202[0]), .B(\mc[6] ), 
            .C(Set_BusA_To_3__N_1198[2]), .Z(n38429)) /* synthesis lut_function=(A (B+!(C))) */ ;
    defparam n37886_bdd_3_lut_33564.init = 16'h8a8a;
    ORCALUT4 n37886_bdd_4_lut_33565 (.A(n37886), .B(IR[6]), .C(IR[7]), 
            .D(Set_BusA_To_3__N_1202[0]), .Z(n38428)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (B (C (D))+!B (D))) */ ;
    defparam n37886_bdd_4_lut_33565.init = 16'hfb08;
    ORCALUT4 PC16_B_15__I_0_i4_3_lut_4_lut_4_lut (.A(n37859), .B(PC16_B_15__N_566[15]), 
            .C(di_reg[3]), .D(JumpE_N_1507), .Z(PC16_B[3])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i4_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i31525_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_7_2), 
            .D(RegsH_6_2), .Z(n35077)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31525_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31524_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_5_2), 
            .D(RegsH_4_2), .Z(n35076)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31524_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31523_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_3_2), 
            .D(RegsH_2_2), .Z(n35075)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31523_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX Alternate_755 (.D(Alternate_N_899), .SP(clk_op_enable_170), 
            .CK(clk_op), .CD(n39882), .Q(Alternate)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Alternate_755.GSR = "ENABLED";
    ORCALUT4 i19688_2_lut_rep_426_4_lut_4_lut (.A(n37859), .B(Jump), .C(n37698), 
            .D(n37553), .Z(n37529)) /* synthesis lut_function=(A (B)+!A (B+((D)+!C))) */ ;
    defparam i19688_2_lut_rep_426_4_lut_4_lut.init = 16'hddcd;
    ORCALUT4 i31522_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_1_2), 
            .D(RegsH_0_2), .Z(n35074)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31522_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31518_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_7_3), 
            .D(RegsH_6_3), .Z(n35070)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31518_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31517_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_5_3), 
            .D(RegsH_4_3), .Z(n35069)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31517_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31516_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_3_3), 
            .D(RegsH_2_3), .Z(n35068)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31516_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31515_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_1_3), 
            .D(RegsH_0_3), .Z(n35067)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31515_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_2_lut_rep_435_3_lut_4_lut_4_lut (.A(n37859), .B(n64), .C(n37596), 
            .D(n37656), .Z(n37538)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_2_lut_rep_435_3_lut_4_lut_4_lut.init = 16'h4544;
    ORCALUT4 i31511_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_7_4), 
            .D(RegsH_6_4), .Z(n35063)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31511_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31510_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_5_4), 
            .D(RegsH_4_4), .Z(n35062)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31510_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31509_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_3_4), 
            .D(RegsH_2_4), .Z(n35061)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31509_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 n37886_bdd_3_lut_33563 (.A(\ALU_Op_3__N_1269[3] ), .B(IR[7]), 
            .C(Set_BusA_To_3__N_1202[0]), .Z(n38426)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n37886_bdd_3_lut_33563.init = 16'hd8d8;
    ORCALUT4 n37886_bdd_4_lut_33562 (.A(n37886), .B(\ALU_Op_3__N_1269[3] ), 
            .C(IR[7]), .D(Set_BusA_To_3__N_1202[0]), .Z(n38425)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam n37886_bdd_4_lut_33562.init = 16'h3a0a;
    ORCALUT4 i31508_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_1_4), 
            .D(RegsH_0_4), .Z(n35060)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31508_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31504_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_7_7), 
            .D(RegsH_6_7), .Z(n35056)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31504_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31503_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_5_7), 
            .D(RegsH_4_7), .Z(n35055)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31503_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31502_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_3_7), 
            .D(RegsH_2_7), .Z(n35054)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31502_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 n37886_bdd_4_lut_34330 (.A(IR[7]), .B(Set_BusA_To_3__N_1202[0]), 
            .C(\mc[6] ), .D(Set_BusA_To_3__N_1198[2]), .Z(n38431)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam n37886_bdd_4_lut_34330.init = 16'hcacc;
    ORCALUT4 i31501_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_1_7), 
            .D(RegsH_0_7), .Z(n35053)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31501_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31497_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_7_5), 
            .D(RegsH_6_5), .Z(n35049)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31497_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 n38432_bdd_3_lut (.A(n38432), .B(n38428), .C(\ALU_Op_3__N_1269[3] ), 
            .Z(n38433)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38432_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i31496_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_5_5), 
            .D(RegsH_4_5), .Z(n35048)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31496_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 n38433_bdd_3_lut (.A(n38433), .B(n38427), .C(n39843), .Z(n38434)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38433_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 n37886_bdd_2_lut (.A(n38), .B(n32900), .Z(n38435)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n37886_bdd_2_lut.init = 16'heeee;
    ORCALUT4 i31495_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_3_5), 
            .D(RegsH_2_5), .Z(n35047)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31495_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i31494_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsH_1_5), 
            .D(RegsH_0_5), .Z(n35046)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31494_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX tstate_i0_i5 (.D(n18017), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n39877), .Q(ts[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i5.GSR = "ENABLED";
    ORCALUT4 i31490_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_7_2), 
            .D(RegsL_6_2), .Z(n35042)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31490_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX PC_5691__i0 (.D(n19[0]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39875), .Q(PC[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i0.GSR = "ENABLED";
    ORCALUT4 i31489_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_5_2), 
            .D(RegsL_4_2), .Z(n35041)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31489_3_lut_4_lut.init = 16'hf1e0;
    FD1P3DX tstate_i0_i6 (.D(n18015), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n39877), .Q(ts[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i6.GSR = "ENABLED";
    ORCALUT4 i31488_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_3_2), 
            .D(RegsL_2_2), .Z(n35040)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31488_3_lut_4_lut.init = 16'hf1e0;
    CCU2B PC_5691_add_4_15 (.A0(PC[12]), .B0(n957), .C0(n559[12]), .D0(PC16_B[7]), 
          .A1(PC[13]), .B1(n957), .C1(n559[13]), .D1(PC16_B[7]), .CIN(n29854), 
          .COUT(n29855), .S0(n19[12]), .S1(n19[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691_add_4_15.INIT0 = 16'h74b8;
    defparam PC_5691_add_4_15.INIT1 = 16'h74b8;
    defparam PC_5691_add_4_15.INJECT1_0 = "NO";
    defparam PC_5691_add_4_15.INJECT1_1 = "NO";
    CCU2B PC_5691_add_4_13 (.A0(PC[10]), .B0(n957), .C0(n559[10]), .D0(PC16_B[7]), 
          .A1(PC[11]), .B1(n957), .C1(n559[11]), .D1(PC16_B[7]), .CIN(n29853), 
          .COUT(n29854), .S0(n19[10]), .S1(n19[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691_add_4_13.INIT0 = 16'h74b8;
    defparam PC_5691_add_4_13.INIT1 = 16'h74b8;
    defparam PC_5691_add_4_13.INJECT1_0 = "NO";
    defparam PC_5691_add_4_13.INJECT1_1 = "NO";
    FD1S3BX ACC_i7 (.D(n17817), .CK(clk_op), .PD(n39875), .Q(ACC[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i7.GSR = "ENABLED";
    CCU2B PC_5691_add_4_11 (.A0(PC[8]), .B0(n957), .C0(n559[8]), .D0(PC16_B[7]), 
          .A1(PC[9]), .B1(n957), .C1(n559[9]), .D1(PC16_B[7]), .CIN(n29852), 
          .COUT(n29853), .S0(n19[8]), .S1(n19[9]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691_add_4_11.INIT0 = 16'h74b8;
    defparam PC_5691_add_4_11.INIT1 = 16'h74b8;
    defparam PC_5691_add_4_11.INJECT1_0 = "NO";
    defparam PC_5691_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i31487_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n37584), .C(RegsL_1_2), 
            .D(RegsL_0_2), .Z(n35039)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i31487_3_lut_4_lut.init = 16'hf1e0;
    CCU2B PC_5691_add_4_9 (.A0(PC[6]), .B0(n957), .C0(n559[6]), .D0(PC16_B[6]), 
          .A1(PC[7]), .B1(n957), .C1(n559[7]), .D1(PC16_B[7]), .CIN(n29851), 
          .COUT(n29852), .S0(n19[6]), .S1(n19[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691_add_4_9.INIT0 = 16'h74b8;
    defparam PC_5691_add_4_9.INIT1 = 16'h74b8;
    defparam PC_5691_add_4_9.INJECT1_0 = "NO";
    defparam PC_5691_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i14317_4_lut (.A(n17948), .B(Save_Mux[5]), .C(n7158), .D(n2384), 
            .Z(n17813)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14317_4_lut.init = 16'hc0ca;
    CCU2B PC_5691_add_4_7 (.A0(PC[4]), .B0(n957), .C0(n559[4]), .D0(PC16_B[4]), 
          .A1(PC[5]), .B1(n957), .C1(n559[5]), .D1(PC16_B[5]), .CIN(n29850), 
          .COUT(n29851), .S0(n19[4]), .S1(n19[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691_add_4_7.INIT0 = 16'h74b8;
    defparam PC_5691_add_4_7.INIT1 = 16'h74b8;
    defparam PC_5691_add_4_7.INJECT1_0 = "NO";
    defparam PC_5691_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_4_lut_adj_562 (.A(n37757), .B(n37573), .C(n15935), 
            .D(last_tstate), .Z(clk_op_enable_194)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:46])
    defparam i1_2_lut_4_lut_adj_562.init = 16'h8a00;
    CCU2B PC_5691_add_4_5 (.A0(PC[2]), .B0(n957), .C0(n941), .D0(PC16_B[2]), 
          .A1(PC[3]), .B1(n957), .C1(n559[3]), .D1(PC16_B[3]), .CIN(n29849), 
          .COUT(n29850), .S0(n19[2]), .S1(n19[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691_add_4_5.INIT0 = 16'h74b8;
    defparam PC_5691_add_4_5.INIT1 = 16'h74b8;
    defparam PC_5691_add_4_5.INJECT1_0 = "NO";
    defparam PC_5691_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_4_lut_adj_563 (.A(n37757), .B(n37573), .C(n15935), 
            .D(n37733), .Z(n32631)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:46])
    defparam i1_2_lut_4_lut_adj_563.init = 16'h0075;
    CCU2B PC_5691_add_4_3 (.A0(PC[0]), .B0(n957), .C0(n559[0]), .D0(PC16_B[0]), 
          .A1(PC[1]), .B1(n957), .C1(n940), .D1(PC16_B[1]), .CIN(n29848), 
          .COUT(n29849), .S0(n19[0]), .S1(n19[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691_add_4_3.INIT0 = 16'h74b8;
    defparam PC_5691_add_4_3.INIT1 = 16'h74b8;
    defparam PC_5691_add_4_3.INJECT1_0 = "NO";
    defparam PC_5691_add_4_3.INJECT1_1 = "NO";
    FD1P3DX XY_Ind_763 (.D(clk_op_enable_170), .SP(clk_op_enable_182), .CK(clk_op), 
            .CD(n39882), .Q(XY_Ind)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_Ind_763.GSR = "ENABLED";
    CCU2B PC_5691_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n47_adj_1918), .B1(n28), .C1(n37754), .D1(\tstate[2] ), 
          .COUT(n29848));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691_add_4_1.INIT0 = 16'h0000;
    defparam PC_5691_add_4_1.INIT1 = 16'hffff;
    defparam PC_5691_add_4_1.INJECT1_0 = "NO";
    defparam PC_5691_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 RegAddrA_2__I_0_i3_4_lut (.A(RegAddrA_2__N_467[2]), .B(Alternate), 
            .C(n17627), .D(n37527), .Z(RegAddrA[2])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(937[12] 944[31])
    defparam RegAddrA_2__I_0_i3_4_lut.init = 16'hccca;
    ORCALUT4 mux_1588_i11_3_lut (.A(n855[10]), .B(Save_Mux[2]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i11_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1588_i10_3_lut (.A(n855[9]), .B(Save_Mux[1]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i10_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1588_i3_4_lut (.A(Save_Mux[2]), .B(n855[2]), .C(Read_To_Reg_r[0]), 
            .D(n22513), .Z(n2599[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i3_4_lut.init = 16'hca0a;
    ORCALUT4 mux_1588_i2_4_lut (.A(Save_Mux[1]), .B(n855[1]), .C(Read_To_Reg_r[0]), 
            .D(n22513), .Z(n2599[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i2_4_lut.init = 16'hca0a;
    FD1P3DX PC_5691__i1 (.D(n19[1]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i1.GSR = "ENABLED";
    FD1S3BX ACC_i6 (.D(n17815), .CK(clk_op), .PD(n39879), .Q(ACC[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i6.GSR = "ENABLED";
    FD1S3BX ACC_i5 (.D(n17813), .CK(clk_op), .PD(n39884), .Q(ACC[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i5.GSR = "ENABLED";
    FD1S3BX ACC_i4 (.D(n17811), .CK(clk_op), .PD(n39879), .Q(ACC[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i4.GSR = "ENABLED";
    FD1S3BX ACC_i3 (.D(n17809), .CK(clk_op), .PD(n39879), .Q(ACC[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i3.GSR = "ENABLED";
    FD1S3BX ACC_i2 (.D(n17807), .CK(clk_op), .PD(n39879), .Q(ACC[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i2.GSR = "ENABLED";
    FD1S3BX ACC_i1 (.D(n17803), .CK(clk_op), .PD(n39884), .Q(ACC[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i1.GSR = "ENABLED";
    L6MUX21 i30806 (.D0(n34356), .D1(n34357), .SD(mcycles[2]), .Z(last_mcycle));
    ORCALUT4 RegAddrA_2__I_32_i3_4_lut (.A(RegAddrA_r[2]), .B(XY_State[1]), 
            .C(RegAddrA_2__N_737), .D(n37587), .Z(RegAddrA_2__N_467[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[12] 944[31])
    defparam RegAddrA_2__I_32_i3_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_2_lut_4_lut_adj_564 (.A(n37754), .B(n37569), .C(n37859), 
            .D(n15889), .Z(n4_adj_1925)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_adj_564.init = 16'h0100;
    ORCALUT4 n22859_bdd_2_lut_4_lut (.A(n37754), .B(n37569), .C(n37859), 
            .D(n22859), .Z(n37312)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n22859_bdd_2_lut_4_lut.init = 16'h0100;
    ORCALUT4 i2_4_lut_adj_565 (.A(n37584), .B(RegAddrA_2__N_737), .C(RegAddrA_r[1]), 
            .D(n37579), .Z(RegAddrA_2__N_467[1])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[12] 944[31])
    defparam i2_4_lut_adj_565.init = 16'heefe;
    ORCALUT4 di_reg_2__bdd_3_lut_34313 (.A(di_reg[2]), .B(n35924), .C(Save_ALU_r), 
            .Z(n35925)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_2__bdd_3_lut_34313.init = 16'hcaca;
    ORCALUT4 i1_2_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(IR[5]), 
            .C(n39843), .D(n15803), .Z(n43)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(316[9:19])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h4c40;
    ORCALUT4 i1_4_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(n93), .C(n6_adj_1926), 
            .D(n4_adj_1927), .Z(TStates_2__N_1410[1])) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(316[9:19])
    defparam i1_4_lut_4_lut.init = 16'h5554;
    ORCALUT4 n33866_bdd_2_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(IR[4]), 
            .C(n39843), .D(n15803), .Z(n37464)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(316[9:19])
    defparam n33866_bdd_2_lut_4_lut_4_lut.init = 16'hb3bf;
    ORCALUT4 i1_4_lut_4_lut_adj_566 (.A(\ALU_Op_3__N_1269[3] ), .B(n35158), 
            .C(n16830), .D(n39845), .Z(n9_adj_1928)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(316[9:19])
    defparam i1_4_lut_4_lut_adj_566.init = 16'hf0f7;
    ORCALUT4 i14315_4_lut (.A(n17954), .B(Save_Mux[4]), .C(n7158), .D(n2384), 
            .Z(n17811)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14315_4_lut.init = 16'hc0ca;
    FD1P3DX PC_5691__i2 (.D(n19[2]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i2.GSR = "ENABLED";
    ORCALUT4 i1_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(n39841), 
            .C(n37845), .D(IR[1]), .Z(n49)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(316[9:19])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h3133;
    ORCALUT4 i2_3_lut_4_lut_adj_567 (.A(Read_To_Reg_r[0]), .B(n37581), .C(Read_To_Reg_r[2]), 
            .D(Read_To_Reg_r[3]), .Z(n7158)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_567.init = 16'h0080;
    PFUMX i30804 (.BLUT(n1), .ALUT(n2), .C0(mcycles[1]), .Z(n34356));
    ORCALUT4 mux_293_i4_3_lut (.A(\BusB[7] ), .B(Save_Mux[3]), .C(n37551), 
            .Z(n1196[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(823[19] 827[24])
    defparam mux_293_i4_3_lut.init = 16'hcaca;
    FD1P3DX Pre_XY_F_M_i0_i2 (.D(n2116[2]), .SP(clk_op_enable_194), .CK(clk_op), 
            .CD(n39879), .Q(Pre_XY_F_M[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i2.GSR = "ENABLED";
    FD1P3DX Pre_XY_F_M_i0_i1 (.D(n33995), .SP(clk_op_enable_194), .CK(clk_op), 
            .CD(n39880), .Q(Pre_XY_F_M[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i1.GSR = "ENABLED";
    FD1S3AX BusA_i8 (.D(BusA_7__N_764[7]), .CK(clk_op), .Q(BusA[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i8.GSR = "ENABLED";
    PFUMX i30805 (.BLUT(n4_adj_1929), .ALUT(n5_adj_1930), .C0(mcycles[1]), 
          .Z(n34357));
    ORCALUT4 mux_1588_i12_3_lut (.A(n855[11]), .B(Save_Mux[3]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1588_i4_3_lut (.A(Save_Mux[3]), .B(n855[3]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i30735_2_lut_3_lut_4_lut (.A(Read_To_Reg_r[0]), .B(n37581), 
            .C(n1165), .D(n37830), .Z(n34280)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i30735_2_lut_3_lut_4_lut.init = 16'hf8f0;
    ORCALUT4 i30813_3_lut (.A(RegBusA[8]), .B(RegBusA[0]), .C(Set_BusA_To[0]), 
            .Z(n34365)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30813_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut (.A(n37576), .B(n37577), .C(Special_LD[0]), 
            .Z(n2384)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h4040;
    ORCALUT4 i30822_3_lut (.A(RegBusA[15]), .B(RegBusA[7]), .C(Set_BusA_To[0]), 
            .Z(n34374)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30822_3_lut.init = 16'hcaca;
    ORCALUT4 i30825_3_lut (.A(RegBusA[14]), .B(RegBusA[6]), .C(Set_BusA_To[0]), 
            .Z(n34377)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30825_3_lut.init = 16'hcaca;
    ORCALUT4 i30828_3_lut (.A(RegBusA[13]), .B(RegBusA[5]), .C(Set_BusA_To[0]), 
            .Z(n34380)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30828_3_lut.init = 16'hcaca;
    ORCALUT4 i30831_3_lut (.A(RegBusA[12]), .B(RegBusA[4]), .C(Set_BusA_To[0]), 
            .Z(n34383)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30831_3_lut.init = 16'hcaca;
    ORCALUT4 i30807_3_lut (.A(RegBusA[11]), .B(RegBusA[3]), .C(Set_BusA_To[0]), 
            .Z(n34359)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30807_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i6_3_lut_4_lut (.A(bus_din[5]), .B(di_reg[5]), .C(LDZ), 
            .D(ts[3]), .Z(n938[5])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i6_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 i30810_3_lut (.A(RegBusA[10]), .B(RegBusA[2]), .C(Set_BusA_To[0]), 
            .Z(n34362)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30810_3_lut.init = 16'hcaca;
    ORCALUT4 i30816_3_lut (.A(RegBusA[9]), .B(RegBusA[1]), .C(Set_BusA_To[0]), 
            .Z(n34368)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30816_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i4_3_lut_4_lut (.A(bus_din[3]), .B(di_reg[3]), .C(LDZ), 
            .D(ts[3]), .Z(n938[3])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i4_3_lut_4_lut.init = 16'hcaaa;
    FD1S3AX BusA_i7 (.D(BusA_7__N_764[6]), .CK(clk_op), .Q(BusA[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i7.GSR = "ENABLED";
    ORCALUT4 mux_494_i1_3_lut (.A(Save_Mux[0]), .B(ID16[0]), .C(RegWEH_N_887), 
            .Z(RegDIL_7__N_748[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i1_3_lut.init = 16'hcaca;
    FD1S3AX BusA_i6 (.D(BusA_7__N_764[5]), .CK(clk_op), .Q(BusA[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i6.GSR = "ENABLED";
    FD1S3AX BusA_i5 (.D(BusA_7__N_764[4]), .CK(clk_op), .Q(BusA[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i5.GSR = "ENABLED";
    FD1S3AX BusA_i4 (.D(BusA_7__N_764[3]), .CK(clk_op), .Q(BusA[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i4.GSR = "ENABLED";
    FD1S3AX BusA_i3 (.D(BusA_7__N_764[2]), .CK(clk_op), .Q(BusA[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i3.GSR = "ENABLED";
    FD1S3AX BusA_i2 (.D(BusA_7__N_764[1]), .CK(clk_op), .Q(BusA[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i2.GSR = "ENABLED";
    ORCALUT4 mux_293_i5_3_lut (.A(Q_7__N_1718[0]), .B(Save_Mux[4]), .C(n37551), 
            .Z(n1196[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(823[19] 827[24])
    defparam mux_293_i5_3_lut.init = 16'hcaca;
    FD1P3DX A__i16 (.D(n1900[15]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39880), .Q(sram_addr_0_15)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i16.GSR = "ENABLED";
    ORCALUT4 mux_212_i5_3_lut_4_lut (.A(bus_din[4]), .B(di_reg[4]), .C(LDZ), 
            .D(ts[3]), .Z(n938[4])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i5_3_lut_4_lut.init = 16'hcaaa;
    FD1P3DX PC_5691__i3 (.D(n19[3]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i3.GSR = "ENABLED";
    ORCALUT4 mux_1588_i13_3_lut (.A(n855[12]), .B(Save_Mux[4]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1588_i5_3_lut (.A(Save_Mux[4]), .B(n855[4]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i5_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Q_7__I_0_i6_3_lut (.A(n36703), .B(BusB[5]), .C(ExchangeRp), 
            .Z(Save_Mux_7__N_523[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_494_i3_3_lut (.A(Save_Mux[2]), .B(ID16[2]), .C(RegWEH_N_887), 
            .Z(RegDIL_7__N_748[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_494_i2_3_lut (.A(Save_Mux[1]), .B(ID16[1]), .C(RegWEH_N_887), 
            .Z(RegDIL_7__N_748[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_4_lut_adj_568 (.A(n37574), .B(n37756), .C(n1684), 
            .D(n30107), .Z(n33678)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(905[11] 908[16])
    defparam i2_3_lut_4_lut_adj_568.init = 16'hfeff;
    ORCALUT4 mux_494_i5_3_lut (.A(Save_Mux[4]), .B(ID16[4]), .C(RegWEH_N_887), 
            .Z(RegDIL_7__N_748[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_569 (.A(Read_To_Reg_r[0]), .B(n35505), .C(n32720), 
            .D(n22513), .Z(clk_op_enable_78)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_569.init = 16'hff70;
    ORCALUT4 mux_494_i4_3_lut (.A(Save_Mux[3]), .B(ID16[3]), .C(RegWEH_N_887), 
            .Z(RegDIL_7__N_748[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i14313_4_lut (.A(n17950), .B(Save_Mux[3]), .C(n7158), .D(n2384), 
            .Z(n17809)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14313_4_lut.init = 16'hc0ca;
    FD1P3DX PC_5691__i4 (.D(n19[4]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i4.GSR = "ENABLED";
    ORCALUT4 mux_293_i6_3_lut (.A(BusA[1]), .B(Save_Mux[5]), .C(n37551), 
            .Z(n1196[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(823[19] 827[24])
    defparam mux_293_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_494_i6_3_lut (.A(Save_Mux[5]), .B(ID16[5]), .C(RegWEH_N_887), 
            .Z(RegDIL_7__N_748[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i6_3_lut.init = 16'hcaca;
    ORCALUT4 Set_BusB_To_3__bdd_4_lut_33274 (.A(Set_BusB_To[3]), .B(Set_BusB_To[2]), 
            .C(Set_BusB_To[0]), .D(Set_BusB_To[1]), .Z(n34655)) /* synthesis lut_function=((B (C+(D))+!B !(C (D)))+!A) */ ;
    defparam Set_BusB_To_3__bdd_4_lut_33274.init = 16'hdff7;
    FD1P3DX A__i15 (.D(n1900[14]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39879), .Q(sram_addr_0_14)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i15.GSR = "ENABLED";
    ORCALUT4 mux_1588_i14_3_lut (.A(n855[13]), .B(Save_Mux[5]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i14_3_lut.init = 16'hcaca;
    FD1P3DX A__i14 (.D(n1900[13]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39879), .Q(sram_addr_0_13)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i14.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_4_lut_adj_570 (.A(mc[3]), .B(mc[4]), .C(\mc[6] ), 
            .D(mc[5]), .Z(n16241)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(65[17:19])
    defparam i2_3_lut_4_lut_adj_570.init = 16'hfffe;
    ORCALUT4 mux_1588_i6_3_lut (.A(Save_Mux[5]), .B(n855[5]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i6_3_lut.init = 16'hcaca;
    FD1P3DX A__i13 (.D(n1900[12]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39882), .Q(sram_addr_0_12)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i13.GSR = "ENABLED";
    ORCALUT4 i2_3_lut (.A(RegAddrA_2__N_471), .B(IncDec_16[0]), .C(IncDec_16[1]), 
            .Z(RegAddrA_2__N_737)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut.init = 16'h2020;
    FD1P3DX A__i12 (.D(n1900[11]), .SP(clk_op_enable_204), .CK(clk_op), 
            .CD(n39879), .Q(sram_addr_0_11)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i12.GSR = "ENABLED";
    FD1S3AX BusB_i7 (.D(BusB_7__N_756[7]), .CK(clk_op), .Q(\BusB[7] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i7.GSR = "ENABLED";
    ORCALUT4 mux_493_i1_3_lut (.A(Save_Mux[0]), .B(ID16[8]), .C(RegWEH_N_887), 
            .Z(RegDIH_7__N_739[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i1_3_lut.init = 16'hcaca;
    ORCALUT4 Set_BusB_To_2__bdd_4_lut (.A(Set_BusB_To[2]), .B(Set_BusB_To[3]), 
            .C(Set_BusB_To[1]), .D(Set_BusB_To[0]), .Z(n2536)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((C+(D))+!B))) */ ;
    defparam Set_BusB_To_2__bdd_4_lut.init = 16'h2004;
    ORCALUT4 i14476_2_lut_4_lut (.A(n37581), .B(n37835), .C(Read_To_Reg_r[2]), 
            .D(n1175), .Z(clk_op_enable_282)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam i14476_2_lut_4_lut.init = 16'hff20;
    ORCALUT4 i192_2_lut_rep_724 (.A(n39857), .B(mc[5]), .Z(n37827)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam i192_2_lut_rep_724.init = 16'h8888;
    ORCALUT4 mux_493_i3_3_lut (.A(Save_Mux[2]), .B(ID16[10]), .C(RegWEH_N_887), 
            .Z(RegDIH_7__N_739[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_4_lut_3_lut (.A(ts[3]), .B(mc[5]), .C(\ALU_Op_3__N_1269[3] ), 
            .Z(n5_adj_1931)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam i1_2_lut_4_lut_3_lut.init = 16'h0808;
    ORCALUT4 i32316_3_lut_4_lut_4_lut (.A(n37582), .B(n1165), .C(n37546), 
            .D(n37830), .Z(n34468)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[19:80])
    defparam i32316_3_lut_4_lut_4_lut.init = 16'hfeee;
    ORCALUT4 mux_192_i6_3_lut_4_lut (.A(ts[3]), .B(mc[5]), .C(SP16[5]), 
            .D(IR[5]), .Z(n798[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_493_i2_3_lut (.A(Save_Mux[1]), .B(ID16[9]), .C(RegWEH_N_887), 
            .Z(RegDIH_7__N_739[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i2_3_lut.init = 16'hcaca;
    CCU2B RegBusA_15__I_0_add_4_17 (.A0(RegBusA[15]), .B0(n37812), .C0(IncDec_16_3__N_1012[3]), 
          .D0(n14261), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29838), .S0(ID16[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_17.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_17.INIT1 = 16'h0000;
    defparam RegBusA_15__I_0_add_4_17.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 mux_192_i4_3_lut_4_lut (.A(ts[3]), .B(mc[5]), .C(SP16[3]), 
            .D(Set_BusA_To_3__N_1202[0]), .Z(n798[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i4_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_192_i5_3_lut_4_lut (.A(ts[3]), .B(mc[5]), .C(SP16[4]), 
            .D(IR[4]), .Z(n798[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i5_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i32252_2_lut_3_lut_4_lut_4_lut (.A(n37582), .B(PreserveC_r), 
            .C(n37546), .D(n37830), .Z(n34416)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[19:80])
    defparam i32252_2_lut_3_lut_4_lut_4_lut.init = 16'hfddd;
    ORCALUT4 mux_293_i7_3_lut (.A(BusA[2]), .B(Save_Mux[6]), .C(n37551), 
            .Z(n1196[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(823[19] 827[24])
    defparam mux_293_i7_3_lut.init = 16'hcaca;
    ORCALUT4 i64_4_lut (.A(n37716), .B(ALU_Op_r[3]), .C(n2680[2]), .D(n37751), 
            .Z(F_Out[1])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(161[17:25])
    defparam i64_4_lut.init = 16'h0020;
    ORCALUT4 i2_4_lut_adj_571 (.A(n33676), .B(n4_adj_1925), .C(Fp[1]), 
            .D(n37625), .Z(n33731)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_571.init = 16'hc088;
    ORCALUT4 i1_3_lut_4_lut_4_lut_adj_572 (.A(n37582), .B(n37754), .C(n22859), 
            .D(PreserveC_r), .Z(n37_adj_1932)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[19:80])
    defparam i1_3_lut_4_lut_4_lut_adj_572.init = 16'hcf45;
    CCU2B RegBusA_15__I_0_add_4_15 (.A0(RegBusA[13]), .B0(n37812), .C0(IncDec_16_3__N_1012[3]), 
          .D0(n14261), .A1(RegBusA[14]), .B1(n37812), .C1(IncDec_16_3__N_1012[3]), 
          .D1(n14261), .CIN(n29837), .COUT(n29838), .S0(ID16[13]), .S1(ID16[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_15.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_15.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_15.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 mux_494_i7_3_lut (.A(Save_Mux[6]), .B(ID16[6]), .C(RegWEH_N_887), 
            .Z(RegDIL_7__N_748[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i7_3_lut.init = 16'hcaca;
    CCU2B RegBusA_15__I_0_add_4_13 (.A0(RegBusA[11]), .B0(n37812), .C0(IncDec_16_3__N_1012[3]), 
          .D0(n14261), .A1(RegBusA[12]), .B1(n37812), .C1(IncDec_16_3__N_1012[3]), 
          .D1(n14261), .CIN(n29836), .COUT(n29837), .S0(ID16[11]), .S1(ID16[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_13.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_13.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_13.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 mux_493_i5_3_lut (.A(Save_Mux[4]), .B(ID16[12]), .C(RegWEH_N_887), 
            .Z(RegDIH_7__N_739[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_493_i4_3_lut (.A(Save_Mux[3]), .B(ID16[11]), .C(RegWEH_N_887), 
            .Z(RegDIH_7__N_739[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1588_i15_3_lut (.A(n855[14]), .B(Save_Mux[6]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1588_i7_3_lut (.A(Save_Mux[6]), .B(n855[6]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i7_3_lut.init = 16'hcaca;
    FD1P3DX PC_5691__i5 (.D(n19[5]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i5.GSR = "ENABLED";
    ORCALUT4 i30_4_lut (.A(n37866), .B(n37836), .C(n37751), .D(n4_adj_1933), 
            .Z(n16)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(161[17:25])
    defparam i30_4_lut.init = 16'h3a30;
    ORCALUT4 i1_4_lut_adj_573 (.A(n37859), .B(n15889), .C(n6_adj_1934), 
            .D(n37754), .Z(n4_adj_1935)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(161[17:25])
    defparam i1_4_lut_adj_573.init = 16'hccc8;
    ORCALUT4 i1_2_lut_rep_727 (.A(Read_To_Reg_r[3]), .B(Read_To_Reg_r[2]), 
            .Z(n37830)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_727.init = 16'h2222;
    ORCALUT4 i1_2_lut_rep_656_3_lut (.A(Read_To_Reg_r[3]), .B(Read_To_Reg_r[2]), 
            .C(Read_To_Reg_r[1]), .Z(n37759)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_656_3_lut.init = 16'h0202;
    ORCALUT4 mux_493_i7_3_lut (.A(Save_Mux[6]), .B(ID16[14]), .C(RegWEH_N_887), 
            .Z(RegDIH_7__N_739[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_493_i6_3_lut (.A(Save_Mux[5]), .B(ID16[13]), .C(RegWEH_N_887), 
            .Z(RegDIH_7__N_739[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i6981_3_lut (.A(IntE_FF2), .B(Fp[2]), .C(n15889), .Z(n1145)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i6981_3_lut.init = 16'hcaca;
    CCU2B RegBusA_15__I_0_add_4_11 (.A0(RegBusA[9]), .B0(n37812), .C0(IncDec_16_3__N_1012[3]), 
          .D0(n14261), .A1(RegBusA[10]), .B1(n37812), .C1(IncDec_16_3__N_1012[3]), 
          .D1(n14261), .CIN(n29835), .COUT(n29836), .S0(ID16[9]), .S1(ID16[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_11.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_11.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_11.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_11.INJECT1_1 = "NO";
    CCU2B RegBusA_15__I_0_add_4_9 (.A0(RegBusA[7]), .B0(n37812), .C0(IncDec_16_3__N_1012[3]), 
          .D0(n14261), .A1(RegBusA[8]), .B1(n37812), .C1(IncDec_16_3__N_1012[3]), 
          .D1(n14261), .CIN(n29834), .COUT(n29835), .S0(ID16[7]), .S1(ID16[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_9.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_9.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_9.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 mux_1222_i1_3_lut (.A(TmpAddr[0]), .B(PC[0]), .C(n2183), 
            .Z(n1921[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1241_i1_3_lut (.A(n2013[0]), .B(RegBusC[0]), .C(n2195), 
            .Z(n2036[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i1_3_lut.init = 16'hcaca;
    CCU2B RegBusA_15__I_0_add_4_7 (.A0(RegBusA[5]), .B0(n37812), .C0(IncDec_16_3__N_1012[3]), 
          .D0(n14261), .A1(RegBusA[6]), .B1(n37812), .C1(IncDec_16_3__N_1012[3]), 
          .D1(n14261), .CIN(n29833), .COUT(n29834), .S0(ID16[5]), .S1(ID16[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_7.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_7.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_7.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut (.A(tstate[1]), .B(Auto_Wait_t1), .Z(n1175)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i1_2_lut.init = 16'h2222;
    CCU2B RegBusA_15__I_0_add_4_5 (.A0(RegBusA[3]), .B0(n37812), .C0(IncDec_16_3__N_1012[3]), 
          .D0(n14261), .A1(RegBusA[4]), .B1(n37812), .C1(IncDec_16_3__N_1012[3]), 
          .D1(n14261), .CIN(n29832), .COUT(n29833), .S0(ID16[3]), .S1(ID16[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_5.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_5.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_5.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_5.INJECT1_1 = "NO";
    CCU2B RegBusA_15__I_0_add_4_3 (.A0(RegBusA[1]), .B0(n37812), .C0(IncDec_16_3__N_1012[3]), 
          .D0(n14261), .A1(RegBusA[2]), .B1(n37812), .C1(IncDec_16_3__N_1012[3]), 
          .D1(n14261), .CIN(n29831), .COUT(n29832), .S0(ID16[1]), .S1(ID16[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_3.INIT0 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_3.INIT1 = 16'h569a;
    defparam RegBusA_15__I_0_add_4_3.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 mux_1222_i16_3_lut (.A(TmpAddr[15]), .B(PC[15]), .C(n2183), 
            .Z(n1921[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1241_i16_3_lut (.A(n1956[15]), .B(RegBusC[15]), .C(n2195), 
            .Z(n2036[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i16_3_lut.init = 16'hcaca;
    ORCALUT4 i7240_3_lut_3_lut (.A(Save_ALU_r), .B(di_reg[0]), .C(n2865[0]), 
            .Z(n9937)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i7240_3_lut_3_lut.init = 16'he4e4;
    ORCALUT4 mux_1222_i15_3_lut (.A(TmpAddr[14]), .B(PC[14]), .C(n2183), 
            .Z(n1921[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i15_3_lut.init = 16'hcaca;
    FD1S3AX IncDecZ_767 (.D(n17800), .CK(clk_op), .Q(IncDecZ)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam IncDecZ_767.GSR = "ENABLED";
    ORCALUT4 i11151_3_lut_3_lut (.A(Save_ALU_r), .B(di_reg[5]), .C(n2865[5]), 
            .Z(n14278)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i11151_3_lut_3_lut.init = 16'he4e4;
    FD1S3AX BusB_i6 (.D(BusB_7__N_756[6]), .CK(clk_op), .Q(BusB[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i6.GSR = "ENABLED";
    ORCALUT4 mux_1241_i15_3_lut (.A(n1956[14]), .B(RegBusC[14]), .C(n2195), 
            .Z(n2036[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1222_i14_3_lut (.A(TmpAddr[13]), .B(PC[13]), .C(n2183), 
            .Z(n1921[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i14_3_lut.init = 16'hcaca;
    ORCALUT4 i29681_2_lut_rep_732 (.A(Read_To_Reg_r[3]), .B(Read_To_Reg_r[0]), 
            .Z(n37835)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29681_2_lut_rep_732.init = 16'heeee;
    ORCALUT4 mux_1241_i14_3_lut (.A(n1956[13]), .B(RegBusC[13]), .C(n2195), 
            .Z(n2036[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i14_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_rep_420_4_lut (.A(Read_To_Reg_r[3]), .B(Read_To_Reg_r[0]), 
            .C(n32709), .D(n32819), .Z(n37523)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i1_3_lut_rep_420_4_lut.init = 16'hff10;
    FD1S3AX BusB_i5 (.D(BusB_7__N_756[5]), .CK(clk_op), .Q(BusB[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i5.GSR = "ENABLED";
    ORCALUT4 mux_1222_i13_3_lut (.A(TmpAddr[12]), .B(PC[12]), .C(n2183), 
            .Z(n1921[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1241_i13_3_lut (.A(n1956[12]), .B(RegBusC[12]), .C(n2195), 
            .Z(n2036[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1222_i12_3_lut (.A(TmpAddr[11]), .B(PC[11]), .C(n2183), 
            .Z(n1921[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i12_3_lut.init = 16'hcaca;
    FD1S3AX BusB_i4 (.D(BusB_7__N_756[4]), .CK(clk_op), .Q(BusB[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i4.GSR = "ENABLED";
    FD1P3BX mcycle_i0_i0 (.D(n33599), .SP(last_tstate), .CK(clk_op), .PD(n39877), 
            .Q(\ALU_Op_3__N_1269[3] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0_i0.GSR = "ENABLED";
    ORCALUT4 mux_1241_i12_3_lut (.A(n1956[11]), .B(RegBusC[11]), .C(n2195), 
            .Z(n2036[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1222_i11_3_lut (.A(TmpAddr[10]), .B(PC[10]), .C(n2183), 
            .Z(n1921[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i11_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1241_i11_3_lut (.A(n1956[10]), .B(RegBusC[10]), .C(n2195), 
            .Z(n2036[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i11_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1222_i10_3_lut (.A(TmpAddr[9]), .B(PC[9]), .C(n2183), 
            .Z(n1921[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i10_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1241_i10_3_lut (.A(n1956[9]), .B(RegBusC[9]), .C(n2195), 
            .Z(n2036[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i10_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1222_i9_3_lut (.A(TmpAddr[8]), .B(PC[8]), .C(n2183), 
            .Z(n1921[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i9_3_lut.init = 16'hcaca;
    FD1P3DX PC_5691__i6 (.D(n19[6]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i6.GSR = "ENABLED";
    ORCALUT4 mux_1241_i9_3_lut (.A(n1956[8]), .B(RegBusC[8]), .C(n2195), 
            .Z(n2036[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i9_3_lut.init = 16'hcaca;
    ORCALUT4 di_reg_7__bdd_3_lut (.A(di_reg[7]), .B(n39455), .C(Save_ALU_r), 
            .Z(n39456)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_7__bdd_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1222_i8_3_lut (.A(TmpAddr[7]), .B(PC[7]), .C(n2183), 
            .Z(n1921[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1241_i8_3_lut (.A(n1956[7]), .B(RegBusC[7]), .C(n2195), 
            .Z(n2036[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1222_i7_3_lut (.A(TmpAddr[6]), .B(PC[6]), .C(n2183), 
            .Z(n1921[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i7_3_lut.init = 16'hcaca;
    ORCALUT4 Q_7__N_1607_7__bdd_4_lut (.A(Q_7__N_1607[7]), .B(n22322), .C(ALU_Op_r[3]), 
            .D(BusA[7]), .Z(n39454)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1607_7__bdd_4_lut.init = 16'hca0a;
    ORCALUT4 Q_7__N_1607_7__bdd_3_lut (.A(n36726), .B(ExchangeRp), .C(\BusB[7] ), 
            .Z(n39453)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Q_7__N_1607_7__bdd_3_lut.init = 16'he2e2;
    ORCALUT4 mux_1241_i7_3_lut (.A(n1956[6]), .B(RegBusC[6]), .C(n2195), 
            .Z(n2036[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i7_3_lut.init = 16'hcaca;
    ORCALUT4 n2832_bdd_3_lut (.A(n36717), .B(ExchangeRp), .C(BusB[6]), 
            .Z(n39482)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n2832_bdd_3_lut.init = 16'he2e2;
    ORCALUT4 mux_1222_i6_3_lut (.A(TmpAddr[5]), .B(PC[5]), .C(n2183), 
            .Z(n1921[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i6_3_lut.init = 16'hcaca;
    ORCALUT4 n2832_bdd_4_lut (.A(Q_7__N_1607[6]), .B(n22322), .C(ALU_Op_r[3]), 
            .D(BusA[6]), .Z(n39483)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n2832_bdd_4_lut.init = 16'hca0a;
    ORCALUT4 mux_1241_i6_3_lut (.A(n1956[5]), .B(RegBusC[5]), .C(n2195), 
            .Z(n2036[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i6_3_lut.init = 16'hcaca;
    ORCALUT4 di_reg_6__bdd_3_lut (.A(di_reg[6]), .B(n39484), .C(Save_ALU_r), 
            .Z(n39485)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_6__bdd_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1222_i5_3_lut (.A(TmpAddr[4]), .B(PC[4]), .C(n2183), 
            .Z(n1921[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1241_i5_3_lut (.A(n1956[4]), .B(RegBusC[4]), .C(n2195), 
            .Z(n2036[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i29498_2_lut_3_lut_4_lut (.A(n39859), .B(n39840), .C(n37769), 
            .D(n39842), .Z(n32973)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i29498_2_lut_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i8098_2_lut_rep_497_3_lut_4_lut (.A(n39859), .B(n39840), .C(n37769), 
            .D(n39842), .Z(n37600)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8098_2_lut_rep_497_3_lut_4_lut.init = 16'h1101;
    ORCALUT4 i30694_2_lut_3_lut_4_lut (.A(IR[1]), .B(n39840), .C(n37695), 
            .D(n37769), .Z(n34236)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i30694_2_lut_3_lut_4_lut.init = 16'he0f0;
    ORCALUT4 mux_1222_i4_3_lut (.A(TmpAddr[3]), .B(PC[3]), .C(n2183), 
            .Z(n1921[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1241_i4_3_lut (.A(n1956[3]), .B(RegBusC[3]), .C(n2195), 
            .Z(n2036[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_574 (.A(IR[1]), .B(n39840), .C(n37791), 
            .D(n37769), .Z(n48)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_3_lut_4_lut_adj_574.init = 16'h0111;
    ORCALUT4 mux_1222_i3_3_lut (.A(TmpAddr[2]), .B(PC[2]), .C(n2183), 
            .Z(n1921[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1241_i3_3_lut (.A(n1956[2]), .B(RegBusC[2]), .C(n2195), 
            .Z(n2036[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1222_i2_3_lut (.A(TmpAddr[1]), .B(PC[1]), .C(n2183), 
            .Z(n1921[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1222_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1241_i2_3_lut (.A(n1956[1]), .B(RegBusC[1]), .C(n2195), 
            .Z(n2036[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1241_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i31982_3_lut (.A(n1921[0]), .B(n1938[0]), .C(n2189), .Z(n1993[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i31982_3_lut.init = 16'hcaca;
    ORCALUT4 mux_293_i8_3_lut (.A(BusA[3]), .B(Save_Mux[7]), .C(n37551), 
            .Z(n1196[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(823[19] 827[24])
    defparam mux_293_i8_3_lut.init = 16'hcaca;
    CCU2B RegBusA_15__I_0_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(RegBusA[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n29831), .S1(ID16[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_1.INIT0 = 16'h0000;
    defparam RegBusA_15__I_0_add_4_1.INIT1 = 16'h555a;
    defparam RegBusA_15__I_0_add_4_1.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 Q_7__N_1607_4__bdd_4_lut (.A(Q_7__N_1607[4]), .B(n22322), .C(ALU_Op_r[3]), 
            .D(BusA[4]), .Z(n39553)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1607_4__bdd_4_lut.init = 16'hca0a;
    FD1P3DX PC_5691__i7 (.D(n19[7]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i7.GSR = "ENABLED";
    FD1P3DX PC_5691__i8 (.D(n19[8]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i8.GSR = "ENABLED";
    FD1P3DX PC_5691__i9 (.D(n19[9]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i9.GSR = "ENABLED";
    FD1P3DX PC_5691__i10 (.D(n19[10]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i10.GSR = "ENABLED";
    FD1P3DX PC_5691__i11 (.D(n19[11]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i11.GSR = "ENABLED";
    ORCALUT4 Save_Mux_7__I_0_i4_3_lut (.A(Save_Mux_7__N_523[3]), .B(\BusB[3] ), 
            .C(ExchangeRp), .Z(Save_Mux[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam Save_Mux_7__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Q_7__I_0_i4_3_lut (.A(di_reg[3]), .B(ALU_Q[3]), .C(Save_ALU_r), 
            .Z(Save_Mux_7__N_523[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 Q_7__N_1607_4__bdd_3_lut (.A(n36724), .B(ExchangeRp), .C(BusB[4]), 
            .Z(n39552)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Q_7__N_1607_4__bdd_3_lut.init = 16'he2e2;
    ORCALUT4 di_reg_4__bdd_3_lut (.A(di_reg[4]), .B(n39554), .C(Save_ALU_r), 
            .Z(n39555)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_4__bdd_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1680_i1_4_lut_4_lut (.A(ALU_Op_r[3]), .B(n22322), .C(Q_7__N_1607[0]), 
            .D(Q_7__N_1566), .Z(n2865[0])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1680_i1_4_lut_4_lut.init = 16'hd850;
    ORCALUT4 mux_494_i8_3_lut (.A(Save_Mux[7]), .B(ID16[7]), .C(RegWEH_N_887), 
            .Z(RegDIL_7__N_748[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_493_i8_3_lut (.A(Save_Mux[7]), .B(ID16[15]), .C(RegWEH_N_887), 
            .Z(RegDIH_7__N_739[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1588_i16_3_lut (.A(n855[15]), .B(Save_Mux[7]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1588_i8_3_lut (.A(Save_Mux[7]), .B(n855[7]), .C(Read_To_Reg_r[0]), 
            .Z(n2599[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_1588_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i31989_3_lut (.A(n1921[15]), .B(n1938[15]), .C(n2189), .Z(n1993[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i31989_3_lut.init = 16'hcaca;
    ORCALUT4 i31991_3_lut (.A(n1921[14]), .B(n1938[14]), .C(n2189), .Z(n1993[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i31991_3_lut.init = 16'hcaca;
    ORCALUT4 i32341_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n37754), .C(IR[5]), 
            .D(n6_adj_1936), .Z(n23008)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i32341_2_lut_3_lut_4_lut.init = 16'h070f;
    ORCALUT4 i31993_3_lut (.A(n1921[13]), .B(n1938[13]), .C(n2189), .Z(n1993[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i31993_3_lut.init = 16'hcaca;
    ORCALUT4 i18976_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n37754), .C(IR[5]), 
            .D(n6_adj_1936), .Z(n18060)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i18976_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i18874_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n37754), .C(bus_din[0]), 
            .D(Halt_FF), .Z(n963)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i18874_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i19355_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n37754), .C(bus_din[7]), 
            .D(Halt_FF), .Z(n970)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i19355_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i19356_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n37754), .C(bus_din[6]), 
            .D(Halt_FF), .Z(n969)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i19356_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i31995_3_lut (.A(n1921[12]), .B(n1938[12]), .C(n2189), .Z(n1993[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i31995_3_lut.init = 16'hcaca;
    ORCALUT4 Set_BusB_To_3__bdd_4_lut (.A(Set_BusB_To[3]), .B(Set_BusB_To[2]), 
            .C(Set_BusB_To[0]), .D(Set_BusB_To[1]), .Z(n34653)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C+(D))+!B (C))) */ ;
    defparam Set_BusB_To_3__bdd_4_lut.init = 16'habad;
    ORCALUT4 i19357_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n37754), .C(bus_din[5]), 
            .D(Halt_FF), .Z(n968)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i19357_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i19358_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n37754), .C(bus_din[4]), 
            .D(Halt_FF), .Z(n967)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i19358_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i31997_3_lut (.A(n1921[11]), .B(n1938[11]), .C(n2189), .Z(n1993[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i31997_3_lut.init = 16'hcaca;
    ORCALUT4 i31999_3_lut (.A(n1921[10]), .B(n1938[10]), .C(n2189), .Z(n1993[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i31999_3_lut.init = 16'hcaca;
    ORCALUT4 i19359_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n37754), .C(bus_din[3]), 
            .D(Halt_FF), .Z(n966)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i19359_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i32001_3_lut (.A(n1921[9]), .B(n1938[9]), .C(n2189), .Z(n1993[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i32001_3_lut.init = 16'hcaca;
    ORCALUT4 i19360_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n37754), .C(bus_din[2]), 
            .D(Halt_FF), .Z(n965)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i19360_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i19361_2_lut_3_lut_4_lut (.A(\tstate[2] ), .B(n37754), .C(bus_din[1]), 
            .D(Halt_FF), .Z(n964)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i19361_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i32003_3_lut (.A(n1921[8]), .B(n1938[8]), .C(n2189), .Z(n1993[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i32003_3_lut.init = 16'hcaca;
    ORCALUT4 i32005_3_lut (.A(n1921[7]), .B(n1938[7]), .C(n2189), .Z(n1993[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i32005_3_lut.init = 16'hcaca;
    ORCALUT4 i32007_3_lut (.A(n1921[6]), .B(n1938[6]), .C(n2189), .Z(n1993[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i32007_3_lut.init = 16'hcaca;
    ORCALUT4 i32009_3_lut (.A(n1921[5]), .B(n1938[5]), .C(n2189), .Z(n1993[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i32009_3_lut.init = 16'hcaca;
    ORCALUT4 i32011_3_lut (.A(n1921[4]), .B(n1938[4]), .C(n2189), .Z(n1993[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i32011_3_lut.init = 16'hcaca;
    ORCALUT4 i32013_3_lut (.A(n1921[3]), .B(n1938[3]), .C(n2189), .Z(n1993[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i32013_3_lut.init = 16'hcaca;
    ORCALUT4 i32015_3_lut (.A(n1921[2]), .B(n1938[2]), .C(n2189), .Z(n1993[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i32015_3_lut.init = 16'hcaca;
    ORCALUT4 i32017_3_lut (.A(n1921[1]), .B(n1938[1]), .C(n2189), .Z(n1993[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i32017_3_lut.init = 16'hcaca;
    ORCALUT4 i19175_2_lut (.A(Save_ALU), .B(clk_op_enable_204), .Z(n8407)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i19175_2_lut.init = 16'h8888;
    PFUMX i32757 (.BLUT(n36616), .ALUT(ALU_Op_3__N_1040[3]), .C0(ISet[1]), 
          .Z(n36617));
    ORCALUT4 PC16_B_15__I_0_i8_3_lut_4_lut_4_lut (.A(n37859), .B(PC16_B_15__N_566[15]), 
            .C(di_reg[7]), .D(JumpE_N_1507), .Z(PC16_B[7])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i8_3_lut_4_lut_4_lut.init = 16'hd8cc;
    FD1P3DX PC_5691__i12 (.D(n19[12]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i12.GSR = "ENABLED";
    ORCALUT4 i32170_4_lut (.A(n23405), .B(n34280), .C(n27_adj_1937), .D(n37582), 
            .Z(clk_op_enable_147)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C (D)))) */ ;
    defparam i32170_4_lut.init = 16'hcfdd;
    ORCALUT4 i15_4_lut (.A(n17), .B(n30), .C(n26), .D(n18_adj_1938), 
            .Z(IncDecZ_N_972)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i15_4_lut.init = 16'hfffe;
    ORCALUT4 i14304_4_lut (.A(IncDecZ), .B(F_Out[6]), .C(stop), .D(Save_ALU_r), 
            .Z(n17799)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam i14304_4_lut.init = 16'hcaaa;
    ORCALUT4 i6977_4_lut (.A(n13), .B(Fp[6]), .C(n15889), .D(n14), .Z(n1143)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i6977_4_lut.init = 16'hc0c5;
    ORCALUT4 SP_15__I_0_793_i3_3_lut (.A(SP[2]), .B(RegBusC[2]), .C(ts[3]), 
            .Z(SP16_A[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i32371_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIL_7__N_456[6]), 
            .D(RegDIL_7__N_748[6]), .Z(RegDIL[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32371_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32367_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIH_7__N_447[5]), 
            .D(RegDIH_7__N_739[5]), .Z(RegDIH[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32367_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_4_lut_adj_575 (.A(n37751), .B(Arith16_r), .C(n21), .D(ALU_Op_r[3]), 
            .Z(n27_adj_1937)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_575.init = 16'h5044;
    ORCALUT4 i32380_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIL_7__N_456[0]), 
            .D(RegDIL_7__N_748[0]), .Z(RegDIL[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32380_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32378_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIL_7__N_456[1]), 
            .D(RegDIL_7__N_748[1]), .Z(RegDIL[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32378_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i18894_2_lut (.A(\tstate[2] ), .B(last_tstate), .Z(n18021)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i18894_2_lut.init = 16'h2222;
    ORCALUT4 i32370_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIH_7__N_447[4]), 
            .D(RegDIH_7__N_739[4]), .Z(RegDIH[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32370_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32373_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIH_7__N_447[2]), 
            .D(RegDIH_7__N_739[2]), .Z(RegDIH[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32373_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_141_i15_3_lut (.A(n525[14]), .B(di_reg[6]), .C(Jump), 
            .Z(n559[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i15_4_lut (.A(TmpAddr[14]), .B(RegBusC[14]), .C(n23097), 
            .D(n37538), .Z(n525[14])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i15_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i16_3_lut (.A(n525[15]), .B(di_reg[7]), .C(Jump), 
            .Z(n559[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i16_4_lut (.A(TmpAddr[15]), .B(RegBusC[15]), .C(n23097), 
            .D(n37538), .Z(n525[15])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i16_4_lut.init = 16'hac0c;
    FD1S3AX BusB_i3 (.D(BusB_7__N_756[3]), .CK(clk_op), .Q(\BusB[3] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i3.GSR = "ENABLED";
    FD1P3DX dout_i0 (.D(n17973), .SP(clk_op_enable_282), .CK(clk_op), 
            .CD(n39879), .Q(cpu_dout[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i0.GSR = "ENABLED";
    FD1P3DX TmpAddr_i0 (.D(n17971), .SP(clk_op_enable_320), .CK(clk_op), 
            .CD(n39882), .Q(TmpAddr[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0.GSR = "ENABLED";
    ORCALUT4 i32289_3_lut (.A(ExchangeRp), .B(Save_ALU_r), .C(n34751), 
            .Z(n34569)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam i32289_3_lut.init = 16'haeae;
    ORCALUT4 i32365_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIH_7__N_447[7]), 
            .D(RegDIH_7__N_739[7]), .Z(RegDIH[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32365_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32377_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIL_7__N_456[4]), 
            .D(RegDIL_7__N_748[4]), .Z(RegDIL[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32377_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32372_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIH_7__N_447[1]), 
            .D(RegDIH_7__N_739[1]), .Z(RegDIH[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32372_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32366_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIL_7__N_456[7]), 
            .D(RegDIL_7__N_748[7]), .Z(RegDIL[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32366_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32376_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIL_7__N_456[3]), 
            .D(RegDIL_7__N_748[3]), .Z(RegDIL[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32376_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32374_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIH_7__N_447[0]), 
            .D(RegDIH_7__N_739[0]), .Z(RegDIH[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32374_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32368_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIH_7__N_447[6]), 
            .D(RegDIH_7__N_739[6]), .Z(RegDIH[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32368_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32369_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIH_7__N_447[3]), 
            .D(RegDIH_7__N_739[3]), .Z(RegDIH[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32369_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i3_4_lut (.A(n37627), .B(n23273), .C(ISet[1]), .D(n39857), 
            .Z(n15889)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i3_4_lut.init = 16'hdfff;
    ORCALUT4 i3_4_lut_adj_576 (.A(ALU_Op_r[0]), .B(ALU_Op_r[3]), .C(ALU_Op_r[2]), 
            .D(ALU_Op_r[1]), .Z(n33787)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[61:80])
    defparam i3_4_lut_adj_576.init = 16'hfff7;
    ORCALUT4 i32375_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIL_7__N_456[5]), 
            .D(RegDIL_7__N_748[5]), .Z(RegDIL[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32375_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i32379_3_lut_4_lut (.A(n37584), .B(n37579), .C(RegDIL_7__N_456[2]), 
            .D(RegDIL_7__N_748[2]), .Z(RegDIL[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i32379_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i6998_4_lut (.A(n37754), .B(\tstate[2] ), .C(n37837), .D(\mc[6] ), 
            .Z(clk_op_enable_324)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i6998_4_lut.init = 16'h8c88;
    ORCALUT4 Save_Mux_7__I_0_i2_3_lut (.A(Save_Mux_7__N_523[1]), .B(BusB[1]), 
            .C(ExchangeRp), .Z(Save_Mux[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam Save_Mux_7__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Q_7__I_0_i2_3_lut (.A(di_reg[1]), .B(ALU_Q[1]), .C(Save_ALU_r), 
            .Z(Save_Mux_7__N_523[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 ts_3__I_0_825_2_lut_rep_759 (.A(ts[3]), .B(\ALU_Op_3__N_1269[3] ), 
            .Z(n37862)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(914[29:53])
    defparam ts_3__I_0_825_2_lut_rep_759.init = 16'h8888;
    ORCALUT4 i493_4_lut_4_lut (.A(n39857), .B(\ALU_Op_3__N_1269[3] ), .C(\tstate[2] ), 
            .D(IncDec_16[2]), .Z(RegWEH_N_887)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(914[29:53])
    defparam i493_4_lut_4_lut.init = 16'hb800;
    ORCALUT4 ts_2__I_0_798_3_lut_4_lut (.A(n39857), .B(\ALU_Op_3__N_1269[3] ), 
            .C(IncDec_16[2]), .D(\tstate[2] ), .Z(RegAddrA_2__N_471)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(914[29:53])
    defparam ts_2__I_0_798_3_lut_4_lut.init = 16'hff80;
    ORCALUT4 XY_State_1__I_0_792_i3_2_lut_rep_760 (.A(XY_State[0]), .B(XY_State[1]), 
            .Z(n37863)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(550[39:56])
    defparam XY_State_1__I_0_792_i3_2_lut_rep_760.init = 16'heeee;
    ORCALUT4 RegAddrA_2__I_28_2_lut_rep_424_3_lut (.A(XY_State[0]), .B(XY_State[1]), 
            .C(RegAddrA_2__N_471), .Z(n37527)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(550[39:56])
    defparam RegAddrA_2__I_28_2_lut_rep_424_3_lut.init = 16'h1010;
    ORCALUT4 i403_3_lut_4_lut (.A(XY_State[0]), .B(XY_State[1]), .C(mc[5]), 
            .D(n30107), .Z(n1684)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(550[39:56])
    defparam i403_3_lut_4_lut.init = 16'hf0fe;
    ORCALUT4 i18745_3_lut (.A(Set_BusA_To[0]), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n11[0])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i18745_3_lut.init = 16'hc8c8;
    ORCALUT4 NextIs_XY_Fetch_I_89_2_lut_rep_654_3_lut (.A(XY_State[0]), .B(XY_State[1]), 
            .C(XY_Ind), .Z(n37757)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(550[39:56])
    defparam NextIs_XY_Fetch_I_89_2_lut_rep_654_3_lut.init = 16'h0e0e;
    ORCALUT4 i2_4_lut_adj_577 (.A(Halt_FF), .B(Jump), .C(n37859), .D(n57), 
            .Z(n28)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i2_4_lut_adj_577.init = 16'h1110;
    ORCALUT4 i13_3_lut (.A(n34056), .B(\tstate[2] ), .C(n37754), .Z(clk_op_enable_111)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13_3_lut.init = 16'hcaca;
    ORCALUT4 i3_4_lut_adj_578 (.A(n23316), .B(mc[5]), .C(n37859), .D(n37588), 
            .Z(n34056)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_578.init = 16'h0008;
    ORCALUT4 i18893_2_lut (.A(ts[3]), .B(last_tstate), .Z(n18019)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i18893_2_lut.init = 16'h2222;
    ORCALUT4 i18892_2_lut (.A(ts[4]), .B(last_tstate), .Z(n18017)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i18892_2_lut.init = 16'h2222;
    ORCALUT4 ALU_Q_7__I_0_i3_3_lut (.A(n36714), .B(BusB[2]), .C(ExchangeRp), 
            .Z(Save_Mux_7__N_523[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_579 (.A(Read_To_Reg_r[3]), .B(n32819), .C(n32709), 
            .D(Read_To_Reg_r[0]), .Z(RegWEL)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i1_4_lut_adj_579.init = 16'hdccc;
    ORCALUT4 i2_4_lut_adj_580 (.A(n37680), .B(n37624), .C(n37707), .D(n37859), 
            .Z(n32647)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i2_4_lut_adj_580.init = 16'h0048;
    ORCALUT4 i2_4_lut_4_lut (.A(n39859), .B(n37619), .C(n37824), .Z(BTR_r_N_965)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(848[19:47])
    defparam i2_4_lut_4_lut.init = 16'h4040;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_3_lut_3_lut_4_lut (.A(Arith16_r), 
            .B(ALU_Op_r[1]), .C(ALU_Op_r[0]), .D(ALU_Op_r[2]), .Z(n22)) /* synthesis lut_function=(!(A+!(B (D)+!B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_3_lut_4_lut_4_lut_3_lut_3_lut_4_lut.init = 16'h5501;
    ORCALUT4 ALU_Op_3__N_1040_3__bdd_4_lut_32791 (.A(n32696), .B(n37792), 
            .C(n37788), .D(IR[5]), .Z(n36616)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam ALU_Op_3__N_1040_3__bdd_4_lut_32791.init = 16'h0888;
    ORCALUT4 sram_addr_c_bdd_2_lut_32764 (.A(n36618), .B(clk_op_enable_204), 
            .Z(n36619)) /* synthesis lut_function=(A (B)) */ ;
    defparam sram_addr_c_bdd_2_lut_32764.init = 16'h8888;
    ORCALUT4 mux_293_i2_3_lut (.A(BusB[5]), .B(Save_Mux[1]), .C(n37551), 
            .Z(n1196[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(823[19] 827[24])
    defparam mux_293_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i18886_2_lut (.A(ts[5]), .B(last_tstate), .Z(n18015)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i18886_2_lut.init = 16'h2222;
    ORCALUT4 mux_141_i13_3_lut (.A(n525[12]), .B(di_reg[4]), .C(Jump), 
            .Z(n559[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i13_4_lut (.A(TmpAddr[12]), .B(RegBusC[12]), .C(n23097), 
            .D(n37538), .Z(n525[12])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i13_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i14_3_lut (.A(n525[13]), .B(di_reg[5]), .C(Jump), 
            .Z(n559[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i14_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i14_4_lut (.A(TmpAddr[13]), .B(RegBusC[13]), .C(n23097), 
            .D(n37538), .Z(n525[13])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i14_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i11_3_lut (.A(n525[10]), .B(di_reg[2]), .C(Jump), 
            .Z(n559[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i11_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i11_4_lut (.A(TmpAddr[10]), .B(RegBusC[10]), .C(n23097), 
            .D(n37538), .Z(n525[10])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i11_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i12_3_lut (.A(n525[11]), .B(di_reg[3]), .C(Jump), 
            .Z(n559[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i12_4_lut (.A(TmpAddr[11]), .B(RegBusC[11]), .C(n23097), 
            .D(n37538), .Z(n525[11])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i12_4_lut.init = 16'hac0c;
    ORCALUT4 i14321_4_lut (.A(n17962), .B(Save_Mux[7]), .C(n7158), .D(n2384), 
            .Z(n17817)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14321_4_lut.init = 16'hc0ca;
    ORCALUT4 i3_4_lut_adj_581 (.A(IncDec_16[0]), .B(n6_adj_1939), .C(\tstate[2] ), 
            .D(n817), .Z(n933)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut_adj_581.init = 16'h8880;
    ORCALUT4 mux_141_i9_3_lut (.A(n525[8]), .B(di_reg[0]), .C(Jump), .Z(n559[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i9_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i9_4_lut (.A(TmpAddr[8]), .B(RegBusC[8]), .C(n23097), 
            .D(n37538), .Z(n525[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i9_4_lut.init = 16'hac0c;
    PFUMX i14530 (.BLUT(n1143), .ALUT(n1170), .C0(n34468), .Z(n18028));
    ORCALUT4 mux_141_i10_3_lut (.A(n525[9]), .B(di_reg[1]), .C(Jump), 
            .Z(n559[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i10_3_lut.init = 16'hcaca;
    ORCALUT4 mux_139_i10_4_lut (.A(TmpAddr[9]), .B(RegBusC[9]), .C(n23097), 
            .D(n37538), .Z(n525[9])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i10_4_lut.init = 16'hac0c;
    ORCALUT4 mux_141_i7_4_lut (.A(RegBusC[6]), .B(TmpAddr[6]), .C(n17624), 
            .D(n23097), .Z(n559[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i7_4_lut.init = 16'hc0ca;
    FD1S3AX BusB_i2 (.D(BusB_7__N_756[2]), .CK(clk_op), .Q(BusB[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i2.GSR = "ENABLED";
    ORCALUT4 i14479_4_lut (.A(n37533), .B(n34292), .C(n37_adj_1932), .D(n8_adj_1940), 
            .Z(clk_op_enable_148)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14479_4_lut.init = 16'haeaf;
    ORCALUT4 mux_141_i8_4_lut (.A(RegBusC[7]), .B(TmpAddr[7]), .C(n17624), 
            .D(n23097), .Z(n559[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i8_4_lut.init = 16'hc0ca;
    ORCALUT4 i2_2_lut (.A(IncDec_16[2]), .B(IncDec_16[1]), .Z(n6_adj_1939)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    PFUMX i14305 (.BLUT(n17799), .ALUT(IncDecZ_N_972), .C0(IncDecZ_N_974), 
          .Z(n17800));
    ORCALUT4 i196_2_lut (.A(ts[4]), .B(\ALU_Op_3__N_1269[3] ), .Z(n817)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(698[56:80])
    defparam i196_2_lut.init = 16'h8888;
    FD1P3DX PC_5691__i13 (.D(n19[13]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i13.GSR = "ENABLED";
    ORCALUT4 RegAddrA_2__I_0_i1_4_lut (.A(RegAddrA_2__N_734[0]), .B(IncDec_16[0]), 
            .C(n37527), .D(RegAddrA_2__N_737), .Z(RegAddrA[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(937[12] 944[31])
    defparam RegAddrA_2__I_0_i1_4_lut.init = 16'hcfca;
    ORCALUT4 i2_2_lut_4_lut (.A(n37636), .B(n37700), .C(n37638), .D(n22859), 
            .Z(n6_adj_1934)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_2_lut_4_lut.init = 16'h80ff;
    ORCALUT4 mux_141_i5_4_lut (.A(RegBusC[4]), .B(TmpAddr[4]), .C(n17624), 
            .D(n23097), .Z(n559[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i5_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_141_i6_4_lut (.A(RegBusC[5]), .B(TmpAddr[5]), .C(n17624), 
            .D(n23097), .Z(n559[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i6_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_141_i3_4_lut (.A(RegBusC[2]), .B(TmpAddr[2]), .C(n17624), 
            .D(n23097), .Z(n941)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i3_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_141_i4_4_lut (.A(RegBusC[3]), .B(TmpAddr[3]), .C(n17624), 
            .D(n23097), .Z(n559[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i4_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(n37858), .B(n37805), .C(n15839), 
            .D(n37784), .Z(n32574)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf070;
    ORCALUT4 i14311_4_lut (.A(n17952), .B(Save_Mux[2]), .C(n7158), .D(n2384), 
            .Z(n17807)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14311_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_139_i1_4_lut (.A(n37538), .B(RegBusC[0]), .C(n23097), 
            .D(TmpAddr[0]), .Z(n525[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i1_4_lut.init = 16'hac0c;
    ORCALUT4 PC16_B_15__I_0_i2_3_lut_4_lut_4_lut (.A(n37859), .B(PC16_B_15__N_566[15]), 
            .C(di_reg[1]), .D(JumpE_N_1507), .Z(PC16_B[1])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i2_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 F_Out_7__I_156_4_lut_4_lut (.A(n37859), .B(n8_adj_1941), .C(F[6]), 
            .D(n7), .Z(F_Out_7__N_1638)) /* synthesis lut_function=(!(A (B+(D))+!A !(C))) */ ;
    defparam F_Out_7__I_156_4_lut_4_lut.init = 16'h5072;
    ORCALUT4 i14308_4_lut (.A(n17956), .B(Save_Mux[1]), .C(n7158), .D(n2384), 
            .Z(n17803)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14308_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_141_i1_3_lut (.A(n525[0]), .B(TmpAddr[0]), .C(Jump), 
            .Z(n559[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_582 (.A(n37686), .B(n20), .C(\mc[6] ), .D(n17_adj_1942), 
            .Z(n32138)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(65[17:19])
    defparam i1_4_lut_adj_582.init = 16'haaa8;
    ORCALUT4 mux_141_i2_4_lut (.A(RegBusC[1]), .B(TmpAddr[1]), .C(n17624), 
            .D(n23097), .Z(n940)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i2_4_lut.init = 16'hc0ca;
    FD1P3DX PC_5691__i14 (.D(n19[14]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39884), .Q(PC[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i14.GSR = "ENABLED";
    ORCALUT4 i3_4_lut_adj_583 (.A(n37582), .B(n1165), .C(n37533), .D(n23405), 
            .Z(clk_op_enable_136)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_adj_583.init = 16'hfeff;
    ORCALUT4 PC16_B_15__I_0_i6_3_lut_4_lut_4_lut (.A(n37859), .B(PC16_B_15__N_566[15]), 
            .C(di_reg[5]), .D(JumpE_N_1507), .Z(PC16_B[5])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i6_3_lut_4_lut_4_lut.init = 16'hd8cc;
    PFUMX mux_1217_i2 (.BLUT(n1993[1]), .ALUT(n2036[1]), .C0(n35501), 
          .Z(n1900[1]));
    ORCALUT4 i19566_3_lut_rep_434_4_lut_4_lut (.A(n37859), .B(n37698), .C(n37583), 
            .D(n64), .Z(n37537)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;
    defparam i19566_3_lut_rep_434_4_lut_4_lut.init = 16'h5551;
    ORCALUT4 i1_4_lut_adj_584 (.A(mc[5]), .B(mc[4]), .C(mc[3]), .D(n4_adj_1943), 
            .Z(n17_adj_1942)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(65[17:19])
    defparam i1_4_lut_adj_584.init = 16'h4445;
    ORCALUT4 i19258_3_lut (.A(Set_BusA_To[1]), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n11[1])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i19258_3_lut.init = 16'hc8c8;
    ORCALUT4 i2_4_lut_adj_585 (.A(\tstate[2] ), .B(n10995), .C(n7_adj_1944), 
            .D(n5_adj_1931), .Z(clk_op_enable_320)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut_adj_585.init = 16'hffec;
    PFUMX mux_1217_i3 (.BLUT(n1993[2]), .ALUT(n2036[2]), .C0(n35501), 
          .Z(n1900[2]));
    ORCALUT4 i32363_4_lut (.A(mc[5]), .B(n32784), .C(\mc[6] ), .D(n37686), 
            .Z(n33995)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i32363_4_lut.init = 16'hfbff;
    ORCALUT4 PC16_B_15__I_0_i7_3_lut_4_lut_4_lut (.A(n37859), .B(PC16_B_15__N_566[15]), 
            .C(di_reg[6]), .D(JumpE_N_1507), .Z(PC16_B[6])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i7_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 PC16_B_15__I_0_i3_3_lut_4_lut_4_lut (.A(n37859), .B(PC16_B_15__N_566[15]), 
            .C(di_reg[2]), .D(JumpE_N_1507), .Z(PC16_B[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i3_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 IR_7__I_0_1614_i15_2_lut_rep_597_3_lut_4_lut (.A(n37858), .B(n37805), 
            .C(n37792), .D(n37806), .Z(n37700)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_7__I_0_1614_i15_2_lut_rep_597_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i3_3_lut_4_lut_4_lut (.A(n37859), .B(PC16_B_15__N_566[15]), 
            .C(mc[5]), .D(JumpE_N_1507), .Z(n8_adj_1945)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;
    defparam i3_3_lut_4_lut_4_lut.init = 16'hfdfc;
    ORCALUT4 i14129_3_lut_4_lut_4_lut (.A(n37859), .B(Jump), .C(n23097), 
            .D(n37553), .Z(n17624)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i14129_3_lut_4_lut_4_lut.init = 16'hdccc;
    PFUMX mux_1217_i4 (.BLUT(n1993[3]), .ALUT(n2036[3]), .C0(n35501), 
          .Z(n1900[3]));
    ORCALUT4 PC16_B_15__I_0_i1_3_lut_4_lut_4_lut (.A(n37859), .B(PC16_B_15__N_566[15]), 
            .C(di_reg[0]), .D(JumpE_N_1507), .Z(PC16_B[0])) /* synthesis lut_function=(!(A (B)+!A !(B (C (D))+!B (C+!(D))))) */ ;
    defparam PC16_B_15__I_0_i1_3_lut_4_lut_4_lut.init = 16'h7233;
    ORCALUT4 PC16_B_15__I_0_i5_3_lut_4_lut_4_lut (.A(n37859), .B(PC16_B_15__N_566[15]), 
            .C(di_reg[4]), .D(JumpE_N_1507), .Z(PC16_B[4])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam PC16_B_15__I_0_i5_3_lut_4_lut_4_lut.init = 16'hd8cc;
    PFUMX mux_1217_i5 (.BLUT(n1993[4]), .ALUT(n2036[4]), .C0(n35501), 
          .Z(n1900[4]));
    ORCALUT4 Q_7__N_1607_2__bdd_4_lut_34310 (.A(Q_7__N_1607[2]), .B(n22322), 
            .C(n37834), .D(ALU_Op_r[3]), .Z(n35923)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1607_2__bdd_4_lut_34310.init = 16'hc0aa;
    ORCALUT4 i2_4_lut_adj_586 (.A(\mc[6] ), .B(n37515), .C(n32363), .D(n17105), 
            .Z(n33599)) /* synthesis lut_function=(A (B)+!A !(((D)+!C)+!B)) */ ;
    defparam i2_4_lut_adj_586.init = 16'h88c8;
    PFUMX mux_1217_i6 (.BLUT(n1993[5]), .ALUT(n2036[5]), .C0(n35501), 
          .Z(n1900[5]));
    PFUMX mux_1217_i7 (.BLUT(n1993[6]), .ALUT(n2036[6]), .C0(n35501), 
          .Z(n1900[6]));
    ORCALUT4 i3_3_lut (.A(ALU_Op_r[3]), .B(n37866), .C(n37582), .Z(n8_adj_1940)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i3_3_lut.init = 16'h8080;
    ORCALUT4 select_1785_Select_0_i3_2_lut_3_lut_4_lut (.A(n37805), .B(n37813), 
            .C(n39842), .D(n37784), .Z(n3)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam select_1785_Select_0_i3_2_lut_3_lut_4_lut.init = 16'h0020;
    ORCALUT4 select_825_Select_1_i26_2_lut_3_lut_4_lut (.A(n37805), .B(n37813), 
            .C(\ALU_Op_3__N_1269[3] ), .D(n37784), .Z(n26_adj_1946)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam select_825_Select_1_i26_2_lut_3_lut_4_lut.init = 16'h0020;
    PFUMX mux_1217_i8 (.BLUT(n1993[7]), .ALUT(n2036[7]), .C0(n35501), 
          .Z(n1900[7]));
    PFUMX mux_1217_i9 (.BLUT(n1993[8]), .ALUT(n2036[8]), .C0(n35501), 
          .Z(n1900[8]));
    ORCALUT4 n36347_bdd_2_lut_33256_3_lut_4_lut (.A(n37805), .B(n37813), 
            .C(\ALU_Op_3__N_1269[3] ), .D(n37784), .Z(n37461)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam n36347_bdd_2_lut_33256_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 i29732_2_lut_3_lut_4_lut (.A(n37805), .B(n37813), .C(n37856), 
            .D(n37787), .Z(n33232)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i29732_2_lut_3_lut_4_lut.init = 16'hfddd;
    ORCALUT4 i29512_2_lut_3_lut_4_lut (.A(n37805), .B(n37813), .C(\ALU_Op_3__N_1269[3] ), 
            .D(n37784), .Z(n32987)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i29512_2_lut_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i2_4_lut_adj_587 (.A(Set_Addr_To[1]), .B(n37756), .C(Set_Addr_To_2__N_1044[2]), 
            .D(Set_Addr_To_2__N_1413[0]), .Z(n15935)) /* synthesis lut_function=(!(A (B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(359[12:32])
    defparam i2_4_lut_adj_587.init = 16'h7775;
    PFUMX mux_1217_i10 (.BLUT(n1993[9]), .ALUT(n2036[9]), .C0(n35501), 
          .Z(n1900[9]));
    PFUMX mux_1217_i11 (.BLUT(n1993[10]), .ALUT(n2036[10]), .C0(n35501), 
          .Z(n1900[10]));
    PFUMX mux_1217_i12 (.BLUT(n1993[11]), .ALUT(n2036[11]), .C0(n35501), 
          .Z(n1900[11]));
    PFUMX mux_1217_i13 (.BLUT(n1993[12]), .ALUT(n2036[12]), .C0(n35501), 
          .Z(n1900[12]));
    ORCALUT4 i6957_2_lut (.A(LDZ), .B(n39857), .Z(n10995)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i6957_2_lut.init = 16'h8888;
    PFUMX mux_1217_i14 (.BLUT(n1993[13]), .ALUT(n2036[13]), .C0(n35501), 
          .Z(n1900[13]));
    PFUMX mux_1217_i15 (.BLUT(n1993[14]), .ALUT(n2036[14]), .C0(n35501), 
          .Z(n1900[14]));
    PFUMX mux_1217_i16 (.BLUT(n1993[15]), .ALUT(n2036[15]), .C0(n35501), 
          .Z(n1900[15]));
    FD1P3DX PC_5691__i15 (.D(n19[15]), .SP(clk_op_enable_304), .CK(clk_op), 
            .CD(n39880), .Q(PC[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_5691__i15.GSR = "ENABLED";
    ORCALUT4 i14473_3_lut (.A(n938[0]), .B(di_reg[0]), .C(n10995), .Z(n17971)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14473_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i1_4_lut (.A(SP16[0]), .B(bus_din[0]), .C(n37754), 
            .D(n37827), .Z(n938[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i1_4_lut.init = 16'hcac0;
    PFUMX mux_1592_i8 (.BLUT(n2582[7]), .ALUT(n2599[7]), .C0(n35505), 
          .Z(n2619[7]));
    ORCALUT4 i19090_4_lut (.A(IntE_FF2_N_905), .B(ts[3]), .C(n15), .D(n37859), 
            .Z(IntE_FF2_N_904)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;
    defparam i19090_4_lut.init = 16'haaa2;
    ORCALUT4 i19091_4_lut (.A(IntE_FF2), .B(\tstate[2] ), .C(n37703), 
            .D(n37859), .Z(IntE_FF2_N_905)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;
    defparam i19091_4_lut.init = 16'haaae;
    ORCALUT4 i1_4_lut_adj_588 (.A(I_BTR), .B(n37824), .C(No_BTR_N_958), 
            .D(n4_adj_1947), .Z(No_BTR_N_948)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_4_lut_adj_588.init = 16'heca0;
    ORCALUT4 i1_4_lut_adj_589 (.A(IR[4]), .B(n33648), .C(n37572), .D(F[2]), 
            .Z(n4_adj_1947)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_4_lut_adj_589.init = 16'hdcfc;
    PFUMX mux_1592_i16 (.BLUT(n2582[15]), .ALUT(n2599[15]), .C0(n35505), 
          .Z(n2619[15]));
    ORCALUT4 i2_4_lut_adj_590 (.A(n37821), .B(n37619), .C(No_BTR_N_958), 
            .D(F[2]), .Z(n33648)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i2_4_lut_adj_590.init = 16'h8088;
    ORCALUT4 IR_4__N_953_I_0_2_lut (.A(IR[4]), .B(F[6]), .Z(No_BTR_N_958)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1225[35:55])
    defparam IR_4__N_953_I_0_2_lut.init = 16'hdddd;
    ORCALUT4 i14420_4_lut (.A(n17960), .B(Save_Mux[0]), .C(n7158), .D(n2384), 
            .Z(n17917)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14420_4_lut.init = 16'hc0ca;
    ORCALUT4 n2823_bdd_3_lut_4_lut (.A(n37802), .B(\mc[6] ), .C(n32363), 
            .D(mc[4]), .Z(n36243)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam n2823_bdd_3_lut_4_lut.init = 16'h0d00;
    ORCALUT4 n2823_bdd_3_lut_32535_4_lut (.A(n37802), .B(\mc[6] ), .C(n32363), 
            .D(mc[5]), .Z(n36233)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam n2823_bdd_3_lut_32535_4_lut.init = 16'h0d00;
    ORCALUT4 i5_4_lut (.A(I[0]), .B(I[1]), .C(I[3]), .D(I[2]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(756[21:29])
    defparam i5_4_lut.init = 16'hfffe;
    ORCALUT4 i6_4_lut (.A(I[7]), .B(I[4]), .C(I[5]), .D(I[6]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(756[21:29])
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 mux_276_i7_4_lut (.A(F_Out[6]), .B(n13_adj_1948), .C(n1165), 
            .D(n14_adj_1949), .Z(n1154[6])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[15] 796[20])
    defparam mux_276_i7_4_lut.init = 16'h0a3a;
    PFUMX i34273 (.BLUT(n39555), .ALUT(n39552), .C0(n34569), .Z(Save_Mux[4]));
    ORCALUT4 i5_4_lut_adj_591 (.A(di_reg[0]), .B(di_reg[1]), .C(di_reg[3]), 
            .D(di_reg[2]), .Z(n13_adj_1948)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(802[23:49])
    defparam i5_4_lut_adj_591.init = 16'hfffe;
    ORCALUT4 i14477_4_lut (.A(n30700), .B(n1154[0]), .C(n37533), .D(n34412), 
            .Z(n17975)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14477_4_lut.init = 16'hcacc;
    PFUMX i34271 (.BLUT(n2830[4]), .ALUT(n39553), .C0(n37771), .Z(n39554));
    ORCALUT4 i1_2_lut_rep_430_3_lut_4_lut (.A(Read_To_Reg_r[1]), .B(n37621), 
            .C(n37830), .D(Read_To_Reg_r[0]), .Z(n37533)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(962[11] 969[18])
    defparam i1_2_lut_rep_430_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i6_4_lut_adj_592 (.A(di_reg[7]), .B(di_reg[4]), .C(di_reg[5]), 
            .D(di_reg[6]), .Z(n14_adj_1949)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(802[23:49])
    defparam i6_4_lut_adj_592.init = 16'hfffe;
    PFUMX i14534 (.BLUT(n1177[7]), .ALUT(n1196[7]), .C0(n34491), .Z(n18032));
    ORCALUT4 i2_3_lut_rep_448_4_lut (.A(Read_To_Reg_r[1]), .B(n37621), .C(Read_To_Reg_r[2]), 
            .D(n37835), .Z(n37551)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(962[11] 969[18])
    defparam i2_3_lut_rep_448_4_lut.init = 16'h0080;
    ORCALUT4 i274_3_lut_rep_479 (.A(stop), .B(n33787), .C(Save_ALU_r), 
            .Z(n37582)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[19:80])
    defparam i274_3_lut_rep_479.init = 16'h7373;
    ORCALUT4 i1_2_lut_adj_593 (.A(ID16[0]), .B(ID16[10]), .Z(n17)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i1_2_lut_adj_593.init = 16'heeee;
    ORCALUT4 i14_4_lut (.A(n27_adj_1950), .B(n23), .C(ID16[4]), .D(ID16[6]), 
            .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i14_4_lut.init = 16'hfffe;
    ORCALUT4 i11_4_lut (.A(ID16[15]), .B(ID16[7]), .C(ID16[14]), .D(ID16[12]), 
            .Z(n27_adj_1950)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i11_4_lut.init = 16'hfffe;
    ORCALUT4 i7_2_lut (.A(ID16[5]), .B(ID16[13]), .Z(n23)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i7_2_lut.init = 16'heeee;
    ORCALUT4 i10_4_lut (.A(ID16[9]), .B(ID16[3]), .C(ID16[2]), .D(ID16[1]), 
            .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i10_4_lut.init = 16'hfffe;
    ORCALUT4 i2_2_lut_adj_594 (.A(ID16[11]), .B(ID16[8]), .Z(n18_adj_1938)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i2_2_lut_adj_594.init = 16'heeee;
    ORCALUT4 i3_4_lut_adj_595 (.A(\tstate[2] ), .B(n6_adj_1951), .C(IncDec_16[0]), 
            .D(n37862), .Z(IncDecZ_N_974)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_595.init = 16'h0c08;
    PFUMX mux_1217_i1 (.BLUT(n1993[0]), .ALUT(n2036[0]), .C0(n35501), 
          .Z(n1900[0]));
    ORCALUT4 i2_2_lut_adj_596 (.A(IncDec_16[2]), .B(IncDec_16[1]), .Z(n6_adj_1951)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut_adj_596.init = 16'h2222;
    ORCALUT4 RegDIL_7__I_34_i6_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[5]), 
            .D(RegBusA_r[5]), .Z(RegDIL_7__N_456[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i6_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i1_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[0]), 
            .D(RegBusA_r[0]), .Z(RegDIL_7__N_456[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i1_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mcycles_2__I_0_i5_3_lut (.A(mc[5]), .B(\mc[6] ), .C(mcycles[0]), 
            .Z(n5_adj_1930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mcycles_2__I_0_i4_3_lut (.A(mc[3]), .B(mc[4]), .C(mcycles[0]), 
            .Z(n4_adj_1929)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIL_7__I_34_i4_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[3]), 
            .D(RegBusA_r[3]), .Z(RegDIL_7__N_456[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i4_3_lut_4_lut.init = 16'hfb40;
    PFUMX i34236 (.BLUT(n39485), .ALUT(n39482), .C0(n34569), .Z(Save_Mux[6]));
    PFUMX i34234 (.BLUT(n2830[6]), .ALUT(n39483), .C0(n37771), .Z(n39484));
    ORCALUT4 i18760_3_lut_4_lut_4_lut (.A(n37632), .B(n39857), .C(RegAddrA_r[0]), 
            .D(ts[4]), .Z(RegAddrA_2__N_734[0])) /* synthesis lut_function=(A (C)+!A !(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam i18760_3_lut_4_lut_4_lut.init = 16'hb1b0;
    ORCALUT4 mcycles_2__I_0_i2_3_lut (.A(Set_BusA_To_3__N_1198[2]), .B(mc[2]), 
            .C(mcycles[0]), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i18734_2_lut (.A(\ALU_Op_3__N_1269[3] ), .B(mcycles[0]), .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam i18734_2_lut.init = 16'h8888;
    ORCALUT4 RegAddrB_r_2__I_0_794_i3_3_lut_4_lut (.A(n37632), .B(ts[3]), 
            .C(Alternate), .D(RegAddrB_r[2]), .Z(RegAddrB[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegAddrB_r_2__I_0_794_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i3_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[2]), 
            .D(RegBusA_r[2]), .Z(RegDIL_7__N_456[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i3_3_lut_4_lut.init = 16'hfb40;
    PFUMX i34223 (.BLUT(n2831), .ALUT(n39454), .C0(n37771), .Z(n39455));
    PFUMX i34225 (.BLUT(n39456), .ALUT(n39453), .C0(n34569), .Z(Save_Mux[7]));
    ORCALUT4 RegDIL_7__I_34_i2_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[1]), 
            .D(RegBusA_r[1]), .Z(RegDIL_7__N_456[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i2_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i5_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[4]), 
            .D(RegBusA_r[4]), .Z(RegDIL_7__N_456[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i1_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[8]), 
            .D(RegBusA_r[8]), .Z(RegDIH_7__N_447[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i1_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i3_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[10]), 
            .D(RegBusA_r[10]), .Z(RegDIH_7__N_447[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i2_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[9]), 
            .D(RegBusA_r[9]), .Z(RegDIH_7__N_447[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i2_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_1225_i2_3_lut (.A(TmpAddr[1]), .B(n87[1]), .C(n2185), 
            .Z(n1956[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i2_4_lut_adj_597 (.A(n23097), .B(clk_op_enable_204), .C(n33463), 
            .D(Jump), .Z(n2195)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!B))) */ ;
    defparam i2_4_lut_adj_597.init = 16'h004c;
    ORCALUT4 i2_4_lut_adj_598 (.A(n37517), .B(n22386), .C(n37538), .D(Set_Addr_To[1]), 
            .Z(n33463)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_598.init = 16'hfefa;
    ORCALUT4 i32225_rep_10_2_lut (.A(n2195), .B(n2193), .Z(n35501)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i32225_rep_10_2_lut.init = 16'heeee;
    ORCALUT4 i1_4_lut_adj_599 (.A(clk_op_enable_204), .B(Jump), .C(n37537), 
            .D(n32394), .Z(n2193)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_599.init = 16'h8a88;
    ORCALUT4 RegDIL_7__I_34_i7_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[6]), 
            .D(RegBusA_r[6]), .Z(RegDIL_7__N_456[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i7_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i5_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[12]), 
            .D(RegBusA_r[12]), .Z(RegDIH_7__N_447[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_1225_i3_3_lut (.A(TmpAddr[2]), .B(n87[2]), .C(n2185), 
            .Z(n1956[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i3_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIH_7__I_33_i4_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[11]), 
            .D(RegBusA_r[11]), .Z(RegDIH_7__N_447[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i4_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_1225_i4_3_lut (.A(TmpAddr[3]), .B(n87[3]), .C(n2185), 
            .Z(n1956[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1225_i5_3_lut (.A(TmpAddr[4]), .B(n87[4]), .C(n2185), 
            .Z(n1956[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i5_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIH_7__I_33_i7_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[14]), 
            .D(RegBusA_r[14]), .Z(RegDIH_7__N_447[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i7_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_1225_i6_3_lut (.A(TmpAddr[5]), .B(n87[5]), .C(n2185), 
            .Z(n1956[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1225_i7_3_lut (.A(TmpAddr[6]), .B(n87[6]), .C(n2185), 
            .Z(n1956[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i7_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIH_7__I_33_i6_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[13]), 
            .D(RegBusA_r[13]), .Z(RegDIH_7__N_447[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i6_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 F_Out_7__I_159_4_lut_4_lut (.A(Arith16_r), .B(n15845), .C(Z16_r), 
            .D(F[6]), .Z(F_Out_7__N_1645)) /* synthesis lut_function=(A (D)+!A !(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_Out_7__I_159_4_lut_4_lut.init = 16'hbb01;
    ORCALUT4 mux_1225_i8_3_lut (.A(TmpAddr[7]), .B(n87[7]), .C(n2185), 
            .Z(n1956[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i8_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIL_7__I_34_i8_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[7]), 
            .D(RegBusA_r[7]), .Z(RegDIL_7__N_456[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIL_7__I_34_i8_3_lut_4_lut.init = 16'hfb40;
    PFUMX i14450 (.BLUT(n2311[5]), .ALUT(n17947), .C0(n34433), .Z(n17948));
    ORCALUT4 mux_1225_i9_3_lut (.A(di_reg[0]), .B(n87[8]), .C(n2185), 
            .Z(n1956[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i9_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1225_i10_3_lut (.A(di_reg[1]), .B(n87[9]), .C(n2185), 
            .Z(n1956[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i10_3_lut.init = 16'hcaca;
    PFUMX i14452 (.BLUT(n2311[3]), .ALUT(n17949), .C0(n34433), .Z(n17950));
    PFUMX i14454 (.BLUT(n2311[2]), .ALUT(n17951), .C0(n34433), .Z(n17952));
    ORCALUT4 mux_1225_i11_3_lut (.A(di_reg[2]), .B(n87[10]), .C(n2185), 
            .Z(n1956[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i11_3_lut.init = 16'hcaca;
    PFUMX i14456 (.BLUT(n2311[4]), .ALUT(n17953), .C0(n34433), .Z(n17954));
    ORCALUT4 mux_1225_i12_3_lut (.A(di_reg[3]), .B(n87[11]), .C(n2185), 
            .Z(n1956[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i12_3_lut.init = 16'hcaca;
    ORCALUT4 RegDIH_7__I_33_i8_3_lut_4_lut (.A(n37632), .B(ts[3]), .C(RegBusB[15]), 
            .D(RegBusA_r[15]), .Z(RegDIH_7__N_447[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[16:47])
    defparam RegDIH_7__I_33_i8_3_lut_4_lut.init = 16'hfb40;
    PFUMX i14458 (.BLUT(n2311[1]), .ALUT(n17955), .C0(n34433), .Z(n17956));
    PFUMX i14460 (.BLUT(n2311[6]), .ALUT(n17957), .C0(n34433), .Z(n17958));
    PFUMX i14462 (.BLUT(n2311[0]), .ALUT(n17959), .C0(n34433), .Z(n17960));
    PFUMX i309 (.BLUT(n1145), .ALUT(n1172), .C0(n34744), .Z(n1228)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i31186_2_lut_3_lut (.A(n1165), .B(n37582), .C(BTR_r_N_965), 
            .Z(n34738)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(798[15] 812[20])
    defparam i31186_2_lut_3_lut.init = 16'h0404;
    PFUMX i14464 (.BLUT(n2311[7]), .ALUT(n17961), .C0(n34433), .Z(n17962));
    ORCALUT4 mux_1225_i13_3_lut (.A(di_reg[4]), .B(n87[12]), .C(n2185), 
            .Z(n1956[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1225_i14_3_lut (.A(di_reg[5]), .B(n87[13]), .C(n2185), 
            .Z(n1956[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i14_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1225_i15_3_lut (.A(di_reg[6]), .B(n87[14]), .C(n2185), 
            .Z(n1956[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1225_i16_3_lut (.A(di_reg[7]), .B(n87[15]), .C(n2185), 
            .Z(n1956[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam mux_1225_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i8_4_lut (.A(SP16[7]), .B(RegBusC[7]), .C(n37622), 
            .D(n933), .Z(n855[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i8_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i16_4_lut (.A(SP16[15]), .B(RegBusC[15]), .C(n37622), 
            .D(n933), .Z(n855[15])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i16_4_lut.init = 16'hcac0;
    PFUMX i29 (.BLUT(n4_adj_1935), .ALUT(n16), .C0(n37582), .Z(n14_adj_1954));
    ORCALUT4 i11844_3_lut (.A(TmpAddr[0]), .B(n87[0]), .C(n2185), .Z(n2013[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i11844_3_lut.init = 16'hcaca;
    ORCALUT4 i32172_3_lut_4_lut (.A(n1165), .B(n37548), .C(n14_adj_1954), 
            .D(n37533), .Z(clk_op_enable_119)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i32172_3_lut_4_lut.init = 16'hffef;
    PFUMX mux_1592_i7 (.BLUT(n2582[6]), .ALUT(n2599[6]), .C0(n35505), 
          .Z(n2619[6]));
    ORCALUT4 i2_4_lut_adj_600 (.A(Set_Addr_To[1]), .B(n37513), .C(n37516), 
            .D(n33979), .Z(n2183)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_600.init = 16'h8880;
    ORCALUT4 i3_4_lut_adj_601 (.A(n37517), .B(n37863), .C(XY_Ind), .D(n7_adj_1955), 
            .Z(n33979)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(183[18:29])
    defparam i3_4_lut_adj_601.init = 16'h0400;
    PFUMX mux_1592_i15 (.BLUT(n2582[14]), .ALUT(n2599[14]), .C0(n35505), 
          .Z(n2619[14]));
    ORCALUT4 mux_276_i3_4_lut (.A(n13_adj_1956), .B(IncDecZ), .C(BTR_r_N_965), 
            .D(n14_adj_1957), .Z(n1154[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[15] 796[20])
    defparam mux_276_i3_4_lut.init = 16'hcac5;
    ORCALUT4 i5_4_lut_adj_602 (.A(di_reg[0]), .B(di_reg[1]), .C(di_reg[3]), 
            .D(di_reg[2]), .Z(n13_adj_1956)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(811[34:48])
    defparam i5_4_lut_adj_602.init = 16'h6996;
    ORCALUT4 i6_4_lut_adj_603 (.A(di_reg[7]), .B(di_reg[4]), .C(di_reg[5]), 
            .D(di_reg[6]), .Z(n14_adj_1957)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(811[34:48])
    defparam i6_4_lut_adj_603.init = 16'h6996;
    ORCALUT4 i6975_3_lut (.A(I[7]), .B(Fp[7]), .C(n15889), .Z(n1142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i6975_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_adj_604 (.A(ALU_Op_r[1]), .B(ALU_Op_r[3]), .Z(n4_adj_1933)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_604.init = 16'h8888;
    ORCALUT4 mux_201_i7_4_lut (.A(SP16[6]), .B(RegBusC[6]), .C(n37622), 
            .D(n933), .Z(n855[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i7_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i15_4_lut (.A(SP16[14]), .B(RegBusC[14]), .C(n37622), 
            .D(n933), .Z(n855[14])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i15_4_lut.init = 16'hcac0;
    ORCALUT4 i29491_4_lut (.A(F[0]), .B(n15_adj_1958), .C(n23093), .D(n37859), 
            .Z(n32965)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B (C)+!B (C (D))))) */ ;
    defparam i29491_4_lut.init = 16'h5a48;
    ORCALUT4 mux_201_i6_4_lut (.A(SP16[5]), .B(RegBusC[5]), .C(n37622), 
            .D(n933), .Z(n855[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i6_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i14_4_lut (.A(SP16[13]), .B(RegBusC[13]), .C(n37622), 
            .D(n933), .Z(n855[13])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i14_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i5_4_lut (.A(SP16[4]), .B(RegBusC[4]), .C(n37622), 
            .D(n933), .Z(n855[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i5_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i13_4_lut (.A(SP16[12]), .B(RegBusC[12]), .C(n37622), 
            .D(n933), .Z(n855[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i13_4_lut.init = 16'hcac0;
    ORCALUT4 i32219_3_lut (.A(Set_BusA_To[3]), .B(Set_BusA_To[2]), .C(Set_BusA_To[1]), 
            .Z(n34711)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i32219_3_lut.init = 16'heaea;
    ORCALUT4 mux_201_i4_4_lut (.A(SP16[3]), .B(RegBusC[3]), .C(n37622), 
            .D(n933), .Z(n855[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i4_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i12_4_lut (.A(SP16[11]), .B(RegBusC[11]), .C(n37622), 
            .D(n933), .Z(n855[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i12_4_lut.init = 16'hcac0;
    PFUMX i14536 (.BLUT(n1177[6]), .ALUT(n1196[6]), .C0(n34491), .Z(n18034));
    ORCALUT4 i14132_2_lut_4_lut (.A(n37632), .B(ts[4]), .C(n39857), .D(RegAddrA_2__N_737), 
            .Z(n17627)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(941[12] 944[31])
    defparam i14132_2_lut_4_lut.init = 16'h0054;
    FD1P3DX XY_State__i0 (.D(n23008), .SP(clk_op_enable_308), .CK(clk_op), 
            .CD(n39882), .Q(XY_State[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_State__i0.GSR = "ENABLED";
    PFUMX i6972 (.BLUT(n17_adj_1959), .ALUT(F_Out[0]), .C0(n34416), .Z(n1154[0]));
    ORCALUT4 mux_403_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1684), 
            .Z(RegAddrC_2__N_731[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(905[11] 908[16])
    defparam mux_403_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_391_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1669), 
            .Z(RegAddrB_r_2__N_728[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(893[11] 896[16])
    defparam mux_391_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i14568_3_lut (.A(n938[6]), .B(di_reg[6]), .C(n10995), .Z(n18066)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14568_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i7_4_lut (.A(SP16[6]), .B(bus_din[6]), .C(n37754), 
            .D(n37827), .Z(n938[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i7_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i2_4_lut (.A(SP16[1]), .B(RegBusC[1]), .C(n37622), 
            .D(n933), .Z(n855[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i2_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i3_4_lut (.A(SP16[2]), .B(RegBusC[2]), .C(n37622), 
            .D(n933), .Z(n855[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i3_4_lut.init = 16'hcac0;
    ORCALUT4 i14578_3_lut (.A(n938[1]), .B(di_reg[1]), .C(n10995), .Z(n18076)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14578_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i2_4_lut (.A(SP16[1]), .B(bus_din[1]), .C(n37754), 
            .D(n37827), .Z(n938[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i2_4_lut.init = 16'hcac0;
    ORCALUT4 mux_201_i10_4_lut (.A(SP16[9]), .B(RegBusC[9]), .C(n37622), 
            .D(n933), .Z(n855[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i10_4_lut.init = 16'hcac0;
    ORCALUT4 i18754_2_lut (.A(ts[6]), .B(last_tstate), .Z(n17978)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i18754_2_lut.init = 16'h2222;
    ORCALUT4 mux_201_i11_4_lut (.A(SP16[10]), .B(RegBusC[10]), .C(n37622), 
            .D(n933), .Z(n855[10])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i11_4_lut.init = 16'hcac0;
    ORCALUT4 i14576_3_lut (.A(n938[2]), .B(di_reg[2]), .C(n10995), .Z(n18074)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14576_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i3_4_lut (.A(SP16[2]), .B(bus_din[2]), .C(n37754), 
            .D(n37827), .Z(n938[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i3_4_lut.init = 16'hcac0;
    PFUMX mux_1592_i6 (.BLUT(n2582[5]), .ALUT(n2599[5]), .C0(n35505), 
          .Z(n2619[5]));
    PFUMX mux_1592_i14 (.BLUT(n2582[13]), .ALUT(n2599[13]), .C0(n35505), 
          .Z(n2619[13]));
    ORCALUT4 i2_3_lut_4_lut_adj_605 (.A(clk_op_enable_204), .B(n37529), 
            .C(Set_Addr_To[1]), .D(n37517), .Z(n2189)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_605.init = 16'h0200;
    PFUMX i14538 (.BLUT(n1177[5]), .ALUT(n1196[5]), .C0(n34491), .Z(n18036));
    ORCALUT4 mux_201_i9_4_lut (.A(SP16[8]), .B(RegBusC[8]), .C(n37622), 
            .D(n933), .Z(n855[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i9_4_lut.init = 16'hcac0;
    CCU2B add_868_add_4_17 (.A0(TmpAddr[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29830), .S0(n87[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_17.INIT0 = 16'haaaa;
    defparam add_868_add_4_17.INIT1 = 16'h0000;
    defparam add_868_add_4_17.INJECT1_0 = "NO";
    defparam add_868_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 mux_1529_i2_4_lut (.A(SP[9]), .B(PC[9]), .C(n2542), .D(Set_BusB_To[1]), 
            .Z(n2468[1])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1529_i2_4_lut.init = 16'h00ca;
    ORCALUT4 i1_4_lut_adj_606 (.A(clk_op_enable_204), .B(n56), .C(n53), 
            .D(ISet[1]), .Z(n30986)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_606.init = 16'ha088;
    ORCALUT4 i1_4_lut_adj_607 (.A(n22510), .B(IR[5]), .C(n39842), .D(n34037), 
            .Z(n53)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_607.init = 16'hdc50;
    CCU2B add_868_add_4_15 (.A0(TmpAddr[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n29829), .COUT(n29830), .S0(n87[13]), .S1(n87[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_15.INIT0 = 16'haaaa;
    defparam add_868_add_4_15.INIT1 = 16'haaaa;
    defparam add_868_add_4_15.INJECT1_0 = "NO";
    defparam add_868_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 i3_4_lut_adj_608 (.A(n22510), .B(n33268), .C(n26_adj_1960), 
            .D(n33013), .Z(n34037)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i3_4_lut_adj_608.init = 16'hf7ff;
    ORCALUT4 mux_1529_i3_4_lut (.A(SP[10]), .B(PC[10]), .C(n2542), .D(Set_BusB_To[1]), 
            .Z(n2468[2])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1529_i3_4_lut.init = 16'h00ca;
    CCU2B add_868_add_4_13 (.A0(TmpAddr[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n29828), .COUT(n29829), .S0(n87[11]), .S1(n87[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_13.INIT0 = 16'haaaa;
    defparam add_868_add_4_13.INIT1 = 16'haaaa;
    defparam add_868_add_4_13.INJECT1_0 = "NO";
    defparam add_868_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 mux_1529_i4_4_lut (.A(SP[11]), .B(PC[11]), .C(n2542), .D(Set_BusB_To[1]), 
            .Z(n2468[3])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1529_i4_4_lut.init = 16'h00ca;
    ORCALUT4 mux_1529_i5_4_lut (.A(SP[12]), .B(PC[12]), .C(n2542), .D(Set_BusB_To[1]), 
            .Z(n2468[4])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1529_i5_4_lut.init = 16'h00ca;
    ORCALUT4 mux_1529_i6_4_lut (.A(SP[13]), .B(PC[13]), .C(n2542), .D(Set_BusB_To[1]), 
            .Z(n2468[5])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1529_i6_4_lut.init = 16'h00ca;
    ORCALUT4 mux_1529_i7_4_lut (.A(SP[14]), .B(PC[14]), .C(n2542), .D(Set_BusB_To[1]), 
            .Z(n2468[6])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1529_i7_4_lut.init = 16'h00ca;
    ORCALUT4 i32301_2_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(ts[3]), .C(n37826), 
            .D(n10995), .Z(n34498)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i32301_2_lut_4_lut.init = 16'hffa8;
    PFUMX i30820 (.BLUT(n4_adj_1916), .ALUT(n5_adj_1917), .C0(tstates[1]), 
          .Z(n34372));
    ORCALUT4 mux_1529_i8_4_lut (.A(SP[15]), .B(PC[15]), .C(n2542), .D(Set_BusB_To[1]), 
            .Z(n2468[7])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1529_i8_4_lut.init = 16'h00ca;
    ORCALUT4 i7045_2_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(n39857), .C(n37826), 
            .D(last_tstate), .Z(clk_op_enable_204)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i7045_2_lut_4_lut.init = 16'h5700;
    PFUMX i30819 (.BLUT(n31176), .ALUT(n31172), .C0(tstates[1]), .Z(n34371));
    ORCALUT4 Q_7__N_1607_5__bdd_3_lut_33251_4_lut (.A(ALU_Op_r[2]), .B(n37828), 
            .C(BusB[5]), .D(Q_7__N_1607[5]), .Z(n37333)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Q_7__N_1607_5__bdd_3_lut_33251_4_lut.init = 16'hf780;
    PFUMX Save_Mux_7__I_0_i6 (.BLUT(ALU_Q[5]), .ALUT(Save_Mux_7__N_523[5]), 
          .C0(n34569), .Z(Save_Mux[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_1592_i5 (.BLUT(n2582[4]), .ALUT(n2599[4]), .C0(n35505), 
          .Z(n2619[4]));
    PFUMX mux_1592_i13 (.BLUT(n2582[12]), .ALUT(n2599[12]), .C0(n35505), 
          .Z(n2619[12]));
    PFUMX i14540 (.BLUT(n1177[4]), .ALUT(n1196[4]), .C0(n34491), .Z(n18038));
    ORCALUT4 i2_3_lut_4_lut_adj_609 (.A(n37863), .B(XY_Ind), .C(Set_BusA_To[2]), 
            .D(Set_BusA_To[1]), .Z(n1660)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:46])
    defparam i2_3_lut_4_lut_adj_609.init = 16'h0020;
    ORCALUT4 i2_3_lut_4_lut_adj_610 (.A(n37863), .B(XY_Ind), .C(Set_BusB_To[2]), 
            .D(Set_BusB_To[1]), .Z(n1669)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(358[11:46])
    defparam i2_3_lut_4_lut_adj_610.init = 16'h0020;
    PFUMX mux_1647_i2 (.BLUT(n34368), .ALUT(n34370), .C0(n34711), .Z(BusA_7__N_764[1]));
    ORCALUT4 i14566_3_lut (.A(n938[7]), .B(di_reg[7]), .C(n10995), .Z(n18064)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14566_3_lut.init = 16'hcaca;
    PFUMX mux_1647_i3 (.BLUT(n34362), .ALUT(n34364), .C0(n34711), .Z(BusA_7__N_764[2]));
    ORCALUT4 mux_212_i8_4_lut (.A(SP16[7]), .B(bus_din[7]), .C(n37754), 
            .D(n37827), .Z(n938[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i8_4_lut.init = 16'hcac0;
    PFUMX mux_1647_i4 (.BLUT(n34359), .ALUT(n34361), .C0(n34711), .Z(BusA_7__N_764[3]));
    ORCALUT4 i2_2_lut_rep_472_3_lut_4_lut (.A(n37830), .B(Read_To_Reg_r[1]), 
            .C(Read_To_Reg_r[4]), .D(RegWEH_N_867), .Z(n35505)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_2_lut_rep_472_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 mux_1529_i1_4_lut (.A(SP[8]), .B(PC[8]), .C(n2542), .D(Set_BusB_To[1]), 
            .Z(n2468[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (B (C (D)+!C !(D))+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_1529_i1_4_lut.init = 16'h0fca;
    ORCALUT4 mux_201_i1_4_lut (.A(SP16[0]), .B(RegBusC[0]), .C(n37622), 
            .D(n933), .Z(n855[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i1_4_lut.init = 16'hcac0;
    PFUMX mux_1647_i5 (.BLUT(n34383), .ALUT(n34385), .C0(n34711), .Z(BusA_7__N_764[4]));
    PFUMX mux_1647_i6 (.BLUT(n34380), .ALUT(n34382), .C0(n34711), .Z(BusA_7__N_764[5]));
    PFUMX mux_1647_i7 (.BLUT(n34377), .ALUT(n34379), .C0(n34711), .Z(BusA_7__N_764[6]));
    PFUMX mux_1647_i8 (.BLUT(n34374), .ALUT(n34376), .C0(n34711), .Z(BusA_7__N_764[7]));
    PFUMX mux_1647_i1 (.BLUT(n34365), .ALUT(n34367), .C0(n34711), .Z(BusA_7__N_764[0]));
    ORCALUT4 mux_1659_i8_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n37836), .C(n6_adj_1961), 
            .D(n2775[7]), .Z(Q_7__N_1607[7])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1659_i8_3_lut_4_lut.init = 16'h7f08;
    PFUMX mux_1592_i4 (.BLUT(n2582[3]), .ALUT(n2599[3]), .C0(n35505), 
          .Z(n2619[3]));
    ORCALUT4 mux_1659_i3_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n37836), .C(n6_adj_1962), 
            .D(n2775[2]), .Z(Q_7__N_1607[2])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1659_i3_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 mux_1659_i2_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n37836), .C(n6_adj_1963), 
            .D(n2775[1]), .Z(Q_7__N_1607[1])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1659_i2_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 i14549_4_lut (.A(n10904), .B(n37754), .C(n32557), .D(n37827), 
            .Z(clk_op_enable_46)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14549_4_lut.init = 16'hbbba;
    ORCALUT4 mux_1659_i6_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n37836), .C(n6_adj_1964), 
            .D(n2775[5]), .Z(Q_7__N_1607[5])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1659_i6_3_lut_4_lut.init = 16'h7f08;
    PFUMX mux_1592_i12 (.BLUT(n2582[11]), .ALUT(n2599[11]), .C0(n35505), 
          .Z(n2619[11]));
    ORCALUT4 mux_1659_i4_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n37836), .C(n6_adj_1965), 
            .D(n2775[3]), .Z(\Q_7__N_1607[3] )) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1659_i4_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 mux_1659_i7_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n37836), .C(n6_adj_1966), 
            .D(n2775[6]), .Z(Q_7__N_1607[6])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1659_i7_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 i14564_4_lut (.A(SP16[8]), .B(di_reg[0]), .C(n10904), .D(n37827), 
            .Z(n18062)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14564_4_lut.init = 16'hcac0;
    PFUMX i14542 (.BLUT(n1177[3]), .ALUT(n1196[3]), .C0(n34491), .Z(n18040));
    ORCALUT4 mux_1659_i5_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n37836), .C(n6_adj_1967), 
            .D(n2775[4]), .Z(Q_7__N_1607[4])) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1659_i5_3_lut_4_lut.init = 16'h7f08;
    ORCALUT4 i17_4_lut (.A(ISet[0]), .B(n37539), .C(ISet[1]), .D(n33981), 
            .Z(n6_adj_1968)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i17_4_lut.init = 16'hc0c5;
    ORCALUT4 ALU_Q_7__I_0_i1_3_lut (.A(n36034), .B(BusB[0]), .C(ExchangeRp), 
            .Z(Save_Mux_7__N_523[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i20030_4_lut (.A(n37859), .B(n37685), .C(n37555), .D(n23316), 
            .Z(clk_op_enable_308)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i20030_4_lut.init = 16'hc8cc;
    ORCALUT4 i1_4_lut_adj_611 (.A(n37859), .B(n37588), .C(n23316), .D(n37707), 
            .Z(n6_adj_1936)) /* synthesis lut_function=(A+(B ((D)+!C))) */ ;
    defparam i1_4_lut_adj_611.init = 16'heeae;
    ORCALUT4 i14560_4_lut (.A(SP16[9]), .B(di_reg[1]), .C(n10904), .D(n37827), 
            .Z(n18058)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14560_4_lut.init = 16'hcac0;
    ORCALUT4 i14558_4_lut (.A(SP16[10]), .B(di_reg[2]), .C(n10904), .D(n37827), 
            .Z(n18056)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14558_4_lut.init = 16'hcac0;
    ORCALUT4 i14556_4_lut (.A(SP16[11]), .B(di_reg[3]), .C(n10904), .D(n37827), 
            .Z(n18054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14556_4_lut.init = 16'hcac0;
    ORCALUT4 i14554_4_lut (.A(SP16[12]), .B(di_reg[4]), .C(n10904), .D(n37827), 
            .Z(n18052)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14554_4_lut.init = 16'hcac0;
    ORCALUT4 i14552_4_lut (.A(SP16[13]), .B(di_reg[5]), .C(n10904), .D(n37827), 
            .Z(n18050)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14552_4_lut.init = 16'hcac0;
    PFUMX i32383 (.BLUT(n2830[2]), .ALUT(n35923), .C0(n37771), .Z(n35924));
    ORCALUT4 i14550_4_lut (.A(SP16[14]), .B(di_reg[6]), .C(n10904), .D(n37827), 
            .Z(n18048)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14550_4_lut.init = 16'hcac0;
    ORCALUT4 i14548_4_lut (.A(SP16[15]), .B(di_reg[7]), .C(n10904), .D(n37827), 
            .Z(n18046)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14548_4_lut.init = 16'hcac0;
    ORCALUT4 i1_4_lut_adj_612 (.A(n1_adj_1969), .B(n32637), .C(Pre_XY_F_M[0]), 
            .D(n37733), .Z(n32638)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_4_lut_adj_612.init = 16'h0c88;
    ORCALUT4 i19483_2_lut (.A(mc[3]), .B(n32363), .Z(n1_adj_1969)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(293[7] 302[14])
    defparam i19483_2_lut.init = 16'h2222;
    ORCALUT4 i3_4_lut_adj_613 (.A(last_mcycle), .B(No_BTR), .C(n37801), 
            .D(m1_n_N_803), .Z(n32363)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1291[36] 1293[84])
    defparam i3_4_lut_adj_613.init = 16'hfffe;
    ORCALUT4 i2_3_lut_adj_614 (.A(Set_BusA_To_3__N_1198[2]), .B(IncDecZ), 
            .C(stop), .Z(m1_n_N_803)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1293[36:84])
    defparam i2_3_lut_adj_614.init = 16'h8080;
    ORCALUT4 i1_4_lut_adj_615 (.A(n1_adj_1970), .B(n32637), .C(Pre_XY_F_M[0]), 
            .D(n37733), .Z(n32639)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_4_lut_adj_615.init = 16'hc088;
    ORCALUT4 i19484_2_lut (.A(mc[2]), .B(n32363), .Z(n1_adj_1970)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(293[7] 302[14])
    defparam i19484_2_lut.init = 16'h2222;
    ORCALUT4 i1_4_lut_adj_616 (.A(n1_adj_1971), .B(n32631), .C(Pre_XY_F_M[0]), 
            .D(n2823), .Z(n32633)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_4_lut_adj_616.init = 16'h0c88;
    ORCALUT4 i19485_2_lut (.A(Set_BusA_To_3__N_1198[2]), .B(n32363), .Z(n1_adj_1971)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(293[7] 302[14])
    defparam i19485_2_lut.init = 16'h2222;
    ORCALUT4 i1_4_lut_adj_617 (.A(n1_adj_1972), .B(n32631), .C(Pre_XY_F_M[0]), 
            .D(n2823), .Z(n32632)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_4_lut_adj_617.init = 16'hc088;
    ORCALUT4 i19486_2_lut (.A(\ALU_Op_3__N_1269[3] ), .B(n32363), .Z(n1_adj_1972)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(293[7] 302[14])
    defparam i19486_2_lut.init = 16'h2222;
    CCU2B add_868_add_4_11 (.A0(TmpAddr[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n29827), .COUT(n29828), .S0(n87[9]), .S1(n87[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_11.INIT0 = 16'haaaa;
    defparam add_868_add_4_11.INIT1 = 16'haaaa;
    defparam add_868_add_4_11.INJECT1_0 = "NO";
    defparam add_868_add_4_11.INJECT1_1 = "NO";
    PFUMX mux_1592_i2 (.BLUT(n2582[1]), .ALUT(n2599[1]), .C0(n35505), 
          .Z(n2619[1]));
    PFUMX mux_1592_i3 (.BLUT(n2582[2]), .ALUT(n2599[2]), .C0(n35505), 
          .Z(n2619[2]));
    FD1P3DX TmpAddr_i1 (.D(n18076), .SP(clk_op_enable_320), .CK(clk_op), 
            .CD(n39879), .Q(TmpAddr[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i1.GSR = "ENABLED";
    PFUMX mux_1592_i10 (.BLUT(n2582[9]), .ALUT(n2599[9]), .C0(n35505), 
          .Z(n2619[9]));
    FD1P3BX tstate_i0_i0 (.D(n17978), .SP(clk_op_enable_325), .CK(clk_op), 
            .PD(n39882), .Q(ts[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i0.GSR = "ENABLED";
    PFUMX mux_1592_i11 (.BLUT(n2582[10]), .ALUT(n2599[10]), .C0(n35505), 
          .Z(n2619[10]));
    L6MUX21 mux_1515_i2 (.D0(n2456[1]), .D1(n2495[1]), .SD(n34653), .Z(BusB_7__N_756[1]));
    FD1P3DX TmpAddr_i2 (.D(n18074), .SP(clk_op_enable_320), .CK(clk_op), 
            .CD(n39879), .Q(TmpAddr[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i2.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_4_lut_adj_618 (.A(n37856), .B(n39854), .C(n39845), 
            .D(n37777), .Z(n33871)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i2_3_lut_4_lut_adj_618.init = 16'hfff8;
    L6MUX21 mux_1515_i3 (.D0(n2456[2]), .D1(n2495[2]), .SD(n34653), .Z(BusB_7__N_756[2]));
    L6MUX21 mux_1515_i4 (.D0(n2456[3]), .D1(n2495[3]), .SD(n34653), .Z(BusB_7__N_756[3]));
    L6MUX21 mux_1515_i5 (.D0(n2456[4]), .D1(n2495[4]), .SD(n34653), .Z(BusB_7__N_756[4]));
    L6MUX21 mux_1515_i6 (.D0(n2456[5]), .D1(n2495[5]), .SD(n34653), .Z(BusB_7__N_756[5]));
    L6MUX21 mux_1515_i7 (.D0(n2456[6]), .D1(n2495[6]), .SD(n34653), .Z(BusB_7__N_756[6]));
    L6MUX21 mux_1515_i8 (.D0(n2456[7]), .D1(n2495[7]), .SD(n34653), .Z(BusB_7__N_756[7]));
    ORCALUT4 i1_2_lut_adj_619 (.A(last_tstate), .B(ts[0]), .Z(n18025)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_619.init = 16'heeee;
    ORCALUT4 mux_293_i1_3_lut (.A(BusB[4]), .B(Save_Mux[0]), .C(n37551), 
            .Z(n1187[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(823[19] 827[24])
    defparam mux_293_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i30832_3_lut (.A(di_reg[4]), .B(ACC[4]), .C(Set_BusA_To[0]), 
            .Z(n34384)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i30832_3_lut.init = 16'hcaca;
    FD1P3DX IR_i0_i0_rep_799 (.D(n963), .SP(clk_op_enable_324), .CK(clk_op), 
            .CD(rst_s), .Q(n39873)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i0_rep_799.GSR = "ENABLED";
    L6MUX21 mux_1515_i1 (.D0(n2456[0]), .D1(n2495[0]), .SD(n34653), .Z(BusB_7__N_756[0]));
    FD1P3DX IR_i0_i7_rep_797 (.D(n970), .SP(clk_op_enable_324), .CK(clk_op), 
            .CD(rst_s), .Q(n39871)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i7_rep_797.GSR = "ENABLED";
    ORCALUT4 i31899_3_lut (.A(n34384), .B(n2742[4]), .C(Set_BusA_To[3]), 
            .Z(n34385)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i31899_3_lut.init = 16'hcaca;
    FD1P3DX IR_i0_i6_rep_795 (.D(n969), .SP(clk_op_enable_324), .CK(clk_op), 
            .CD(n39877), .Q(n39869)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i6_rep_795.GSR = "ENABLED";
    FD1P3DX IR_i0_i5_rep_793 (.D(n968), .SP(clk_op_enable_324), .CK(clk_op), 
            .CD(n39877), .Q(n39867)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i5_rep_793.GSR = "ENABLED";
    ORCALUT4 mux_385_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1660), 
            .Z(RegAddrA_r_2__N_725[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(886[11] 889[16])
    defparam mux_385_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_573_3_lut_4_lut (.A(n37813), .B(n37803), .C(n37792), 
            .D(n37806), .Z(n37676)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_573_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i2_3_lut_adj_620 (.A(Auto_Wait_t2), .B(n17_adj_1973), .C(last_tstate), 
            .Z(n34061)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_620.init = 16'h0404;
    ORCALUT4 i1_4_lut_adj_621 (.A(n22513), .B(Read_To_Reg_r[0]), .C(n32720), 
            .D(n35505), .Z(clk_op_enable_73)) /* synthesis lut_function=(A+(B (C)+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_621.init = 16'heafa;
    ORCALUT4 i4_4_lut (.A(ISet[1]), .B(mc[2]), .C(n32891), .D(n47), 
            .Z(n10_adj_1974)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i4_4_lut.init = 16'h8000;
    ORCALUT4 i3_4_lut_adj_622 (.A(n37562), .B(n26_adj_1960), .C(n33013), 
            .D(n37563), .Z(n33980)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i3_4_lut_adj_622.init = 16'h2000;
    PFUMX i32385 (.BLUT(n35925), .ALUT(Save_Mux_7__N_523[2]), .C0(n34569), 
          .Z(Save_Mux[2]));
    ORCALUT4 i3_4_lut_adj_623 (.A(n28_adj_1975), .B(n6_adj_1976), .C(IR[6]), 
            .D(n33), .Z(n47)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i3_4_lut_adj_623.init = 16'hfeee;
    ORCALUT4 i2_4_lut_adj_624 (.A(Set_BusA_To_3__N_1202[0]), .B(n22510), 
            .C(n33743), .D(n39842), .Z(n6_adj_1976)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_4_lut_adj_624.init = 16'hb3a2;
    ORCALUT4 i1_2_lut_rep_518 (.A(RegWEH_N_867), .B(Read_To_Reg_r[4]), .Z(n37621)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_518.init = 16'h8888;
    PFUMX i33568 (.BLUT(n38435), .ALUT(n38434), .C0(ISet[0]), .Z(n38436));
    ORCALUT4 i18755_2_lut (.A(Auto_Wait_t1), .B(last_tstate), .Z(n8409)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i18755_2_lut.init = 16'h2222;
    PFUMX i33566 (.BLUT(n38431), .ALUT(n38430), .C0(IR[6]), .Z(n38432));
    ORCALUT4 i32330_3_lut_4_lut (.A(Set_BusB_To[2]), .B(Set_BusB_To[1]), 
            .C(Set_BusB_To[0]), .D(Set_BusB_To[3]), .Z(n33726)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i32330_3_lut_4_lut.init = 16'h0007;
    ORCALUT4 i19509_2_lut_rep_446_3_lut_4_lut (.A(RegWEH_N_867), .B(Read_To_Reg_r[4]), 
            .C(Read_To_Reg_r[0]), .D(n37759), .Z(n37549)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i19509_2_lut_rep_446_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i1_2_lut_rep_443_3_lut_4_lut (.A(RegWEH_N_867), .B(Read_To_Reg_r[4]), 
            .C(Read_To_Reg_r[0]), .D(Read_To_Reg_r[1]), .Z(n37546)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_443_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i18895_2_lut (.A(tstate[1]), .B(last_tstate), .Z(n18023)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i18895_2_lut.init = 16'h2222;
    CCU2B add_868_add_4_9 (.A0(TmpAddr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n29826), .COUT(n29827), .S0(n87[7]), .S1(n87[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_868_add_4_9.INIT0 = 16'haaaa;
    defparam add_868_add_4_9.INIT1 = 16'haaaa;
    defparam add_868_add_4_9.INJECT1_0 = "NO";
    defparam add_868_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_4_lut_adj_625 (.A(RegWEH_N_867), .B(Read_To_Reg_r[4]), 
            .C(Read_To_Reg_r[1]), .D(Read_To_Reg_r[2]), .Z(n32709)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_625.init = 16'h0888;
    ORCALUT4 i1_4_lut_adj_626 (.A(n22513), .B(n37830), .C(n37549), .D(n37623), 
            .Z(clk_op_enable_81)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_626.init = 16'haaae;
    ORCALUT4 i1_2_lut_rep_478_3_lut (.A(RegWEH_N_867), .B(Read_To_Reg_r[4]), 
            .C(Read_To_Reg_r[1]), .Z(n37581)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_478_3_lut.init = 16'h8080;
    FD1P3DX TmpAddr_i3 (.D(n18072), .SP(clk_op_enable_320), .CK(clk_op), 
            .CD(n39882), .Q(TmpAddr[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i3.GSR = "ENABLED";
    ORCALUT4 mux_740_i5_4_lut (.A(n37512), .B(Save_Mux[4]), .C(n37533), 
            .D(n37273), .Z(F_7__N_669[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam mux_740_i5_4_lut.init = 16'hc5c0;
    PFUMX mux_1592_i9 (.BLUT(n2582[8]), .ALUT(n2599[8]), .C0(n35505), 
          .Z(n2619[8]));
    PFUMX i33560 (.BLUT(n38426), .ALUT(n38425), .C0(IR[6]), .Z(n38427));
    PFUMX mux_1540_i2 (.BLUT(n2435[1]), .ALUT(n2482[1]), .C0(n34655), 
          .Z(n2495[1]));
    PFUMX mux_1540_i3 (.BLUT(n2435[2]), .ALUT(n2482[2]), .C0(n34655), 
          .Z(n2495[2]));
    PFUMX mux_1540_i4 (.BLUT(n2435[3]), .ALUT(n2482[3]), .C0(n34655), 
          .Z(n2495[3]));
    PFUMX mux_1540_i5 (.BLUT(n2435[4]), .ALUT(n2482[4]), .C0(n34655), 
          .Z(n2495[4]));
    PFUMX mux_1540_i6 (.BLUT(n2435[5]), .ALUT(n2482[5]), .C0(n34655), 
          .Z(n2495[5]));
    PFUMX mux_1540_i7 (.BLUT(n2435[6]), .ALUT(n2482[6]), .C0(n34655), 
          .Z(n2495[6]));
    PFUMX mux_1540_i8 (.BLUT(n2435[7]), .ALUT(n2482[7]), .C0(n34655), 
          .Z(n2495[7]));
    L6MUX21 i30821 (.D0(n34371), .D1(n34372), .SD(tstates[2]), .Z(last_tstate));
    PFUMX mux_1540_i1 (.BLUT(n2435[0]), .ALUT(n2482[0]), .C0(n34655), 
          .Z(n2495[0]));
    PFUMX mux_1592_i1 (.BLUT(n2582[0]), .ALUT(n2599[0]), .C0(n35505), 
          .Z(n2619[0]));
    PFUMX i33208 (.BLUT(n37396), .ALUT(Save_Mux[3]), .C0(n37533), .Z(F_7__N_669[3]));
    PFUMX mux_1525_i2 (.BLUT(n2408[1]), .ALUT(n2417[1]), .C0(n2536), .Z(n2456[1]));
    PFUMX mux_1525_i3 (.BLUT(n2408[2]), .ALUT(n2417[2]), .C0(n2536), .Z(n2456[2]));
    PFUMX mux_1525_i4 (.BLUT(n2408[3]), .ALUT(n2417[3]), .C0(n2536), .Z(n2456[3]));
    ORCALUT4 n37159_bdd_3_lut (.A(n37159), .B(di_reg[7]), .C(n1165), .Z(n37160)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37159_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i9459_4_lut_4_lut (.A(Arith16_r), .B(ALU_Op_r[3]), .C(n12430), 
            .D(Q_7__N_1607[7]), .Z(n12431)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i9459_4_lut_4_lut.init = 16'hd1c0;
    ORCALUT4 i9469_4_lut_4_lut (.A(Arith16_r), .B(n4), .C(n37751), .D(n9458), 
            .Z(n12441)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i9469_4_lut_4_lut.init = 16'hf404;
    PFUMX i33206 (.BLUT(n37394), .ALUT(F_Out[3]), .C0(n37582), .Z(n37395));
    ORCALUT4 n1142_bdd_3_lut_33406 (.A(n1142), .B(n37158), .C(n37582), 
            .Z(n37159)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1142_bdd_3_lut_33406.init = 16'hcaca;
    ORCALUT4 i2_3_lut_adj_627 (.A(n37754), .B(n32647), .C(n23316), .Z(ISet_1__N_641[1])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_627.init = 16'h0808;
    ORCALUT4 BTR_r_I_100_3_lut (.A(BTR_r_N_965), .B(No_BTR), .C(I_BTR), 
            .Z(BTR_r_N_963)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(516[32:67])
    defparam BTR_r_I_100_3_lut.init = 16'h3232;
    PFUMX mux_1525_i5 (.BLUT(n2408[4]), .ALUT(n2417[4]), .C0(n2536), .Z(n2456[4]));
    PFUMX mux_1525_i6 (.BLUT(n2408[5]), .ALUT(n2417[5]), .C0(n2536), .Z(n2456[5]));
    PFUMX mux_1525_i7 (.BLUT(n2408[6]), .ALUT(n2417[6]), .C0(n2536), .Z(n2456[6]));
    PFUMX mux_1525_i8 (.BLUT(n2408[7]), .ALUT(n2417[7]), .C0(n2536), .Z(n2456[7]));
    ORCALUT4 i3_4_lut_adj_628 (.A(n37533), .B(n34), .C(BTR_r_N_965), .D(n1165), 
            .Z(clk_op_enable_129)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_628.init = 16'hfffe;
    PFUMX i14544 (.BLUT(n1177[2]), .ALUT(n1196[2]), .C0(n34491), .Z(n18042));
    ORCALUT4 i39_4_lut (.A(n23405), .B(n37751), .C(n37582), .D(n37), 
            .Z(n34)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;
    defparam i39_4_lut.init = 16'hf5c5;
    PFUMX i79 (.BLUT(n47_adj_1919), .ALUT(n43), .C0(ISet[0]), .Z(n56));
    ORCALUT4 mux_1680_i2_4_lut_4_lut (.A(ALU_Op_r[3]), .B(n22322), .C(Q_7__N_1607[1]), 
            .D(n37833), .Z(n2865[1])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mux_1680_i2_4_lut_4_lut.init = 16'hd850;
    PFUMX i33181 (.BLUT(n37335), .ALUT(n37332), .C0(n34729), .Z(F_7__N_669[5]));
    ORCALUT4 mux_206_i6_3_lut (.A(Fp[5]), .B(ALU_Q[1]), .C(n37548), .Z(n900[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_206_i6_3_lut.init = 16'hcaca;
    PFUMX mux_1525_i1 (.BLUT(n2408[0]), .ALUT(n2417[0]), .C0(n2536), .Z(n2456[0]));
    ORCALUT4 i30860_2_lut_3_lut_3_lut_4_lut_4_lut (.A(ALU_Op_r[3]), .B(n37582), 
            .C(PreserveC_r), .D(n37751), .Z(n34412)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i30860_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h0c08;
    PFUMX i33293 (.BLUT(n37919), .ALUT(n37920), .C0(n37754), .Z(clk_op_enable_304));
    ORCALUT4 mux_740_i3_4_lut (.A(F_Out[2]), .B(n1228), .C(n37533), .D(n34738), 
            .Z(F_7__N_669[2])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam mux_740_i3_4_lut.init = 16'hcacc;
    FD1P3DX IR_i0_i4_rep_791 (.D(n967), .SP(clk_op_enable_324), .CK(clk_op), 
            .CD(n39882), .Q(n39865)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i4_rep_791.GSR = "ENABLED";
    PFUMX i33179 (.BLUT(n37333), .ALUT(n12434), .C0(ALU_Op_r[3]), .Z(n37334));
    ORCALUT4 F_Out_7__N_1651_bdd_3_lut_4_lut_4_lut (.A(ALU_Op_r[3]), .B(F_Out_7__N_1651), 
            .C(n12437), .D(n37751), .Z(n37269)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_Out_7__N_1651_bdd_3_lut_4_lut_4_lut.init = 16'hf0e4;
    ORCALUT4 i19250_3_lut (.A(Read_To_Reg), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n11[4])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i19250_3_lut.init = 16'hc8c8;
    ORCALUT4 i2_3_lut_adj_629 (.A(last_tstate), .B(Read_To_Acc), .C(Set_BusA_To[3]), 
            .Z(n33646)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam i2_3_lut_adj_629.init = 16'h2020;
    PFUMX i33170 (.BLUT(n37312), .ALUT(n37311), .C0(n37582), .Z(n37313));
    ORCALUT4 i19257_3_lut (.A(Set_BusA_To[2]), .B(last_tstate), .C(Read_To_Acc), 
            .Z(n11[2])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i19257_3_lut.init = 16'hc8c8;
    PFUMX i32536 (.BLUT(n36243), .ALUT(n36242), .C0(n2823), .Z(n36244));
    ORCALUT4 ID16_B_15__I_0_i8_3_lut (.A(ID16_B[15]), .B(di_reg[7]), .C(ts[3]), 
            .Z(SP16_B[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam ID16_B_15__I_0_i8_3_lut.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_793_i2_3_lut (.A(SP[1]), .B(RegBusC[1]), .C(ts[3]), 
            .Z(SP16_A[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_793_i2_3_lut.init = 16'hcaca;
    FD1P3DX IR_i0_i3_rep_789 (.D(n966), .SP(clk_op_enable_324), .CK(clk_op), 
            .CD(n39880), .Q(n39863)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i3_rep_789.GSR = "ENABLED";
    FD1P3DX IR_i0_i2_rep_787 (.D(n965), .SP(clk_op_enable_324), .CK(clk_op), 
            .CD(n39876), .Q(n39861)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i2_rep_787.GSR = "ENABLED";
    FD1P3DX IR_i0_i1_rep_785 (.D(n964), .SP(clk_op_enable_324), .CK(clk_op), 
            .CD(rst_s), .Q(n39859)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i1_rep_785.GSR = "ENABLED";
    FD1P3DX tstate_i0_i3_rep_783 (.D(n18021), .SP(clk_op_enable_325), .CK(clk_op), 
            .CD(n39884), .Q(n39857)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0_i3_rep_783.GSR = "ENABLED";
    tv80_reg i_reg (.RegsL_0_6(RegsL_0_6), .clk_op(clk_op), .RegDIL({RegDIL}), 
            .RegsH_4_5(RegsH_4_5), .RegDIH({RegDIH}), .RegsL_0_0(RegsL_0_0), 
            .RegsL_0_1(RegsL_0_1), .RegsH_1_4(RegsH_1_4), .RegsH_5_4(RegsH_5_4), 
            .RegsL_1_0(RegsL_1_0), .RegsH_1_5(RegsH_1_5), .RegsH_3_2(RegsH_3_2), 
            .RegsH_4_7(RegsH_4_7), .RegsL_0_4(RegsL_0_4), .RegsH_2_7(RegsH_2_7), 
            .RegsH_4_1(RegsH_4_1), .RegsL_0_7(RegsL_0_7), .RegsH_5_2(RegsH_5_2), 
            .RegsL_0_3(RegsL_0_3), .RegsH_5_0(RegsH_5_0), .RegsH_6_6(RegsH_6_6), 
            .RegsH_4_6(RegsH_4_6), .RegsH_1_6(RegsH_1_6), .RegsH_3_5(RegsH_3_5), 
            .RegsH_1_2(RegsH_1_2), .RegsH_3_1(RegsH_3_1), .RegsH_1_1(RegsH_1_1), 
            .RegsH_1_0(RegsH_1_0), .RegsH_0_7(RegsH_0_7), .RegsH_0_6(RegsH_0_6), 
            .RegsH_0_5(RegsH_0_5), .RegsH_0_4(RegsH_0_4), .RegsH_6_7(RegsH_6_7), 
            .RegsH_7_0(RegsH_7_0), .RegsH_7_1(RegsH_7_1), .RegsH_0_3(RegsH_0_3), 
            .RegsL_1_4(RegsL_1_4), .RegAddrC({RegAddrC}), .RegsH_5_3(RegsH_5_3), 
            .RegsH_6_2(RegsH_6_2), .RegsH_7_2(RegsH_7_2), .RegsH_4_2(RegsH_4_2), 
            .RegsL_0_5(RegsL_0_5), .RegsH_0_2(RegsH_0_2), .RegsH_3_3(RegsH_3_3), 
            .RegsH_3_4(RegsH_3_4), .RegsH_0_1(RegsH_0_1), .\RegAddrB[2] (RegAddrB[2]), 
            .RegBusB({RegBusB}), .RegAddrA({RegAddrA}), .n37523(n37523), 
            .RegsH_6_0(RegsH_6_0), .RegsH_6_1(RegsH_6_1), .RegsH_6_3(RegsH_6_3), 
            .RegsH_5_5(RegsH_5_5), .RegsH_6_5(RegsH_6_5), .RegsH_5_7(RegsH_5_7), 
            .RegsH_5_6(RegsH_5_6), .RegsH_6_4(RegsH_6_4), .RegsH_0_0(RegsH_0_0), 
            .RegsH_4_3(RegsH_4_3), .n35060(n35060), .n35061(n35061), .\RegAddrB[1] (RegAddrB[1]), 
            .n35039(n35039), .n35040(n35040), .n35041(n35041), .n35042(n35042), 
            .n35046(n35046), .n35047(n35047), .n35048(n35048), .n35049(n35049), 
            .n35053(n35053), .n35054(n35054), .n35055(n35055), .n35056(n35056), 
            .RegsH_4_4(RegsH_4_4), .n35062(n35062), .n35063(n35063), .RegsL_0_2(RegsL_0_2), 
            .RegsH_3_7(RegsH_3_7), .RegsH_2_2(RegsH_2_2), .RegsH_4_0(RegsH_4_0), 
            .RegsH_3_6(RegsH_3_6), .RegsH_2_1(RegsH_2_1), .RegsH_3_0(RegsH_3_0), 
            .RegsH_7_5(RegsH_7_5), .RegsH_7_6(RegsH_7_6), .RegsH_7_4(RegsH_7_4), 
            .RegsH_7_3(RegsH_7_3), .RegsH_7_7(RegsH_7_7), .RegsH_2_5(RegsH_2_5), 
            .RegsH_1_7(RegsH_1_7), .RegsL_6_7(RegsL_6_7), .RegsL_7_7(RegsL_7_7), 
            .RegsL_4_7(RegsL_4_7), .RegsL_5_7(RegsL_5_7), .RegsL_2_7(RegsL_2_7), 
            .RegsL_3_7(RegsL_3_7), .RegsL_1_7(RegsL_1_7), .RegsH_2_0(RegsH_2_0), 
            .RegsH_2_3(RegsH_2_3), .RegsH_1_3(RegsH_1_3), .RegsH_2_6(RegsH_2_6), 
            .RegsH_2_4(RegsH_2_4), .RegsL_6_1(RegsL_6_1), .RegsL_7_1(RegsL_7_1), 
            .RegsL_4_1(RegsL_4_1), .RegsL_5_1(RegsL_5_1), .RegsL_2_1(RegsL_2_1), 
            .RegsL_3_1(RegsL_3_1), .RegsL_1_1(RegsL_1_1), .RegsL_6_0(RegsL_6_0), 
            .RegsL_7_0(RegsL_7_0), .RegsL_4_0(RegsL_4_0), .RegsL_5_0(RegsL_5_0), 
            .RegsL_2_0(RegsL_2_0), .RegsL_3_0(RegsL_3_0), .RegsL_6_2(RegsL_6_2), 
            .RegsL_7_2(RegsL_7_2), .RegsL_4_2(RegsL_4_2), .RegsL_5_2(RegsL_5_2), 
            .RegsL_2_2(RegsL_2_2), .RegsL_3_2(RegsL_3_2), .RegsL_1_2(RegsL_1_2), 
            .RegsL_6_5(RegsL_6_5), .RegsL_7_5(RegsL_7_5), .RegsL_4_5(RegsL_4_5), 
            .RegsL_5_5(RegsL_5_5), .RegsL_2_5(RegsL_2_5), .RegsL_3_5(RegsL_3_5), 
            .RegsL_1_5(RegsL_1_5), .RegsL_6_4(RegsL_6_4), .RegsL_7_4(RegsL_7_4), 
            .RegsL_4_4(RegsL_4_4), .RegsL_5_4(RegsL_5_4), .RegsL_2_4(RegsL_2_4), 
            .RegsL_3_4(RegsL_3_4), .RegsL_6_3(RegsL_6_3), .RegsL_7_3(RegsL_7_3), 
            .RegsL_4_3(RegsL_4_3), .RegsL_5_3(RegsL_5_3), .RegsL_2_3(RegsL_2_3), 
            .RegsL_3_3(RegsL_3_3), .n35067(n35067), .n35068(n35068), .RegsL_1_3(RegsL_1_3), 
            .n35069(n35069), .n35070(n35070), .RegsH_5_1(RegsH_5_1), .n35074(n35074), 
            .n35075(n35075), .RegsL_2_6(RegsL_2_6), .RegsL_3_6(RegsL_3_6), 
            .RegsL_1_6(RegsL_1_6), .RegsL_6_6(RegsL_6_6), .RegsL_7_6(RegsL_7_6), 
            .RegsL_4_6(RegsL_4_6), .RegsL_5_6(RegsL_5_6), .n35076(n35076), 
            .n35077(n35077), .RegBusC({RegBusC}), .RegWEL(RegWEL), .n35081(n35081), 
            .n35082(n35082), .n35083(n35083), .n35084(n35084), .n35088(n35088), 
            .n35089(n35089), .n35090(n35090), .n35091(n35091), .n34759(n34759), 
            .n34760(n34760), .n34761(n34761), .n34762(n34762), .n34766(n34766), 
            .n34767(n34767), .n34768(n34768), .n34769(n34769), .n34773(n34773), 
            .n34774(n34774), .n34775(n34775), .n34776(n34776), .n34780(n34780), 
            .n34781(n34781), .n34782(n34782), .n34783(n34783), .n34787(n34787), 
            .n34788(n34788), .n34789(n34789), .n34790(n34790), .n34794(n34794), 
            .n34795(n34795), .n34796(n34796), .n34797(n34797), .n34801(n34801), 
            .n34802(n34802), .n34803(n34803), .n34804(n34804), .n34808(n34808), 
            .n34809(n34809), .n34810(n34810), .n34811(n34811), .RegBusA({RegBusA})) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1017[12] 1034[7])
    tv80_mcode i_mcode (.ISet({ISet}), .Set_Addr_To_2__N_1413({Open_11, 
            Set_Addr_To_2__N_1413[1:0]}), .n37700(n37700), .n37859(n37859), 
            .Ap({Ap}), .ACC({ACC}), .n2311({n2311}), .\IR[1] (IR[1]), 
            .\IR[5] (IR[5]), .\IR[0] (IR[0]), .\IncDec_16[1] (IncDec_16[1]), 
            .\IncDec_16[2] (IncDec_16[2]), .n37803(n37803), .\IR[4] (IR[4]), 
            .n39840(n39840), .Set_BusA_To({Set_BusA_To}), .n37824(n37824), 
            .\mc[3] (mc[3]), .\mc[5] (mc[5]), .\tstate[2] (\tstate[2] ), 
            .n37754(n37754), .n6(n6_adj_1936), .clk_op_enable_182(clk_op_enable_182), 
            .\IncDec_16[0] (IncDec_16[0]), .n27(n27), .n37805(n37805), 
            .n37619(n37619), .\tstate[1] (tstate[1]), .n37548(n37548), 
            .n39863(n39863), .\ALU_Op_3__N_1269[3] (\ALU_Op_3__N_1269[3] ), 
            .\Set_BusA_To_3__N_1198[2] (Set_BusA_To_3__N_1198[2]), .n37791(n37791), 
            .mcycles_d({mcycles_d}), .LDZ(LDZ), .n17(n17_adj_1973), .NoRead_N_1539(NoRead_N_1539), 
            .Save_ALU(Save_ALU), .n32574(n32574), .\IR[6] (IR[6]), .\IR[2] (IR[2]), 
            .n37756(n37756), .SP({SP}), .n1938({n1938}), .n39873(n39873), 
            .\IR[7] (IR[7]), .n39854(n39854), .\mc[2] (mc[2]), .\Set_BusA_To_3__N_1202[0] (Set_BusA_To_3__N_1202[0]), 
            .n38(n38), .n37769(n37769), .n39859(n39859), .n39861(n39861), 
            .n39867(n39867), .n39869(n39869), .n15889(n15889), .\ts[0] (ts[0]), 
            .n5(n5_adj_1915), .\mc[6] (\mc[6] ), .n31176(n31176), .\ts[3] (ts[3]), 
            .n31172(n31172), .n39845(n39845), .n37813(n37813), .n37724(n37724), 
            .n39841(n39841), .n16830(n16830), .n15839(n15839), .di_reg({di_reg}), 
            .n39865(n39865), .\F[4] (F[4]), .n15(n15_adj_1958), .n39842(n39842), 
            .n37555(n37555), .n39843(n39843), .PreserveC(PreserveC), .n15803(n15803), 
            .n39871(n39871), .n37620(n37620), .\Set_Addr_To[1] (Set_Addr_To[1]), 
            .n37806(n37806), .n37563(n37563), .n37807(n37807), .\Q_7__N_1718[0] (Q_7__N_1718[0]), 
            .BusB({\BusB[7] , BusB[6:4], \BusB[3] , BusB[2:0]}), .n1177({n1177}), 
            .\BusA[1] (BusA[1]), .n37741(n37741), .\BusA[2] (BusA[2]), 
            .\BusA[3] (BusA[3]), .n37728(n37728), .\mc[4] (mc[4]), .n16241(n16241), 
            .n20(n20), .n4(n4_adj_1927), .\ts[4] (ts[4]), .n37587(n37587), 
            .n37656(n37656), .n37858(n37858), .n37792(n37792), .\RegAddrB_r[1] (RegAddrB_r[1]), 
            .\RegAddrB[1] (RegAddrB[1]), .n37698(n37698), .n15_adj_7(n15), 
            .n37636(n37636), .n32534(n32534), .n6_adj_8(n6_adj_1968), 
            .n39857(n39857), .n10904(n10904), .n37706(n37706), .n37638(n37638), 
            .n37569(n37569), .last_tstate(last_tstate), .n33676(n33676), 
            .n37841(n37841), .n37710(n37710), .n37720(n37720), .n37812(n37812), 
            .n14261(n14261), .\IncDec_16_3__N_1012[3] (IncDec_16_3__N_1012[3]), 
            .\ID16_B[15] (ID16_B[15]), .Jump(Jump), .n33980(n33980), .n10(n10_adj_1974), 
            .n33833(n33833), .n37784(n37784), .n1175(n1175), .\ALU_Op_r[3] (ALU_Op_r[3]), 
            .Save_ALU_r(Save_ALU_r), .n37755(n37755), .RegWEH_N_867(RegWEH_N_867), 
            .n26(n26_adj_1946), .JumpE_N_1507(JumpE_N_1507), .n3(n3), 
            .n37845(n37845), .n37750(n37750), .\Set_Addr_To_2__N_1044[2] (Set_Addr_To_2__N_1044[2]), 
            .n32394(n32394), .n37583(n37583), .n37572(n37572), .n37625(n37625), 
            .n34731(n34731), .n37821(n37821), .n33545(n33545), .n1165(n1165), 
            .n37512(n37512), .n33981(n33981), .n37596(n37596), .n32696(n32696), 
            .n28(n28_adj_1975), .n32784(n32784), .n4_adj_9(n4_adj_1943), 
            .n37826(n37826), .n23273(n23273), .n22510(n22510), .n37685(n37685), 
            .n33919(n33919), .nxt_rd_n(nxt_rd_n), .write(write), .n9490(n9490), 
            .clk_op_enable_170(clk_op_enable_170), .n37775(n37775), .\BusA[7] (BusA[7]), 
            .\BusA[6] (BusA[6]), .n14257(n14257), .n37510(n37510), .n37539(n37539), 
            .n37837(n37837), .n37516(n37516), .n37517(n37517), .n37758(n37758), 
            .n37763(n37763), .n37641(n37641), .n23316(n23316), .n37680(n37680), 
            .n37588(n37588), .\ALU_Op_r[1] (ALU_Op_r[1]), .n32621(n32621), 
            .n37686(n37686), .n37573(n37573), .n37574(n37574), .n36617(n36617), 
            .n36618(n36618), .n2117(n2116[2]), .n22293(n22293), .n32891(n32891), 
            .ExchangeRp(ExchangeRp), .n33268(n33268), .n37856(n37856), 
            .n47(n47_adj_1918), .n28_adj_10(n28), .n957(n957), .n37579(n37579), 
            .n37584(n37584), .n64(n64), .n32557(n32557), .\Q_7__N_1599[7] (Q_7__N_1599[7]), 
            .F_Out_7__N_1636(F_Out_7__N_1636), .n37866(n37866), .n18(n18), 
            .n21(n21), .n8(n8_adj_1945), .nxt_mreq_n(nxt_mreq_n), .n37562(n37562), 
            .n22859(n22859), .clk_op_enable_127(clk_op_enable_127), .Alternate(Alternate), 
            .Alternate_N_899(Alternate_N_899), .Read_To_Acc(Read_To_Acc), 
            .n37576(n37576), .n37777(n37777), .n57(n57), .stop(stop), 
            .\Fp[3] (Fp[3]), .n37393(n37393), .n37394(n37394), .n37622(n37622), 
            .\Special_LD[0] (Special_LD[0]), .n23097(n23097), .n23405(n23405), 
            .n23093(n23093), .n37703(n37703), .\Fp[0] (Fp[0]), .n32965(n32965), 
            .n908(n900[0]), .I_BTR(I_BTR), .n37627(n37627), .n37577(n37577), 
            .clk_op_enable_89(clk_op_enable_89), .n37547(n37547), .n8_adj_11(n8_adj_1920), 
            .n33013(n33013), .iorq_N_329(iorq_N_329), .n37513(n37513), 
            .n2185(n2185), .\ALU_Op_3__N_1040[3] (ALU_Op_3__N_1040[3]), 
            .\tstates[1] (tstates[1]), .n33731(n33731), .\F_Out[1] (F_Out[1]), 
            .n37582(n37582), .n37624(n37624), .n32647(n32647), .\ISet_1__N_641[0] (ISet_1__N_641[0]), 
            .n37707(n37707), .Set_BusB_To({Set_BusB_To}), .n6_adj_12(n6_adj_1926), 
            .n93(n93), .n26_adj_13(n26_adj_1960), .n37553(n37553), .clk_op_enable_204(clk_op_enable_204), 
            .n100(n100), .n5_adj_14(n5), .n37886(n37886), .n9(n9_adj_1928), 
            .n49(n49), .n48(n48), .\tstates[2] (tstates[2]), .\F[2] (F[2]), 
            .\F[7] (F[7]), .\F[6] (F[6]), .\F[0] (F[0]), .n30107(n30107), 
            .n33539(n33539), .n37863(n37863), .n22386(n22386), .n34340(n34340), 
            .\Fp[4] (Fp[4]), .n33871(n33871), .n32900(n32900), .n32987(n32987), 
            .n32973(n32973), .n12(n12), .Read_To_Reg(Read_To_Reg), .n37600(n37600), 
            .Halt_FF(Halt_FF), .n34386(n34386), .clk_op_enable_20(clk_op_enable_20), 
            .n35158(n35158), .Auto_Wait_t1(Auto_Wait_t1), .clk_op_enable_325(clk_op_enable_325), 
            .n37632(n37632), .\TStates_2__N_1410[1] (TStates_2__N_1410[1]), 
            .n37787(n37787), .n37514(n37514), .n609(n609), .n7(n7_adj_1944), 
            .n15935(n15935), .n7_adj_15(n7_adj_1955), .n33(n33), .n33743(n33743), 
            .n34236(n34236), .n22352(n22352), .n37695(n37695), .n33232(n33232), 
            .n37551(n37551), .n34491(n34491), .n37464(n37464), .n933(n933), 
            .n22513(n22513), .RegBusC({RegBusC}), .SP16({SP16}), .n2582({n2582}), 
            .n37461(n37461), .\Save_Mux[1] (Save_Mux[1]), .n37533(n37533), 
            .\F_7__N_669[1] (F_7__N_669[1]), .n37676(n37676), .n37269(n37269), 
            .n37273(n37273)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(220[86] 274[7])
    tv80_alu i_alu (.n2779(n2775[4]), .\BusA[5] (BusA[5]), .\BusA[7] (BusA[7]), 
            .\Set_BusA_To_3__N_1202[0] (Set_BusA_To_3__N_1202[0]), .\BusA[3] (BusA[3]), 
            .n9458(n9458), .\BusA[1] (BusA[1]), .n2780(n2775[3]), .n37751(n37751), 
            .n30700(n30700), .n34751(n34751), .\ALU_Q[1] (ALU_Q[1]), .\F[1] (F[1]), 
            .n2781(n2775[2]), .\IR[5] (IR[5]), .n37788(n37788), .ALU_Op_r({ALU_Op_r}), 
            .BusB({\BusB[7] , BusB[6:4], \BusB[3] , BusB[2:0]}), .\Q_7__N_1567[7] (\Q_7__N_1567[7] ), 
            .F_Out_7__N_1638(F_Out_7__N_1638), .n37866(n37866), .n2782(n2775[1]), 
            .Q_7__N_1607({Q_7__N_1607[7:4], \Q_7__N_1607[3] , Q_7__N_1607[2:0]}), 
            .\F[0] (F[0]), .n12437(n12437), .n39854(n39854), .\Q_7__N_1718[0] (Q_7__N_1718[0]), 
            .n37841(n37841), .\IR[4] (IR[4]), .F_Out_7__N_1636(F_Out_7__N_1636), 
            .n12430(n12430), .\BusA[6] (BusA[6]), .VCC_net(VCC_net), .\BusA[4] (BusA[4]), 
            .\BusA[2] (BusA[2]), .\F[4] (F[4]), .\Q_7__N_1599[7] (Q_7__N_1599[7]), 
            .n7(n7), .n14257(n14257), .Q_7__N_1566(Q_7__N_1566), .n37763(n37763), 
            .n37741(n37741), .n2834(n2830[4]), .n32621(n32621), .n12434(n12434), 
            .n37728(n37728), .n37769(n37769), .n2832(n2830[6]), .n37828(n37828), 
            .PreserveC_r(PreserveC_r), .n34292(n34292), .n37755(n37755), 
            .n17(n17_adj_1959), .n2683(n2680[2]), .n37742(n37742), .n36724(n36724), 
            .n37833(n37833), .n37834(n37834), .n36717(n36717), .n36714(n36714), 
            .n22322(n22322), .n36703(n36703), .n37771(n37771), .Save_ALU_r(Save_ALU_r), 
            .n9937(n9937), .\ALU_Q[0] (ALU_Q[0]), .n14278(n14278), .\ALU_Q[5] (ALU_Q[5]), 
            .n2836(n2830[2]), .n6(n6_adj_1962), .n37716(n37716), .n37532(n37532), 
            .n12441(n12441), .\F_Out[2] (F_Out[2]), .\F_Out[6] (F_Out[6]), 
            .F_Out_7__N_1645(F_Out_7__N_1645), .n36034(n36034), .n37807(n37807), 
            .\ALU_Q[3] (ALU_Q[3]), .F_Out_7__N_1663(n723[0]), .n15845(n15845), 
            .n37836(n37836), .\Q_7__N_1599[3] (\Q_7__N_1599[3] ), .n36726(n36726), 
            .n37334(n37334), .n37335(n37335), .n37938(n37938), .\F_Out[3] (F_Out[3]), 
            .n2776(n2775[7]), .n37859(n37859), .n2777(n2775[6]), .n37157(n37157), 
            .\F[6] (F[6]), .n2778(n2775[5]), .n6_adj_1(n6_adj_1963), .n2872(n2865[1]), 
            .n6_adj_2(n6_adj_1961), .n8(n8_adj_1941), .n6_adj_3(n6_adj_1966), 
            .n6_adj_4(n6_adj_1967), .n37641(n37641), .n6_adj_5(n6_adj_1965), 
            .n6_adj_6(n6_adj_1964)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(276[84] 288[7])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module tv80_reg
//

module tv80_reg (RegsL_0_6, clk_op, RegDIL, RegsH_4_5, RegDIH, RegsL_0_0, 
            RegsL_0_1, RegsH_1_4, RegsH_5_4, RegsL_1_0, RegsH_1_5, 
            RegsH_3_2, RegsH_4_7, RegsL_0_4, RegsH_2_7, RegsH_4_1, 
            RegsL_0_7, RegsH_5_2, RegsL_0_3, RegsH_5_0, RegsH_6_6, 
            RegsH_4_6, RegsH_1_6, RegsH_3_5, RegsH_1_2, RegsH_3_1, 
            RegsH_1_1, RegsH_1_0, RegsH_0_7, RegsH_0_6, RegsH_0_5, 
            RegsH_0_4, RegsH_6_7, RegsH_7_0, RegsH_7_1, RegsH_0_3, 
            RegsL_1_4, RegAddrC, RegsH_5_3, RegsH_6_2, RegsH_7_2, 
            RegsH_4_2, RegsL_0_5, RegsH_0_2, RegsH_3_3, RegsH_3_4, 
            RegsH_0_1, \RegAddrB[2] , RegBusB, RegAddrA, n37523, RegsH_6_0, 
            RegsH_6_1, RegsH_6_3, RegsH_5_5, RegsH_6_5, RegsH_5_7, 
            RegsH_5_6, RegsH_6_4, RegsH_0_0, RegsH_4_3, n35060, n35061, 
            \RegAddrB[1] , n35039, n35040, n35041, n35042, n35046, 
            n35047, n35048, n35049, n35053, n35054, n35055, n35056, 
            RegsH_4_4, n35062, n35063, RegsL_0_2, RegsH_3_7, RegsH_2_2, 
            RegsH_4_0, RegsH_3_6, RegsH_2_1, RegsH_3_0, RegsH_7_5, 
            RegsH_7_6, RegsH_7_4, RegsH_7_3, RegsH_7_7, RegsH_2_5, 
            RegsH_1_7, RegsL_6_7, RegsL_7_7, RegsL_4_7, RegsL_5_7, 
            RegsL_2_7, RegsL_3_7, RegsL_1_7, RegsH_2_0, RegsH_2_3, 
            RegsH_1_3, RegsH_2_6, RegsH_2_4, RegsL_6_1, RegsL_7_1, 
            RegsL_4_1, RegsL_5_1, RegsL_2_1, RegsL_3_1, RegsL_1_1, 
            RegsL_6_0, RegsL_7_0, RegsL_4_0, RegsL_5_0, RegsL_2_0, 
            RegsL_3_0, RegsL_6_2, RegsL_7_2, RegsL_4_2, RegsL_5_2, 
            RegsL_2_2, RegsL_3_2, RegsL_1_2, RegsL_6_5, RegsL_7_5, 
            RegsL_4_5, RegsL_5_5, RegsL_2_5, RegsL_3_5, RegsL_1_5, 
            RegsL_6_4, RegsL_7_4, RegsL_4_4, RegsL_5_4, RegsL_2_4, 
            RegsL_3_4, RegsL_6_3, RegsL_7_3, RegsL_4_3, RegsL_5_3, 
            RegsL_2_3, RegsL_3_3, n35067, n35068, RegsL_1_3, n35069, 
            n35070, RegsH_5_1, n35074, n35075, RegsL_2_6, RegsL_3_6, 
            RegsL_1_6, RegsL_6_6, RegsL_7_6, RegsL_4_6, RegsL_5_6, 
            n35076, n35077, RegBusC, RegWEL, n35081, n35082, n35083, 
            n35084, n35088, n35089, n35090, n35091, n34759, n34760, 
            n34761, n34762, n34766, n34767, n34768, n34769, n34773, 
            n34774, n34775, n34776, n34780, n34781, n34782, n34783, 
            n34787, n34788, n34789, n34790, n34794, n34795, n34796, 
            n34797, n34801, n34802, n34803, n34804, n34808, n34809, 
            n34810, n34811, RegBusA) /* synthesis syn_module_defined=1 */ ;
    output RegsL_0_6;
    input clk_op;
    input [7:0]RegDIL;
    output RegsH_4_5;
    input [7:0]RegDIH;
    output RegsL_0_0;
    output RegsL_0_1;
    output RegsH_1_4;
    output RegsH_5_4;
    output RegsL_1_0;
    output RegsH_1_5;
    output RegsH_3_2;
    output RegsH_4_7;
    output RegsL_0_4;
    output RegsH_2_7;
    output RegsH_4_1;
    output RegsL_0_7;
    output RegsH_5_2;
    output RegsL_0_3;
    output RegsH_5_0;
    output RegsH_6_6;
    output RegsH_4_6;
    output RegsH_1_6;
    output RegsH_3_5;
    output RegsH_1_2;
    output RegsH_3_1;
    output RegsH_1_1;
    output RegsH_1_0;
    output RegsH_0_7;
    output RegsH_0_6;
    output RegsH_0_5;
    output RegsH_0_4;
    output RegsH_6_7;
    output RegsH_7_0;
    output RegsH_7_1;
    output RegsH_0_3;
    output RegsL_1_4;
    input [2:0]RegAddrC;
    output RegsH_5_3;
    output RegsH_6_2;
    output RegsH_7_2;
    output RegsH_4_2;
    output RegsL_0_5;
    output RegsH_0_2;
    output RegsH_3_3;
    output RegsH_3_4;
    output RegsH_0_1;
    input \RegAddrB[2] ;
    output [15:0]RegBusB;
    input [2:0]RegAddrA;
    input n37523;
    output RegsH_6_0;
    output RegsH_6_1;
    output RegsH_6_3;
    output RegsH_5_5;
    output RegsH_6_5;
    output RegsH_5_7;
    output RegsH_5_6;
    output RegsH_6_4;
    output RegsH_0_0;
    output RegsH_4_3;
    input n35060;
    input n35061;
    input \RegAddrB[1] ;
    input n35039;
    input n35040;
    input n35041;
    input n35042;
    input n35046;
    input n35047;
    input n35048;
    input n35049;
    input n35053;
    input n35054;
    input n35055;
    input n35056;
    output RegsH_4_4;
    input n35062;
    input n35063;
    output RegsL_0_2;
    output RegsH_3_7;
    output RegsH_2_2;
    output RegsH_4_0;
    output RegsH_3_6;
    output RegsH_2_1;
    output RegsH_3_0;
    output RegsH_7_5;
    output RegsH_7_6;
    output RegsH_7_4;
    output RegsH_7_3;
    output RegsH_7_7;
    output RegsH_2_5;
    output RegsH_1_7;
    output RegsL_6_7;
    output RegsL_7_7;
    output RegsL_4_7;
    output RegsL_5_7;
    output RegsL_2_7;
    output RegsL_3_7;
    output RegsL_1_7;
    output RegsH_2_0;
    output RegsH_2_3;
    output RegsH_1_3;
    output RegsH_2_6;
    output RegsH_2_4;
    output RegsL_6_1;
    output RegsL_7_1;
    output RegsL_4_1;
    output RegsL_5_1;
    output RegsL_2_1;
    output RegsL_3_1;
    output RegsL_1_1;
    output RegsL_6_0;
    output RegsL_7_0;
    output RegsL_4_0;
    output RegsL_5_0;
    output RegsL_2_0;
    output RegsL_3_0;
    output RegsL_6_2;
    output RegsL_7_2;
    output RegsL_4_2;
    output RegsL_5_2;
    output RegsL_2_2;
    output RegsL_3_2;
    output RegsL_1_2;
    output RegsL_6_5;
    output RegsL_7_5;
    output RegsL_4_5;
    output RegsL_5_5;
    output RegsL_2_5;
    output RegsL_3_5;
    output RegsL_1_5;
    output RegsL_6_4;
    output RegsL_7_4;
    output RegsL_4_4;
    output RegsL_5_4;
    output RegsL_2_4;
    output RegsL_3_4;
    output RegsL_6_3;
    output RegsL_7_3;
    output RegsL_4_3;
    output RegsL_5_3;
    output RegsL_2_3;
    output RegsL_3_3;
    input n35067;
    input n35068;
    output RegsL_1_3;
    input n35069;
    input n35070;
    output RegsH_5_1;
    input n35074;
    input n35075;
    output RegsL_2_6;
    output RegsL_3_6;
    output RegsL_1_6;
    output RegsL_6_6;
    output RegsL_7_6;
    output RegsL_4_6;
    output RegsL_5_6;
    input n35076;
    input n35077;
    output [15:0]RegBusC;
    input RegWEL;
    input n35081;
    input n35082;
    input n35083;
    input n35084;
    input n35088;
    input n35089;
    input n35090;
    input n35091;
    input n34759;
    input n34760;
    input n34761;
    input n34762;
    input n34766;
    input n34767;
    input n34768;
    input n34769;
    input n34773;
    input n34774;
    input n34775;
    input n34776;
    input n34780;
    input n34781;
    input n34782;
    input n34783;
    input n34787;
    input n34788;
    input n34789;
    input n34790;
    input n34794;
    input n34795;
    input n34796;
    input n34797;
    input n34801;
    input n34802;
    input n34803;
    input n34804;
    input n34808;
    input n34809;
    input n34810;
    input n34811;
    output [15:0]RegBusA;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    wire [7:0]n1;
    wire [7:0]n1_adj_1914;
    
    wire n34892, n34888, n34887, n35043, n35044, n35050, n35051, 
        n35057, n35058, n35064, n35065, n35071, n35072, n35078, 
        n35079, n35085, n35086, n35092, n35093, n34763, n34764, 
        n34770, n34771, n34777, n34778, n34784, n34785, n34791, 
        n34792, n34798, n34799, n34805, n34806, n34812, n34813, 
        n34886, n34885, n34921, n34881, n34920, n35021, n35020, 
        n35019, n35018, n35014, n35013, n35012, n35011, n35007, 
        n35006, n35005, n35004, n35000, n34999, n34998, n34997, 
        n34993, n34992, n34991, n34990, n34986, n34985, n34984, 
        n34983, n34979, n34978, n34977, n34976, n34972, n34971, 
        n34970, n34969, n34965, n34964, n34963, n34962, n34958, 
        n34957, n34956, n34955, n34951, n34950, n34949, n34948, 
        n34944, n34943, n34942, n34941, n34880, n34937, n34879, 
        n34936, n34935, n34934, n34930, n34929, n34928, n34927, 
        n34878, n35035, n35034, n35033, n35032, n35026, n35025, 
        n35028, n35027, n34819, n34820, n34826, n34827, n34833, 
        n34834, n34840, n34841, n34847, n34848, n34854, n34855, 
        n34861, n34862, n34868, n34869, n34875, n34876, n34882, 
        n34883, n34889, n34890, n34923, n34896, n34897, n34903, 
        n34904, n34910, n34911, n34917, n34918, n34924, n34925, 
        n34922, n34815, n34816, n34817, n34818, n34822, n34823, 
        n34824, n34825, n34916, n34829, n34830, n34831, n34832, 
        n34836, n34837, n34838, n34839, n34843, n34844, n34845, 
        n34846, n34915, n34850, n34851, n34852, n34853, n34857, 
        n34858, n34859, n34860, n34914, n34864, n34865, n34866, 
        n34867, n34871, n34872, n34873, n34874, n34913, n34893, 
        n34909, n34908, n34894, n34895, n34907, n34899, n34900, 
        n34906, n34902, n34901, n35029, n35030, n35036, n35037, 
        n34931, n34932, n34938, n34939, n34945, n34946, n34952, 
        n34953, n34959, n34960, n34966, n34967, n34973, n34974, 
        n34980, n34981, n34987, n34988, n34994, n34995, n35001, 
        n35002, n35008, n35009, n35015, n35016, n35022, n35023;
    
    FD1P3AX i50_51 (.D(RegDIL[6]), .SP(n1[0]), .CK(clk_op), .Q(RegsL_0_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i50_51.GSR = "ENABLED";
    FD1P3AX i143_144 (.D(RegDIH[5]), .SP(n1_adj_1914[4]), .CK(clk_op), 
            .Q(RegsH_4_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i143_144.GSR = "ENABLED";
    FD1P3AX i32_33 (.D(RegDIL[0]), .SP(n1[0]), .CK(clk_op), .Q(RegsL_0_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i32_33.GSR = "ENABLED";
    FD1P3AX i35_36 (.D(RegDIL[1]), .SP(n1[0]), .CK(clk_op), .Q(RegsL_0_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i35_36.GSR = "ENABLED";
    FD1P3AX i68_69 (.D(RegDIH[4]), .SP(n1_adj_1914[1]), .CK(clk_op), .Q(RegsH_1_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i68_69.GSR = "ENABLED";
    FD1P3AX i164_165 (.D(RegDIH[4]), .SP(n1_adj_1914[5]), .CK(clk_op), 
            .Q(RegsH_5_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i164_165.GSR = "ENABLED";
    FD1P3AX i56_57 (.D(RegDIL[0]), .SP(n1[1]), .CK(clk_op), .Q(RegsL_1_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i56_57.GSR = "ENABLED";
    FD1P3AX i71_72 (.D(RegDIH[5]), .SP(n1_adj_1914[1]), .CK(clk_op), .Q(RegsH_1_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i71_72.GSR = "ENABLED";
    FD1P3AX i110_111 (.D(RegDIH[2]), .SP(n1_adj_1914[3]), .CK(clk_op), 
            .Q(RegsH_3_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i110_111.GSR = "ENABLED";
    FD1P3AX i149_150 (.D(RegDIH[7]), .SP(n1_adj_1914[4]), .CK(clk_op), 
            .Q(RegsH_4_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i149_150.GSR = "ENABLED";
    FD1P3AX i44_45 (.D(RegDIL[4]), .SP(n1[0]), .CK(clk_op), .Q(RegsL_0_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i44_45.GSR = "ENABLED";
    FD1P3AX i101_102 (.D(RegDIH[7]), .SP(n1_adj_1914[2]), .CK(clk_op), 
            .Q(RegsH_2_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i101_102.GSR = "ENABLED";
    FD1P3AX i131_132 (.D(RegDIH[1]), .SP(n1_adj_1914[4]), .CK(clk_op), 
            .Q(RegsH_4_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i131_132.GSR = "ENABLED";
    FD1P3AX i53_54 (.D(RegDIL[7]), .SP(n1[0]), .CK(clk_op), .Q(RegsL_0_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i53_54.GSR = "ENABLED";
    FD1P3AX i158_159 (.D(RegDIH[2]), .SP(n1_adj_1914[5]), .CK(clk_op), 
            .Q(RegsH_5_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i158_159.GSR = "ENABLED";
    FD1P3AX i41_42 (.D(RegDIL[3]), .SP(n1[0]), .CK(clk_op), .Q(RegsL_0_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i41_42.GSR = "ENABLED";
    FD1P3AX i152_153 (.D(RegDIH[0]), .SP(n1_adj_1914[5]), .CK(clk_op), 
            .Q(RegsH_5_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i152_153.GSR = "ENABLED";
    FD1P3AX i194_195 (.D(RegDIH[6]), .SP(n1_adj_1914[6]), .CK(clk_op), 
            .Q(RegsH_6_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i194_195.GSR = "ENABLED";
    FD1P3AX i146_147 (.D(RegDIH[6]), .SP(n1_adj_1914[4]), .CK(clk_op), 
            .Q(RegsH_4_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i146_147.GSR = "ENABLED";
    FD1P3AX i74_75 (.D(RegDIH[6]), .SP(n1_adj_1914[1]), .CK(clk_op), .Q(RegsH_1_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i74_75.GSR = "ENABLED";
    FD1P3AX i119_120 (.D(RegDIH[5]), .SP(n1_adj_1914[3]), .CK(clk_op), 
            .Q(RegsH_3_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i119_120.GSR = "ENABLED";
    FD1P3AX i62_63 (.D(RegDIH[2]), .SP(n1_adj_1914[1]), .CK(clk_op), .Q(RegsH_1_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i62_63.GSR = "ENABLED";
    FD1P3AX i107_108 (.D(RegDIH[1]), .SP(n1_adj_1914[3]), .CK(clk_op), 
            .Q(RegsH_3_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i107_108.GSR = "ENABLED";
    FD1P3AX i59_60 (.D(RegDIH[1]), .SP(n1_adj_1914[1]), .CK(clk_op), .Q(RegsH_1_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i59_60.GSR = "ENABLED";
    FD1P3AX i56_57_adj_478 (.D(RegDIH[0]), .SP(n1_adj_1914[1]), .CK(clk_op), 
            .Q(RegsH_1_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i56_57_adj_478.GSR = "ENABLED";
    FD1P3AX i53_54_adj_479 (.D(RegDIH[7]), .SP(n1_adj_1914[0]), .CK(clk_op), 
            .Q(RegsH_0_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i53_54_adj_479.GSR = "ENABLED";
    FD1P3AX i50_51_adj_480 (.D(RegDIH[6]), .SP(n1_adj_1914[0]), .CK(clk_op), 
            .Q(RegsH_0_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i50_51_adj_480.GSR = "ENABLED";
    FD1P3AX i47_48 (.D(RegDIH[5]), .SP(n1_adj_1914[0]), .CK(clk_op), .Q(RegsH_0_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i47_48.GSR = "ENABLED";
    FD1P3AX i44_45_adj_481 (.D(RegDIH[4]), .SP(n1_adj_1914[0]), .CK(clk_op), 
            .Q(RegsH_0_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i44_45_adj_481.GSR = "ENABLED";
    FD1P3AX i197_198 (.D(RegDIH[7]), .SP(n1_adj_1914[6]), .CK(clk_op), 
            .Q(RegsH_6_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i197_198.GSR = "ENABLED";
    FD1P3AX i200_201 (.D(RegDIH[0]), .SP(n1_adj_1914[7]), .CK(clk_op), 
            .Q(RegsH_7_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i200_201.GSR = "ENABLED";
    FD1P3AX i203_204 (.D(RegDIH[1]), .SP(n1_adj_1914[7]), .CK(clk_op), 
            .Q(RegsH_7_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i203_204.GSR = "ENABLED";
    FD1P3AX i41_42_adj_482 (.D(RegDIH[3]), .SP(n1_adj_1914[0]), .CK(clk_op), 
            .Q(RegsH_0_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i41_42_adj_482.GSR = "ENABLED";
    ORCALUT4 i31340_3_lut (.A(RegsL_0_4), .B(RegsL_1_4), .C(RegAddrC[0]), 
            .Z(n34892)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31340_3_lut.init = 16'hcaca;
    FD1P3AX i161_162 (.D(RegDIH[3]), .SP(n1_adj_1914[5]), .CK(clk_op), 
            .Q(RegsH_5_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i161_162.GSR = "ENABLED";
    ORCALUT4 i31336_3_lut (.A(RegsH_6_2), .B(RegsH_7_2), .C(RegAddrC[0]), 
            .Z(n34888)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31336_3_lut.init = 16'hcaca;
    ORCALUT4 i31335_3_lut (.A(RegsH_4_2), .B(RegsH_5_2), .C(RegAddrC[0]), 
            .Z(n34887)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31335_3_lut.init = 16'hcaca;
    FD1P3AX i47_48_adj_483 (.D(RegDIL[5]), .SP(n1[0]), .CK(clk_op), .Q(RegsL_0_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i47_48_adj_483.GSR = "ENABLED";
    FD1P3AX i38_39 (.D(RegDIH[2]), .SP(n1_adj_1914[0]), .CK(clk_op), .Q(RegsH_0_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i38_39.GSR = "ENABLED";
    FD1P3AX i113_114 (.D(RegDIH[3]), .SP(n1_adj_1914[3]), .CK(clk_op), 
            .Q(RegsH_3_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i113_114.GSR = "ENABLED";
    FD1P3AX i116_117 (.D(RegDIH[4]), .SP(n1_adj_1914[3]), .CK(clk_op), 
            .Q(RegsH_3_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i116_117.GSR = "ENABLED";
    FD1P3AX i35_36_adj_484 (.D(RegDIH[1]), .SP(n1_adj_1914[0]), .CK(clk_op), 
            .Q(RegsH_0_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i35_36_adj_484.GSR = "ENABLED";
    L6MUX21 i31493 (.D0(n35043), .D1(n35044), .SD(\RegAddrB[2] ), .Z(RegBusB[2]));
    L6MUX21 i31500 (.D0(n35050), .D1(n35051), .SD(\RegAddrB[2] ), .Z(RegBusB[13]));
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(RegAddrA[2]), .B(RegAddrA[1]), .C(RegAddrA[0]), 
            .D(n37523), .Z(n1_adj_1914[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    L6MUX21 i31507 (.D0(n35057), .D1(n35058), .SD(\RegAddrB[2] ), .Z(RegBusB[15]));
    FD1P3AX i176_177 (.D(RegDIH[0]), .SP(n1_adj_1914[6]), .CK(clk_op), 
            .Q(RegsH_6_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i176_177.GSR = "ENABLED";
    L6MUX21 i31514 (.D0(n35064), .D1(n35065), .SD(\RegAddrB[2] ), .Z(RegBusB[12]));
    L6MUX21 i31521 (.D0(n35071), .D1(n35072), .SD(\RegAddrB[2] ), .Z(RegBusB[11]));
    FD1P3AX i179_180 (.D(RegDIH[1]), .SP(n1_adj_1914[6]), .CK(clk_op), 
            .Q(RegsH_6_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i179_180.GSR = "ENABLED";
    FD1P3AX i185_186 (.D(RegDIH[3]), .SP(n1_adj_1914[6]), .CK(clk_op), 
            .Q(RegsH_6_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i185_186.GSR = "ENABLED";
    FD1P3AX i167_168 (.D(RegDIH[5]), .SP(n1_adj_1914[5]), .CK(clk_op), 
            .Q(RegsH_5_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i167_168.GSR = "ENABLED";
    L6MUX21 i31528 (.D0(n35078), .D1(n35079), .SD(\RegAddrB[2] ), .Z(RegBusB[10]));
    L6MUX21 i31535 (.D0(n35085), .D1(n35086), .SD(\RegAddrB[2] ), .Z(RegBusB[9]));
    L6MUX21 i31542 (.D0(n35092), .D1(n35093), .SD(\RegAddrB[2] ), .Z(RegBusB[8]));
    FD1P3AX i191_192 (.D(RegDIH[5]), .SP(n1_adj_1914[6]), .CK(clk_op), 
            .Q(RegsH_6_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i191_192.GSR = "ENABLED";
    L6MUX21 i31213 (.D0(n34763), .D1(n34764), .SD(\RegAddrB[2] ), .Z(RegBusB[6]));
    L6MUX21 i31220 (.D0(n34770), .D1(n34771), .SD(\RegAddrB[2] ), .Z(RegBusB[3]));
    FD1P3AX i173_174 (.D(RegDIH[7]), .SP(n1_adj_1914[5]), .CK(clk_op), 
            .Q(RegsH_5_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i173_174.GSR = "ENABLED";
    L6MUX21 i31227 (.D0(n34777), .D1(n34778), .SD(\RegAddrB[2] ), .Z(RegBusB[4]));
    L6MUX21 i31234 (.D0(n34784), .D1(n34785), .SD(\RegAddrB[2] ), .Z(RegBusB[5]));
    L6MUX21 i31241 (.D0(n34791), .D1(n34792), .SD(\RegAddrB[2] ), .Z(RegBusB[7]));
    L6MUX21 i31248 (.D0(n34798), .D1(n34799), .SD(\RegAddrB[2] ), .Z(RegBusB[14]));
    L6MUX21 i31255 (.D0(n34805), .D1(n34806), .SD(\RegAddrB[2] ), .Z(RegBusB[0]));
    L6MUX21 i31262 (.D0(n34812), .D1(n34813), .SD(\RegAddrB[2] ), .Z(RegBusB[1]));
    FD1P3AX i170_171 (.D(RegDIH[6]), .SP(n1_adj_1914[5]), .CK(clk_op), 
            .Q(RegsH_5_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i170_171.GSR = "ENABLED";
    FD1P3AX i188_189 (.D(RegDIH[4]), .SP(n1_adj_1914[6]), .CK(clk_op), 
            .Q(RegsH_6_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i188_189.GSR = "ENABLED";
    FD1P3AX i182_183 (.D(RegDIH[2]), .SP(n1_adj_1914[6]), .CK(clk_op), 
            .Q(RegsH_6_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i182_183.GSR = "ENABLED";
    FD1P3AX i32_33_adj_485 (.D(RegDIH[0]), .SP(n1_adj_1914[0]), .CK(clk_op), 
            .Q(RegsH_0_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i32_33_adj_485.GSR = "ENABLED";
    FD1P3AX i137_138 (.D(RegDIH[3]), .SP(n1_adj_1914[4]), .CK(clk_op), 
            .Q(RegsH_4_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i137_138.GSR = "ENABLED";
    PFUMX i31512 (.BLUT(n35060), .ALUT(n35061), .C0(\RegAddrB[1] ), .Z(n35064));
    PFUMX i31491 (.BLUT(n35039), .ALUT(n35040), .C0(\RegAddrB[1] ), .Z(n35043));
    PFUMX i31492 (.BLUT(n35041), .ALUT(n35042), .C0(\RegAddrB[1] ), .Z(n35044));
    PFUMX i31498 (.BLUT(n35046), .ALUT(n35047), .C0(\RegAddrB[1] ), .Z(n35050));
    PFUMX i31499 (.BLUT(n35048), .ALUT(n35049), .C0(\RegAddrB[1] ), .Z(n35051));
    PFUMX i31505 (.BLUT(n35053), .ALUT(n35054), .C0(\RegAddrB[1] ), .Z(n35057));
    PFUMX i31506 (.BLUT(n35055), .ALUT(n35056), .C0(\RegAddrB[1] ), .Z(n35058));
    FD1P3AX i140_141 (.D(RegDIH[4]), .SP(n1_adj_1914[4]), .CK(clk_op), 
            .Q(RegsH_4_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i140_141.GSR = "ENABLED";
    FD1P3AX i134_135 (.D(RegDIH[2]), .SP(n1_adj_1914[4]), .CK(clk_op), 
            .Q(RegsH_4_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i134_135.GSR = "ENABLED";
    PFUMX i31513 (.BLUT(n35062), .ALUT(n35063), .C0(\RegAddrB[1] ), .Z(n35065));
    FD1P3AX i38_39_adj_486 (.D(RegDIL[2]), .SP(n1[0]), .CK(clk_op), .Q(RegsL_0_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i38_39_adj_486.GSR = "ENABLED";
    FD1P3AX i125_126 (.D(RegDIH[7]), .SP(n1_adj_1914[3]), .CK(clk_op), 
            .Q(RegsH_3_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i125_126.GSR = "ENABLED";
    ORCALUT4 i31334_3_lut (.A(RegsH_2_2), .B(RegsH_3_2), .C(RegAddrC[0]), 
            .Z(n34886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31334_3_lut.init = 16'hcaca;
    FD1P3AX i128_129 (.D(RegDIH[0]), .SP(n1_adj_1914[4]), .CK(clk_op), 
            .Q(RegsH_4_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i128_129.GSR = "ENABLED";
    ORCALUT4 i31333_3_lut (.A(RegsH_0_2), .B(RegsH_1_2), .C(RegAddrC[0]), 
            .Z(n34885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31333_3_lut.init = 16'hcaca;
    FD1P3AX i122_123 (.D(RegDIH[6]), .SP(n1_adj_1914[3]), .CK(clk_op), 
            .Q(RegsH_3_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i122_123.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_487 (.A(n37523), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1914[7])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_487.init = 16'h8000;
    ORCALUT4 i31369_3_lut (.A(RegsH_2_1), .B(RegsH_3_1), .C(RegAddrC[0]), 
            .Z(n34921)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31369_3_lut.init = 16'hcaca;
    FD1P3AX i104_105 (.D(RegDIH[0]), .SP(n1_adj_1914[3]), .CK(clk_op), 
            .Q(RegsH_3_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i104_105.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_488 (.A(n37523), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1914[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_488.init = 16'h0800;
    FD1P3AX i215_216 (.D(RegDIH[5]), .SP(n1_adj_1914[7]), .CK(clk_op), 
            .Q(RegsH_7_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i215_216.GSR = "ENABLED";
    FD1P3AX i206_207 (.D(RegDIH[2]), .SP(n1_adj_1914[7]), .CK(clk_op), 
            .Q(RegsH_7_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i206_207.GSR = "ENABLED";
    FD1P3AX i218_219 (.D(RegDIH[6]), .SP(n1_adj_1914[7]), .CK(clk_op), 
            .Q(RegsH_7_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i218_219.GSR = "ENABLED";
    FD1P3AX i212_213 (.D(RegDIH[4]), .SP(n1_adj_1914[7]), .CK(clk_op), 
            .Q(RegsH_7_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i212_213.GSR = "ENABLED";
    FD1P3AX i209_210 (.D(RegDIH[3]), .SP(n1_adj_1914[7]), .CK(clk_op), 
            .Q(RegsH_7_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i209_210.GSR = "ENABLED";
    FD1P3AX i221_222 (.D(RegDIH[7]), .SP(n1_adj_1914[7]), .CK(clk_op), 
            .Q(RegsH_7_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i221_222.GSR = "ENABLED";
    ORCALUT4 i31329_3_lut (.A(RegsH_6_3), .B(RegsH_7_3), .C(RegAddrC[0]), 
            .Z(n34881)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31329_3_lut.init = 16'hcaca;
    ORCALUT4 i31368_3_lut (.A(RegsH_0_1), .B(RegsH_1_1), .C(RegAddrC[0]), 
            .Z(n34920)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31368_3_lut.init = 16'hcaca;
    FD1P3AX i95_96 (.D(RegDIH[5]), .SP(n1_adj_1914[2]), .CK(clk_op), .Q(RegsH_2_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i95_96.GSR = "ENABLED";
    ORCALUT4 i31469_3_lut (.A(RegsH_6_7), .B(RegsH_7_7), .C(RegAddrA[0]), 
            .Z(n35021)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31469_3_lut.init = 16'hcaca;
    ORCALUT4 i31468_3_lut (.A(RegsH_4_7), .B(RegsH_5_7), .C(RegAddrA[0]), 
            .Z(n35020)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31468_3_lut.init = 16'hcaca;
    ORCALUT4 i31467_3_lut (.A(RegsH_2_7), .B(RegsH_3_7), .C(RegAddrA[0]), 
            .Z(n35019)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31467_3_lut.init = 16'hcaca;
    ORCALUT4 i31466_3_lut (.A(RegsH_0_7), .B(RegsH_1_7), .C(RegAddrA[0]), 
            .Z(n35018)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31466_3_lut.init = 16'hcaca;
    ORCALUT4 i31462_3_lut (.A(RegsL_6_7), .B(RegsL_7_7), .C(RegAddrA[0]), 
            .Z(n35014)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31462_3_lut.init = 16'hcaca;
    ORCALUT4 i31461_3_lut (.A(RegsL_4_7), .B(RegsL_5_7), .C(RegAddrA[0]), 
            .Z(n35013)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31461_3_lut.init = 16'hcaca;
    ORCALUT4 i31460_3_lut (.A(RegsL_2_7), .B(RegsL_3_7), .C(RegAddrA[0]), 
            .Z(n35012)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31460_3_lut.init = 16'hcaca;
    ORCALUT4 i31459_3_lut (.A(RegsL_0_7), .B(RegsL_1_7), .C(RegAddrA[0]), 
            .Z(n35011)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31459_3_lut.init = 16'hcaca;
    FD1P3AX i77_78 (.D(RegDIH[7]), .SP(n1_adj_1914[1]), .CK(clk_op), .Q(RegsH_1_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i77_78.GSR = "ENABLED";
    ORCALUT4 i31455_3_lut (.A(RegsH_6_3), .B(RegsH_7_3), .C(RegAddrA[0]), 
            .Z(n35007)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31455_3_lut.init = 16'hcaca;
    FD1P3AX i80_81 (.D(RegDIH[0]), .SP(n1_adj_1914[2]), .CK(clk_op), .Q(RegsH_2_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i80_81.GSR = "ENABLED";
    FD1P3AX i86_87 (.D(RegDIH[2]), .SP(n1_adj_1914[2]), .CK(clk_op), .Q(RegsH_2_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i86_87.GSR = "ENABLED";
    ORCALUT4 i31454_3_lut (.A(RegsH_4_3), .B(RegsH_5_3), .C(RegAddrA[0]), 
            .Z(n35006)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31454_3_lut.init = 16'hcaca;
    ORCALUT4 i31453_3_lut (.A(RegsH_2_3), .B(RegsH_3_3), .C(RegAddrA[0]), 
            .Z(n35005)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31453_3_lut.init = 16'hcaca;
    ORCALUT4 i31452_3_lut (.A(RegsH_0_3), .B(RegsH_1_3), .C(RegAddrA[0]), 
            .Z(n35004)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31452_3_lut.init = 16'hcaca;
    ORCALUT4 i31448_3_lut (.A(RegsH_6_4), .B(RegsH_7_4), .C(RegAddrA[0]), 
            .Z(n35000)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31448_3_lut.init = 16'hcaca;
    FD1P3AX i98_99 (.D(RegDIH[6]), .SP(n1_adj_1914[2]), .CK(clk_op), .Q(RegsH_2_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i98_99.GSR = "ENABLED";
    FD1P3AX i92_93 (.D(RegDIH[4]), .SP(n1_adj_1914[2]), .CK(clk_op), .Q(RegsH_2_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i92_93.GSR = "ENABLED";
    ORCALUT4 i31447_3_lut (.A(RegsH_4_4), .B(RegsH_5_4), .C(RegAddrA[0]), 
            .Z(n34999)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31447_3_lut.init = 16'hcaca;
    ORCALUT4 i31446_3_lut (.A(RegsH_2_4), .B(RegsH_3_4), .C(RegAddrA[0]), 
            .Z(n34998)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31446_3_lut.init = 16'hcaca;
    ORCALUT4 i31445_3_lut (.A(RegsH_0_4), .B(RegsH_1_4), .C(RegAddrA[0]), 
            .Z(n34997)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31445_3_lut.init = 16'hcaca;
    ORCALUT4 i31441_3_lut (.A(RegsL_6_1), .B(RegsL_7_1), .C(RegAddrA[0]), 
            .Z(n34993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31441_3_lut.init = 16'hcaca;
    FD1P3AX i89_90 (.D(RegDIH[3]), .SP(n1_adj_1914[2]), .CK(clk_op), .Q(RegsH_2_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i89_90.GSR = "ENABLED";
    ORCALUT4 i31440_3_lut (.A(RegsL_4_1), .B(RegsL_5_1), .C(RegAddrA[0]), 
            .Z(n34992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31440_3_lut.init = 16'hcaca;
    FD1P3AX i65_66 (.D(RegDIH[3]), .SP(n1_adj_1914[1]), .CK(clk_op), .Q(RegsH_1_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i65_66.GSR = "ENABLED";
    FD1P3AX i83_84 (.D(RegDIH[1]), .SP(n1_adj_1914[2]), .CK(clk_op), .Q(RegsH_2_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i83_84.GSR = "ENABLED";
    ORCALUT4 i31439_3_lut (.A(RegsL_2_1), .B(RegsL_3_1), .C(RegAddrA[0]), 
            .Z(n34991)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31439_3_lut.init = 16'hcaca;
    ORCALUT4 i31438_3_lut (.A(RegsL_0_1), .B(RegsL_1_1), .C(RegAddrA[0]), 
            .Z(n34990)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31438_3_lut.init = 16'hcaca;
    ORCALUT4 i31434_3_lut (.A(RegsL_6_0), .B(RegsL_7_0), .C(RegAddrA[0]), 
            .Z(n34986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31434_3_lut.init = 16'hcaca;
    ORCALUT4 i31433_3_lut (.A(RegsL_4_0), .B(RegsL_5_0), .C(RegAddrA[0]), 
            .Z(n34985)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31433_3_lut.init = 16'hcaca;
    ORCALUT4 i31432_3_lut (.A(RegsL_2_0), .B(RegsL_3_0), .C(RegAddrA[0]), 
            .Z(n34984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31432_3_lut.init = 16'hcaca;
    ORCALUT4 i31431_3_lut (.A(RegsL_0_0), .B(RegsL_1_0), .C(RegAddrA[0]), 
            .Z(n34983)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31431_3_lut.init = 16'hcaca;
    ORCALUT4 i31427_3_lut (.A(RegsL_6_2), .B(RegsL_7_2), .C(RegAddrA[0]), 
            .Z(n34979)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31427_3_lut.init = 16'hcaca;
    ORCALUT4 i31426_3_lut (.A(RegsL_4_2), .B(RegsL_5_2), .C(RegAddrA[0]), 
            .Z(n34978)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31426_3_lut.init = 16'hcaca;
    ORCALUT4 i31425_3_lut (.A(RegsL_2_2), .B(RegsL_3_2), .C(RegAddrA[0]), 
            .Z(n34977)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31425_3_lut.init = 16'hcaca;
    ORCALUT4 i31424_3_lut (.A(RegsL_0_2), .B(RegsL_1_2), .C(RegAddrA[0]), 
            .Z(n34976)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31424_3_lut.init = 16'hcaca;
    ORCALUT4 i31420_3_lut (.A(RegsL_6_5), .B(RegsL_7_5), .C(RegAddrA[0]), 
            .Z(n34972)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31420_3_lut.init = 16'hcaca;
    ORCALUT4 i31419_3_lut (.A(RegsL_4_5), .B(RegsL_5_5), .C(RegAddrA[0]), 
            .Z(n34971)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31419_3_lut.init = 16'hcaca;
    ORCALUT4 i31418_3_lut (.A(RegsL_2_5), .B(RegsL_3_5), .C(RegAddrA[0]), 
            .Z(n34970)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31418_3_lut.init = 16'hcaca;
    ORCALUT4 i31417_3_lut (.A(RegsL_0_5), .B(RegsL_1_5), .C(RegAddrA[0]), 
            .Z(n34969)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31417_3_lut.init = 16'hcaca;
    ORCALUT4 i31413_3_lut (.A(RegsL_6_4), .B(RegsL_7_4), .C(RegAddrA[0]), 
            .Z(n34965)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31413_3_lut.init = 16'hcaca;
    ORCALUT4 i31412_3_lut (.A(RegsL_4_4), .B(RegsL_5_4), .C(RegAddrA[0]), 
            .Z(n34964)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31412_3_lut.init = 16'hcaca;
    ORCALUT4 i31411_3_lut (.A(RegsL_2_4), .B(RegsL_3_4), .C(RegAddrA[0]), 
            .Z(n34963)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31411_3_lut.init = 16'hcaca;
    ORCALUT4 i31410_3_lut (.A(RegsL_0_4), .B(RegsL_1_4), .C(RegAddrA[0]), 
            .Z(n34962)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31410_3_lut.init = 16'hcaca;
    ORCALUT4 i31406_3_lut (.A(RegsL_6_3), .B(RegsL_7_3), .C(RegAddrA[0]), 
            .Z(n34958)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31406_3_lut.init = 16'hcaca;
    ORCALUT4 i31405_3_lut (.A(RegsL_4_3), .B(RegsL_5_3), .C(RegAddrA[0]), 
            .Z(n34957)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31405_3_lut.init = 16'hcaca;
    ORCALUT4 i31404_3_lut (.A(RegsL_2_3), .B(RegsL_3_3), .C(RegAddrA[0]), 
            .Z(n34956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31404_3_lut.init = 16'hcaca;
    PFUMX i31519 (.BLUT(n35067), .ALUT(n35068), .C0(\RegAddrB[1] ), .Z(n35071));
    ORCALUT4 i31403_3_lut (.A(RegsL_0_3), .B(RegsL_1_3), .C(RegAddrA[0]), 
            .Z(n34955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31403_3_lut.init = 16'hcaca;
    ORCALUT4 i31399_3_lut (.A(RegsH_6_2), .B(RegsH_7_2), .C(RegAddrA[0]), 
            .Z(n34951)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31399_3_lut.init = 16'hcaca;
    ORCALUT4 i31398_3_lut (.A(RegsH_4_2), .B(RegsH_5_2), .C(RegAddrA[0]), 
            .Z(n34950)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31398_3_lut.init = 16'hcaca;
    ORCALUT4 i31397_3_lut (.A(RegsH_2_2), .B(RegsH_3_2), .C(RegAddrA[0]), 
            .Z(n34949)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31397_3_lut.init = 16'hcaca;
    ORCALUT4 i31396_3_lut (.A(RegsH_0_2), .B(RegsH_1_2), .C(RegAddrA[0]), 
            .Z(n34948)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31396_3_lut.init = 16'hcaca;
    ORCALUT4 i31392_3_lut (.A(RegsH_6_0), .B(RegsH_7_0), .C(RegAddrA[0]), 
            .Z(n34944)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31392_3_lut.init = 16'hcaca;
    ORCALUT4 i31391_3_lut (.A(RegsH_4_0), .B(RegsH_5_0), .C(RegAddrA[0]), 
            .Z(n34943)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31391_3_lut.init = 16'hcaca;
    ORCALUT4 i31390_3_lut (.A(RegsH_2_0), .B(RegsH_3_0), .C(RegAddrA[0]), 
            .Z(n34942)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31390_3_lut.init = 16'hcaca;
    ORCALUT4 i31389_3_lut (.A(RegsH_0_0), .B(RegsH_1_0), .C(RegAddrA[0]), 
            .Z(n34941)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31389_3_lut.init = 16'hcaca;
    ORCALUT4 i31328_3_lut (.A(RegsH_4_3), .B(RegsH_5_3), .C(RegAddrC[0]), 
            .Z(n34880)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31328_3_lut.init = 16'hcaca;
    ORCALUT4 i31385_3_lut (.A(RegsH_6_1), .B(RegsH_7_1), .C(RegAddrA[0]), 
            .Z(n34937)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31385_3_lut.init = 16'hcaca;
    ORCALUT4 i31327_3_lut (.A(RegsH_2_3), .B(RegsH_3_3), .C(RegAddrC[0]), 
            .Z(n34879)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31327_3_lut.init = 16'hcaca;
    PFUMX i31520 (.BLUT(n35069), .ALUT(n35070), .C0(\RegAddrB[1] ), .Z(n35072));
    ORCALUT4 i31384_3_lut (.A(RegsH_4_1), .B(RegsH_5_1), .C(RegAddrA[0]), 
            .Z(n34936)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31384_3_lut.init = 16'hcaca;
    ORCALUT4 i31383_3_lut (.A(RegsH_2_1), .B(RegsH_3_1), .C(RegAddrA[0]), 
            .Z(n34935)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31383_3_lut.init = 16'hcaca;
    ORCALUT4 i31382_3_lut (.A(RegsH_0_1), .B(RegsH_1_1), .C(RegAddrA[0]), 
            .Z(n34934)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31382_3_lut.init = 16'hcaca;
    ORCALUT4 i31378_3_lut (.A(RegsH_6_5), .B(RegsH_7_5), .C(RegAddrA[0]), 
            .Z(n34930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31378_3_lut.init = 16'hcaca;
    ORCALUT4 i31377_3_lut (.A(RegsH_4_5), .B(RegsH_5_5), .C(RegAddrA[0]), 
            .Z(n34929)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31377_3_lut.init = 16'hcaca;
    ORCALUT4 i31376_3_lut (.A(RegsH_2_5), .B(RegsH_3_5), .C(RegAddrA[0]), 
            .Z(n34928)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31376_3_lut.init = 16'hcaca;
    ORCALUT4 i31375_3_lut (.A(RegsH_0_5), .B(RegsH_1_5), .C(RegAddrA[0]), 
            .Z(n34927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31375_3_lut.init = 16'hcaca;
    ORCALUT4 i31326_3_lut (.A(RegsH_0_3), .B(RegsH_1_3), .C(RegAddrC[0]), 
            .Z(n34878)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31326_3_lut.init = 16'hcaca;
    PFUMX i31526 (.BLUT(n35074), .ALUT(n35075), .C0(\RegAddrB[1] ), .Z(n35078));
    ORCALUT4 i31483_3_lut (.A(RegsH_6_6), .B(RegsH_7_6), .C(RegAddrA[0]), 
            .Z(n35035)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31483_3_lut.init = 16'hcaca;
    ORCALUT4 i31482_3_lut (.A(RegsH_4_6), .B(RegsH_5_6), .C(RegAddrA[0]), 
            .Z(n35034)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31482_3_lut.init = 16'hcaca;
    ORCALUT4 i31481_3_lut (.A(RegsH_2_6), .B(RegsH_3_6), .C(RegAddrA[0]), 
            .Z(n35033)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31481_3_lut.init = 16'hcaca;
    ORCALUT4 i31480_3_lut (.A(RegsH_0_6), .B(RegsH_1_6), .C(RegAddrA[0]), 
            .Z(n35032)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31480_3_lut.init = 16'hcaca;
    ORCALUT4 i31474_3_lut (.A(RegsL_2_6), .B(RegsL_3_6), .C(RegAddrA[0]), 
            .Z(n35026)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31474_3_lut.init = 16'hcaca;
    ORCALUT4 i31473_3_lut (.A(RegsL_0_6), .B(RegsL_1_6), .C(RegAddrA[0]), 
            .Z(n35025)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31473_3_lut.init = 16'hcaca;
    ORCALUT4 i31476_3_lut (.A(RegsL_6_6), .B(RegsL_7_6), .C(RegAddrA[0]), 
            .Z(n35028)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31476_3_lut.init = 16'hcaca;
    ORCALUT4 i31475_3_lut (.A(RegsL_4_6), .B(RegsL_5_6), .C(RegAddrA[0]), 
            .Z(n35027)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31475_3_lut.init = 16'hcaca;
    PFUMX i31527 (.BLUT(n35076), .ALUT(n35077), .C0(\RegAddrB[1] ), .Z(n35079));
    FD1P3AX i155_156 (.D(RegDIH[1]), .SP(n1_adj_1914[5]), .CK(clk_op), 
            .Q(RegsH_5_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i155_156.GSR = "ENABLED";
    L6MUX21 i31269 (.D0(n34819), .D1(n34820), .SD(RegAddrC[2]), .Z(RegBusC[5]));
    L6MUX21 i31276 (.D0(n34826), .D1(n34827), .SD(RegAddrC[2]), .Z(RegBusC[3]));
    L6MUX21 i31283 (.D0(n34833), .D1(n34834), .SD(RegAddrC[2]), .Z(RegBusC[2]));
    L6MUX21 i31290 (.D0(n34840), .D1(n34841), .SD(RegAddrC[2]), .Z(RegBusC[1]));
    L6MUX21 i31297 (.D0(n34847), .D1(n34848), .SD(RegAddrC[2]), .Z(RegBusC[0]));
    L6MUX21 i31304 (.D0(n34854), .D1(n34855), .SD(RegAddrC[2]), .Z(RegBusC[15]));
    L6MUX21 i31311 (.D0(n34861), .D1(n34862), .SD(RegAddrC[2]), .Z(RegBusC[14]));
    L6MUX21 i31318 (.D0(n34868), .D1(n34869), .SD(RegAddrC[2]), .Z(RegBusC[13]));
    L6MUX21 i31325 (.D0(n34875), .D1(n34876), .SD(RegAddrC[2]), .Z(RegBusC[12]));
    L6MUX21 i31332 (.D0(n34882), .D1(n34883), .SD(RegAddrC[2]), .Z(RegBusC[11]));
    L6MUX21 i31339 (.D0(n34889), .D1(n34890), .SD(RegAddrC[2]), .Z(RegBusC[10]));
    ORCALUT4 i31371_3_lut (.A(RegsH_6_1), .B(RegsH_7_1), .C(RegAddrC[0]), 
            .Z(n34923)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31371_3_lut.init = 16'hcaca;
    L6MUX21 i31346 (.D0(n34896), .D1(n34897), .SD(RegAddrC[2]), .Z(RegBusC[4]));
    L6MUX21 i31353 (.D0(n34903), .D1(n34904), .SD(RegAddrC[2]), .Z(RegBusC[7]));
    L6MUX21 i31360 (.D0(n34910), .D1(n34911), .SD(RegAddrC[2]), .Z(RegBusC[6]));
    L6MUX21 i31367 (.D0(n34917), .D1(n34918), .SD(RegAddrC[2]), .Z(RegBusC[8]));
    L6MUX21 i31374 (.D0(n34924), .D1(n34925), .SD(RegAddrC[2]), .Z(RegBusC[9]));
    ORCALUT4 i31370_3_lut (.A(RegsH_4_1), .B(RegsH_5_1), .C(RegAddrC[0]), 
            .Z(n34922)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31370_3_lut.init = 16'hcaca;
    PFUMX i31267 (.BLUT(n34815), .ALUT(n34816), .C0(RegAddrC[1]), .Z(n34819));
    PFUMX i31268 (.BLUT(n34817), .ALUT(n34818), .C0(RegAddrC[1]), .Z(n34820));
    PFUMX i31274 (.BLUT(n34822), .ALUT(n34823), .C0(RegAddrC[1]), .Z(n34826));
    PFUMX i31275 (.BLUT(n34824), .ALUT(n34825), .C0(RegAddrC[1]), .Z(n34827));
    ORCALUT4 i31364_3_lut (.A(RegsH_6_0), .B(RegsH_7_0), .C(RegAddrC[0]), 
            .Z(n34916)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31364_3_lut.init = 16'hcaca;
    PFUMX i31281 (.BLUT(n34829), .ALUT(n34830), .C0(RegAddrC[1]), .Z(n34833));
    PFUMX i31282 (.BLUT(n34831), .ALUT(n34832), .C0(RegAddrC[1]), .Z(n34834));
    PFUMX i31288 (.BLUT(n34836), .ALUT(n34837), .C0(RegAddrC[1]), .Z(n34840));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_489 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(RegWEL), .Z(n1[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_489.init = 16'h2000;
    PFUMX i31289 (.BLUT(n34838), .ALUT(n34839), .C0(RegAddrC[1]), .Z(n34841));
    PFUMX i31295 (.BLUT(n34843), .ALUT(n34844), .C0(RegAddrC[1]), .Z(n34847));
    PFUMX i31533 (.BLUT(n35081), .ALUT(n35082), .C0(\RegAddrB[1] ), .Z(n35085));
    PFUMX i31296 (.BLUT(n34845), .ALUT(n34846), .C0(RegAddrC[1]), .Z(n34848));
    ORCALUT4 i31363_3_lut (.A(RegsH_4_0), .B(RegsH_5_0), .C(RegAddrC[0]), 
            .Z(n34915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31363_3_lut.init = 16'hcaca;
    PFUMX i31302 (.BLUT(n34850), .ALUT(n34851), .C0(RegAddrC[1]), .Z(n34854));
    PFUMX i31303 (.BLUT(n34852), .ALUT(n34853), .C0(RegAddrC[1]), .Z(n34855));
    PFUMX i31534 (.BLUT(n35083), .ALUT(n35084), .C0(\RegAddrB[1] ), .Z(n35086));
    PFUMX i31540 (.BLUT(n35088), .ALUT(n35089), .C0(\RegAddrB[1] ), .Z(n35092));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_490 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(n37523), .Z(n1_adj_1914[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_490.init = 16'h2000;
    PFUMX i31309 (.BLUT(n34857), .ALUT(n34858), .C0(RegAddrC[1]), .Z(n34861));
    PFUMX i31310 (.BLUT(n34859), .ALUT(n34860), .C0(RegAddrC[1]), .Z(n34862));
    ORCALUT4 i31362_3_lut (.A(RegsH_2_0), .B(RegsH_3_0), .C(RegAddrC[0]), 
            .Z(n34914)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31362_3_lut.init = 16'hcaca;
    PFUMX i31316 (.BLUT(n34864), .ALUT(n34865), .C0(RegAddrC[1]), .Z(n34868));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_491 (.A(n37523), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1914[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_491.init = 16'h2000;
    PFUMX i31317 (.BLUT(n34866), .ALUT(n34867), .C0(RegAddrC[1]), .Z(n34869));
    PFUMX i31323 (.BLUT(n34871), .ALUT(n34872), .C0(RegAddrC[1]), .Z(n34875));
    PFUMX i31324 (.BLUT(n34873), .ALUT(n34874), .C0(RegAddrC[1]), .Z(n34876));
    PFUMX i31330 (.BLUT(n34878), .ALUT(n34879), .C0(RegAddrC[1]), .Z(n34882));
    PFUMX i31541 (.BLUT(n35090), .ALUT(n35091), .C0(\RegAddrB[1] ), .Z(n35093));
    PFUMX i31331 (.BLUT(n34880), .ALUT(n34881), .C0(RegAddrC[1]), .Z(n34883));
    PFUMX i31337 (.BLUT(n34885), .ALUT(n34886), .C0(RegAddrC[1]), .Z(n34889));
    ORCALUT4 i31361_3_lut (.A(RegsH_0_0), .B(RegsH_1_0), .C(RegAddrC[0]), 
            .Z(n34913)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31361_3_lut.init = 16'hcaca;
    PFUMX i31338 (.BLUT(n34887), .ALUT(n34888), .C0(RegAddrC[1]), .Z(n34890));
    PFUMX i31344 (.BLUT(n34892), .ALUT(n34893), .C0(RegAddrC[1]), .Z(n34896));
    FD1P3AX i221_222_adj_492 (.D(RegDIL[7]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsL_7_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i221_222_adj_492.GSR = "ENABLED";
    ORCALUT4 i31357_3_lut (.A(RegsL_6_6), .B(RegsL_7_6), .C(RegAddrC[0]), 
            .Z(n34909)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31357_3_lut.init = 16'hcaca;
    FD1P3AX i218_219_adj_493 (.D(RegDIL[6]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsL_7_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i218_219_adj_493.GSR = "ENABLED";
    FD1P3AX i215_216_adj_494 (.D(RegDIL[5]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsL_7_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i215_216_adj_494.GSR = "ENABLED";
    FD1P3AX i212_213_adj_495 (.D(RegDIL[4]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsL_7_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i212_213_adj_495.GSR = "ENABLED";
    FD1P3AX i209_210_adj_496 (.D(RegDIL[3]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsL_7_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i209_210_adj_496.GSR = "ENABLED";
    FD1P3AX i206_207_adj_497 (.D(RegDIL[2]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsL_7_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i206_207_adj_497.GSR = "ENABLED";
    FD1P3AX i203_204_adj_498 (.D(RegDIL[1]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsL_7_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i203_204_adj_498.GSR = "ENABLED";
    FD1P3AX i200_201_adj_499 (.D(RegDIL[0]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsL_7_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i200_201_adj_499.GSR = "ENABLED";
    FD1P3AX i197_198_adj_500 (.D(RegDIL[7]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsL_6_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i197_198_adj_500.GSR = "ENABLED";
    FD1P3AX i194_195_adj_501 (.D(RegDIL[6]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsL_6_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i194_195_adj_501.GSR = "ENABLED";
    FD1P3AX i191_192_adj_502 (.D(RegDIL[5]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsL_6_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i191_192_adj_502.GSR = "ENABLED";
    FD1P3AX i188_189_adj_503 (.D(RegDIL[4]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsL_6_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i188_189_adj_503.GSR = "ENABLED";
    FD1P3AX i185_186_adj_504 (.D(RegDIL[3]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsL_6_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i185_186_adj_504.GSR = "ENABLED";
    FD1P3AX i182_183_adj_505 (.D(RegDIL[2]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsL_6_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i182_183_adj_505.GSR = "ENABLED";
    FD1P3AX i179_180_adj_506 (.D(RegDIL[1]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsL_6_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i179_180_adj_506.GSR = "ENABLED";
    FD1P3AX i176_177_adj_507 (.D(RegDIL[0]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsL_6_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i176_177_adj_507.GSR = "ENABLED";
    FD1P3AX i173_174_adj_508 (.D(RegDIL[7]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsL_5_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i173_174_adj_508.GSR = "ENABLED";
    FD1P3AX i170_171_adj_509 (.D(RegDIL[6]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsL_5_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i170_171_adj_509.GSR = "ENABLED";
    FD1P3AX i167_168_adj_510 (.D(RegDIL[5]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsL_5_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i167_168_adj_510.GSR = "ENABLED";
    FD1P3AX i164_165_adj_511 (.D(RegDIL[4]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsL_5_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i164_165_adj_511.GSR = "ENABLED";
    FD1P3AX i161_162_adj_512 (.D(RegDIL[3]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsL_5_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i161_162_adj_512.GSR = "ENABLED";
    FD1P3AX i158_159_adj_513 (.D(RegDIL[2]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsL_5_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i158_159_adj_513.GSR = "ENABLED";
    FD1P3AX i155_156_adj_514 (.D(RegDIL[1]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsL_5_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i155_156_adj_514.GSR = "ENABLED";
    FD1P3AX i152_153_adj_515 (.D(RegDIL[0]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsL_5_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i152_153_adj_515.GSR = "ENABLED";
    FD1P3AX i149_150_adj_516 (.D(RegDIL[7]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsL_4_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i149_150_adj_516.GSR = "ENABLED";
    FD1P3AX i146_147_adj_517 (.D(RegDIL[6]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsL_4_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i146_147_adj_517.GSR = "ENABLED";
    FD1P3AX i143_144_adj_518 (.D(RegDIL[5]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsL_4_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i143_144_adj_518.GSR = "ENABLED";
    FD1P3AX i140_141_adj_519 (.D(RegDIL[4]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsL_4_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i140_141_adj_519.GSR = "ENABLED";
    FD1P3AX i137_138_adj_520 (.D(RegDIL[3]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsL_4_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i137_138_adj_520.GSR = "ENABLED";
    FD1P3AX i134_135_adj_521 (.D(RegDIL[2]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsL_4_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i134_135_adj_521.GSR = "ENABLED";
    FD1P3AX i131_132_adj_522 (.D(RegDIL[1]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsL_4_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i131_132_adj_522.GSR = "ENABLED";
    FD1P3AX i128_129_adj_523 (.D(RegDIL[0]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsL_4_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i128_129_adj_523.GSR = "ENABLED";
    FD1P3AX i125_126_adj_524 (.D(RegDIL[7]), .SP(n1[3]), .CK(clk_op), 
            .Q(RegsL_3_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i125_126_adj_524.GSR = "ENABLED";
    FD1P3AX i122_123_adj_525 (.D(RegDIL[6]), .SP(n1[3]), .CK(clk_op), 
            .Q(RegsL_3_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i122_123_adj_525.GSR = "ENABLED";
    FD1P3AX i119_120_adj_526 (.D(RegDIL[5]), .SP(n1[3]), .CK(clk_op), 
            .Q(RegsL_3_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i119_120_adj_526.GSR = "ENABLED";
    FD1P3AX i116_117_adj_527 (.D(RegDIL[4]), .SP(n1[3]), .CK(clk_op), 
            .Q(RegsL_3_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i116_117_adj_527.GSR = "ENABLED";
    FD1P3AX i113_114_adj_528 (.D(RegDIL[3]), .SP(n1[3]), .CK(clk_op), 
            .Q(RegsL_3_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i113_114_adj_528.GSR = "ENABLED";
    FD1P3AX i110_111_adj_529 (.D(RegDIL[2]), .SP(n1[3]), .CK(clk_op), 
            .Q(RegsL_3_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i110_111_adj_529.GSR = "ENABLED";
    FD1P3AX i107_108_adj_530 (.D(RegDIL[1]), .SP(n1[3]), .CK(clk_op), 
            .Q(RegsL_3_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i107_108_adj_530.GSR = "ENABLED";
    FD1P3AX i104_105_adj_531 (.D(RegDIL[0]), .SP(n1[3]), .CK(clk_op), 
            .Q(RegsL_3_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i104_105_adj_531.GSR = "ENABLED";
    FD1P3AX i101_102_adj_532 (.D(RegDIL[7]), .SP(n1[2]), .CK(clk_op), 
            .Q(RegsL_2_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i101_102_adj_532.GSR = "ENABLED";
    FD1P3AX i98_99_adj_533 (.D(RegDIL[6]), .SP(n1[2]), .CK(clk_op), .Q(RegsL_2_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i98_99_adj_533.GSR = "ENABLED";
    FD1P3AX i95_96_adj_534 (.D(RegDIL[5]), .SP(n1[2]), .CK(clk_op), .Q(RegsL_2_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i95_96_adj_534.GSR = "ENABLED";
    FD1P3AX i92_93_adj_535 (.D(RegDIL[4]), .SP(n1[2]), .CK(clk_op), .Q(RegsL_2_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i92_93_adj_535.GSR = "ENABLED";
    FD1P3AX i89_90_adj_536 (.D(RegDIL[3]), .SP(n1[2]), .CK(clk_op), .Q(RegsL_2_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i89_90_adj_536.GSR = "ENABLED";
    FD1P3AX i86_87_adj_537 (.D(RegDIL[2]), .SP(n1[2]), .CK(clk_op), .Q(RegsL_2_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i86_87_adj_537.GSR = "ENABLED";
    FD1P3AX i83_84_adj_538 (.D(RegDIL[1]), .SP(n1[2]), .CK(clk_op), .Q(RegsL_2_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i83_84_adj_538.GSR = "ENABLED";
    FD1P3AX i80_81_adj_539 (.D(RegDIL[0]), .SP(n1[2]), .CK(clk_op), .Q(RegsL_2_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i80_81_adj_539.GSR = "ENABLED";
    FD1P3AX i77_78_adj_540 (.D(RegDIL[7]), .SP(n1[1]), .CK(clk_op), .Q(RegsL_1_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i77_78_adj_540.GSR = "ENABLED";
    FD1P3AX i74_75_adj_541 (.D(RegDIL[6]), .SP(n1[1]), .CK(clk_op), .Q(RegsL_1_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i74_75_adj_541.GSR = "ENABLED";
    FD1P3AX i71_72_adj_542 (.D(RegDIL[5]), .SP(n1[1]), .CK(clk_op), .Q(RegsL_1_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i71_72_adj_542.GSR = "ENABLED";
    FD1P3AX i68_69_adj_543 (.D(RegDIL[4]), .SP(n1[1]), .CK(clk_op), .Q(RegsL_1_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i68_69_adj_543.GSR = "ENABLED";
    FD1P3AX i65_66_adj_544 (.D(RegDIL[3]), .SP(n1[1]), .CK(clk_op), .Q(RegsL_1_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i65_66_adj_544.GSR = "ENABLED";
    FD1P3AX i62_63_adj_545 (.D(RegDIL[2]), .SP(n1[1]), .CK(clk_op), .Q(RegsL_1_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i62_63_adj_545.GSR = "ENABLED";
    ORCALUT4 i31356_3_lut (.A(RegsL_4_6), .B(RegsL_5_6), .C(RegAddrC[0]), 
            .Z(n34908)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31356_3_lut.init = 16'hcaca;
    PFUMX i31373 (.BLUT(n34922), .ALUT(n34923), .C0(RegAddrC[1]), .Z(n34925));
    PFUMX i31345 (.BLUT(n34894), .ALUT(n34895), .C0(RegAddrC[1]), .Z(n34897));
    PFUMX i31211 (.BLUT(n34759), .ALUT(n34760), .C0(\RegAddrB[1] ), .Z(n34763));
    PFUMX i31212 (.BLUT(n34761), .ALUT(n34762), .C0(\RegAddrB[1] ), .Z(n34764));
    PFUMX i31218 (.BLUT(n34766), .ALUT(n34767), .C0(\RegAddrB[1] ), .Z(n34770));
    PFUMX i31219 (.BLUT(n34768), .ALUT(n34769), .C0(\RegAddrB[1] ), .Z(n34771));
    PFUMX i31225 (.BLUT(n34773), .ALUT(n34774), .C0(\RegAddrB[1] ), .Z(n34777));
    PFUMX i31226 (.BLUT(n34775), .ALUT(n34776), .C0(\RegAddrB[1] ), .Z(n34778));
    PFUMX i31232 (.BLUT(n34780), .ALUT(n34781), .C0(\RegAddrB[1] ), .Z(n34784));
    PFUMX i31233 (.BLUT(n34782), .ALUT(n34783), .C0(\RegAddrB[1] ), .Z(n34785));
    PFUMX i31239 (.BLUT(n34787), .ALUT(n34788), .C0(\RegAddrB[1] ), .Z(n34791));
    PFUMX i31240 (.BLUT(n34789), .ALUT(n34790), .C0(\RegAddrB[1] ), .Z(n34792));
    PFUMX i31246 (.BLUT(n34794), .ALUT(n34795), .C0(\RegAddrB[1] ), .Z(n34798));
    ORCALUT4 i31355_3_lut (.A(RegsL_2_6), .B(RegsL_3_6), .C(RegAddrC[0]), 
            .Z(n34907)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31355_3_lut.init = 16'hcaca;
    PFUMX i31351 (.BLUT(n34899), .ALUT(n34900), .C0(RegAddrC[1]), .Z(n34903));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_546 (.A(n37523), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_1914[2])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_546.init = 16'h0200;
    PFUMX i31247 (.BLUT(n34796), .ALUT(n34797), .C0(\RegAddrB[1] ), .Z(n34799));
    ORCALUT4 i31354_3_lut (.A(RegsL_0_6), .B(RegsL_1_6), .C(RegAddrC[0]), 
            .Z(n34906)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31354_3_lut.init = 16'hcaca;
    PFUMX i31253 (.BLUT(n34801), .ALUT(n34802), .C0(\RegAddrB[1] ), .Z(n34805));
    ORCALUT4 i31350_3_lut (.A(RegsL_6_7), .B(RegsL_7_7), .C(RegAddrC[0]), 
            .Z(n34902)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31350_3_lut.init = 16'hcaca;
    ORCALUT4 i31322_3_lut (.A(RegsH_6_4), .B(RegsH_7_4), .C(RegAddrC[0]), 
            .Z(n34874)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31322_3_lut.init = 16'hcaca;
    ORCALUT4 i31349_3_lut (.A(RegsL_4_7), .B(RegsL_5_7), .C(RegAddrC[0]), 
            .Z(n34901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31349_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_547 (.A(n37523), .B(RegAddrA[0]), 
            .C(RegAddrA[1]), .D(RegAddrA[2]), .Z(n1_adj_1914[4])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_547.init = 16'h0200;
    ORCALUT4 i31321_3_lut (.A(RegsH_4_4), .B(RegsH_5_4), .C(RegAddrC[0]), 
            .Z(n34873)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31321_3_lut.init = 16'hcaca;
    PFUMX i31352 (.BLUT(n34901), .ALUT(n34902), .C0(RegAddrC[1]), .Z(n34904));
    ORCALUT4 i31348_3_lut (.A(RegsL_2_7), .B(RegsL_3_7), .C(RegAddrC[0]), 
            .Z(n34900)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31348_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_548 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(RegWEL), .Z(n1[1])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_548.init = 16'h1000;
    ORCALUT4 i31347_3_lut (.A(RegsL_0_7), .B(RegsL_1_7), .C(RegAddrC[0]), 
            .Z(n34899)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31347_3_lut.init = 16'hcaca;
    ORCALUT4 i31343_3_lut (.A(RegsL_6_4), .B(RegsL_7_4), .C(RegAddrC[0]), 
            .Z(n34895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31343_3_lut.init = 16'hcaca;
    ORCALUT4 i31342_3_lut (.A(RegsL_4_4), .B(RegsL_5_4), .C(RegAddrC[0]), 
            .Z(n34894)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31342_3_lut.init = 16'hcaca;
    PFUMX i31358 (.BLUT(n34906), .ALUT(n34907), .C0(RegAddrC[1]), .Z(n34910));
    ORCALUT4 i31341_3_lut (.A(RegsL_2_4), .B(RegsL_3_4), .C(RegAddrC[0]), 
            .Z(n34893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31341_3_lut.init = 16'hcaca;
    PFUMX i31254 (.BLUT(n34803), .ALUT(n34804), .C0(\RegAddrB[1] ), .Z(n34806));
    PFUMX i31260 (.BLUT(n34808), .ALUT(n34809), .C0(\RegAddrB[1] ), .Z(n34812));
    PFUMX i31261 (.BLUT(n34810), .ALUT(n34811), .C0(\RegAddrB[1] ), .Z(n34813));
    ORCALUT4 i31320_3_lut (.A(RegsH_2_4), .B(RegsH_3_4), .C(RegAddrC[0]), 
            .Z(n34872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31320_3_lut.init = 16'hcaca;
    ORCALUT4 i31319_3_lut (.A(RegsH_0_4), .B(RegsH_1_4), .C(RegAddrC[0]), 
            .Z(n34871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31319_3_lut.init = 16'hcaca;
    ORCALUT4 i31315_3_lut (.A(RegsH_6_5), .B(RegsH_7_5), .C(RegAddrC[0]), 
            .Z(n34867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31315_3_lut.init = 16'hcaca;
    ORCALUT4 i31314_3_lut (.A(RegsH_4_5), .B(RegsH_5_5), .C(RegAddrC[0]), 
            .Z(n34866)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31314_3_lut.init = 16'hcaca;
    ORCALUT4 i31313_3_lut (.A(RegsH_2_5), .B(RegsH_3_5), .C(RegAddrC[0]), 
            .Z(n34865)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31313_3_lut.init = 16'hcaca;
    ORCALUT4 i31312_3_lut (.A(RegsH_0_5), .B(RegsH_1_5), .C(RegAddrC[0]), 
            .Z(n34864)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31312_3_lut.init = 16'hcaca;
    ORCALUT4 i31308_3_lut (.A(RegsH_6_6), .B(RegsH_7_6), .C(RegAddrC[0]), 
            .Z(n34860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31308_3_lut.init = 16'hcaca;
    ORCALUT4 i31307_3_lut (.A(RegsH_4_6), .B(RegsH_5_6), .C(RegAddrC[0]), 
            .Z(n34859)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31307_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_549 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(n37523), .Z(n1_adj_1914[1])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_549.init = 16'h1000;
    ORCALUT4 i31306_3_lut (.A(RegsH_2_6), .B(RegsH_3_6), .C(RegAddrC[0]), 
            .Z(n34858)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31306_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_550 (.A(RegWEL), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_550.init = 16'h2000;
    ORCALUT4 i31305_3_lut (.A(RegsH_0_6), .B(RegsH_1_6), .C(RegAddrC[0]), 
            .Z(n34857)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31305_3_lut.init = 16'hcaca;
    ORCALUT4 i31301_3_lut (.A(RegsH_6_7), .B(RegsH_7_7), .C(RegAddrC[0]), 
            .Z(n34853)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31301_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_551 (.A(RegWEL), .B(RegAddrA[0]), 
            .C(RegAddrA[1]), .D(RegAddrA[2]), .Z(n1[0])) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_551.init = 16'h0002;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_552 (.A(RegWEL), .B(RegAddrA[0]), 
            .C(RegAddrA[1]), .D(RegAddrA[2]), .Z(n1[4])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_552.init = 16'h0200;
    ORCALUT4 i31300_3_lut (.A(RegsH_4_7), .B(RegsH_5_7), .C(RegAddrC[0]), 
            .Z(n34852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31300_3_lut.init = 16'hcaca;
    ORCALUT4 i31299_3_lut (.A(RegsH_2_7), .B(RegsH_3_7), .C(RegAddrC[0]), 
            .Z(n34851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31299_3_lut.init = 16'hcaca;
    ORCALUT4 i31298_3_lut (.A(RegsH_0_7), .B(RegsH_1_7), .C(RegAddrC[0]), 
            .Z(n34850)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31298_3_lut.init = 16'hcaca;
    ORCALUT4 i31294_3_lut (.A(RegsL_6_0), .B(RegsL_7_0), .C(RegAddrC[0]), 
            .Z(n34846)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31294_3_lut.init = 16'hcaca;
    ORCALUT4 i31293_3_lut (.A(RegsL_4_0), .B(RegsL_5_0), .C(RegAddrC[0]), 
            .Z(n34845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31293_3_lut.init = 16'hcaca;
    ORCALUT4 i31292_3_lut (.A(RegsL_2_0), .B(RegsL_3_0), .C(RegAddrC[0]), 
            .Z(n34844)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31292_3_lut.init = 16'hcaca;
    ORCALUT4 i31291_3_lut (.A(RegsL_0_0), .B(RegsL_1_0), .C(RegAddrC[0]), 
            .Z(n34843)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31291_3_lut.init = 16'hcaca;
    ORCALUT4 i31287_3_lut (.A(RegsL_6_1), .B(RegsL_7_1), .C(RegAddrC[0]), 
            .Z(n34839)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31287_3_lut.init = 16'hcaca;
    ORCALUT4 i31286_3_lut (.A(RegsL_4_1), .B(RegsL_5_1), .C(RegAddrC[0]), 
            .Z(n34838)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31286_3_lut.init = 16'hcaca;
    ORCALUT4 i31285_3_lut (.A(RegsL_2_1), .B(RegsL_3_1), .C(RegAddrC[0]), 
            .Z(n34837)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31285_3_lut.init = 16'hcaca;
    ORCALUT4 i31284_3_lut (.A(RegsL_0_1), .B(RegsL_1_1), .C(RegAddrC[0]), 
            .Z(n34836)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31284_3_lut.init = 16'hcaca;
    ORCALUT4 i31280_3_lut (.A(RegsL_6_2), .B(RegsL_7_2), .C(RegAddrC[0]), 
            .Z(n34832)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31280_3_lut.init = 16'hcaca;
    ORCALUT4 i31279_3_lut (.A(RegsL_4_2), .B(RegsL_5_2), .C(RegAddrC[0]), 
            .Z(n34831)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31279_3_lut.init = 16'hcaca;
    PFUMX i31359 (.BLUT(n34908), .ALUT(n34909), .C0(RegAddrC[1]), .Z(n34911));
    ORCALUT4 i31278_3_lut (.A(RegsL_2_2), .B(RegsL_3_2), .C(RegAddrC[0]), 
            .Z(n34830)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31278_3_lut.init = 16'hcaca;
    ORCALUT4 i31277_3_lut (.A(RegsL_0_2), .B(RegsL_1_2), .C(RegAddrC[0]), 
            .Z(n34829)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31277_3_lut.init = 16'hcaca;
    ORCALUT4 i31273_3_lut (.A(RegsL_6_3), .B(RegsL_7_3), .C(RegAddrC[0]), 
            .Z(n34825)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31273_3_lut.init = 16'hcaca;
    ORCALUT4 i31272_3_lut (.A(RegsL_4_3), .B(RegsL_5_3), .C(RegAddrC[0]), 
            .Z(n34824)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31272_3_lut.init = 16'hcaca;
    ORCALUT4 i31271_3_lut (.A(RegsL_2_3), .B(RegsL_3_3), .C(RegAddrC[0]), 
            .Z(n34823)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31271_3_lut.init = 16'hcaca;
    ORCALUT4 i31270_3_lut (.A(RegsL_0_3), .B(RegsL_1_3), .C(RegAddrC[0]), 
            .Z(n34822)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31270_3_lut.init = 16'hcaca;
    ORCALUT4 i31266_3_lut (.A(RegsL_6_5), .B(RegsL_7_5), .C(RegAddrC[0]), 
            .Z(n34818)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31266_3_lut.init = 16'hcaca;
    ORCALUT4 i31265_3_lut (.A(RegsL_4_5), .B(RegsL_5_5), .C(RegAddrC[0]), 
            .Z(n34817)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31265_3_lut.init = 16'hcaca;
    ORCALUT4 i31264_3_lut (.A(RegsL_2_5), .B(RegsL_3_5), .C(RegAddrC[0]), 
            .Z(n34816)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31264_3_lut.init = 16'hcaca;
    ORCALUT4 i31263_3_lut (.A(RegsL_0_5), .B(RegsL_1_5), .C(RegAddrC[0]), 
            .Z(n34815)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31263_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_553 (.A(RegWEL), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1[2])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_553.init = 16'h0200;
    PFUMX i31365 (.BLUT(n34913), .ALUT(n34914), .C0(RegAddrC[1]), .Z(n34917));
    FD1P3AX i59_60_adj_554 (.D(RegDIL[1]), .SP(n1[1]), .CK(clk_op), .Q(RegsL_1_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i59_60_adj_554.GSR = "ENABLED";
    PFUMX i31366 (.BLUT(n34915), .ALUT(n34916), .C0(RegAddrC[1]), .Z(n34918));
    L6MUX21 i31479 (.D0(n35029), .D1(n35030), .SD(RegAddrA[2]), .Z(RegBusA[6]));
    L6MUX21 i31486 (.D0(n35036), .D1(n35037), .SD(RegAddrA[2]), .Z(RegBusA[14]));
    L6MUX21 i31381 (.D0(n34931), .D1(n34932), .SD(RegAddrA[2]), .Z(RegBusA[13]));
    L6MUX21 i31388 (.D0(n34938), .D1(n34939), .SD(RegAddrA[2]), .Z(RegBusA[9]));
    L6MUX21 i31395 (.D0(n34945), .D1(n34946), .SD(RegAddrA[2]), .Z(RegBusA[8]));
    L6MUX21 i31402 (.D0(n34952), .D1(n34953), .SD(RegAddrA[2]), .Z(RegBusA[10]));
    L6MUX21 i31409 (.D0(n34959), .D1(n34960), .SD(RegAddrA[2]), .Z(RegBusA[3]));
    L6MUX21 i31416 (.D0(n34966), .D1(n34967), .SD(RegAddrA[2]), .Z(RegBusA[4]));
    L6MUX21 i31423 (.D0(n34973), .D1(n34974), .SD(RegAddrA[2]), .Z(RegBusA[5]));
    L6MUX21 i31430 (.D0(n34980), .D1(n34981), .SD(RegAddrA[2]), .Z(RegBusA[2]));
    L6MUX21 i31437 (.D0(n34987), .D1(n34988), .SD(RegAddrA[2]), .Z(RegBusA[0]));
    L6MUX21 i31444 (.D0(n34994), .D1(n34995), .SD(RegAddrA[2]), .Z(RegBusA[1]));
    L6MUX21 i31451 (.D0(n35001), .D1(n35002), .SD(RegAddrA[2]), .Z(RegBusA[12]));
    L6MUX21 i31458 (.D0(n35008), .D1(n35009), .SD(RegAddrA[2]), .Z(RegBusA[11]));
    L6MUX21 i31465 (.D0(n35015), .D1(n35016), .SD(RegAddrA[2]), .Z(RegBusA[7]));
    L6MUX21 i31472 (.D0(n35022), .D1(n35023), .SD(RegAddrA[2]), .Z(RegBusA[15]));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_555 (.A(RegWEL), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1[7])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_555.init = 16'h8000;
    PFUMX i31478 (.BLUT(n35027), .ALUT(n35028), .C0(RegAddrA[1]), .Z(n35030));
    PFUMX i31477 (.BLUT(n35025), .ALUT(n35026), .C0(RegAddrA[1]), .Z(n35029));
    PFUMX i31484 (.BLUT(n35032), .ALUT(n35033), .C0(RegAddrA[1]), .Z(n35036));
    PFUMX i31485 (.BLUT(n35034), .ALUT(n35035), .C0(RegAddrA[1]), .Z(n35037));
    PFUMX i31372 (.BLUT(n34920), .ALUT(n34921), .C0(RegAddrC[1]), .Z(n34924));
    PFUMX i31379 (.BLUT(n34927), .ALUT(n34928), .C0(RegAddrA[1]), .Z(n34931));
    PFUMX i31380 (.BLUT(n34929), .ALUT(n34930), .C0(RegAddrA[1]), .Z(n34932));
    PFUMX i31386 (.BLUT(n34934), .ALUT(n34935), .C0(RegAddrA[1]), .Z(n34938));
    PFUMX i31387 (.BLUT(n34936), .ALUT(n34937), .C0(RegAddrA[1]), .Z(n34939));
    PFUMX i31393 (.BLUT(n34941), .ALUT(n34942), .C0(RegAddrA[1]), .Z(n34945));
    PFUMX i31394 (.BLUT(n34943), .ALUT(n34944), .C0(RegAddrA[1]), .Z(n34946));
    PFUMX i31400 (.BLUT(n34948), .ALUT(n34949), .C0(RegAddrA[1]), .Z(n34952));
    PFUMX i31401 (.BLUT(n34950), .ALUT(n34951), .C0(RegAddrA[1]), .Z(n34953));
    PFUMX i31407 (.BLUT(n34955), .ALUT(n34956), .C0(RegAddrA[1]), .Z(n34959));
    PFUMX i31408 (.BLUT(n34957), .ALUT(n34958), .C0(RegAddrA[1]), .Z(n34960));
    PFUMX i31414 (.BLUT(n34962), .ALUT(n34963), .C0(RegAddrA[1]), .Z(n34966));
    PFUMX i31415 (.BLUT(n34964), .ALUT(n34965), .C0(RegAddrA[1]), .Z(n34967));
    PFUMX i31421 (.BLUT(n34969), .ALUT(n34970), .C0(RegAddrA[1]), .Z(n34973));
    PFUMX i31422 (.BLUT(n34971), .ALUT(n34972), .C0(RegAddrA[1]), .Z(n34974));
    PFUMX i31428 (.BLUT(n34976), .ALUT(n34977), .C0(RegAddrA[1]), .Z(n34980));
    PFUMX i31429 (.BLUT(n34978), .ALUT(n34979), .C0(RegAddrA[1]), .Z(n34981));
    PFUMX i31435 (.BLUT(n34983), .ALUT(n34984), .C0(RegAddrA[1]), .Z(n34987));
    PFUMX i31436 (.BLUT(n34985), .ALUT(n34986), .C0(RegAddrA[1]), .Z(n34988));
    PFUMX i31442 (.BLUT(n34990), .ALUT(n34991), .C0(RegAddrA[1]), .Z(n34994));
    PFUMX i31443 (.BLUT(n34992), .ALUT(n34993), .C0(RegAddrA[1]), .Z(n34995));
    PFUMX i31449 (.BLUT(n34997), .ALUT(n34998), .C0(RegAddrA[1]), .Z(n35001));
    PFUMX i31450 (.BLUT(n34999), .ALUT(n35000), .C0(RegAddrA[1]), .Z(n35002));
    PFUMX i31456 (.BLUT(n35004), .ALUT(n35005), .C0(RegAddrA[1]), .Z(n35008));
    PFUMX i31457 (.BLUT(n35006), .ALUT(n35007), .C0(RegAddrA[1]), .Z(n35009));
    PFUMX i31463 (.BLUT(n35011), .ALUT(n35012), .C0(RegAddrA[1]), .Z(n35015));
    PFUMX i31464 (.BLUT(n35013), .ALUT(n35014), .C0(RegAddrA[1]), .Z(n35016));
    PFUMX i31470 (.BLUT(n35018), .ALUT(n35019), .C0(RegAddrA[1]), .Z(n35022));
    PFUMX i31471 (.BLUT(n35020), .ALUT(n35021), .C0(RegAddrA[1]), .Z(n35023));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_556 (.A(RegWEL), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_556.init = 16'h0800;
    
endmodule
//
// Verilog Description of module tv80_mcode
//

module tv80_mcode (ISet, Set_Addr_To_2__N_1413, n37700, n37859, Ap, 
            ACC, n2311, \IR[1] , \IR[5] , \IR[0] , \IncDec_16[1] , 
            \IncDec_16[2] , n37803, \IR[4] , n39840, Set_BusA_To, 
            n37824, \mc[3] , \mc[5] , \tstate[2] , n37754, n6, clk_op_enable_182, 
            \IncDec_16[0] , n27, n37805, n37619, \tstate[1] , n37548, 
            n39863, \ALU_Op_3__N_1269[3] , \Set_BusA_To_3__N_1198[2] , 
            n37791, mcycles_d, LDZ, n17, NoRead_N_1539, Save_ALU, 
            n32574, \IR[6] , \IR[2] , n37756, SP, n1938, n39873, 
            \IR[7] , n39854, \mc[2] , \Set_BusA_To_3__N_1202[0] , n38, 
            n37769, n39859, n39861, n39867, n39869, n15889, \ts[0] , 
            n5, \mc[6] , n31176, \ts[3] , n31172, n39845, n37813, 
            n37724, n39841, n16830, n15839, di_reg, n39865, \F[4] , 
            n15, n39842, n37555, n39843, PreserveC, n15803, n39871, 
            n37620, \Set_Addr_To[1] , n37806, n37563, n37807, \Q_7__N_1718[0] , 
            BusB, n1177, \BusA[1] , n37741, \BusA[2] , \BusA[3] , 
            n37728, \mc[4] , n16241, n20, n4, \ts[4] , n37587, 
            n37656, n37858, n37792, \RegAddrB_r[1] , \RegAddrB[1] , 
            n37698, n15_adj_7, n37636, n32534, n6_adj_8, n39857, 
            n10904, n37706, n37638, n37569, last_tstate, n33676, 
            n37841, n37710, n37720, n37812, n14261, \IncDec_16_3__N_1012[3] , 
            \ID16_B[15] , Jump, n33980, n10, n33833, n37784, n1175, 
            \ALU_Op_r[3] , Save_ALU_r, n37755, RegWEH_N_867, n26, 
            JumpE_N_1507, n3, n37845, n37750, \Set_Addr_To_2__N_1044[2] , 
            n32394, n37583, n37572, n37625, n34731, n37821, n33545, 
            n1165, n37512, n33981, n37596, n32696, n28, n32784, 
            n4_adj_9, n37826, n23273, n22510, n37685, n33919, nxt_rd_n, 
            write, n9490, clk_op_enable_170, n37775, \BusA[7] , \BusA[6] , 
            n14257, n37510, n37539, n37837, n37516, n37517, n37758, 
            n37763, n37641, n23316, n37680, n37588, \ALU_Op_r[1] , 
            n32621, n37686, n37573, n37574, n36617, n36618, n2117, 
            n22293, n32891, ExchangeRp, n33268, n37856, n47, n28_adj_10, 
            n957, n37579, n37584, n64, n32557, \Q_7__N_1599[7] , 
            F_Out_7__N_1636, n37866, n18, n21, n8, nxt_mreq_n, n37562, 
            n22859, clk_op_enable_127, Alternate, Alternate_N_899, Read_To_Acc, 
            n37576, n37777, n57, stop, \Fp[3] , n37393, n37394, 
            n37622, \Special_LD[0] , n23097, n23405, n23093, n37703, 
            \Fp[0] , n32965, n908, I_BTR, n37627, n37577, clk_op_enable_89, 
            n37547, n8_adj_11, n33013, iorq_N_329, n37513, n2185, 
            \ALU_Op_3__N_1040[3] , \tstates[1] , n33731, \F_Out[1] , 
            n37582, n37624, n32647, \ISet_1__N_641[0] , n37707, Set_BusB_To, 
            n6_adj_12, n93, n26_adj_13, n37553, clk_op_enable_204, 
            n100, n5_adj_14, n37886, n9, n49, n48, \tstates[2] , 
            \F[2] , \F[7] , \F[6] , \F[0] , n30107, n33539, n37863, 
            n22386, n34340, \Fp[4] , n33871, n32900, n32987, n32973, 
            n12, Read_To_Reg, n37600, Halt_FF, n34386, clk_op_enable_20, 
            n35158, Auto_Wait_t1, clk_op_enable_325, n37632, \TStates_2__N_1410[1] , 
            n37787, n37514, n609, n7, n15935, n7_adj_15, n33, 
            n33743, n34236, n22352, n37695, n33232, n37551, n34491, 
            n37464, n933, n22513, RegBusC, SP16, n2582, n37461, 
            \Save_Mux[1] , n37533, \F_7__N_669[1] , n37676, n37269, 
            n37273) /* synthesis syn_module_defined=1 */ ;
    input [1:0]ISet;
    output [2:0]Set_Addr_To_2__N_1413;
    input n37700;
    output n37859;
    input [7:0]Ap;
    input [7:0]ACC;
    output [7:0]n2311;
    input \IR[1] ;
    input \IR[5] ;
    input \IR[0] ;
    output \IncDec_16[1] ;
    output \IncDec_16[2] ;
    output n37803;
    input \IR[4] ;
    output n39840;
    output [3:0]Set_BusA_To;
    output n37824;
    input \mc[3] ;
    input \mc[5] ;
    input \tstate[2] ;
    output n37754;
    input n6;
    output clk_op_enable_182;
    output \IncDec_16[0] ;
    output n27;
    output n37805;
    output n37619;
    input \tstate[1] ;
    output n37548;
    input n39863;
    input \ALU_Op_3__N_1269[3] ;
    input \Set_BusA_To_3__N_1198[2] ;
    output n37791;
    output [2:0]mcycles_d;
    output LDZ;
    output n17;
    output NoRead_N_1539;
    output Save_ALU;
    input n32574;
    input \IR[6] ;
    input \IR[2] ;
    output n37756;
    input [15:0]SP;
    output [15:0]n1938;
    input n39873;
    input \IR[7] ;
    output n39854;
    input \mc[2] ;
    input \Set_BusA_To_3__N_1202[0] ;
    output n38;
    output n37769;
    input n39859;
    input n39861;
    input n39867;
    input n39869;
    input n15889;
    input \ts[0] ;
    output n5;
    input \mc[6] ;
    output n31176;
    input \ts[3] ;
    output n31172;
    output n39845;
    output n37813;
    output n37724;
    output n39841;
    output n16830;
    output n15839;
    input [7:0]di_reg;
    input n39865;
    input \F[4] ;
    output n15;
    output n39842;
    output n37555;
    output n39843;
    output PreserveC;
    output n15803;
    input n39871;
    output n37620;
    output \Set_Addr_To[1] ;
    output n37806;
    output n37563;
    output n37807;
    input \Q_7__N_1718[0] ;
    input [7:0]BusB;
    output [7:0]n1177;
    input \BusA[1] ;
    output n37741;
    input \BusA[2] ;
    input \BusA[3] ;
    output n37728;
    input \mc[4] ;
    input n16241;
    output n20;
    output n4;
    input \ts[4] ;
    output n37587;
    output n37656;
    output n37858;
    output n37792;
    input \RegAddrB_r[1] ;
    output \RegAddrB[1] ;
    output n37698;
    output n15_adj_7;
    output n37636;
    output n32534;
    input n6_adj_8;
    input n39857;
    output n10904;
    output n37706;
    output n37638;
    output n37569;
    input last_tstate;
    output n33676;
    output n37841;
    output n37710;
    output n37720;
    output n37812;
    output n14261;
    output \IncDec_16_3__N_1012[3] ;
    output \ID16_B[15] ;
    output Jump;
    input n33980;
    input n10;
    output n33833;
    output n37784;
    input n1175;
    input \ALU_Op_r[3] ;
    input Save_ALU_r;
    input n37755;
    output RegWEH_N_867;
    input n26;
    output JumpE_N_1507;
    input n3;
    output n37845;
    output n37750;
    output \Set_Addr_To_2__N_1044[2] ;
    output n32394;
    output n37583;
    output n37572;
    output n37625;
    output n34731;
    output n37821;
    output n33545;
    output n1165;
    output n37512;
    output n33981;
    output n37596;
    output n32696;
    output n28;
    output n32784;
    output n4_adj_9;
    output n37826;
    output n23273;
    output n22510;
    output n37685;
    input n33919;
    output nxt_rd_n;
    output write;
    output n9490;
    output clk_op_enable_170;
    output n37775;
    input \BusA[7] ;
    input \BusA[6] ;
    output n14257;
    input n37510;
    output n37539;
    output n37837;
    output n37516;
    output n37517;
    output n37758;
    output n37763;
    output n37641;
    output n23316;
    output n37680;
    output n37588;
    input \ALU_Op_r[1] ;
    output n32621;
    output n37686;
    output n37573;
    output n37574;
    input n36617;
    output n36618;
    output n2117;
    output n22293;
    output n32891;
    output ExchangeRp;
    output n33268;
    output n37856;
    output n47;
    input n28_adj_10;
    output n957;
    output n37579;
    output n37584;
    output n64;
    output n32557;
    input \Q_7__N_1599[7] ;
    output F_Out_7__N_1636;
    input n37866;
    output n18;
    output n21;
    input n8;
    output nxt_mreq_n;
    output n37562;
    output n22859;
    output clk_op_enable_127;
    input Alternate;
    output Alternate_N_899;
    output Read_To_Acc;
    output n37576;
    output n37777;
    output n57;
    output stop;
    input \Fp[3] ;
    input n37393;
    output n37394;
    output n37622;
    output \Special_LD[0] ;
    output n23097;
    output n23405;
    output n23093;
    output n37703;
    input \Fp[0] ;
    input n32965;
    output n908;
    output I_BTR;
    output n37627;
    output n37577;
    output clk_op_enable_89;
    output n37547;
    output n8_adj_11;
    output n33013;
    output iorq_N_329;
    input n37513;
    output n2185;
    output \ALU_Op_3__N_1040[3] ;
    output \tstates[1] ;
    input n33731;
    input \F_Out[1] ;
    input n37582;
    output n37624;
    input n32647;
    output \ISet_1__N_641[0] ;
    output n37707;
    output [3:0]Set_BusB_To;
    output n6_adj_12;
    output n93;
    output n26_adj_13;
    output n37553;
    input clk_op_enable_204;
    output n100;
    input n5_adj_14;
    output n37886;
    input n9;
    input n49;
    input n48;
    output \tstates[2] ;
    input \F[2] ;
    input \F[7] ;
    input \F[6] ;
    input \F[0] ;
    input n30107;
    output n33539;
    input n37863;
    output n22386;
    output n34340;
    input \Fp[4] ;
    input n33871;
    output n32900;
    input n32987;
    input n32973;
    output n12;
    output Read_To_Reg;
    input n37600;
    input Halt_FF;
    output n34386;
    output clk_op_enable_20;
    output n35158;
    input Auto_Wait_t1;
    output clk_op_enable_325;
    output n37632;
    input \TStates_2__N_1410[1] ;
    output n37787;
    output n37514;
    output n609;
    output n7;
    input n15935;
    output n7_adj_15;
    output n33;
    output n33743;
    input n34236;
    output n22352;
    output n37695;
    input n33232;
    input n37551;
    output n34491;
    input n37464;
    input n933;
    output n22513;
    input [15:0]RegBusC;
    input [15:0]SP16;
    output [15:0]n2582;
    input n37461;
    input \Save_Mux[1] ;
    input n37533;
    output \F_7__N_669[1] ;
    input n37676;
    input n37269;
    output n37273;
    
    
    wire n34034, n34190, n39848, n37910, n32708;
    wire [2:0]n6861;
    
    wire n1871;
    wire [2:0]n8222;
    wire [2:0]MCycles_2__N_998;
    wire [2:0]MCycles_2__N_1001;
    
    wire n8_c;
    wire [3:0]n2230;
    
    wire n14265, n34749, n14263, n37652, n33866, n14271, n34658, 
        n31418;
    wire [3:0]Set_BusB_To_3__N_1400;
    wire [3:0]Set_BusB_To_3__N_1028;
    
    wire n37744, n17336, n12290, n14270, n34660, n13637;
    wire [3:0]IncDec_16_3__N_1012;
    
    wire n37749, n19, n33727;
    wire [3:0]Set_BusA_To_3__N_1356;
    
    wire n10079, n34453, n10080, n37790, n31420, n37811;
    wire [0:0]n6013;
    
    wire n31656, n8_adj_1763, n14272, n14273, n34664, n37091, n37090, 
        n37092, n37903, n37904, n39839, n37905, n37570, n37662, 
        n14;
    wire [0:0]n6732;
    
    wire Inc_PC_N_1430, Inc_PC_N_1421, n3_c;
    wire [2:0]MCycles_2__N_1004;
    
    wire n23281, n33168, n36180, n36179, n33913, IORQ_N_1479;
    wire [0:0]n6820;
    
    wire NoRead_N_1542;
    wire [0:0]n6787;
    
    wire Save_ALU_N_1470, Write_N_1546, Write_N_1557;
    wire [0:0]n6721;
    
    wire n37900, n37901, n37902, n33687;
    wire [0:0]n5733;
    wire [0:0]n5399;
    
    wire n32719;
    wire [0:0]n5414;
    
    wire n36169, n36177, n4462, n36178;
    wire [0:0]n6058;
    wire [0:0]n6055;
    wire [0:0]n6061;
    
    wire n7259;
    wire [2:0]Set_Addr_To_2__N_1044;
    
    wire n37855;
    wire [0:0]n6049;
    wire [0:0]n6052;
    
    wire n34510, n37746, n39838, n41, n23, n37629, n19_adj_1764, 
        n37704, n11025, n32608;
    wire [0:0]n5405;
    
    wire n11103, n11350, n37650, n36867, n32544, n37607, n23605, 
        n33192, n37794, n34320;
    wire [0:0]n4749;
    wire [0:0]n4746;
    wire [0:0]n4770;
    
    wire n37672, n37702, n37705, n8_adj_1765, n23307, n37691, n33653, 
        n36165;
    wire [0:0]n4108;
    
    wire n36166;
    wire [0:0]n4773;
    wire [0:0]n4776;
    
    wire n37271, n37272, n37779, n16282, n37678, n36527, n36528, 
        n32858, n32548;
    wire [0:0]n4680;
    wire [0:0]n4734;
    
    wire n37696;
    wire [0:0]n5739;
    wire [0:0]n5736;
    
    wire n37552, n37913, n37912, n2;
    wire [0:0]n4764;
    
    wire n36107, n3_adj_1766, n37915, n37922, n23437, n37926, n37719, 
        n37925, n37714, n37928, n37932, n23491, n604, n37931, 
        n37604, n32360, n37560, n33996, n37671, n17321, n4_c, 
        n8_adj_1767, n39837, n37595, n15_adj_1768, n6_adj_1769, n32837, 
        n37541, n37743, n37877, n16287, n37934, n37664, n37879, 
        n37878, n4_adj_1770, n37935, n1030, n37550, n37544, n22, 
        n37616, n32855, n15_adj_1771, n37659, n37684, n37765, n37734, 
        n37882, n37881, n34021, n36868, n36869;
    wire [3:0]n1746;
    
    wire n5_adj_1772, n12292, n37798, n37885, n36535, n105, n36537, 
        n37732;
    wire [0:0]n6798;
    
    wire PreserveC_N_1475, n37838;
    wire [2:0]TStates_2__N_1407;
    
    wire n16990, n16, n12_c, n50;
    wire [2:0]TStates_2__N_1404;
    
    wire n32619;
    wire [0:0]n5318;
    wire [0:0]n5372;
    
    wire n11, n34336, n8_adj_1773, n37929, n36615, n37467, n37688;
    wire [0:0]n4767;
    
    wire n16251, n38794, n37799, n37630;
    wire [0:0]n4758;
    
    wire n34083, n4754, n37462, n37463;
    wire [0:0]n4719;
    wire [0:0]n4689;
    wire [0:0]n4743;
    
    wire n30674, n30675, n37614, n30676, n37864, n4_adj_1774, n37804, 
        n37466, n37737, n33672, n32675, n1865, n37597, n37677, 
        n14_adj_1775, n34322, n23028, n37701, n8_adj_1776, n36314, 
        n36313, n36315, n37713, n37683, n8_adj_1777, n12_adj_1778;
    wire [3:0]Set_BusA_To_3__N_1171;
    wire [3:0]Set_BusA_To_3__N_1020;
    
    wire n9_c, n23387, n39836, n15_adj_1779, n7_c, n32376, n16933, 
        n37797, n37717;
    wire [0:0]n6046;
    
    wire n32134, n14_adj_1780, n37643, n37711, n37601, n37692, n32537, 
        n8_adj_1782, n7233, ALU_Op_3__N_1387, n37739, n32370, n4_adj_1783, 
        n8_adj_1784, n37697, n23305, n23177, n34290, n37729, n23391;
    wire [0:0]n6025;
    
    wire n37887, n37857, n33574, n32688, n37556, n11_adj_1786, n37883;
    wire [0:0]n5408;
    
    wire n37785, n19_adj_1788, n37543;
    wire [0:0]n4529;
    
    wire n37655, n37589, n32368, n32869, n37708, n23658, n36347, 
        n32373, n37592;
    wire [2:0]n1656;
    
    wire n37665, n4_adj_1789, n10_c, n16728, n37610, n63, n12_adj_1790, 
        n10077, n37712, n914, n32809, n37668, n37860, n13, n37760, 
        n37736, n25, n37814, Jump_N_1505, Jump_N_1487, n34334, n37839, 
        n23037, n34330, n8_adj_1792, n12_adj_1793, n18_c, n16919, 
        n37534, n6_adj_1794, n37923, n16969, n30031, n33070, n33319, 
        n6_adj_1795, n18_adj_1797, n13_adj_1798, n37715, n24, n10_adj_1799, 
        n21_c, n7237, n4_adj_1800, n10_adj_1801, n18_adj_1802;
    wire [2:0]TStates_2__N_1410;
    
    wire n8_adj_1803, n3_adj_1804, n12_adj_1805, n2_adj_1806, n7_adj_1807, 
        n4_adj_1808, n3_adj_1809, n38796, Save_ALU_N_1468, n38797, 
        n4_adj_1810, n37648, n37778, n32357, n32358, n37894, n37895, 
        n37896, n20_adj_1811, n23503, n37578, n37593, n34234, n32375, 
        n51, n37817;
    wire [0:0]n5420;
    wire [0:0]n5402;
    wire [0:0]n5417;
    
    wire n29971, n34310, n37460, n32865, n37608, n15_adj_1812, n33345, 
        n37884, n37675, n37663, n37735, n37661, n5_adj_1813, n25_adj_1814, 
        n16775, n37667, n37693, n16772, n37651, n37605, n37842, 
        n37825, n37843, n3_adj_1815, n33799, n50_adj_1816, n5_adj_1818, 
        n37670, n39850, n7_adj_1819, n16849, n39847, n9901, n37509, 
        n15_adj_1820, n1, n34217, n22994;
    wire [3:0]IncDec_16_3__N_1212;
    
    wire n50_adj_1821, n37565, n37829, n4_adj_1822;
    wire [3:0]n2207;
    
    wire n39849, n37609, n37613, n6_adj_1823, n21_adj_1824, n28_adj_1825, 
        n26_adj_1826, n16890, n37909, n37783, n37674, n37618, n23363, 
        n32, n33886, n37782, n37786, n37718, n37615, n37611, n4_adj_1827, 
        n6_adj_1828, n7_adj_1829, n33407, n34294, n37767, n37699, 
        n37617, n4_adj_1830, n33180, n12_adj_1831, n18_adj_1832, n37764;
    wire [3:0]Set_BusA_To_3__N_1182;
    
    wire n9_adj_1833, n37776, n32707, n37849, n19_adj_1834, n37766, 
        n37853, n37893, n37687, n23623, n37571, n37594, n37890, 
        n37892, n37738, n37747, n37603, n17173, n11326, n32877, 
        n37647, n37679, n34246, n37891, n8_adj_1836, n36312, n34306;
    wire [0:0]n5423;
    
    wire n7_adj_1837, n33750, n34327, n36530, n32673, n18_adj_1840;
    wire [0:0]n6362;
    
    wire n5_adj_1841, n23230, n36531, n37861, n36529, n23656, n34219, 
        n6_adj_1843, n11_adj_1844, Read_To_Acc_N_1464, n32665, n34115, 
        n37682, n37606, n37568, n16909, n34258, n4_adj_1845, n37591, 
        n7_adj_1846, n4_adj_1847, n32597, n16_adj_1848, n10248, n37564, 
        n16443, n4_adj_1849, n7_adj_1850, n14_adj_1851, n20_adj_1852;
    wire [0:0]n6034;
    
    wire n10_adj_1853, n37637, n5_adj_1854, n12_adj_1855, n7292, n2_adj_1857, 
        n33824, n12288, n33911, n36870, n22_adj_1858, n9_adj_1859, 
        n37669, n37633, n37653, n5_adj_1860, n9_adj_1861, n10_adj_1862, 
        n4_adj_1863, n23668, n37876, n6_adj_1864, n37666;
    wire [0:0]n5727;
    
    wire n37911, n34131, n37612;
    wire [2:0]TStates_2__N_1007;
    
    wire n18_adj_1865, n37598, n33973, n5_adj_1866, n37536, n8_adj_1867, 
        n37545, n32815, n23654, n4_adj_1868, n15_adj_1869, n13_adj_1870, 
        n11_adj_1871, n23417, n33768, n10_adj_1872, n9_adj_1873, n37930, 
        n37635, n10_adj_1874, n37660, n7_adj_1875, n16_adj_1876, n26_adj_1877, 
        n5_adj_1878, n6_adj_1879, n33899, n32768, n8_adj_1880, n9_adj_1882, 
        n61, n44, n41_adj_1884, n37469, n33478, n8_adj_1885, n32842, 
        n33874, n14_adj_1888, n34238, n6_adj_1889, n7_adj_1890, n8_adj_1891, 
        n10_adj_1892, n17014, n37875, n14_adj_1893, n24_adj_1894, 
        n30, n34430, n34338, n23642, n6_adj_1895, n38798, n38795, 
        Read_To_Reg_N_1452, n6_adj_1897, n32168, n37874, n10_adj_1898;
    wire [0:0]n6043;
    
    wire n37880, n33_c, n37914;
    wire [0:0]n6371;
    
    wire n1_adj_1899, n90, n37681, n43, n8_adj_1900, n7_adj_1901, 
        n34332, n34354, n22_adj_1902, n28_adj_1903, n8_adj_1904, n9_adj_1905, 
        n32903, n7_adj_1906, n45, n6_adj_1910;
    wire [2:0]Set_Addr_To_2__N_1413_c;
    
    wire n33496, n37933, n37270, n36311, n37468, n37465, n7_adj_1911, 
        n53, n50_adj_1912, n4_adj_1913;
    
    PFUMX i21 (.BLUT(n34034), .ALUT(n34190), .C0(ISet[1]), .Z(Set_Addr_To_2__N_1413[1]));
    ORCALUT4 mux_1460_i1_3_lut_4_lut (.A(n37700), .B(n37859), .C(Ap[0]), 
            .D(ACC[0]), .Z(n2311[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1460_i1_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 i19067_4_lut_then_4_lut (.A(n39848), .B(\IR[1] ), .C(\IR[5] ), 
            .D(\IR[0] ), .Z(n37910)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i19067_4_lut_then_4_lut.init = 16'h0080;
    PFUMX mux_5943_i3 (.BLUT(n32708), .ALUT(n6861[2]), .C0(n1871), .Z(n8222[2]));
    PFUMX i22 (.BLUT(MCycles_2__N_998[0]), .ALUT(MCycles_2__N_1001[0]), 
          .C0(ISet[0]), .Z(n8_c));
    PFUMX i11139 (.BLUT(n2230[1]), .ALUT(n14265), .C0(n34749), .Z(\IncDec_16[1] ));
    PFUMX i11137 (.BLUT(n2230[2]), .ALUT(n14263), .C0(n34749), .Z(\IncDec_16[2] ));
    ORCALUT4 i2_4_lut_4_lut (.A(n37803), .B(n37652), .C(\IR[4] ), .D(n39840), 
            .Z(n33866)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h0054;
    L6MUX21 mux_1149_i3 (.D0(n8222[2]), .D1(n14271), .SD(n34658), .Z(Set_BusA_To[2]));
    PFUMX i21_adj_203 (.BLUT(n31418), .ALUT(Set_BusB_To_3__N_1400[2]), .C0(ISet[1]), 
          .Z(Set_BusB_To_3__N_1028[2]));
    ORCALUT4 i13841_3_lut_4_lut_4_lut (.A(n37803), .B(n37824), .C(n37744), 
            .D(\mc[3] ), .Z(n17336)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;
    defparam i13841_3_lut_4_lut_4_lut.init = 16'h4f44;
    PFUMX i11144 (.BLUT(n12290), .ALUT(n14270), .C0(n34660), .Z(n14271));
    ORCALUT4 i23_4_lut (.A(\mc[5] ), .B(\tstate[2] ), .C(n37754), .D(n6), 
            .Z(clk_op_enable_182)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i23_4_lut.init = 16'hca0a;
    PFUMX i10613 (.BLUT(n13637), .ALUT(IncDec_16_3__N_1012[0]), .C0(n37749), 
          .Z(\IncDec_16[0] ));
    PFUMX i42 (.BLUT(n19), .ALUT(n33727), .C0(ISet[1]), .Z(n27));
    ORCALUT4 i2_3_lut_rep_445_4_lut (.A(n37805), .B(n37619), .C(\tstate[1] ), 
            .D(n37824), .Z(n37548)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_3_lut_rep_445_4_lut.init = 16'h8000;
    PFUMX i7364 (.BLUT(Set_BusA_To_3__N_1356[0]), .ALUT(n10079), .C0(n34453), 
          .Z(n10080));
    ORCALUT4 i1_3_lut_rep_687 (.A(\IR[4] ), .B(\IR[5] ), .C(\IR[1] ), 
            .Z(n37790)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_3_lut_rep_687.init = 16'h4040;
    PFUMX i21_adj_204 (.BLUT(n31420), .ALUT(Set_BusB_To_3__N_1400[0]), .C0(ISet[1]), 
          .Z(Set_BusB_To_3__N_1028[0]));
    ORCALUT4 i1_2_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(\IR[1] ), .D(n37811), 
            .Z(n6013[0])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_4_lut.init = 16'h4000;
    PFUMX i21_adj_205 (.BLUT(n31656), .ALUT(Set_BusB_To_3__N_1400[1]), .C0(ISet[1]), 
          .Z(Set_BusB_To_3__N_1028[1]));
    PFUMX i22_adj_206 (.BLUT(MCycles_2__N_998[1]), .ALUT(MCycles_2__N_1001[1]), 
          .C0(ISet[0]), .Z(n8_adj_1763));
    PFUMX mux_1149_i2 (.BLUT(n14272), .ALUT(n14273), .C0(n34664), .Z(Set_BusA_To[1]));
    PFUMX i33045 (.BLUT(n37091), .ALUT(n37090), .C0(n39863), .Z(n37092));
    PFUMX i33283 (.BLUT(n37903), .ALUT(n37904), .C0(n39839), .Z(n37905));
    ORCALUT4 i1_2_lut_rep_688 (.A(\ALU_Op_3__N_1269[3] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .Z(n37791)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1365[23] 1388[30])
    defparam i1_2_lut_rep_688.init = 16'heeee;
    ORCALUT4 i4_4_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n37570), .D(n37662), .Z(n14)) /* synthesis lut_function=(A (C+!(D))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1365[23] 1388[30])
    defparam i4_4_lut_4_lut.init = 16'he0ea;
    PFUMX mux_4632_i1 (.BLUT(n6732[0]), .ALUT(Inc_PC_N_1430), .C0(ISet[1]), 
          .Z(Inc_PC_N_1421));
    PFUMX i12 (.BLUT(n3_c), .ALUT(MCycles_2__N_1004[2]), .C0(ISet[1]), 
          .Z(mcycles_d[2]));
    ORCALUT4 i29675_2_lut_3_lut (.A(\ALU_Op_3__N_1269[3] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n23281), .Z(n33168)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1365[23] 1388[30])
    defparam i29675_2_lut_3_lut.init = 16'hfefe;
    PFUMX i32502 (.BLUT(n36180), .ALUT(n36179), .C0(ISet[1]), .Z(LDZ));
    PFUMX i21641 (.BLUT(n33913), .ALUT(IORQ_N_1479), .C0(ISet[1]), .Z(n17));
    PFUMX mux_4696_i1 (.BLUT(n6820[0]), .ALUT(NoRead_N_1542), .C0(ISet[1]), 
          .Z(NoRead_N_1539));
    PFUMX mux_4672_i1 (.BLUT(n6787[0]), .ALUT(Save_ALU_N_1470), .C0(ISet[1]), 
          .Z(Save_ALU));
    PFUMX mux_4620_i1 (.BLUT(Write_N_1546), .ALUT(Write_N_1557), .C0(ISet[0]), 
          .Z(n6721[0]));
    PFUMX i33281 (.BLUT(n37900), .ALUT(n37901), .C0(n32574), .Z(n37902));
    PFUMX mux_3881_i1 (.BLUT(n17336), .ALUT(n33687), .C0(\IR[6] ), .Z(n5733[0]));
    PFUMX mux_3642_i1 (.BLUT(n5399[0]), .ALUT(n32719), .C0(\IR[6] ), .Z(n5414[0]));
    PFUMX i32499 (.BLUT(n36169), .ALUT(n36177), .C0(n4462), .Z(n36178));
    L6MUX21 mux_4126_i1 (.D0(n6058[0]), .D1(n6055[0]), .SD(n4462), .Z(n6061[0]));
    ORCALUT4 i32218_2_lut (.A(\IR[2] ), .B(\IR[0] ), .Z(n7259)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i32218_2_lut.init = 16'h1111;
    ORCALUT4 mux_1223_i12_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[11]), .D(ACC[3]), .Z(n1938[11])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i12_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i1_2_lut_rep_772 (.A(\IR[1] ), .B(n39873), .C(n37855), .D(\IR[2] ), 
            .Z(n39839)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_2_lut_rep_772.init = 16'hefff;
    PFUMX mux_4124_i1 (.BLUT(n6049[0]), .ALUT(n6052[0]), .C0(n34510), 
          .Z(n6058[0]));
    ORCALUT4 i1_2_lut_rep_771 (.A(\IR[7] ), .B(\IR[6] ), .C(n37746), .Z(n39838)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_771.init = 16'hfbfb;
    ORCALUT4 IR_2__bdd_4_lut_33044_4_lut (.A(\IR[2] ), .B(\IR[4] ), .C(\IR[5] ), 
            .D(\IR[1] ), .Z(n37090)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;
    defparam IR_2__bdd_4_lut_33044_4_lut.init = 16'h4ccc;
    ORCALUT4 i1_4_lut_4_lut (.A(\IR[0] ), .B(n39854), .C(n41), .D(\IR[2] ), 
            .Z(n23)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hf7f0;
    ORCALUT4 i1_4_lut_4_lut_adj_207 (.A(n37629), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\mc[2] ), .D(\ALU_Op_3__N_1269[3] ), .Z(n19_adj_1764)) /* synthesis lut_function=(!(A+!(B (D)+!B (C+(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_207.init = 16'h5510;
    ORCALUT4 MCycles_2__N_1055_I_0_1677_Select_0_i38_4_lut_4_lut (.A(\Set_BusA_To_3__N_1202[0] ), 
            .B(n37704), .C(\Set_BusA_To_3__N_1198[2] ), .D(\mc[2] ), .Z(n38)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam MCycles_2__N_1055_I_0_1677_Select_0_i38_4_lut_4_lut.init = 16'h0302;
    PFUMX mux_3636_i1 (.BLUT(n11025), .ALUT(n32608), .C0(\IR[2] ), .Z(n5405[0]));
    ORCALUT4 i8270_2_lut_3_lut_4_lut_4_lut (.A(\mc[2] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(\Set_BusA_To_3__N_1198[2] ), .D(\IR[0] ), .Z(n11103)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i8270_2_lut_3_lut_4_lut_4_lut.init = 16'hfcfe;
    ORCALUT4 i8514_3_lut_4_lut_4_lut (.A(\mc[2] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(\Set_BusA_To_3__N_1198[2] ), .D(\IR[0] ), .Z(n11350)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i8514_3_lut_4_lut_4_lut.init = 16'h0230;
    ORCALUT4 n13_bdd_4_lut_33152_4_lut (.A(\IR[7] ), .B(\IR[6] ), .C(n37650), 
            .D(n37769), .Z(n36867)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C (D))+!B (C+!(D))))) */ ;
    defparam n13_bdd_4_lut_33152_4_lut.init = 16'h2f66;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(n37704), 
            .C(\ALU_Op_3__N_1269[3] ), .Z(n32544)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0101;
    ORCALUT4 Set_BusA_To_3__I_117_2_lut_rep_504_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .C(\mc[2] ), .D(\mc[3] ), 
            .Z(n37607)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam Set_BusA_To_3__I_117_2_lut_rep_504_3_lut_4_lut_4_lut.init = 16'h4544;
    ORCALUT4 i29699_2_lut_3_lut_4_lut_4_lut (.A(\mc[3] ), .B(\mc[2] ), .C(\Set_BusA_To_3__N_1198[2] ), 
            .D(n23605), .Z(n33192)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i29699_2_lut_3_lut_4_lut_4_lut.init = 16'hff0e;
    ORCALUT4 i30772_2_lut_3_lut_4_lut_4_lut (.A(\IR[2] ), .B(\IR[6] ), .C(\IR[7] ), 
            .D(n37794), .Z(n34320)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i30772_2_lut_3_lut_4_lut_4_lut.init = 16'hcdcf;
    PFUMX mux_3160_i1 (.BLUT(n4749[0]), .ALUT(n4746[0]), .C0(\Set_BusA_To_3__N_1202[0] ), 
          .Z(n4770[0]));
    ORCALUT4 i1_2_lut_rep_569_3_lut_3_lut_4_lut_2_lut_4_lut (.A(\IR[2] ), 
            .B(n39873), .C(\IR[1] ), .Z(n37672)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i1_2_lut_rep_569_3_lut_3_lut_4_lut_2_lut_4_lut.init = 16'h8080;
    ORCALUT4 i2_2_lut_rep_599_3_lut_4_lut (.A(n39859), .B(n39873), .C(n37855), 
            .D(\IR[2] ), .Z(n37702)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i2_2_lut_rep_599_3_lut_4_lut.init = 16'hdfff;
    ORCALUT4 i1_2_lut_rep_602_3_lut_3_lut_4_lut_2_lut_4_lut (.A(n39861), .B(\IR[0] ), 
            .C(\IR[1] ), .Z(n37705)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i1_2_lut_rep_602_3_lut_3_lut_4_lut_2_lut_4_lut.init = 16'h7f7f;
    ORCALUT4 i4_4_lut_4_lut_adj_208 (.A(\ALU_Op_3__N_1269[3] ), .B(n33168), 
            .C(n8_adj_1765), .D(n23307), .Z(n34190)) /* synthesis lut_function=(A ((C)+!B)+!A ((C+(D))+!B)) */ ;
    defparam i4_4_lut_4_lut_adj_208.init = 16'hf7f3;
    ORCALUT4 i1_2_lut_rep_588_3_lut_4_lut_2_lut_4_lut (.A(n39867), .B(n39869), 
            .C(\IR[7] ), .Z(n37691)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_588_3_lut_4_lut_2_lut_4_lut.init = 16'hdfdf;
    ORCALUT4 i2_3_lut_4_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(n37705), 
            .D(n37855), .Z(n33653)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'hf8ff;
    PFUMX i32492 (.BLUT(n36165), .ALUT(n4108[0]), .C0(\Set_BusA_To_3__N_1202[0] ), 
          .Z(n36166));
    ORCALUT4 mux_3164_i1_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(n4773[0]), 
            .C(\IR[6] ), .D(\IR[1] ), .Z(n4776[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3164_i1_4_lut.init = 16'hcac0;
    ORCALUT4 sram_addr_c_bdd_2_lut_33168 (.A(n37271), .B(n15889), .Z(n37272)) /* synthesis lut_function=(A (B)) */ ;
    defparam sram_addr_c_bdd_2_lut_33168.init = 16'h8888;
    ORCALUT4 i31543_3_lut_4_lut (.A(\ts[0] ), .B(\tstate[1] ), .C(n5), 
            .D(\mc[6] ), .Z(n31176)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(65[17:19])
    defparam i31543_3_lut_4_lut.init = 16'hccca;
    ORCALUT4 i11_3_lut_4_lut (.A(\tstate[2] ), .B(\ts[3] ), .C(n5), .D(\mc[6] ), 
            .Z(n31172)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(66[17:19])
    defparam i11_3_lut_4_lut.init = 16'hccca;
    ORCALUT4 i1_2_lut_rep_676_3_lut (.A(n39859), .B(\IR[0] ), .C(n39861), 
            .Z(n37779)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i1_2_lut_rep_676_3_lut.init = 16'hfdfd;
    ORCALUT4 mc_3__bdd_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\ALU_Op_3__N_1269[3] ), .Z(n16282)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam mc_3__bdd_3_lut.init = 16'hd0d0;
    ORCALUT4 i2_2_lut_rep_575_3_lut_4_lut (.A(\IR[1] ), .B(\IR[0] ), .C(n39845), 
            .D(n37813), .Z(n37678)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i2_2_lut_rep_575_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 n36527_bdd_2_lut_3_lut_4_lut (.A(\IR[1] ), .B(\IR[0] ), .C(n36527), 
            .D(n37813), .Z(n36528)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam n36527_bdd_2_lut_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_209 (.A(\IR[2] ), .B(n37691), .C(\IR[0] ), 
            .D(\IR[1] ), .Z(n32858)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_209.init = 16'heffe;
    PFUMX mux_3136_i1 (.BLUT(n32548), .ALUT(n4680[0]), .C0(\IR[1] ), .Z(n4734[0]));
    ORCALUT4 i1_2_lut_rep_593_3_lut_4_lut (.A(\IR[1] ), .B(n39873), .C(n37855), 
            .D(\IR[2] ), .Z(n37696)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i1_2_lut_rep_593_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 i19068_2_lut_4_lut (.A(n5739[0]), .B(n5736[0]), .C(n4462), 
            .D(n37552), .Z(NoRead_N_1542)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i19068_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i1_4_lut_then_4_lut (.A(\IR[0] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\IR[5] ), .D(\IR[2] ), .Z(n37913)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_then_4_lut.init = 16'h8088;
    ORCALUT4 i1_4_lut_else_4_lut (.A(\IR[0] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(\Set_BusA_To_3__N_1198[2] ), .D(\IR[2] ), .Z(n37912)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_else_4_lut.init = 16'h2000;
    ORCALUT4 select_200_Select_0_i2_2_lut_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(n37791), .D(\mc[2] ), .Z(n2)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam select_200_Select_0_i2_2_lut_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i1_2_lut_rep_621_3_lut (.A(\IR[4] ), .B(\IR[5] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n37724)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_621_3_lut.init = 16'h8080;
    ORCALUT4 n4783_bdd_3_lut_32786_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(n4734[0]), 
            .D(n4764[0]), .Z(n36107)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n4783_bdd_3_lut_32786_4_lut.init = 16'hf780;
    ORCALUT4 i32352_3_lut_4_lut_4_lut (.A(\IR[5] ), .B(\IR[2] ), .C(n37794), 
            .D(n39841), .Z(n23307)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i32352_3_lut_4_lut_4_lut.init = 16'h0020;
    ORCALUT4 n16830_bdd_4_lut (.A(n16830), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n3_adj_1766), .D(n15839), .Z(n37915)) /* synthesis lut_function=(A+!(B ((D)+!C)+!B (D))) */ ;
    defparam n16830_bdd_4_lut.init = 16'haafb;
    ORCALUT4 i2_4_lut_else_3_lut (.A(\IR[0] ), .B(\IR[1] ), .C(n39845), 
            .D(n37813), .Z(n37922)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_4_lut_else_3_lut.init = 16'hfffd;
    ORCALUT4 mux_1223_i1_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[0]), .D(di_reg[0]), .Z(n1938[0])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i1_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i1_4_lut_then_1_lut (.A(n23437), .Z(n37926)) /* synthesis lut_function=(A) */ ;
    defparam i1_4_lut_then_1_lut.init = 16'haaaa;
    ORCALUT4 i32146_2_lut_rep_666_3_lut (.A(n39865), .B(n39867), .C(n39863), 
            .Z(n37769)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i32146_2_lut_rep_666_3_lut.init = 16'h0808;
    ORCALUT4 i1_4_lut_else_1_lut (.A(n23437), .B(n37719), .C(n37805), 
            .D(n37813), .Z(n37925)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;
    defparam i1_4_lut_else_1_lut.init = 16'h8808;
    ORCALUT4 i2_2_lut_3_lut_4_lut_else_2_lut (.A(n37714), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(\IR[2] ), .D(\IR[0] ), .Z(n37928)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_else_2_lut.init = 16'hfeff;
    ORCALUT4 i31934_3_lut_then_1_lut (.A(\F[4] ), .Z(n37932)) /* synthesis lut_function=(A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(127[30:41])
    defparam i31934_3_lut_then_1_lut.init = 16'haaaa;
    ORCALUT4 i31934_3_lut_else_1_lut (.A(\F[4] ), .B(n23491), .C(n604), 
            .D(n15), .Z(n37931)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(127[30:41])
    defparam i31934_3_lut_else_1_lut.init = 16'hb800;
    ORCALUT4 i2_4_lut (.A(n37604), .B(n32360), .C(n37560), .D(n23605), 
            .Z(n33996)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(D))) */ ;
    defparam i2_4_lut.init = 16'hecff;
    ORCALUT4 i22_4_lut (.A(n37671), .B(n17321), .C(ISet[0]), .D(n4_c), 
            .Z(n8_adj_1767)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut.init = 16'hcfca;
    ORCALUT4 i18789_2_lut_rep_549_3_lut_4_lut (.A(\IR[4] ), .B(n39867), 
            .C(n39842), .D(\Set_BusA_To_3__N_1202[0] ), .Z(n37652)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i18789_2_lut_rep_549_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_3_lut_4_lut_4_lut (.A(n39837), .B(n37595), .C(n15_adj_1768), 
            .D(n39848), .Z(n6_adj_1769)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h5d0c;
    ORCALUT4 mux_1223_i5_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[4]), .D(di_reg[4]), .Z(n1938[4])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i5_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 n32837_bdd_4_lut (.A(n32837), .B(n37541), .C(n37743), .D(\ALU_Op_3__N_1269[3] ), 
            .Z(n37877)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam n32837_bdd_4_lut.init = 16'hbabb;
    ORCALUT4 n16287_bdd_4_lut (.A(n16287), .B(n32858), .C(\Set_BusA_To_3__N_1198[2] ), 
            .D(\ALU_Op_3__N_1269[3] ), .Z(n37934)) /* synthesis lut_function=(A+!(B+!((D)+!C))) */ ;
    defparam n16287_bdd_4_lut.init = 16'hbbab;
    ORCALUT4 i2_4_lut_then_3_lut (.A(n37664), .B(\ALU_Op_3__N_1269[3] ), 
            .C(\Set_BusA_To_3__N_1198[2] ), .Z(n37879)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_then_3_lut.init = 16'h1010;
    ORCALUT4 i2_4_lut_else_3_lut_adj_210 (.A(\ALU_Op_3__N_1269[3] ), .B(\IR[5] ), 
            .C(\IR[4] ), .D(\Set_BusA_To_3__N_1198[2] ), .Z(n37878)) /* synthesis lut_function=(A (B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_else_3_lut_adj_210.init = 16'hd580;
    ORCALUT4 Set_BusA_To_3__N_1198_2__bdd_4_lut_33757 (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\mc[2] ), .C(n39839), .D(n4_adj_1770), .Z(n37935)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;
    defparam Set_BusA_To_3__N_1198_2__bdd_4_lut_33757.init = 16'h0f0b;
    ORCALUT4 i657_2_lut_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(\ALU_Op_3__N_1269[3] ), 
            .D(n39863), .Z(n1030)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i657_2_lut_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_3_lut_4_lut (.A(n39848), .B(n37550), .C(n37544), .D(n39854), 
            .Z(n22)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_3_lut_4_lut.init = 16'h00f2;
    ORCALUT4 i2_3_lut_4_lut (.A(n37671), .B(n37555), .C(n37616), .D(n32855), 
            .Z(n15_adj_1771)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i7051_2_lut_rep_556_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(\Set_BusA_To_3__N_1198[2] ), .D(n39863), .Z(n37659)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i7051_2_lut_rep_556_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i18820_2_lut_rep_581_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(n39842), .D(\Set_BusA_To_3__N_1202[0] ), .Z(n37684)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i18820_2_lut_rep_581_3_lut_4_lut.init = 16'hf070;
    ORCALUT4 IR_7__I_0_1624_i14_2_lut_rep_662_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(\IR[7] ), .D(\IR[6] ), .Z(n37765)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1624_i14_2_lut_rep_662_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 mux_3622_i1_4_lut_then_3_lut (.A(n37734), .B(\IR[5] ), .C(\IR[2] ), 
            .Z(n37882)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3622_i1_4_lut_then_3_lut.init = 16'h8080;
    ORCALUT4 mux_3622_i1_4_lut_else_3_lut (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\ALU_Op_3__N_1269[3] ), .C(\IR[2] ), .Z(n37881)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3622_i1_4_lut_else_3_lut.init = 16'h0202;
    ORCALUT4 MCycle_1__I_0_1672_2_lut_rep_775 (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\ALU_Op_3__N_1269[3] ), .Z(n39842)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam MCycle_1__I_0_1672_2_lut_rep_775.init = 16'h2222;
    ORCALUT4 mux_1223_i4_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[3]), .D(di_reg[3]), .Z(n1938[3])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i4_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i2_4_lut_4_lut_adj_211 (.A(\ALU_Op_3__N_1269[3] ), .B(n33192), 
            .C(n32360), .D(n37604), .Z(n34021)) /* synthesis lut_function=(A ((C)+!B)+!A ((C+(D))+!B)) */ ;
    defparam i2_4_lut_4_lut_adj_211.init = 16'hf7f3;
    PFUMX i32934 (.BLUT(n36868), .ALUT(n36867), .C0(n39843), .Z(n36869));
    PFUMX i9360 (.BLUT(n1746[1]), .ALUT(Set_BusA_To_3__N_1356[1]), .C0(n5_adj_1772), 
          .Z(n12292));
    ORCALUT4 equal_109_i8_2_lut_rep_773 (.A(\IR[6] ), .B(\IR[7] ), .C(n39861), 
            .Z(n39840)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam equal_109_i8_2_lut_rep_773.init = 16'hefef;
    ORCALUT4 i1_2_lut_rep_776 (.A(n39873), .B(n39861), .C(n39859), .Z(n39843)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_776.init = 16'hbfbf;
    ORCALUT4 MCycle_0__I_0_1818_2_lut_rep_695 (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\mc[6] ), .Z(n37798)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1886[19] 1900[26])
    defparam MCycle_0__I_0_1818_2_lut_rep_695.init = 16'heeee;
    ORCALUT4 i12233_4_lut_then_2_lut_4_lut (.A(\IR[0] ), .B(\IR[2] ), .C(\IR[1] ), 
            .D(\Set_BusA_To_3__N_1202[0] ), .Z(n37885)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i12233_4_lut_then_2_lut_4_lut.init = 16'hffbf;
    ORCALUT4 sram_addr_c_bdd_2_lut_32730_3_lut (.A(n36535), .B(\IR[4] ), 
            .C(n105), .Z(n36537)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam sram_addr_c_bdd_2_lut_32730_3_lut.init = 16'hb0b0;
    ORCALUT4 MCycle_1__I_0_1837_2_lut_rep_629_3_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\mc[6] ), .C(\Set_BusA_To_3__N_1198[2] ), .Z(n37732)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1886[19] 1900[26])
    defparam MCycle_1__I_0_1837_2_lut_rep_629_3_lut.init = 16'h1010;
    PFUMX mux_4680_i1 (.BLUT(n6798[0]), .ALUT(PreserveC_N_1475), .C0(ISet[1]), 
          .Z(PreserveC));
    ORCALUT4 i1_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(n37732), .C(n37838), 
            .D(\IR[1] ), .Z(TStates_2__N_1407[2])) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_4_lut.init = 16'heaaa;
    ORCALUT4 i8_4_lut (.A(n16990), .B(n16), .C(n12_c), .D(n50), .Z(TStates_2__N_1404[2])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i8_4_lut.init = 16'hfffe;
    ORCALUT4 i1_3_lut_4_lut_3_lut (.A(\ALU_Op_3__N_1269[3] ), .B(\mc[6] ), 
            .C(\Set_BusA_To_3__N_1198[2] ), .Z(n15803)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1886[19] 1900[26])
    defparam i1_3_lut_4_lut_3_lut.init = 16'hefef;
    PFUMX mux_3614_i1 (.BLUT(n32619), .ALUT(n5318[0]), .C0(\IR[1] ), .Z(n5372[0]));
    ORCALUT4 i22_4_lut_adj_212 (.A(n11), .B(n17321), .C(ISet[0]), .D(n34336), 
            .Z(n8_adj_1773)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut_adj_212.init = 16'hcacf;
    ORCALUT4 i2_2_lut_3_lut_4_lut_then_2_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(\IR[2] ), .D(\IR[0] ), .Z(n37929)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_2_lut_3_lut_4_lut_then_2_lut_4_lut.init = 16'hffef;
    ORCALUT4 ALU_Op_3__N_1040_3__bdd_3_lut_32790_4_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\mc[6] ), .C(n39843), .D(\Set_BusA_To_3__N_1198[2] ), .Z(n36615)) /* synthesis lut_function=(A (C)+!A !(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1886[19] 1900[26])
    defparam ALU_Op_3__N_1040_3__bdd_3_lut_32790_4_lut_4_lut.init = 16'ha1a0;
    ORCALUT4 Read_To_Reg_N_1453_bdd_2_lut_33243_3_lut_3_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\mc[6] ), .C(\Set_BusA_To_3__N_1198[2] ), .D(\IR[4] ), 
            .Z(n37467)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1886[19] 1900[26])
    defparam Read_To_Reg_N_1453_bdd_2_lut_33243_3_lut_3_lut_4_lut.init = 16'h00ef;
    ORCALUT4 n36107_bdd_3_lut_4_lut (.A(n37688), .B(n4776[0]), .C(n4767[0]), 
            .D(n16251), .Z(n38794)) /* synthesis lut_function=(A (C)+!A (B (D))) */ ;
    defparam n36107_bdd_3_lut_4_lut.init = 16'he4a0;
    ORCALUT4 reduce_nor_5799_i1_2_lut_rep_696 (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\mc[6] ), .C(\Set_BusA_To_3__N_1198[2] ), .Z(n37799)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1886[19] 1900[26])
    defparam reduce_nor_5799_i1_2_lut_rep_696.init = 16'hfefe;
    ORCALUT4 i12274_4_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(\mc[6] ), 
            .C(\Set_BusA_To_3__N_1198[2] ), .D(n39843), .Z(TStates_2__N_1407[1])) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1886[19] 1900[26])
    defparam i12274_4_lut_4_lut.init = 16'h5545;
    ORCALUT4 equal_112_i3_2_lut_rep_774 (.A(n39869), .B(n39871), .Z(n39841)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam equal_112_i3_2_lut_rep_774.init = 16'hbbbb;
    ORCALUT4 i1_2_lut_rep_527_3_lut_4_lut_4_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(\IR[2] ), .D(\IR[5] ), .Z(n37630)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_527_3_lut_4_lut_4_lut_4_lut.init = 16'hfbff;
    PFUMX mux_3162_i1 (.BLUT(n4758[0]), .ALUT(n34083), .C0(n4754), .Z(n4773[0]));
    ORCALUT4 mux_1223_i11_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[10]), .D(ACC[2]), .Z(n1938[10])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i11_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 n37462_bdd_2_lut (.A(n37462), .B(n33866), .Z(n37463)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n37462_bdd_2_lut.init = 16'h2222;
    ORCALUT4 i1_2_lut_rep_700 (.A(n39873), .B(n39859), .Z(n37803)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_700.init = 16'hdddd;
    PFUMX mux_3142_i1 (.BLUT(n4719[0]), .ALUT(n4689[0]), .C0(\IR[0] ), 
          .Z(n4743[0]));
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(n37620), .B(\mc[5] ), .C(Set_Addr_To_2__N_1413[1]), 
            .D(n37756), .Z(\Set_Addr_To[1] )) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2611[11] 2625[16])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfff4;
    ORCALUT4 i19046_2_lut_3_lut_4_lut (.A(\IR[0] ), .B(\IR[1] ), .C(n37791), 
            .D(\mc[2] ), .Z(n5399[0])) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;
    defparam i19046_2_lut_3_lut_4_lut.init = 16'h0d00;
    PFUMX i27217 (.BLUT(n30674), .ALUT(n30675), .C0(n37614), .Z(n30676));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_213 (.A(\IR[0] ), .B(\IR[1] ), .C(n39845), 
            .D(n37864), .Z(n4_adj_1774)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_213.init = 16'hfffd;
    ORCALUT4 i19171_2_lut_rep_701 (.A(n39861), .B(n39863), .Z(n37804)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19171_2_lut_rep_701.init = 16'h8888;
    ORCALUT4 Read_To_Reg_N_1453_bdd_2_lut_33238 (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\IR[4] ), .Z(n37466)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam Read_To_Reg_N_1453_bdd_2_lut_33238.init = 16'h1111;
    ORCALUT4 i1_2_lut_rep_634_3_lut_4_lut (.A(n39861), .B(n39863), .C(\IR[1] ), 
            .D(n39873), .Z(n37737)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_634_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i32131_2_lut_rep_702 (.A(n39859), .B(n39873), .Z(n37805)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i32131_2_lut_rep_702.init = 16'h1111;
    PFUMX mux_5943_i1 (.BLUT(n33672), .ALUT(n6861[0]), .C0(n1871), .Z(n8222[0]));
    ORCALUT4 i2_3_lut_4_lut_adj_214 (.A(\IR[1] ), .B(\IR[0] ), .C(n32675), 
            .D(\IR[2] ), .Z(n1865)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_214.init = 16'h0010;
    ORCALUT4 sram_addr_c_bdd_2_lut_33038_rep_494_3_lut_4_lut (.A(n39859), 
            .B(n39873), .C(n39861), .D(n39845), .Z(n37597)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam sram_addr_c_bdd_2_lut_33038_rep_494_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 IR_7__I_0_1683_i12_2_lut_rep_703 (.A(\IR[4] ), .B(n39867), 
            .Z(n37806)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2008[15:26])
    defparam IR_7__I_0_1683_i12_2_lut_rep_703.init = 16'heeee;
    ORCALUT4 mux_1460_i7_3_lut_4_lut (.A(n37700), .B(n37859), .C(Ap[6]), 
            .D(ACC[6]), .Z(n2311[6])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1460_i7_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 mux_1460_i8_3_lut_4_lut (.A(n37700), .B(n37859), .C(Ap[7]), 
            .D(ACC[7]), .Z(n2311[7])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1460_i8_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 i7_4_lut (.A(n37677), .B(n14_adj_1775), .C(n34322), .D(n23028), 
            .Z(n34034)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i7_4_lut.init = 16'hdfff;
    ORCALUT4 i2_2_lut_3_lut_4_lut_4_lut (.A(n39837), .B(n37702), .C(n37700), 
            .D(n37701), .Z(n8_adj_1776)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut.init = 16'h8000;
    ORCALUT4 n36314_bdd_3_lut (.A(n36314), .B(n36313), .C(n4462), .Z(n36315)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36314_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1460_i6_3_lut_4_lut (.A(n37700), .B(n37859), .C(Ap[5]), 
            .D(ACC[5]), .Z(n2311[5])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1460_i6_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 IR_7__I_0_1633_i14_2_lut_rep_611_3_lut_4_lut (.A(n39865), .B(\IR[5] ), 
            .C(n39871), .D(n39869), .Z(n37714)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2008[15:26])
    defparam IR_7__I_0_1633_i14_2_lut_rep_611_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i29543_2_lut_rep_460_4_lut_4_lut (.A(\IR[1] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(n37691), .D(\IR[2] ), .Z(n37563)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i29543_2_lut_rep_460_4_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i30949_2_lut_rep_704 (.A(\IR[4] ), .B(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n37807)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i30949_2_lut_rep_704.init = 16'h4444;
    ORCALUT4 mux_291_i1_3_lut_4_lut (.A(n37713), .B(n37683), .C(\Q_7__N_1718[0] ), 
            .D(BusB[0]), .Z(n1177[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i1_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_291_i2_3_lut_4_lut (.A(n37713), .B(n37683), .C(\BusA[1] ), 
            .D(BusB[1]), .Z(n1177[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i2_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_2_lut_rep_638_3_lut (.A(\IR[4] ), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(\IR[5] ), .Z(n37741)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_638_3_lut.init = 16'h0404;
    ORCALUT4 mux_291_i3_3_lut_4_lut (.A(n37713), .B(n37683), .C(\BusA[2] ), 
            .D(BusB[2]), .Z(n1177[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i3_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_291_i4_3_lut_4_lut (.A(n37713), .B(n37683), .C(\BusA[3] ), 
            .D(BusB[3]), .Z(n1177[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i4_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_291_i5_3_lut_4_lut (.A(n37713), .B(n37683), .C(BusB[0]), 
            .D(BusB[4]), .Z(n1177[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i5_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i6_4_lut_4_lut (.A(n39837), .B(n8_adj_1777), .C(n12_adj_1778), 
            .D(Set_BusA_To_3__N_1171[0]), .Z(Set_BusA_To_3__N_1020[0])) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;
    defparam i6_4_lut_4_lut.init = 16'hfdfc;
    ORCALUT4 mux_291_i6_3_lut_4_lut (.A(n37713), .B(n37683), .C(BusB[1]), 
            .D(BusB[5]), .Z(n1177[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_291_i7_3_lut_4_lut (.A(n37713), .B(n37683), .C(BusB[2]), 
            .D(BusB[6]), .Z(n1177[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i7_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_291_i8_3_lut_4_lut (.A(n37713), .B(n37683), .C(BusB[3]), 
            .D(BusB[7]), .Z(n1177[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_291_i8_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_2_lut_rep_769 (.A(n9_c), .B(n23387), .Z(n39836)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_769.init = 16'h4444;
    ORCALUT4 i1_2_lut_4_lut_4_lut (.A(\IR[1] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(n37691), .D(\IR[2] ), .Z(n15_adj_1779)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h0008;
    ORCALUT4 i1_2_lut_rep_625_3_lut (.A(n39865), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(\IR[5] ), .Z(n37728)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_625_3_lut.init = 16'h4040;
    ORCALUT4 i1_3_lut_4_lut_4_lut_adj_215 (.A(n39837), .B(n37704), .C(\IR[4] ), 
            .D(\IR[5] ), .Z(n7_c)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_215.init = 16'h3733;
    ORCALUT4 i1_4_lut_4_lut_adj_216 (.A(n39837), .B(n32376), .C(n37696), 
            .D(n39848), .Z(n16933)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i1_4_lut_4_lut_adj_216.init = 16'h7f00;
    ORCALUT4 Set_BusA_To_3__N_1202_0__bdd_4_lut_2_lut_rep_694_3_lut_4_lut (.A(n39871), 
            .B(n39869), .C(\IR[0] ), .D(n39859), .Z(n37797)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam Set_BusA_To_3__N_1202_0__bdd_4_lut_2_lut_rep_694_3_lut_4_lut.init = 16'h0004;
    ORCALUT4 i19203_2_lut_3_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n37552), .D(n36315), .Z(Inc_PC_N_1430)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i19203_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i19097_2_lut_rep_614_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\IR[2] ), .Z(n37717)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i19097_2_lut_rep_614_3_lut.init = 16'h0e0e;
    ORCALUT4 select_1008_Select_3_i9_2_lut_rep_492_3_lut_4_lut_3_lut_4_lut (.A(\mc[2] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .C(\mc[4] ), .D(\mc[3] ), 
            .Z(n37595)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam select_1008_Select_3_i9_2_lut_rep_492_3_lut_4_lut_3_lut_4_lut.init = 16'h1110;
    PFUMX mux_4122_i1 (.BLUT(n6046[0]), .ALUT(n32134), .C0(\IR[4] ), .Z(n6055[0]));
    ORCALUT4 i1_4_lut_4_lut_adj_217 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\ALU_Op_3__N_1269[3] ), .D(n16241), .Z(n20)) /* synthesis lut_function=(!(A (D)+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_4_lut_4_lut_adj_217.init = 16'h00ba;
    ORCALUT4 i1_3_lut_4_lut_adj_218 (.A(n14_adj_1780), .B(n37705), .C(n37643), 
            .D(n23), .Z(n4)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_218.init = 16'hff10;
    ORCALUT4 i30776_3_lut_rep_498_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n37711), .D(n37704), .Z(n37601)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i30776_3_lut_rep_498_4_lut.init = 16'h0f0e;
    ORCALUT4 i10146_3_lut_rep_484_4_lut (.A(n37692), .B(n37859), .C(\ts[3] ), 
            .D(\ts[4] ), .Z(n37587)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i10146_3_lut_rep_484_4_lut.init = 16'h1110;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_219 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\IR[5] ), .D(n37704), .Z(n32537)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_3_lut_4_lut_adj_219.init = 16'h000e;
    ORCALUT4 MCycle_4__I_0_1811_2_lut_rep_553_3_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\mc[4] ), .D(\mc[3] ), .Z(n37656)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam MCycle_4__I_0_1811_2_lut_rep_553_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 MCycle_3__I_0_1666_2_lut_rep_631_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\mc[3] ), .Z(n37734)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam MCycle_3__I_0_1666_2_lut_rep_631_3_lut.init = 16'h1010;
    ORCALUT4 i2_3_lut_4_lut_adj_220 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n4754), .D(n37858), .Z(n33687)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i2_3_lut_4_lut_adj_220.init = 16'h0e00;
    ORCALUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\IR[5] ), .D(\IR[2] ), .Z(n8_adj_1782)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'he0ee;
    ORCALUT4 i5009_2_lut (.A(n39861), .B(n39859), .Z(n7233)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i5009_2_lut.init = 16'hbbbb;
    ORCALUT4 i18817_2_lut_3_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\IR[4] ), .Z(ALU_Op_3__N_1387)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i18817_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_221 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n37790), .D(\mc[3] ), .Z(n32608)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_3_lut_4_lut_adj_221.init = 16'h1000;
    ORCALUT4 i32267_2_lut_rep_689 (.A(\IR[6] ), .B(n39871), .Z(n37792)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i32267_2_lut_rep_689.init = 16'h1111;
    ORCALUT4 i2_3_lut_rep_540_4_lut_2_lut_2_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .Z(n37643)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i2_3_lut_rep_540_4_lut_2_lut_2_lut.init = 16'hdddd;
    ORCALUT4 i19277_rep_8_2_lut_3_lut_4_lut (.A(n37692), .B(n37859), .C(\RegAddrB_r[1] ), 
            .D(\ts[3] ), .Z(\RegAddrB[1] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i19277_rep_8_2_lut_3_lut_4_lut.init = 16'he0f0;
    ORCALUT4 Set_BusA_To_3__N_1178_I_0_1803_2_lut_rep_636_3_lut (.A(\mc[2] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .C(\mc[3] ), .Z(n37739)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam Set_BusA_To_3__N_1178_I_0_1803_2_lut_rep_636_3_lut.init = 16'hfefe;
    ORCALUT4 i22_4_lut_adj_222 (.A(n32370), .B(TStates_2__N_1407[1]), .C(ISet[0]), 
            .D(n4_adj_1783), .Z(n8_adj_1784)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut_adj_222.init = 16'hcfca;
    ORCALUT4 i2_3_lut_4_lut_adj_223 (.A(n37697), .B(n37696), .C(n32574), 
            .D(n37698), .Z(n23305)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_223.init = 16'h8000;
    ORCALUT4 i30745_2_lut_3_lut_4_lut (.A(n37701), .B(n37700), .C(n23177), 
            .D(n37702), .Z(n34290)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i30745_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i3_4_lut (.A(n15_adj_7), .B(n37636), .C(n37714), .D(n37729), 
            .Z(n23391)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut.init = 16'h8880;
    ORCALUT4 mux_1223_i3_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[2]), .D(di_reg[2]), .Z(n1938[2])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i3_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_224 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n37794), .D(\IR[2] ), .Z(n6025[0])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_224.init = 16'h00e0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_225 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n37859), .D(n37704), .Z(n32534)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_3_lut_4_lut_adj_225.init = 16'h000e;
    ORCALUT4 i32245_2_lut_rep_782 (.A(n39865), .B(n39867), .Z(n39854)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i32245_2_lut_rep_782.init = 16'h7777;
    ORCALUT4 i2_3_lut_4_lut_adj_226 (.A(\IR[5] ), .B(n39861), .C(n37887), 
            .D(n37857), .Z(n33574)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_4_lut_adj_226.init = 16'h8000;
    ORCALUT4 i1_2_lut_3_lut (.A(\IR[5] ), .B(\IR[2] ), .C(\IR[1] ), .Z(n32688)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    ORCALUT4 i1_2_lut_rep_708 (.A(\Set_BusA_To_3__N_1198[2] ), .B(\mc[2] ), 
            .Z(n37811)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i1_2_lut_rep_708.init = 16'h4444;
    ORCALUT4 i31657_3_lut_4_lut (.A(n37556), .B(n11_adj_1786), .C(\Set_BusA_To_3__N_1202[0] ), 
            .D(n37883), .Z(n5408[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i31657_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i2_3_lut_4_lut_adj_227 (.A(\Set_BusA_To_3__N_1198[2] ), .B(\mc[2] ), 
            .C(n6_adj_8), .D(n39857), .Z(n10904)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i2_3_lut_4_lut_adj_227.init = 16'h4000;
    ORCALUT4 i1_2_lut_rep_440_3_lut_4_lut (.A(n37785), .B(n37705), .C(n19_adj_1788), 
            .D(n37706), .Z(n37543)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;
    defparam i1_2_lut_rep_440_3_lut_4_lut.init = 16'hf1ff;
    ORCALUT4 i18993_2_lut_3_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(\mc[2] ), 
            .C(\IR[5] ), .Z(n4529[0])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i18993_2_lut_3_lut.init = 16'h4040;
    ORCALUT4 reduce_or_5642_i1_2_lut_rep_552_3_lut_4_lut_3_lut (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\mc[2] ), .C(\mc[3] ), .Z(n37655)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam reduce_or_5642_i1_2_lut_rep_552_3_lut_4_lut_3_lut.init = 16'h5454;
    ORCALUT4 i1_3_lut_4_lut_adj_228 (.A(n19_adj_1788), .B(n37589), .C(n37702), 
            .D(\Set_BusA_To_3__N_1198[2] ), .Z(n32368)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_228.init = 16'hbfbb;
    ORCALUT4 IR_4__bdd_4_lut_32726 (.A(n32869), .B(n37601), .C(n37708), 
            .D(n23658), .Z(n36347)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam IR_4__bdd_4_lut_32726.init = 16'hbfff;
    ORCALUT4 i19271_2_lut_3_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(\mc[2] ), 
            .C(\IR[2] ), .Z(n6861[1])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i19271_2_lut_3_lut.init = 16'h4040;
    ORCALUT4 mux_4725_i3_3_lut_4_lut_3_lut (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\mc[2] ), .C(\IR[2] ), .Z(n6861[2])) /* synthesis lut_function=(!(A (C)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam mux_4725_i3_3_lut_4_lut_3_lut.init = 16'h4e4e;
    ORCALUT4 i2_3_lut_4_lut_adj_229 (.A(\Set_BusA_To_3__N_1198[2] ), .B(\mc[2] ), 
            .C(n39859), .D(n39865), .Z(n32373)) /* synthesis lut_function=(A ((D)+!C)+!A (B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i2_3_lut_4_lut_adj_229.init = 16'hff4f;
    ORCALUT4 mux_3158_i1_4_lut_4_lut (.A(\IR[0] ), .B(n37592), .C(\IR[2] ), 
            .D(n6013[0]), .Z(n4767[0])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_3158_i1_4_lut_4_lut.init = 16'hf404;
    ORCALUT4 i2_3_lut_4_lut_4_lut_2_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(\ALU_Op_3__N_1269[3] ), 
            .Z(n1656[2])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i2_3_lut_4_lut_4_lut_2_lut.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_562_3_lut_4_lut_2_lut (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\ALU_Op_3__N_1269[3] ), .Z(n37665)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i1_2_lut_rep_562_3_lut_4_lut_2_lut.init = 16'h1111;
    ORCALUT4 i2_3_lut_rep_466_4_lut (.A(n37765), .B(n37705), .C(n37638), 
            .D(n37700), .Z(n37569)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_466_4_lut.init = 16'he000;
    ORCALUT4 i11_3_lut_4_lut_4_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(\mc[2] ), 
            .C(n39867), .D(\IR[4] ), .Z(Set_BusA_To_3__N_1171[0])) /* synthesis lut_function=(!(A (C (D))+!A !(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i11_3_lut_4_lut_4_lut.init = 16'h4aaa;
    ORCALUT4 i2_3_lut_4_lut_adj_230 (.A(n37765), .B(n37705), .C(n37638), 
            .D(last_tstate), .Z(n33676)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_230.init = 16'h0e00;
    ORCALUT4 mux_4725_i1_3_lut_3_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(\mc[2] ), 
            .C(\IR[2] ), .Z(n6861[0])) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam mux_4725_i1_3_lut_3_lut.init = 16'h4a4a;
    ORCALUT4 i1_2_lut_4_lut_adj_231 (.A(n39838), .B(n37734), .C(n37811), 
            .D(n37841), .Z(n4_adj_1789)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_231.init = 16'h5400;
    ORCALUT4 i2_2_lut_3_lut_4_lut (.A(n37710), .B(n37720), .C(n37638), 
            .D(n37711), .Z(n10_c)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(620[15:26])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h00b0;
    ORCALUT4 i2_2_lut_4_lut (.A(n16728), .B(n37791), .C(n37610), .D(n63), 
            .Z(n12_adj_1790)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_2_lut_4_lut.init = 16'hffae;
    ORCALUT4 i18887_2_lut_rep_709 (.A(ISet[1]), .B(ISet[0]), .Z(n37812)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18887_2_lut_rep_709.init = 16'heeee;
    ORCALUT4 i31738_3_lut_3_lut_4_lut (.A(ISet[1]), .B(ISet[0]), .C(n10077), 
            .D(Set_BusA_To_3__N_1020[0]), .Z(n10079)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i31738_3_lut_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i569_2_lut_3_lut_4_lut (.A(n37713), .B(n37712), .C(last_tstate), 
            .D(n37859), .Z(n914)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i569_2_lut_3_lut_4_lut.init = 16'h0020;
    ORCALUT4 i11135_3_lut_3_lut_4_lut (.A(ISet[1]), .B(ISet[0]), .C(n14261), 
            .D(\IncDec_16_3__N_1012[3] ), .Z(\ID16_B[15] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i11135_3_lut_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i18888_1_lut_rep_646_2_lut (.A(ISet[1]), .B(ISet[0]), .Z(n37749)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i18888_1_lut_rep_646_2_lut.init = 16'h1111;
    ORCALUT4 i1_3_lut_4_lut_adj_232 (.A(n37570), .B(n37616), .C(n37791), 
            .D(n16728), .Z(n32809)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_232.init = 16'hffe0;
    ORCALUT4 i32183_2_lut_3_lut_4_lut (.A(ISet[1]), .B(ISet[0]), .C(n37668), 
            .D(n37860), .Z(n34749)) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i32183_2_lut_3_lut_4_lut.init = 16'hf111;
    ORCALUT4 IR_7__I_0_1693_i10_2_lut_rep_710 (.A(n39861), .B(n39863), .Z(n37813)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2130[15:26])
    defparam IR_7__I_0_1693_i10_2_lut_rep_710.init = 16'heeee;
    ORCALUT4 mux_1223_i2_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[1]), .D(di_reg[1]), .Z(n1938[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i2_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i1_2_lut_rep_626_3_lut_4_lut (.A(n39861), .B(n39863), .C(n39873), 
            .D(n39859), .Z(n37729)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2130[15:26])
    defparam i1_2_lut_rep_626_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_3_lut_adj_233 (.A(\IR[2] ), .B(n39863), .C(n39873), 
            .Z(n13)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2130[15:26])
    defparam i1_2_lut_3_lut_adj_233.init = 16'h0e0e;
    ORCALUT4 IR_7__I_0_1722_i11_2_lut_rep_657_3_lut_4_lut (.A(\IR[2] ), .B(n39863), 
            .C(n39873), .D(\IR[1] ), .Z(n37760)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2130[15:26])
    defparam IR_7__I_0_1722_i11_2_lut_rep_657_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i1_2_lut_4_lut_4_lut_adj_234 (.A(n9_c), .B(n23387), .C(n37736), 
            .D(n37729), .Z(n25)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i1_2_lut_4_lut_4_lut_adj_234.init = 16'hbbbf;
    ORCALUT4 i6777_1_lut_rep_711 (.A(ISet[0]), .Z(n37814)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i6777_1_lut_rep_711.init = 16'h5555;
    ORCALUT4 mux_4688_i1_4_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(Jump_N_1505), 
            .D(Jump_N_1487), .Z(Jump)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam mux_4688_i1_4_lut_4_lut.init = 16'hd1c0;
    ORCALUT4 i5_4_lut_4_lut (.A(ISet[0]), .B(n33980), .C(\IR[5] ), .D(n10), 
            .Z(n33833)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i5_4_lut_4_lut.init = 16'h4500;
    ORCALUT4 i30785_3_lut_4_lut_4_lut (.A(n39837), .B(n15839), .C(n37729), 
            .D(n37784), .Z(n34334)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i30785_3_lut_4_lut_4_lut.init = 16'h8880;
    ORCALUT4 i3_4_lut_4_lut (.A(n39843), .B(n37799), .C(\mc[2] ), .D(n37839), 
            .Z(Write_N_1557)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(280[28:45])
    defparam i3_4_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_4_lut_4_lut_adj_235 (.A(ISet[0]), .B(n23037), .C(n34330), 
            .D(n37935), .Z(n3_c)) /* synthesis lut_function=(!(A+!(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i1_4_lut_4_lut_adj_235.init = 16'h5515;
    ORCALUT4 i1_4_lut_4_lut_adj_236 (.A(ISet[0]), .B(n8_adj_1792), .C(n12_adj_1793), 
            .D(n18_c), .Z(n31420)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i1_4_lut_4_lut_adj_236.init = 16'h5554;
    ORCALUT4 n23577_bdd_4_lut_32533_4_lut (.A(ISet[0]), .B(n39842), .C(n16919), 
            .D(n37534), .Z(n36180)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam n23577_bdd_4_lut_32533_4_lut.init = 16'h5450;
    ORCALUT4 i21676_4_lut (.A(n1175), .B(\ALU_Op_r[3] ), .C(Save_ALU_r), 
            .D(n37755), .Z(RegWEH_N_867)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(162[17:27])
    defparam i21676_4_lut.init = 16'hcafa;
    ORCALUT4 i1_4_lut_4_lut_adj_237 (.A(ISet[0]), .B(n32809), .C(n6_adj_1794), 
            .D(n26), .Z(n19)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i1_4_lut_4_lut_adj_237.init = 16'h5554;
    ORCALUT4 i2_4_lut_then_3_lut_4_lut (.A(\IR[7] ), .B(\IR[6] ), .C(\IR[1] ), 
            .D(\IR[0] ), .Z(n37923)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i2_4_lut_then_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i19159_2_lut_3_lut_4_lut_4_lut (.A(ISet[0]), .B(n37677), .C(n37769), 
            .D(n39842), .Z(n6798[0])) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i19159_2_lut_3_lut_4_lut_4_lut.init = 16'h1101;
    ORCALUT4 i2_3_lut_4_lut_adj_238 (.A(n37824), .B(n37744), .C(n16969), 
            .D(\Set_BusA_To_3__N_1198[2] ), .Z(n30031)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;
    defparam i2_3_lut_4_lut_adj_238.init = 16'hf0b0;
    ORCALUT4 i19163_3_lut_4_lut_4_lut (.A(ISet[0]), .B(JumpE_N_1507), .C(n37704), 
            .D(n39848), .Z(n6820[0])) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i19163_3_lut_4_lut_4_lut.init = 16'h4544;
    ORCALUT4 i29811_4_lut_4_lut (.A(\IR[7] ), .B(\IR[6] ), .C(n33070), 
            .D(n37746), .Z(n33319)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i29811_4_lut_4_lut.init = 16'hfbbb;
    ORCALUT4 i19154_4_lut_4_lut (.A(ISet[0]), .B(n16933), .C(n6_adj_1795), 
            .D(n3), .Z(n6732[0])) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i19154_4_lut_4_lut.init = 16'h5554;
    ORCALUT4 i1_4_lut_4_lut_adj_239 (.A(ISet[0]), .B(n14), .C(n18_adj_1797), 
            .D(n13_adj_1798), .Z(n31418)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i1_4_lut_4_lut_adj_239.init = 16'h5554;
    ORCALUT4 i19771_2_lut_rep_447_3_lut_4_lut_4_lut_4_lut (.A(\IR[7] ), .B(\IR[6] ), 
            .C(n37715), .D(n37760), .Z(n37550)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i19771_2_lut_rep_447_3_lut_4_lut_4_lut_4_lut.init = 16'hfbbb;
    ORCALUT4 i1_4_lut_4_lut_adj_240 (.A(ISet[0]), .B(n24), .C(n10_adj_1799), 
            .D(n21_c), .Z(n31656)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i1_4_lut_4_lut_adj_240.init = 16'h5554;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_241 (.A(n37824), .B(n39842), .C(n37668), 
            .D(n7237), .Z(n30674)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2528[19] 2576[26])
    defparam i1_2_lut_3_lut_4_lut_adj_241.init = 16'he000;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_242 (.A(ISet[0]), .B(n37671), .C(\mc[2] ), 
            .D(\Set_BusA_To_3__N_1198[2] ), .Z(n33913)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i2_3_lut_4_lut_4_lut_adj_242.init = 16'h0040;
    ORCALUT4 i5_4_lut (.A(n4_adj_1800), .B(n10_adj_1801), .C(n18_adj_1802), 
            .Z(TStates_2__N_1410[0])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_4_lut.init = 16'hfefe;
    ORCALUT4 i18178_4_lut (.A(n37902), .B(TStates_2__N_1407[1]), .C(ISet[0]), 
            .D(n8_adj_1803), .Z(n3_adj_1804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i18178_4_lut.init = 16'hcfca;
    ORCALUT4 i1_2_lut_3_lut_adj_243 (.A(\Set_BusA_To_3__N_1198[2] ), .B(\mc[2] ), 
            .C(\ALU_Op_3__N_1269[3] ), .Z(n12_adj_1805)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1307[23] 1317[30])
    defparam i1_2_lut_3_lut_adj_243.init = 16'hb0b0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_244 (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(n37678), .C(n39845), .D(n37715), .Z(n2_adj_1806)) /* synthesis lut_function=(!(A+(B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(63[25:36])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_244.init = 16'h1115;
    ORCALUT4 Save_ALU_N_1468_bdd_4_lut (.A(n6_adj_1769), .B(n7_adj_1807), 
            .C(n4_adj_1808), .D(n3_adj_1809), .Z(n38796)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam Save_ALU_N_1468_bdd_4_lut.init = 16'hfffe;
    ORCALUT4 n38796_bdd_2_lut (.A(n38796), .B(Save_ALU_N_1468), .Z(n38797)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n38796_bdd_2_lut.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_245 (.A(n39871), .B(\IR[6] ), .C(n37857), 
            .D(n37858), .Z(n4_adj_1810)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_245.init = 16'hbfff;
    ORCALUT4 i1_2_lut_rep_545_3_lut_4_lut (.A(\IR[7] ), .B(\IR[6] ), .C(n37845), 
            .D(\IR[1] ), .Z(n37648)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_545_3_lut_4_lut.init = 16'h4044;
    ORCALUT4 i1_2_lut_rep_525_3_lut_4_lut_4_lut_1_lut_2_lut (.A(n39871), .B(n39869), 
            .Z(n39845)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_525_3_lut_4_lut_4_lut_1_lut_2_lut.init = 16'hbbbb;
    ORCALUT4 IR_7__I_0_1728_i14_2_lut_rep_675_3_lut_4_lut (.A(n39871), .B(n39869), 
            .C(n39867), .D(n39865), .Z(n37778)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1728_i14_2_lut_rep_675_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i1_3_lut_4_lut_adj_246 (.A(n39843), .B(n39845), .C(n1030), 
            .D(n32357), .Z(n32358)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_246.init = 16'hff20;
    PFUMX i33277 (.BLUT(n37894), .ALUT(n37895), .C0(n37743), .Z(n37896));
    ORCALUT4 i32298_2_lut_4_lut_4_lut (.A(\IR[7] ), .B(\IR[6] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .D(n20_adj_1811), .Z(n34510)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i32298_2_lut_4_lut_4_lut.init = 16'h3733;
    ORCALUT4 i30774_2_lut_3_lut (.A(\IR[7] ), .B(\IR[6] ), .C(n23503), 
            .Z(n34322)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i30774_2_lut_3_lut.init = 16'hb0b0;
    ORCALUT4 i1_2_lut_rep_475_3_lut_4_lut_2_lut_3_lut (.A(n39871), .B(\IR[6] ), 
            .C(n37715), .Z(n37578)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_475_3_lut_4_lut_2_lut_3_lut.init = 16'hfbfb;
    ORCALUT4 i16_1_lut_rep_490_3_lut_4_lut (.A(\IR[7] ), .B(\IR[6] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .D(n20_adj_1811), .Z(n37593)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i16_1_lut_rep_490_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i2_3_lut_rep_585_4_lut (.A(n39871), .B(\IR[6] ), .C(n39863), 
            .D(n20_adj_1811), .Z(n37688)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i2_3_lut_rep_585_4_lut.init = 16'h0400;
    ORCALUT4 i1_2_lut_3_lut_4_lut_rep_770 (.A(n39869), .B(n39871), .C(n37803), 
            .D(n37813), .Z(n39837)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_4_lut_rep_770.init = 16'hfffe;
    ORCALUT4 i30692_2_lut_3_lut_4_lut (.A(n37794), .B(n39840), .C(n37696), 
            .D(n37697), .Z(n34234)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i30692_2_lut_3_lut_4_lut.init = 16'hd000;
    ORCALUT4 mux_1223_i13_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[12]), .D(ACC[4]), .Z(n1938[12])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i13_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i1_4_lut_4_lut_adj_247 (.A(\IR[6] ), .B(n39873), .C(n32375), 
            .D(n39859), .Z(n51)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i1_4_lut_4_lut_adj_247.init = 16'hf7d5;
    ORCALUT4 i1_2_lut_rep_647_2_lut (.A(n39869), .B(\IR[5] ), .Z(n37750)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i1_2_lut_rep_647_2_lut.init = 16'h4444;
    ORCALUT4 i2_3_lut_rep_565_4_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(ISet[1]), 
            .D(\IR[5] ), .Z(n37668)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i2_3_lut_rep_565_4_lut_4_lut.init = 16'h4000;
    ORCALUT4 n13_bdd_3_lut_4_lut (.A(n37794), .B(n39840), .C(n37769), 
            .D(n39845), .Z(n36868)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam n13_bdd_3_lut_4_lut.init = 16'h20f0;
    ORCALUT4 i1_2_lut_rep_714 (.A(n39871), .B(n39859), .Z(n37817)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_714.init = 16'hbbbb;
    ORCALUT4 i2_3_lut_3_lut_4_lut (.A(\IR[7] ), .B(\IR[1] ), .C(n37845), 
            .D(\IR[6] ), .Z(MCycles_2__N_1001[0])) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_3_lut_3_lut_4_lut.init = 16'hfbff;
    L6MUX21 mux_3646_i1 (.D0(n5405[0]), .D1(n5414[0]), .SD(n37593), .Z(n5420[0]));
    PFUMX mux_3644_i1 (.BLUT(n5408[0]), .ALUT(n5402[0]), .C0(\IR[4] ), 
          .Z(n5417[0]));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_248 (.A(n37769), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n39840), .D(n37794), .Z(n3_adj_1809)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_4_lut_adj_248.init = 16'h0400;
    ORCALUT4 i2_3_lut_4_lut_adj_249 (.A(n37769), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n39845), .D(n39843), .Z(n29971)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_249.init = 16'h0f04;
    ORCALUT4 mux_1223_i15_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[14]), .D(ACC[6]), .Z(n1938[14])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i15_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 n36347_bdd_3_lut_33255_4_lut (.A(n39842), .B(n37769), .C(n34310), 
            .D(n36347), .Z(n37460)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(935[21] 943[24])
    defparam n36347_bdd_3_lut_33255_4_lut.init = 16'h00fb;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_250 (.A(\Set_Addr_To_2__N_1044[2] ), 
            .B(n37756), .C(\Set_Addr_To[1] ), .D(Set_Addr_To_2__N_1044[0]), 
            .Z(n32394)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam i2_3_lut_4_lut_4_lut_adj_250.init = 16'h0020;
    ORCALUT4 i1_2_lut_rep_480_3_lut_4_lut (.A(n37737), .B(n37736), .C(n37656), 
            .D(n39839), .Z(n37583)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i1_2_lut_rep_480_3_lut_4_lut.init = 16'h10f0;
    ORCALUT4 i32212_2_lut_4_lut (.A(n37824), .B(n37572), .C(\tstate[1] ), 
            .D(n37625), .Z(n34731)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i32212_2_lut_4_lut.init = 16'hff80;
    ORCALUT4 i4_2_lut_rep_718 (.A(n39859), .B(n39873), .Z(n37821)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i4_2_lut_rep_718.init = 16'h4444;
    ORCALUT4 i2_3_lut_4_lut_adj_251 (.A(\IR[1] ), .B(n39873), .C(\IR[6] ), 
            .D(\IR[2] ), .Z(n33545)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_251.init = 16'h4000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_252 (.A(n37737), .B(n37736), .C(n32865), 
            .D(n39839), .Z(n32869)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_252.init = 16'hf1ff;
    ORCALUT4 i6986_2_lut_rep_409_4_lut (.A(n37824), .B(n37572), .C(\tstate[1] ), 
            .D(n1165), .Z(n37512)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i6986_2_lut_rep_409_4_lut.init = 16'hff80;
    ORCALUT4 i1_2_lut_rep_505_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n37608)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_rep_505_3_lut_4_lut_4_lut.init = 16'hcccd;
    ORCALUT4 Set_BusA_To_3__I_119_2_lut_rep_641_3_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .C(\mc[2] ), .Z(n37744)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam Set_BusA_To_3__I_119_2_lut_rep_641_3_lut.init = 16'hfefe;
    ORCALUT4 i29831_2_lut_3_lut_4_lut (.A(n37737), .B(n37736), .C(n15_adj_1812), 
            .D(n39839), .Z(n33345)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i29831_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i12233_4_lut_else_2_lut (.A(n39843), .B(\mc[6] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .D(\Set_BusA_To_3__N_1198[2] ), .Z(n37884)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i12233_4_lut_else_2_lut.init = 16'hf1f0;
    ORCALUT4 i2_3_lut_4_lut_adj_253 (.A(n37737), .B(n37736), .C(n39839), 
            .D(n37675), .Z(n33981)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i2_3_lut_4_lut_adj_253.init = 16'he000;
    ORCALUT4 Set_BusA_To_3__N_1192_I_0_2_lut_rep_560_3_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n37663)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam Set_BusA_To_3__N_1192_I_0_2_lut_rep_560_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i30781_3_lut_4_lut (.A(n37737), .B(n37736), .C(n37675), .D(n37664), 
            .Z(n34330)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i30781_3_lut_4_lut.init = 16'he000;
    ORCALUT4 Set_BusA_To_3__N_1198_2__bdd_4_lut_33303 (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(n39863), .C(\mc[2] ), .D(\IR[4] ), .Z(n37887)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam Set_BusA_To_3__N_1198_2__bdd_4_lut_33303.init = 16'hbf10;
    ORCALUT4 i1_3_lut_4_lut_adj_254 (.A(n37805), .B(n37735), .C(n37743), 
            .D(n37661), .Z(n5_adj_1813)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_254.init = 16'h80ff;
    ORCALUT4 i19259_2_lut_rep_493_3_lut_4_lut (.A(n37805), .B(n37735), .C(n37736), 
            .D(n37737), .Z(n37596)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i19259_2_lut_rep_493_3_lut_4_lut.init = 16'h7770;
    ORCALUT4 MCycles_2__N_1055_I_0_1670_Select_0_i25_2_lut_3_lut_4_lut (.A(n37734), 
            .B(n37811), .C(n37736), .D(n37737), .Z(n25_adj_1814)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(591[23] 616[30])
    defparam MCycles_2__N_1055_I_0_1670_Select_0_i25_2_lut_3_lut_4_lut.init = 16'h000e;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_255 (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n16775)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_255.init = 16'haaba;
    ORCALUT4 MCycle_0__I_0_1791_2_lut_rep_564_3_lut_3_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .C(\mc[2] ), .Z(n37667)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam MCycle_0__I_0_1791_2_lut_rep_564_3_lut_3_lut.init = 16'habab;
    ORCALUT4 MCycle_3__I_0_2_lut_rep_590_3_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n37693)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam MCycle_3__I_0_2_lut_rep_590_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_256 (.A(\ALU_Op_3__N_1269[3] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\IR[7] ), .D(\mc[2] ), .Z(n30675)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_4_lut_adj_256.init = 16'h1000;
    ORCALUT4 i1_2_lut_3_lut_3_lut (.A(\ALU_Op_3__N_1269[3] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\mc[2] ), .Z(n16772)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hbaba;
    ORCALUT4 i8269_2_lut_rep_548_3_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n39873), .D(\mc[2] ), .Z(n37651)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i8269_2_lut_rep_548_3_lut_4_lut.init = 16'h0100;
    ORCALUT4 i1_2_lut_rep_457_3_lut_4_lut_2_lut_3_lut_1_lut_2_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .Z(n37560)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_rep_457_3_lut_4_lut_2_lut_3_lut_1_lut_2_lut.init = 16'h1111;
    ORCALUT4 i1_2_lut_rep_502_3_lut_4_lut_3_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .C(\mc[3] ), .D(\mc[2] ), 
            .Z(n37605)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_rep_502_3_lut_4_lut_3_lut_4_lut.init = 16'h1101;
    ORCALUT4 i13730_2_lut_3_lut_4_lut (.A(\mc[4] ), .B(n37739), .C(n37841), 
            .D(n37734), .Z(Set_BusA_To_3__N_1356[1])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i13730_2_lut_3_lut_4_lut.init = 16'hf020;
    ORCALUT4 i18992_2_lut_3_lut_4_lut (.A(\mc[4] ), .B(n37739), .C(n37842), 
            .D(n37734), .Z(n4689[0])) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i18992_2_lut_3_lut_4_lut.init = 16'hf020;
    ORCALUT4 i14118_3_lut_4_lut (.A(\mc[4] ), .B(n37739), .C(n39854), 
            .D(n37734), .Z(Set_BusA_To_3__N_1356[0])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i14118_3_lut_4_lut.init = 16'hf202;
    ORCALUT4 MCycle_2__I_0_1838_2_lut_rep_721 (.A(\ALU_Op_3__N_1269[3] ), 
            .B(\Set_BusA_To_3__N_1198[2] ), .C(\mc[2] ), .Z(n37824)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam MCycle_2__I_0_1838_2_lut_rep_721.init = 16'h1010;
    ORCALUT4 i2_2_lut_rep_722 (.A(\IR[2] ), .B(\IR[1] ), .Z(n37825)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_rep_722.init = 16'h8888;
    ORCALUT4 i32251_3_lut_rep_608_4_lut (.A(n39869), .B(\IR[7] ), .C(n7233), 
            .D(\IR[0] ), .Z(n37711)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i32251_3_lut_rep_608_4_lut.init = 16'h0100;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_257 (.A(n37578), .B(n37678), .C(n37843), 
            .D(n39848), .Z(n3_adj_1815)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_257.init = 16'h7000;
    ORCALUT4 i19426_2_lut_2_lut_3_lut (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[0] ), 
            .Z(MCycles_2__N_1001[1])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i19426_2_lut_2_lut_3_lut.init = 16'h0808;
    ORCALUT4 i1_2_lut_3_lut_adj_258 (.A(n39861), .B(n39859), .C(\IR[0] ), 
            .Z(n32696)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_258.init = 16'h8080;
    ORCALUT4 i1_3_lut_4_lut_adj_259 (.A(n37578), .B(n37678), .C(n39848), 
            .D(\Set_BusA_To_3__N_1202[0] ), .Z(n28)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_259.init = 16'h7770;
    ORCALUT4 i2_4_lut_4_lut_adj_260 (.A(\Set_BusA_To_3__N_1198[2] ), .B(\mc[2] ), 
            .C(n33799), .D(n50_adj_1816), .Z(n6_adj_1795)) /* synthesis lut_function=(!(A (C (D))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i2_4_lut_4_lut_adj_260.init = 16'h0aee;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_261 (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\mc[2] ), .C(\mc[4] ), .D(\mc[3] ), .Z(n32784)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i1_2_lut_3_lut_4_lut_adj_261.init = 16'hfff1;
    ORCALUT4 i1_2_lut_3_lut_adj_262 (.A(\Set_BusA_To_3__N_1198[2] ), .B(\mc[2] ), 
            .C(\ALU_Op_3__N_1269[3] ), .Z(n4_adj_9)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i1_2_lut_3_lut_adj_262.init = 16'hfefe;
    ORCALUT4 i19021_2_lut_3_lut_4_lut (.A(\mc[4] ), .B(n37739), .C(n5_adj_1818), 
            .D(n37734), .Z(n5318[0])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i19021_2_lut_3_lut_4_lut.init = 16'h0f02;
    ORCALUT4 i1_4_lut_then_4_lut_adj_263 (.A(n39854), .B(n37670), .C(\Set_BusA_To_3__N_1198[2] ), 
            .D(\ALU_Op_3__N_1269[3] ), .Z(n39850)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_then_4_lut_adj_263.init = 16'h0010;
    ORCALUT4 i1_2_lut_rep_723 (.A(\tstate[2] ), .B(\tstate[1] ), .Z(n37826)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    defparam i1_2_lut_rep_723.init = 16'heeee;
    ORCALUT4 i1_3_lut_rep_651_4_lut (.A(\tstate[2] ), .B(\tstate[1] ), .C(n39857), 
            .D(\ALU_Op_3__N_1269[3] ), .Z(n37754)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    defparam i1_3_lut_rep_651_4_lut.init = 16'hfe00;
    ORCALUT4 i1_3_lut_4_lut_adj_264 (.A(n37578), .B(n37678), .C(n1656[2]), 
            .D(n23273), .Z(n7_adj_1819)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_264.init = 16'h70ff;
    ORCALUT4 i3_4_lut_adj_265 (.A(\IR[0] ), .B(n37792), .C(\IR[5] ), .D(n37860), 
            .Z(n15839)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_265.init = 16'hbfff;
    ORCALUT4 i3_4_lut_adj_266 (.A(n22510), .B(n37934), .C(n37629), .D(n23605), 
            .Z(n8_adj_1765)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i3_4_lut_adj_266.init = 16'hdfff;
    ORCALUT4 i609_2_lut_rep_582_4_lut_2_lut (.A(\tstate[2] ), .B(\ALU_Op_3__N_1269[3] ), 
            .Z(n37685)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    defparam i609_2_lut_rep_582_4_lut_2_lut.init = 16'h8888;
    ORCALUT4 i32089_3_lut_4_lut (.A(\tstate[2] ), .B(\tstate[1] ), .C(n33919), 
            .D(\ALU_Op_3__N_1269[3] ), .Z(nxt_rd_n)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    defparam i32089_3_lut_4_lut.init = 16'h11f1;
    ORCALUT4 i6884_3_lut_4_lut_4_lut (.A(\tstate[2] ), .B(\tstate[1] ), 
            .C(n33919), .D(write), .Z(n9490)) /* synthesis lut_function=(A ((D)+!C)+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    defparam i6884_3_lut_4_lut_4_lut.init = 16'hae0e;
    ORCALUT4 i1_2_lut_4_lut_adj_267 (.A(n37739), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n37734), .D(\IR[5] ), .Z(n16849)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2378[19] 2399[26])
    defparam i1_2_lut_4_lut_adj_267.init = 16'hfd00;
    ORCALUT4 i1_3_lut_4_lut_adj_268 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n32373), .D(n39863), .Z(n32375)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_3_lut_4_lut_adj_268.init = 16'hfdf0;
    ORCALUT4 i592_1_lut_3_lut_4_lut (.A(\tstate[2] ), .B(\tstate[1] ), .C(\ts[3] ), 
            .D(\ALU_Op_3__N_1269[3] ), .Z(clk_op_enable_170)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    defparam i592_1_lut_3_lut_4_lut.init = 16'h01ff;
    ORCALUT4 i1_2_lut_3_lut_rep_780 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\IR[5] ), .Z(n39847)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_3_lut_rep_780.init = 16'h0e0e;
    ORCALUT4 i7219_3_lut_4_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(n37769), 
            .C(\ALU_Op_3__N_1269[3] ), .D(n37677), .Z(n9901)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(331[21] 340[24])
    defparam i7219_3_lut_4_lut.init = 16'h00f8;
    ORCALUT4 i2_4_lut_adj_269 (.A(n37509), .B(\IR[5] ), .C(n15_adj_1820), 
            .D(n4_adj_1774), .Z(n23281)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_269.init = 16'ha080;
    ORCALUT4 i1_2_lut_4_lut_4_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\IR[5] ), .D(n39837), .Z(n1)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_4_lut_4_lut_4_lut.init = 16'h000e;
    ORCALUT4 i30677_2_lut_3_lut_4_lut (.A(n37760), .B(n37785), .C(n37705), 
            .D(n37720), .Z(n34217)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D)))) */ ;
    defparam i30677_2_lut_3_lut_4_lut.init = 16'he0ee;
    ORCALUT4 i19529_3_lut_4_lut (.A(n37760), .B(n37785), .C(n37784), .D(n37715), 
            .Z(n22994)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i19529_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 select_93_Select_1_i4_2_lut_rep_781 (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .Z(n39848)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam select_93_Select_1_i4_2_lut_rep_781.init = 16'heeee;
    ORCALUT4 reduce_or_5639_i1_2_lut_3_lut_4_lut (.A(n37744), .B(\mc[3] ), 
            .C(n37824), .D(\mc[4] ), .Z(IncDec_16_3__N_1212[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam reduce_or_5639_i1_2_lut_3_lut_4_lut.init = 16'hf1f0;
    ORCALUT4 select_819_Select_1_i50_3_lut_4_lut_2_lut_3_lut (.A(n37744), 
            .B(\mc[3] ), .C(n37664), .Z(n50_adj_1821)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam select_819_Select_1_i50_3_lut_4_lut_2_lut_3_lut.init = 16'h0101;
    ORCALUT4 select_825_Select_2_i50_2_lut_rep_462_3_lut_4_lut (.A(n37775), 
            .B(n37746), .C(n37693), .D(n39842), .Z(n37565)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam select_825_Select_2_i50_2_lut_rep_462_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 i14_1_lut_rep_726 (.A(\IR[4] ), .Z(n37829)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i14_1_lut_rep_726.init = 16'h5555;
    ORCALUT4 i11130_4_lut_4_lut_4_lut (.A(\Set_BusA_To_3__N_1202[0] ), .B(\BusA[7] ), 
            .C(\BusA[6] ), .D(\IR[4] ), .Z(n14257)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2015[15:26])
    defparam i11130_4_lut_4_lut_4_lut.init = 16'h50d8;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_270 (.A(\ALU_Op_3__N_1269[3] ), .B(n37744), 
            .C(n37510), .D(ISet[1]), .Z(n4_adj_1822)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(676[19] 711[26])
    defparam i1_2_lut_3_lut_4_lut_adj_270.init = 16'hbfff;
    ORCALUT4 mux_1392_i3_3_lut_4_lut (.A(\ALU_Op_3__N_1269[3] ), .B(n37744), 
            .C(\IR[7] ), .D(n37824), .Z(n2207[2])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(676[19] 711[26])
    defparam mux_1392_i3_3_lut_4_lut.init = 16'hf404;
    ORCALUT4 i1_4_lut_else_4_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(\mc[2] ), 
            .D(\Set_BusA_To_3__N_1198[2] ), .Z(n39849)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_4_lut_else_4_lut_4_lut.init = 16'h8880;
    ORCALUT4 i1_2_lut_rep_506_4_lut (.A(n37750), .B(\IR[7] ), .C(ISet[1]), 
            .D(n37860), .Z(n37609)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_rep_506_4_lut.init = 16'h8000;
    ORCALUT4 i2_3_lut_4_lut_adj_271 (.A(\Set_BusA_To_3__N_1202[0] ), .B(n39873), 
            .C(n37842), .D(n32675), .Z(n5_adj_1772)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_271.init = 16'h8000;
    ORCALUT4 i1_2_lut_rep_510_4_lut (.A(n37750), .B(\IR[7] ), .C(ISet[1]), 
            .D(n7237), .Z(n37613)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_rep_510_4_lut.init = 16'h8000;
    ORCALUT4 i3_4_lut_adj_272 (.A(\IR[2] ), .B(n6_adj_1823), .C(n21_adj_1824), 
            .D(\IR[0] ), .Z(n16287)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_272.init = 16'hfcfe;
    ORCALUT4 i32161_2_lut_rep_431_4_lut_4_lut (.A(n37710), .B(n37736), .C(n39836), 
            .D(n37729), .Z(n37534)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i32161_2_lut_rep_431_4_lut_4_lut.init = 16'h1f3f;
    ORCALUT4 i2_4_lut_adj_273 (.A(n28_adj_1825), .B(n26_adj_1826), .C(\IR[7] ), 
            .D(n39869), .Z(n6_adj_1823)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_273.init = 16'hfcee;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_274 (.A(n37710), .B(n37736), .C(n37824), 
            .D(n37541), .Z(n16890)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_274.init = 16'h10f0;
    ORCALUT4 i19067_4_lut_else_4_lut_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\IR[0] ), .D(\IR[1] ), .Z(n37909)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i19067_4_lut_else_4_lut_4_lut.init = 16'h0e00;
    ORCALUT4 i19027_2_lut_rep_515_4_lut (.A(n37783), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(n37855), .D(n37674), .Z(n37618)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i19027_2_lut_rep_515_4_lut.init = 16'hef00;
    ORCALUT4 i2_3_lut_rep_449 (.A(n4462), .B(n37688), .C(n16251), .Z(n37552)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_449.init = 16'hfefe;
    ORCALUT4 i2_2_lut_3_lut_4_lut_4_lut_adj_275 (.A(n39867), .B(n39861), 
            .C(n39859), .D(n39841), .Z(n23363)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i2_2_lut_3_lut_4_lut_4_lut_adj_275.init = 16'hfffd;
    ORCALUT4 i1_4_lut_adj_276 (.A(\IR[1] ), .B(\IR[6] ), .C(n32), .D(\IR[0] ), 
            .Z(n26_adj_1826)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_276.init = 16'ha0a8;
    ORCALUT4 i32294_3_lut_4_lut_4_lut (.A(\IR[5] ), .B(n37857), .C(\IR[2] ), 
            .D(n39841), .Z(n4_adj_1800)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i32294_3_lut_4_lut_4_lut.init = 16'h0008;
    ORCALUT4 i2_2_lut_3_lut_4_lut_4_lut_adj_277 (.A(\IR[5] ), .B(\IR[2] ), 
            .C(n37821), .D(n39841), .Z(n33886)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i2_2_lut_3_lut_4_lut_4_lut_adj_277.init = 16'hfffd;
    ORCALUT4 i19559_2_lut_4_lut (.A(n37857), .B(\IR[2] ), .C(n37782), 
            .D(\Set_BusA_To_3__N_1198[2] ), .Z(n23028)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i19559_2_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i2_3_lut_rep_512_4_lut (.A(n37786), .B(n37713), .C(n37718), 
            .D(n37855), .Z(n37615)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i2_3_lut_rep_512_4_lut.init = 16'h0d00;
    ORCALUT4 sram_addr_c_bdd_2_lut_32575_rep_436_4_lut (.A(n4462), .B(n37688), 
            .C(n16251), .D(n36315), .Z(n37539)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam sram_addr_c_bdd_2_lut_32575_rep_436_4_lut.init = 16'hfe00;
    ORCALUT4 sram_addr_c_bdd_2_lut_32504_4_lut (.A(n4462), .B(n37688), .C(n16251), 
            .D(n36178), .Z(n36179)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam sram_addr_c_bdd_2_lut_32504_4_lut.init = 16'hfe00;
    ORCALUT4 ISet_1__I_0_1773_i3_2_lut_rep_734 (.A(ISet[0]), .B(ISet[1]), 
            .Z(n37837)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam ISet_1__I_0_1773_i3_2_lut_rep_734.init = 16'hdddd;
    ORCALUT4 i18837_2_lut_rep_413_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), 
            .C(Set_Addr_To_2__N_1044[0]), .D(\mc[6] ), .Z(n37516)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i18837_2_lut_rep_413_3_lut_4_lut.init = 16'h20f0;
    ORCALUT4 i19412_2_lut_rep_414_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), 
            .C(\Set_Addr_To_2__N_1044[2] ), .D(\mc[6] ), .Z(n37517)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i19412_2_lut_rep_414_3_lut_4_lut.init = 16'h20f0;
    ORCALUT4 i677_2_lut_rep_653_3_lut (.A(ISet[0]), .B(ISet[1]), .C(\mc[6] ), 
            .Z(n37756)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i677_2_lut_rep_653_3_lut.init = 16'hd0d0;
    ORCALUT4 MCycles_2__N_1055_I_0_1670_Select_0_i55_2_lut_rep_508_4_lut (.A(n39859), 
            .B(n37735), .C(n5_adj_1818), .D(n37791), .Z(n37611)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam MCycles_2__N_1055_I_0_1670_Select_0_i55_2_lut_rep_508_4_lut.init = 16'h0400;
    ORCALUT4 i19105_2_lut_4_lut (.A(n4462), .B(n37688), .C(n16251), .D(n6061[0]), 
            .Z(Save_ALU_N_1470)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i19105_2_lut_4_lut.init = 16'hfe00;
    ORCALUT4 i1_2_lut_4_lut_adj_278 (.A(\IR[1] ), .B(n37735), .C(n5_adj_1818), 
            .D(n39842), .Z(n4_adj_1827)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_4_lut_adj_278.init = 16'h0400;
    ORCALUT4 i1_2_lut_rep_735 (.A(\IR[2] ), .B(\IR[0] ), .Z(n37838)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_rep_735.init = 16'h2222;
    ORCALUT4 i2_2_lut_3_lut (.A(\IR[2] ), .B(n39873), .C(\IR[4] ), .Z(n6_adj_1828)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i2_2_lut_3_lut.init = 16'h2020;
    ORCALUT4 i1_2_lut_rep_736 (.A(n39871), .B(n39869), .Z(n37839)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_736.init = 16'h4444;
    ORCALUT4 i1_2_lut_3_lut_adj_279 (.A(n39871), .B(n39869), .C(last_tstate), 
            .Z(n7_adj_1829)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_279.init = 16'h4040;
    ORCALUT4 i30749_2_lut_4_lut (.A(\IR[1] ), .B(n37735), .C(n5_adj_1818), 
            .D(n33407), .Z(n34294)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i30749_2_lut_4_lut.init = 16'hfb00;
    ORCALUT4 i1_2_lut_rep_664_3_lut (.A(n39871), .B(n39869), .C(n39865), 
            .Z(n37767)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_rep_664_3_lut.init = 16'h0404;
    ORCALUT4 i19538_3_lut_rep_514_4_lut (.A(n37712), .B(n37779), .C(n39837), 
            .D(n37699), .Z(n37617)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i19538_3_lut_rep_514_4_lut.init = 16'heee0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_280 (.A(n39871), .B(n39869), .C(n37794), 
            .D(n39865), .Z(n4_adj_1830)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_280.init = 16'h0040;
    ORCALUT4 i29687_2_lut_3_lut_4_lut (.A(n37712), .B(n37779), .C(n37811), 
            .D(n37734), .Z(n33180)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i29687_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i4_2_lut_rep_737 (.A(n39859), .B(\IR[0] ), .Z(n37794)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4_2_lut_rep_737.init = 16'h2222;
    ORCALUT4 i27_4_lut_4_lut (.A(n39859), .B(n39873), .C(\IR[2] ), .D(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n12_adj_1831)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A (B (D))) */ ;
    defparam i27_4_lut_4_lut.init = 16'hcc20;
    ORCALUT4 i1_2_lut_rep_655_2_lut_3_lut (.A(\IR[1] ), .B(\IR[0] ), .C(\IR[2] ), 
            .Z(n37758)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_655_2_lut_3_lut.init = 16'h0202;
    ORCALUT4 i19177_2_lut_rep_738 (.A(\IR[4] ), .B(\IR[5] ), .Z(n37841)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(506[27] 509[30])
    defparam i19177_2_lut_rep_738.init = 16'h2222;
    ORCALUT4 i1_2_lut_rep_660_3_lut (.A(\IR[4] ), .B(\IR[5] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n37763)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(506[27] 509[30])
    defparam i1_2_lut_rep_660_3_lut.init = 16'h0202;
    ORCALUT4 BusB_7__I_0_129_i4_2_lut_rep_538_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(BusB[3]), .D(\Set_BusA_To_3__N_1202[0] ), .Z(n37641)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(506[27] 509[30])
    defparam BusB_7__I_0_129_i4_2_lut_rep_538_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i3_2_lut_rep_739 (.A(\IR[2] ), .B(n39859), .Z(n37842)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i3_2_lut_rep_739.init = 16'h4444;
    ORCALUT4 i1_2_lut_rep_740 (.A(\IR[5] ), .B(\IR[4] ), .Z(n37843)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_740.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_adj_281 (.A(\IR[5] ), .B(\IR[4] ), .C(\IR[1] ), 
            .Z(n18_adj_1832)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;
    defparam i1_2_lut_3_lut_adj_281.init = 16'h2f2f;
    ORCALUT4 i19802_3_lut_4_lut (.A(n37782), .B(n37720), .C(n37775), .D(n37737), 
            .Z(n23316)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1679[15:26])
    defparam i19802_3_lut_4_lut.init = 16'hff20;
    ORCALUT4 i2_2_lut_rep_661_3_lut (.A(\IR[5] ), .B(\IR[4] ), .C(\IR[0] ), 
            .Z(n37764)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_2_lut_rep_661_3_lut.init = 16'h2020;
    ORCALUT4 select_200_Select_2_i7_3_lut_4_lut_4_lut (.A(\IR[5] ), .B(\IR[4] ), 
            .C(n37824), .D(n39842), .Z(Set_BusA_To_3__N_1182[2])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam select_200_Select_2_i7_3_lut_4_lut_4_lut.init = 16'ha2a0;
    ORCALUT4 i20_3_lut_3_lut_4_lut (.A(\IR[5] ), .B(\IR[4] ), .C(\IR[2] ), 
            .D(\IR[0] ), .Z(n9_adj_1833)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (C+(D)))) */ ;
    defparam i20_3_lut_3_lut_4_lut.init = 16'h200f;
    ORCALUT4 i19754_2_lut_rep_485_3_lut_4_lut (.A(n37782), .B(n37720), .C(n37680), 
            .D(n37737), .Z(n37588)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1679[15:26])
    defparam i19754_2_lut_rep_485_3_lut_4_lut.init = 16'hf020;
    ORCALUT4 i1_2_lut_rep_742 (.A(\IR[0] ), .B(\IR[2] ), .Z(n37845)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_742.init = 16'hbbbb;
    ORCALUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_282 (.A(\IR[0] ), .B(\IR[2] ), 
            .C(\IR[1] ), .D(\ALU_Op_r[1] ), .Z(n32621)) /* synthesis lut_function=(!(A (D)+!A (B (C+(D))+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_282.init = 16'h00bf;
    ORCALUT4 i1_2_lut_rep_470_3_lut_4_lut (.A(n37776), .B(n37736), .C(\ALU_Op_3__N_1269[3] ), 
            .D(n37686), .Z(n37573)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1735[15:26])
    defparam i1_2_lut_rep_470_3_lut_4_lut.init = 16'h10f0;
    ORCALUT4 i674_2_lut_rep_471_3_lut_4_lut (.A(n37776), .B(n37736), .C(\mc[5] ), 
            .D(n37686), .Z(n37574)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1735[15:26])
    defparam i674_2_lut_rep_471_3_lut_4_lut.init = 16'h10f0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_283 (.A(n37769), .B(n39842), .C(\IR[4] ), 
            .D(n1865), .Z(n32707)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2432[19] 2448[26])
    defparam i1_2_lut_3_lut_4_lut_adj_283.init = 16'h4000;
    ORCALUT4 mux_3088_i1_3_lut_rep_489_4_lut (.A(n37769), .B(n39842), .C(\IR[1] ), 
            .D(n39848), .Z(n37592)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2432[19] 2448[26])
    defparam mux_3088_i1_3_lut_rep_489_4_lut.init = 16'hf404;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_284 (.A(n37769), .B(n39842), .C(\IR[5] ), 
            .D(n1865), .Z(n32708)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2432[19] 2448[26])
    defparam i1_2_lut_3_lut_4_lut_adj_284.init = 16'h4000;
    ORCALUT4 i1_2_lut_rep_746 (.A(ISet[0]), .B(ISet[1]), .Z(n37849)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_746.init = 16'h2222;
    ORCALUT4 i32271_2_lut_3_lut_1_lut (.A(ISet[1]), .Z(n34660)) /* synthesis lut_function=(!(A)) */ ;
    defparam i32271_2_lut_3_lut_1_lut.init = 16'h5555;
    ORCALUT4 i32269_2_lut_3_lut_4_lut_3_lut (.A(ISet[0]), .B(ISet[1]), .C(n19_adj_1834), 
            .Z(n34664)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)))) */ ;
    defparam i32269_2_lut_3_lut_4_lut_3_lut.init = 16'h1d1d;
    ORCALUT4 n36617_bdd_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(n36615), 
            .D(n36617), .Z(n36618)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam n36617_bdd_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i32319_3_lut_4_lut_2_lut (.A(ISet[1]), .B(n5_adj_1772), .Z(n34453)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i32319_3_lut_4_lut_2_lut.init = 16'h7777;
    ORCALUT4 i11145_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(\IR[1] ), 
            .D(n12292), .Z(n14272)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i11145_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i32274_2_lut_3_lut_4_lut_2_lut (.A(ISet[1]), .B(n19_adj_1834), 
            .Z(n34658)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i32274_2_lut_3_lut_4_lut_2_lut.init = 16'hdddd;
    L6MUX21 mux_3156_i1 (.D0(n4743[0]), .D1(n4770[0]), .SD(n37829), .Z(n4764[0]));
    ORCALUT4 i1_2_lut_4_lut_adj_285 (.A(n37794), .B(n37765), .C(n37864), 
            .D(n16241), .Z(n2117)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i1_2_lut_4_lut_adj_285.init = 16'hfd00;
    ORCALUT4 i18838_2_lut_4_lut (.A(n37794), .B(n37765), .C(n37864), .D(n37837), 
            .Z(n22293)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i18838_2_lut_4_lut.init = 16'hfd00;
    ORCALUT4 i1_2_lut_rep_469_3_lut_4_lut (.A(n39869), .B(n37766), .C(n37805), 
            .D(ISet[1]), .Z(n37572)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_rep_469_3_lut_4_lut.init = 16'h4000;
    ORCALUT4 i18765_2_lut_rep_750 (.A(\IR[7] ), .B(\IR[5] ), .Z(n37853)) /* synthesis lut_function=(A (B)) */ ;
    defparam i18765_2_lut_rep_750.init = 16'h8888;
    ORCALUT4 i1_2_lut_rep_663_3_lut (.A(n39871), .B(n39867), .C(n39861), 
            .Z(n37766)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_663_3_lut.init = 16'h0808;
    ORCALUT4 i2_3_lut_4_lut_adj_286 (.A(\IR[6] ), .B(n37766), .C(n39842), 
            .D(n37821), .Z(PreserveC_N_1475)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_286.init = 16'h4000;
    ORCALUT4 i2_2_lut_3_lut_adj_287 (.A(\IR[7] ), .B(n39867), .C(\IR[2] ), 
            .Z(n28_adj_1825)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_2_lut_3_lut_adj_287.init = 16'hf7f7;
    ORCALUT4 sram_addr_c_bdd_2_lut_32501_4_lut (.A(n39845), .B(n20_adj_1811), 
            .C(\Set_BusA_To_3__N_1202[0] ), .D(n37893), .Z(n36169)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam sram_addr_c_bdd_2_lut_32501_4_lut.init = 16'h0400;
    ORCALUT4 i1_2_lut_rep_584_3_lut_4_lut (.A(\IR[7] ), .B(n39867), .C(\IR[6] ), 
            .D(n39861), .Z(n37687)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_584_3_lut_4_lut.init = 16'h0008;
    ORCALUT4 i1_3_lut_4_lut_2_lut (.A(\ALU_Op_3__N_1269[3] ), .B(n23623), 
            .Z(n21_adj_1824)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_3_lut_4_lut_2_lut.init = 16'h1111;
    ORCALUT4 i32228_2_lut_rep_468_4_lut (.A(n39845), .B(n20_adj_1811), .C(\Set_BusA_To_3__N_1202[0] ), 
            .D(n4462), .Z(n37571)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i32228_2_lut_rep_468_4_lut.init = 16'h00fb;
    ORCALUT4 i1_3_lut_4_lut_adj_288 (.A(\Set_BusA_To_3__N_1198[2] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(\IR[5] ), .D(n22510), .Z(n32891)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((D)+!C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_3_lut_4_lut_adj_288.init = 16'hff0d;
    ORCALUT4 Set_BusA_To_3__N_1198_2__bdd_4_lut_32691_4_lut (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\ALU_Op_3__N_1269[3] ), .C(\IR[2] ), .D(\IR[1] ), .Z(n4108[0])) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)+!C !(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam Set_BusA_To_3__N_1198_2__bdd_4_lut_32691_4_lut.init = 16'h0a20;
    ORCALUT4 i2_3_lut_4_lut_adj_289 (.A(n37769), .B(n39845), .C(n39843), 
            .D(n37859), .Z(ExchangeRp)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_289.init = 16'h0010;
    ORCALUT4 i1_2_lut_rep_491_3_lut_4_lut (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\ALU_Op_3__N_1269[3] ), .C(n4754), .D(\IR[2] ), .Z(n37594)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_rep_491_3_lut_4_lut.init = 16'h0020;
    ORCALUT4 n23273_bdd_3_lut (.A(n23273), .B(n23363), .C(\ALU_Op_3__N_1269[3] ), 
            .Z(n37890)) /* synthesis lut_function=(!(A (B+(C)))) */ ;
    defparam n23273_bdd_3_lut.init = 16'h5757;
    ORCALUT4 i19039_2_lut_2_lut_3_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(\IR[7] ), .Z(n1746[1])) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i19039_2_lut_2_lut_3_lut.init = 16'h2f2f;
    ORCALUT4 i1_3_lut_4_lut_adj_290 (.A(n37769), .B(n39845), .C(n39843), 
            .D(\Set_BusA_To_3__N_1198[2] ), .Z(n4_adj_1808)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_290.init = 16'h1110;
    ORCALUT4 n3812_bdd_4_lut_then_4_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(\IR[2] ), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n37892)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam n3812_bdd_4_lut_then_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_291 (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\ALU_Op_3__N_1269[3] ), .C(\IR[0] ), .D(\IR[2] ), .Z(n32619)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_4_lut_adj_291.init = 16'h0020;
    ORCALUT4 i18718_2_lut_rep_635_3_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(\IR[7] ), .Z(n37738)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i18718_2_lut_rep_635_3_lut.init = 16'h2020;
    ORCALUT4 i1_2_lut_rep_644_3_lut_4_lut (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\ALU_Op_3__N_1269[3] ), .C(\IR[4] ), .D(\IR[5] ), .Z(n37747)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_rep_644_3_lut_4_lut.init = 16'h0200;
    ORCALUT4 i29766_2_lut_3_lut_4_lut_4_lut (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\ALU_Op_3__N_1269[3] ), .C(n37604), .D(n37603), .Z(n33268)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i29766_2_lut_3_lut_4_lut_4_lut.init = 16'h2f0c;
    ORCALUT4 i13742_4_lut_4_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(n37651), .D(\Set_BusA_To_3__N_1202[0] ), .Z(n17173)) /* synthesis lut_function=(A (B+(D))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i13742_4_lut_4_lut.init = 16'hfecc;
    ORCALUT4 i8491_4_lut_4_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(\IR[0] ), .D(\IR[1] ), .Z(n11326)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A (B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i8491_4_lut_4_lut.init = 16'hcc20;
    ORCALUT4 i1_3_lut_4_lut_adj_292 (.A(\Set_BusA_To_3__N_1198[2] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(\IR[4] ), .D(n22510), .Z(n32877)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((D)+!C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_3_lut_4_lut_adj_292.init = 16'hff0d;
    ORCALUT4 select_1326_Select_3_i8_2_lut_rep_544_3_lut_4_lut_3_lut (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\ALU_Op_3__N_1269[3] ), .C(\mc[2] ), .Z(n37647)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam select_1326_Select_3_i8_2_lut_rep_544_3_lut_4_lut_3_lut.init = 16'h3232;
    ORCALUT4 i2_3_lut_4_lut_adj_293 (.A(\Set_BusA_To_3__N_1198[2] ), .B(\ALU_Op_3__N_1269[3] ), 
            .C(\Set_BusA_To_3__N_1202[0] ), .D(n1865), .Z(n33672)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i2_3_lut_4_lut_adj_293.init = 16'h2000;
    ORCALUT4 i19253_2_lut_rep_752 (.A(n39869), .B(n39871), .Z(n37855)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19253_2_lut_rep_752.init = 16'h8888;
    ORCALUT4 IR_7__I_0_1660_i14_2_lut_rep_679_3_lut_4_lut (.A(n39869), .B(n39871), 
            .C(\IR[5] ), .D(\IR[4] ), .Z(n37782)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1660_i14_2_lut_rep_679_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i1_2_lut_rep_576_3_lut_3_lut_4_lut_2_lut_3_lut (.A(\IR[6] ), 
            .B(\IR[7] ), .C(n39865), .Z(n37679)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i1_2_lut_rep_576_3_lut_3_lut_4_lut_2_lut_3_lut.init = 16'h7f7f;
    ORCALUT4 i19692_2_lut_rep_617_3_lut_4_lut (.A(n39869), .B(n39871), .C(n39867), 
            .D(n39865), .Z(n37720)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i19692_2_lut_rep_617_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i19603_2_lut_rep_632_3_lut (.A(n39869), .B(n39871), .C(n39861), 
            .Z(n37735)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i19603_2_lut_rep_632_3_lut.init = 16'h8080;
    ORCALUT4 IR_7__I_0_1653_i14_2_lut_rep_633_3_lut_4_lut (.A(n39869), .B(n39871), 
            .C(n39867), .D(n39865), .Z(n37736)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1653_i14_2_lut_rep_633_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_2_lut_3_lut_3_lut_4_lut_3_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(\IR[2] ), .Z(n34246)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut_3_lut.init = 16'h6f6f;
    ORCALUT4 IR_7__I_0_1756_i12_2_lut_rep_753 (.A(n39865), .B(n39867), .Z(n37856)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1756_i12_2_lut_rep_753.init = 16'hbbbb;
    ORCALUT4 i1_2_lut_3_lut_adj_294 (.A(n39865), .B(n39867), .C(\IR[2] ), 
            .Z(n32)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_3_lut_adj_294.init = 16'hb0b0;
    ORCALUT4 n3812_bdd_4_lut_else_4_lut (.A(\Set_BusA_To_3__N_1198[2] ), .B(\IR[2] ), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n37891)) /* synthesis lut_function=(!((B (C)+!B !(C (D)))+!A)) */ ;
    defparam n3812_bdd_4_lut_else_4_lut.init = 16'h2808;
    ORCALUT4 IR_7__I_0_1740_i14_2_lut_3_lut_4_lut (.A(n39865), .B(n39867), 
            .C(n39869), .D(n39871), .Z(n14_adj_1780)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1740_i14_2_lut_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i19385_2_lut_rep_615_3_lut_2_lut (.A(n39865), .B(n39867), .Z(n37718)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i19385_2_lut_rep_615_3_lut_2_lut.init = 16'h9999;
    ORCALUT4 i1_4_lut_adj_295 (.A(\tstate[2] ), .B(n47), .C(n28_adj_10), 
            .D(n37754), .Z(n957)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(55[25:32])
    defparam i1_4_lut_adj_295.init = 16'ha088;
    ORCALUT4 i2_2_lut_rep_596_3_lut_4_lut_2_lut_2_lut (.A(\IR[4] ), .B(n39867), 
            .Z(n37699)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i2_2_lut_rep_596_3_lut_4_lut_2_lut_2_lut.init = 16'h1111;
    ORCALUT4 IR_7__I_0_1622_i14_2_lut_rep_609_3_lut_4_lut (.A(n39865), .B(n39867), 
            .C(\IR[7] ), .D(\IR[6] ), .Z(n37712)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1622_i14_2_lut_rep_609_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 ExchangeDH_I_0_824_2_lut_rep_476_3_lut_4_lut (.A(n37776), .B(n37775), 
            .C(\ts[4] ), .D(n37859), .Z(n37579)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam ExchangeDH_I_0_824_2_lut_rep_476_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i3_3_lut_4_lut (.A(n37776), .B(n37775), .C(n37696), .D(n23391), 
            .Z(n8_adj_1836)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i3_3_lut_4_lut.init = 16'he000;
    ORCALUT4 ExchangeDH_I_0_795_2_lut_rep_481_3_lut_4_lut (.A(n37776), .B(n37775), 
            .C(n39857), .D(n37859), .Z(n37584)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam ExchangeDH_I_0_795_2_lut_rep_481_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 IR_7__I_0_1649_i14_2_lut_rep_672_3_lut_4_lut (.A(n39865), .B(\IR[5] ), 
            .C(\IR[7] ), .D(\IR[6] ), .Z(n37775)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1649_i14_2_lut_rep_672_3_lut_4_lut.init = 16'hbfff;
    ORCALUT4 i19133_2_lut_rep_754 (.A(n39873), .B(n39859), .Z(n37857)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19133_2_lut_rep_754.init = 16'h8888;
    ORCALUT4 n4109_bdd_3_lut_4_lut (.A(\IR[0] ), .B(\IR[1] ), .C(\IR[2] ), 
            .D(\Set_BusA_To_3__N_1198[2] ), .Z(n36165)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam n4109_bdd_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i19246_2_lut_rep_610_3_lut_4_lut (.A(n39873), .B(n39859), .C(n39863), 
            .D(n39861), .Z(n37713)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i19246_2_lut_rep_610_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 n4462_bdd_3_lut_33226_4_lut (.A(n39873), .B(n39859), .C(n39861), 
            .D(n37688), .Z(n36314)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam n4462_bdd_3_lut_33226_4_lut.init = 16'h0800;
    ORCALUT4 n15138_bdd_4_lut_32613_4_lut (.A(\IR[0] ), .B(\IR[1] ), .C(\IR[2] ), 
            .D(\Set_BusA_To_3__N_1202[0] ), .Z(n36312)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam n15138_bdd_4_lut_32613_4_lut.init = 16'h0c08;
    ORCALUT4 i5023_2_lut_3_lut (.A(\IR[0] ), .B(\IR[1] ), .C(\IR[2] ), 
            .Z(n7237)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i5023_2_lut_3_lut.init = 16'h0808;
    ORCALUT4 i30759_2_lut_3_lut_4_lut_2_lut (.A(\IR[1] ), .B(\IR[2] ), .Z(n34306)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i30759_2_lut_3_lut_4_lut_2_lut.init = 16'hdddd;
    ORCALUT4 IR_7__I_0_1691_i11_2_lut_rep_643_3_lut_4_lut (.A(\IR[0] ), .B(\IR[1] ), 
            .C(\Set_BusA_To_3__N_1202[0] ), .D(\IR[2] ), .Z(n37746)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1691_i11_2_lut_rep_643_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i32202_2_lut_rep_755 (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n37858)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i32202_2_lut_rep_755.init = 16'h4444;
    ORCALUT4 IR_7__I_0_1752_i11_2_lut_rep_612_3_lut_4_lut (.A(\IR[2] ), .B(n39863), 
            .C(n39873), .D(n39859), .Z(n37715)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1752_i11_2_lut_rep_612_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i18998_2_lut_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(\Set_BusA_To_3__N_1198[2] ), .D(\mc[2] ), .Z(n4758[0])) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i18998_2_lut_3_lut_4_lut.init = 16'h4440;
    ORCALUT4 mux_4624_i1_4_lut (.A(n6721[0]), .B(n5423[0]), .C(ISet[1]), 
            .D(n37552), .Z(write)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_4624_i1_4_lut.init = 16'hca0a;
    PFUMX i33275 (.BLUT(n37891), .ALUT(n37892), .C0(\ALU_Op_3__N_1269[3] ), 
          .Z(n37893));
    ORCALUT4 mux_3648_i1_3_lut (.A(n5420[0]), .B(n5417[0]), .C(n4462), 
            .Z(n5423[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3648_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_296 (.A(n37719), .B(n37784), .C(n37746), 
            .D(n37775), .Z(n7_adj_1837)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1301[15:26])
    defparam i2_2_lut_3_lut_4_lut_adj_296.init = 16'heee0;
    ORCALUT4 i2_3_lut_4_lut_adj_297 (.A(n37855), .B(n37779), .C(n37743), 
            .D(n37811), .Z(n33750)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_297.init = 16'h2000;
    ORCALUT4 i1_2_lut_rep_607_3_lut_4_lut (.A(n39861), .B(n39863), .C(n39859), 
            .D(n39873), .Z(n37710)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_607_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i1_2_lut_rep_673_3_lut_4_lut (.A(n39861), .B(n39863), .C(n39859), 
            .D(n39873), .Z(n37776)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_673_3_lut_4_lut.init = 16'hbfff;
    ORCALUT4 i30778_3_lut_4_lut_2_lut_3_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(\IR[0] ), .Z(n34327)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i30778_3_lut_4_lut_2_lut_3_lut.init = 16'hbfbf;
    ORCALUT4 i1_2_lut_rep_616_3_lut_4_lut (.A(n39861), .B(n39863), .C(n39873), 
            .D(n39859), .Z(n37719)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_616_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i67_2_lut_3_lut_4_lut (.A(n37746), .B(n37736), .C(n37765), 
            .D(n37715), .Z(n50_adj_1816)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1172[15:26])
    defparam i67_2_lut_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 ISet_1__I_0_1590_i3_2_lut_rep_756 (.A(ISet[0]), .B(ISet[1]), 
            .Z(n37859)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(265[9:14])
    defparam ISet_1__I_0_1590_i3_2_lut_rep_756.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_298 (.A(ISet[0]), .B(ISet[1]), .C(\tstate[2] ), 
            .D(n64), .Z(n32557)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(265[9:14])
    defparam i1_2_lut_3_lut_4_lut_adj_298.init = 16'h1000;
    ORCALUT4 i18846_2_lut_3_lut (.A(ISet[0]), .B(ISet[1]), .C(\Q_7__N_1599[7] ), 
            .Z(F_Out_7__N_1636)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(265[9:14])
    defparam i18846_2_lut_3_lut.init = 16'he0e0;
    ORCALUT4 i41_3_lut_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(n37866), 
            .D(\ALU_Op_r[1] ), .Z(n18)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(265[9:14])
    defparam i41_3_lut_3_lut_4_lut.init = 16'h0efe;
    ORCALUT4 i43_3_lut_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(\ALU_Op_r[1] ), 
            .D(n37866), .Z(n21)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(265[9:14])
    defparam i43_3_lut_3_lut_4_lut.init = 16'hf011;
    ORCALUT4 i32108_2_lut_rep_757 (.A(\IR[2] ), .B(\IR[1] ), .Z(n37860)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i32108_2_lut_rep_757.init = 16'h1111;
    ORCALUT4 i2_4_lut_adj_299 (.A(\mc[2] ), .B(n33750), .C(n37697), .D(n16890), 
            .Z(Jump_N_1487)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_299.init = 16'hffce;
    ORCALUT4 i4_4_lut (.A(n37824), .B(n39861), .C(n37839), .D(n37821), 
            .Z(Jump_N_1505)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i4_4_lut.init = 16'h8000;
    ORCALUT4 n4_bdd_2_lut_32838 (.A(\IR[5] ), .B(\IR[2] ), .Z(n36530)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n4_bdd_2_lut_32838.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_300 (.A(n39861), .B(\IR[1] ), .C(\IR[5] ), 
            .D(n39871), .Z(n32673)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_300.init = 16'h1000;
    ORCALUT4 i31_3_lut (.A(n18_adj_1840), .B(\IR[0] ), .C(\IR[2] ), .Z(n20_adj_1811)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i31_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut (.A(n39867), .B(n39865), .C(\IR[1] ), .Z(n18_adj_1840)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+(C)))) */ ;
    defparam i1_3_lut.init = 16'h5c5c;
    ORCALUT4 n14_bdd_4_lut (.A(n37765), .B(n37714), .C(\ALU_Op_3__N_1269[3] ), 
            .D(n37811), .Z(n36527)) /* synthesis lut_function=(A (B+(C))+!A (B (D)+!B (C (D)))) */ ;
    defparam n14_bdd_4_lut.init = 16'hfca8;
    ORCALUT4 i5070_2_lut_rep_680_3_lut (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[0] ), 
            .Z(n37783)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i5070_2_lut_rep_680_3_lut.init = 16'hefef;
    ORCALUT4 i19129_2_lut_3_lut_4_lut (.A(\IR[2] ), .B(\IR[1] ), .C(\ALU_Op_3__N_1269[3] ), 
            .D(\Set_BusA_To_3__N_1198[2] ), .Z(n6362[0])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i19129_2_lut_3_lut_4_lut.init = 16'h0100;
    ORCALUT4 i3_4_lut_adj_301 (.A(n5_adj_1841), .B(n37687), .C(n39863), 
            .D(n4_adj_1830), .Z(n16251)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3_4_lut_adj_301.init = 16'hfeee;
    ORCALUT4 i4_4_lut_adj_302 (.A(Inc_PC_N_1421), .B(n8), .C(\mc[6] ), 
            .D(n22293), .Z(n47)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i4_4_lut_adj_302.init = 16'heefe;
    ORCALUT4 i1_4_lut_adj_303 (.A(\Set_BusA_To_3__N_1202[0] ), .B(n4754), 
            .C(n6_adj_1828), .D(n37839), .Z(n5_adj_1841)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_303.init = 16'hdccc;
    ORCALUT4 i2_4_lut_adj_304 (.A(n23230), .B(n39859), .C(n13), .D(n37767), 
            .Z(n4754)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(D)))) */ ;
    defparam i2_4_lut_adj_304.init = 16'h3100;
    ORCALUT4 i19727_3_lut (.A(n39867), .B(\IR[2] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n23230)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i19727_3_lut.init = 16'hfefe;
    ORCALUT4 i21655_4_lut (.A(n9490), .B(n37826), .C(\ALU_Op_3__N_1269[3] ), 
            .D(n17), .Z(nxt_mreq_n)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(65[25:31])
    defparam i21655_4_lut.init = 16'h3f35;
    ORCALUT4 IR_4__bdd_4_lut_32963 (.A(n37562), .B(n37578), .C(n36531), 
            .D(n39848), .Z(n36535)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam IR_4__bdd_4_lut_32963.init = 16'ha080;
    ORCALUT4 i19400_2_lut_3_lut_4_lut (.A(n37719), .B(n37714), .C(last_tstate), 
            .D(n37859), .Z(n22859)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i19400_2_lut_3_lut_4_lut.init = 16'hf0f1;
    ORCALUT4 i32224_2_lut_rep_477_3_lut_4_lut (.A(n37719), .B(n37714), .C(n37754), 
            .D(n37859), .Z(clk_op_enable_127)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i32224_2_lut_rep_477_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 i1_2_lut_3_lut_rep_758 (.A(\IR[2] ), .B(\IR[1] ), .C(n39871), 
            .Z(n37861)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_rep_758.init = 16'hf1f1;
    ORCALUT4 n4_bdd_4_lut_4_lut (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[7] ), 
            .D(\IR[0] ), .Z(n36529)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam n4_bdd_4_lut_4_lut.init = 16'h0006;
    ORCALUT4 i30679_2_lut_3_lut_4_lut (.A(n37719), .B(n37714), .C(n23656), 
            .D(n37701), .Z(n34219)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i30679_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i2_3_lut (.A(n39871), .B(n39869), .C(ISet[1]), .Z(n32675)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut.init = 16'h4040;
    ORCALUT4 i2_3_lut_adj_305 (.A(\IR[1] ), .B(n32675), .C(n9_adj_1833), 
            .Z(n1871)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_305.init = 16'h8080;
    ORCALUT4 i18752_2_lut_4_lut (.A(n39842), .B(n37595), .C(\IR[1] ), 
            .D(\IR[0] ), .Z(n11025)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i18752_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i1_3_lut_4_lut_adj_306 (.A(n37782), .B(n37710), .C(n37859), 
            .D(Alternate), .Z(Alternate_N_899)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_306.init = 16'hfe01;
    ORCALUT4 mux_1223_i14_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[13]), .D(ACC[5]), .Z(n1938[13])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i14_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_307 (.A(n37776), .B(n37720), .C(n37705), 
            .D(n37785), .Z(n6_adj_1843)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1086[15:26])
    defparam i2_2_lut_3_lut_4_lut_adj_307.init = 16'hbbb0;
    ORCALUT4 i4_3_lut_4_lut (.A(n37776), .B(n37720), .C(n15_adj_1771), 
            .D(n23305), .Z(n11_adj_1844)) /* synthesis lut_function=(A (C+!(D))+!A (B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1086[15:26])
    defparam i4_3_lut_4_lut.init = 16'hf4ff;
    ORCALUT4 i1_2_lut_4_lut_adj_308 (.A(n37783), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(n37792), .D(Set_BusA_To_3__N_1171[0]), .Z(n18_c)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_4_lut_adj_308.init = 16'h4000;
    ORCALUT4 mux_4640_i1_4_lut (.A(Read_To_Acc_N_1464), .B(n37597), .C(ISet[1]), 
            .D(ISet[0]), .Z(Read_To_Acc)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_4640_i1_4_lut.init = 16'hc0ca;
    ORCALUT4 i2_4_lut_adj_309 (.A(n32665), .B(n34115), .C(\mc[3] ), .D(n37682), 
            .Z(Read_To_Acc_N_1464)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(65[17:19])
    defparam i2_4_lut_adj_309.init = 16'heefe;
    ORCALUT4 i3_4_lut_adj_310 (.A(\Set_BusA_To_3__N_1198[2] ), .B(n37715), 
            .C(n37792), .D(n39867), .Z(n34115)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut_adj_310.init = 16'h0020;
    ORCALUT4 select_1960_Select_0_i2_2_lut_rep_503_4_lut (.A(n37783), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(n37792), .D(n39848), .Z(n37606)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam select_1960_Select_0_i2_2_lut_rep_503_4_lut.init = 16'h4000;
    ORCALUT4 i29527_2_lut_rep_465_3_lut_4_lut (.A(n37786), .B(n37713), .C(n37674), 
            .D(n37720), .Z(n37568)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i29527_2_lut_rep_465_3_lut_4_lut.init = 16'h20f0;
    ORCALUT4 i4_3_lut_4_lut_adj_311 (.A(n37786), .B(n37713), .C(n37615), 
            .D(n37736), .Z(n16909)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i4_3_lut_4_lut_adj_311.init = 16'hf0fd;
    ORCALUT4 mux_1223_i16_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[15]), .D(ACC[7]), .Z(n1938[15])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i16_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 IR_7__I_0_1789_i10_2_lut_rep_761 (.A(n39861), .B(n39863), .Z(n37864)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam IR_7__I_0_1789_i10_2_lut_rep_761.init = 16'hdddd;
    ORCALUT4 i1_2_lut_rep_473_3_lut_4_lut (.A(n37786), .B(n37713), .C(ISet[1]), 
            .D(n37778), .Z(n37576)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_473_3_lut_4_lut.init = 16'h00d0;
    ORCALUT4 select_846_Select_1_i24_4_lut_then_4_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(n39839), .C(\mc[2] ), .D(\Set_BusA_To_3__N_1198[2] ), .Z(n37895)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam select_846_Select_1_i24_4_lut_then_4_lut.init = 16'h1101;
    ORCALUT4 i1_2_lut_rep_674_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n37777)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i1_2_lut_rep_674_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i1_2_lut_rep_683_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n37786)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i1_2_lut_rep_683_3_lut_4_lut.init = 16'hdfff;
    ORCALUT4 i1_3_lut_rep_438_4_lut (.A(n9_c), .B(n23387), .C(n37736), 
            .D(n37729), .Z(n37541)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i1_3_lut_rep_438_4_lut.init = 16'h4440;
    ORCALUT4 select_846_Select_1_i24_4_lut_else_4_lut (.A(\ALU_Op_3__N_1269[3] ), 
            .B(n39839), .Z(n37894)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam select_846_Select_1_i24_4_lut_else_4_lut.init = 16'h1111;
    ORCALUT4 i1_4_lut_adj_312 (.A(n37769), .B(n37583), .C(n39845), .D(n39843), 
            .Z(n57)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(52[25:30])
    defparam i1_4_lut_adj_312.init = 16'h3331;
    ORCALUT4 i2_3_lut_4_lut_adj_313 (.A(n37786), .B(n37713), .C(n39845), 
            .D(n39867), .Z(n23273)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i2_3_lut_4_lut_adj_313.init = 16'hfff2;
    ORCALUT4 i1_2_lut_rep_486_3_lut_4_lut_4_lut (.A(n37786), .B(n37712), 
            .C(n37785), .D(n37713), .Z(n37589)) /* synthesis lut_function=(A (C+!(D))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(985[15:26])
    defparam i1_2_lut_rep_486_3_lut_4_lut_4_lut.init = 16'he0ea;
    ORCALUT4 i19847_2_lut_rep_452_3_lut_4_lut_4_lut (.A(n37737), .B(n37775), 
            .C(n37680), .D(n37679), .Z(n37555)) /* synthesis lut_function=(A (C)+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1743[15:26])
    defparam i19847_2_lut_rep_452_3_lut_4_lut_4_lut.init = 16'he0a0;
    ORCALUT4 i2_3_lut_4_lut_adj_314 (.A(n37784), .B(n37729), .C(n37791), 
            .D(n37859), .Z(stop)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_314.init = 16'h0010;
    ORCALUT4 i30714_2_lut_3_lut_4_lut (.A(n37784), .B(n37729), .C(n37785), 
            .D(n37760), .Z(n34258)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i30714_2_lut_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 n37393_bdd_3_lut_4_lut (.A(n37700), .B(n37859), .C(\Fp[3] ), 
            .D(n37393), .Z(n37394)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n37393_bdd_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i1_4_lut_4_lut_adj_315 (.A(\IR[4] ), .B(\IR[5] ), .C(n33886), 
            .D(n4_adj_1810), .Z(n4_adj_1845)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_315.init = 16'hf060;
    ORCALUT4 i2_2_lut_rep_488_3_lut_4_lut (.A(n37858), .B(n37803), .C(n37711), 
            .D(n37720), .Z(n37591)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C))) */ ;
    defparam i2_2_lut_rep_488_3_lut_4_lut.init = 16'h0d0f;
    ORCALUT4 i2_3_lut_4_lut_adj_316 (.A(n37693), .B(n37605), .C(n37603), 
            .D(n23281), .Z(n7_adj_1846)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_316.init = 16'h0eff;
    ORCALUT4 i32111_2_lut_rep_519_3_lut_4_lut (.A(n37858), .B(n37803), .C(n37859), 
            .D(n37720), .Z(n37622)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i32111_2_lut_rep_519_3_lut_4_lut.init = 16'h0200;
    ORCALUT4 i19828_3_lut_4_lut (.A(n37858), .B(n37803), .C(n37729), .D(n37736), 
            .Z(n23177)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;
    defparam i19828_3_lut_4_lut.init = 16'hffd0;
    ORCALUT4 i21_4_lut (.A(n8_c), .B(n23605), .C(ISet[1]), .D(n4_adj_1847), 
            .Z(mcycles_d[0])) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i21_4_lut.init = 16'h3afa;
    ORCALUT4 i1_4_lut_adj_317 (.A(n32597), .B(n37766), .C(n16_adj_1848), 
            .D(\IR[6] ), .Z(n4_adj_1847)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_317.init = 16'ha088;
    ORCALUT4 i1_4_lut_adj_318 (.A(\IR[7] ), .B(\IR[2] ), .C(\IR[0] ), 
            .D(n18_adj_1832), .Z(n16_adj_1848)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_318.init = 16'h5111;
    ORCALUT4 IR_2__bdd_4_lut_33159_4_lut (.A(\IR[2] ), .B(\IR[5] ), .C(\IR[4] ), 
            .D(\IR[1] ), .Z(n37091)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;
    defparam IR_2__bdd_4_lut_33159_4_lut.init = 16'h4404;
    ORCALUT4 i3_4_lut_adj_319 (.A(n37713), .B(ISet[1]), .C(n39845), .D(n39867), 
            .Z(\Special_LD[0] )) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_319.init = 16'h0008;
    ORCALUT4 i19615_2_lut_3_lut_4_lut (.A(n37858), .B(n37803), .C(n37859), 
            .D(n37775), .Z(n23097)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i19615_2_lut_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i7488_2_lut_4_lut (.A(\IR[0] ), .B(n7233), .C(n37792), .D(\IR[5] ), 
            .Z(n10248)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i7488_2_lut_4_lut.init = 16'h2000;
    PFUMX i32724 (.BLUT(n36530), .ALUT(n36529), .C0(\IR[6] ), .Z(n36531));
    ORCALUT4 i1_2_lut_rep_461 (.A(\ALU_Op_3__N_1269[3] ), .B(n23437), .Z(n37564)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_461.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_adj_320 (.A(\ALU_Op_3__N_1269[3] ), .B(n23437), 
            .C(\Set_BusA_To_3__N_1202[0] ), .Z(n16443)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_320.init = 16'h2020;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_321 (.A(n39869), .B(n39871), .C(n37794), 
            .D(n39861), .Z(n4_adj_1849)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_4_lut_adj_321.init = 16'hffef;
    ORCALUT4 i19873_2_lut_3_lut_4_lut (.A(n37700), .B(n37859), .C(n15889), 
            .D(n37754), .Z(n23405)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i19873_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 IR_7__I_0_1622_i15_2_lut_rep_535_3_lut_4_lut (.A(n37857), .B(n37804), 
            .C(n37792), .D(n37856), .Z(n37638)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam IR_7__I_0_1622_i15_2_lut_rep_535_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i1_3_lut_4_lut_adj_322 (.A(n37607), .B(n37664), .C(n15_adj_1768), 
            .D(n37595), .Z(n7_adj_1850)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_322.init = 16'h2f22;
    ORCALUT4 i19611_3_lut_4_lut (.A(n37857), .B(n37804), .C(n37765), .D(n37859), 
            .Z(n23093)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i19611_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i32118_2_lut_rep_522_3_lut_4_lut (.A(n37806), .B(n37792), .C(n37859), 
            .D(n37719), .Z(n37625)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1155[15:26])
    defparam i32118_2_lut_rep_522_3_lut_4_lut.init = 16'h0004;
    ORCALUT4 i7_4_lut_adj_323 (.A(n37704), .B(n14_adj_1851), .C(n10_c), 
            .D(n37703), .Z(n23656)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_323.init = 16'h8000;
    ORCALUT4 i1_2_lut_4_lut_adj_324 (.A(n37693), .B(\ALU_Op_3__N_1269[3] ), 
            .C(n37608), .D(n23307), .Z(n20_adj_1852)) /* synthesis lut_function=(A (D)+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2134[19] 2179[26])
    defparam i1_2_lut_4_lut_adj_324.init = 16'hba00;
    ORCALUT4 mux_206_i1_3_lut_4_lut (.A(n37700), .B(n37859), .C(\Fp[0] ), 
            .D(n32965), .Z(n908)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_206_i1_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 i1_2_lut_rep_574_3_lut_4_lut (.A(n39869), .B(\IR[7] ), .C(n39859), 
            .D(n39861), .Z(n37677)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_574_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 IR_7__I_0_1609_i15_2_lut_3_lut_4_lut (.A(n37794), .B(n37858), 
            .C(n37792), .D(n37856), .Z(n15_adj_1768)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1609_i15_2_lut_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i2_3_lut_4_lut_adj_325 (.A(n37674), .B(n37610), .C(n23177), 
            .D(n32855), .Z(n16969)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_3_lut_4_lut_adj_325.init = 16'hff7f;
    ORCALUT4 mux_4108_i1_3_lut_4_lut (.A(n39848), .B(\IR[2] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .D(\IR[1] ), .Z(n6034[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4108_i1_3_lut_4_lut.init = 16'h202f;
    ORCALUT4 i5_3_lut_4_lut (.A(n4462), .B(n37688), .C(n10_adj_1853), 
            .D(ISet[1]), .Z(I_BTR)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i5_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 IR_7__I_0_1611_i15_2_lut_rep_534_3_lut_4_lut (.A(n39854), .B(n37855), 
            .C(n37803), .D(n37858), .Z(n37637)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam IR_7__I_0_1611_i15_2_lut_rep_534_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i3_4_lut_adj_326 (.A(n5_adj_1854), .B(n32809), .C(\Set_BusA_To_3__N_1202[0] ), 
            .D(n37711), .Z(\IncDec_16_3__N_1012[3] )) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_326.init = 16'hfeee;
    ORCALUT4 i32288_3_lut_4_lut (.A(ISet[1]), .B(n37627), .C(n37577), 
            .D(\Special_LD[0] ), .Z(clk_op_enable_89)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i32288_3_lut_4_lut.init = 16'h0020;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_327 (.A(\IR[4] ), .B(\IR[5] ), .C(n39842), 
            .D(n37792), .Z(n12_adj_1855)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_327.init = 16'h2000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_328 (.A(n39842), .B(\IR[2] ), .C(n7292), 
            .D(n4754), .Z(n32719)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_4_lut_adj_328.init = 16'h2000;
    ORCALUT4 i2_3_lut_rep_474 (.A(n39857), .B(n23273), .C(ISet[1]), .Z(n37577)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_rep_474.init = 16'h2020;
    ORCALUT4 i1_2_lut_rep_444_3_lut_4_lut (.A(n39857), .B(n23273), .C(ISet[1]), 
            .D(n37627), .Z(n37547)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_444_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_329 (.A(\ts[3] ), .B(n23273), .C(ISet[1]), 
            .D(n37627), .Z(n8_adj_11)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_329.init = 16'hdfff;
    ORCALUT4 i75_4_lut (.A(n37824), .B(n39869), .C(n32696), .D(n39871), 
            .Z(n64)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(70[25:29])
    defparam i75_4_lut.init = 16'h8000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_330 (.A(n37715), .B(n39845), .C(n23281), 
            .D(n37678), .Z(n32597)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_330.init = 16'he000;
    ORCALUT4 i29533_2_lut_3_lut_4_lut (.A(n37715), .B(n39845), .C(n39848), 
            .D(n37678), .Z(n33013)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i29533_2_lut_3_lut_4_lut.init = 16'hfef0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_331 (.A(n37715), .B(n39845), .C(Set_BusA_To_3__N_1171[0]), 
            .D(n37678), .Z(n2_adj_1857)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_331.init = 16'h10f0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_332 (.A(n37715), .B(n39845), .C(n37665), 
            .D(n37678), .Z(n18_adj_1802)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_332.init = 16'h10f0;
    ORCALUT4 i2_3_lut_4_lut_adj_333 (.A(\IR[2] ), .B(n37792), .C(\mc[2] ), 
            .D(n37794), .Z(n33824)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_333.init = 16'h8000;
    ORCALUT4 i4_4_lut_adj_334 (.A(\IR[6] ), .B(\IR[1] ), .C(n37824), .D(n16251), 
            .Z(n10_adj_1853)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i4_4_lut_adj_334.init = 16'h4000;
    ORCALUT4 i16_1_lut (.A(n17), .Z(iorq_N_329)) /* synthesis lut_function=(!(A)) */ ;
    defparam i16_1_lut.init = 16'h5555;
    ORCALUT4 equal_109_i9_2_lut_rep_547_3_lut_4_lut (.A(\IR[6] ), .B(n39871), 
            .C(n37794), .D(\IR[2] ), .Z(n37650)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam equal_109_i9_2_lut_rep_547_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 i30762_2_lut_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(n37805), 
            .D(\IR[2] ), .Z(n34310)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i30762_2_lut_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 i2_3_lut_rep_580_4_lut (.A(\mc[3] ), .B(n39848), .C(n14_adj_1780), 
            .D(ISet[1]), .Z(n37683)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i2_3_lut_rep_580_4_lut.init = 16'h0200;
    ORCALUT4 mux_1149_i4_4_lut (.A(n12288), .B(Set_BusA_To_3__N_1020[3]), 
            .C(n37812), .D(n19_adj_1834), .Z(Set_BusA_To[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_1149_i4_4_lut.init = 16'hac0c;
    ORCALUT4 IR_7__I_0_1640_i14_2_lut_rep_681_3_lut_4_lut (.A(n39869), .B(n39871), 
            .C(\IR[5] ), .D(\IR[4] ), .Z(n37784)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam IR_7__I_0_1640_i14_2_lut_rep_681_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i2_3_lut_rep_571_4_lut (.A(n39861), .B(n37855), .C(n5_adj_1818), 
            .D(n39859), .Z(n37674)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_rep_571_4_lut.init = 16'hfff7;
    ORCALUT4 i10_4_lut (.A(n33911), .B(n36870), .C(n37915), .D(n37677), 
            .Z(n22_adj_1858)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i10_4_lut.init = 16'hfdff;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_335 (.A(n39861), .B(n37855), .C(\Set_BusA_To_3__N_1198[2] ), 
            .D(n37794), .Z(n9_adj_1859)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_335.init = 16'h8000;
    ORCALUT4 i4_4_lut_adj_336 (.A(n7_adj_1837), .B(n37671), .C(n37775), 
            .D(n34327), .Z(n33911)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i4_4_lut_adj_336.init = 16'h2220;
    ORCALUT4 IR_7__I_0_1643_i15_2_lut_rep_566_3_lut_4_lut (.A(n37806), .B(n37855), 
            .C(n37803), .D(n37858), .Z(n37669)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam IR_7__I_0_1643_i15_2_lut_rep_566_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i1_3_lut_rep_467_4_lut_4_lut (.A(n37806), .B(n37855), .C(n37672), 
            .D(n37718), .Z(n37570)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i1_3_lut_rep_467_4_lut_4_lut.init = 16'h40c0;
    ORCALUT4 i18834_2_lut_rep_517_3_lut_4_lut (.A(n37806), .B(n37855), .C(n37686), 
            .D(n37776), .Z(n37620)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i18834_2_lut_rep_517_3_lut_4_lut.init = 16'hf0b0;
    PFUMX mux_5943_i2 (.BLUT(n32707), .ALUT(n6861[1]), .C0(n1871), .Z(n8222[1]));
    ORCALUT4 i18902_2_lut_rep_530_3_lut_4_lut_4_lut (.A(n37806), .B(n37855), 
            .C(n37779), .D(n37746), .Z(n37633)) /* synthesis lut_function=(A ((C)+!B)+!A ((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i18902_2_lut_rep_530_3_lut_4_lut_4_lut.init = 16'hf3b3;
    ORCALUT4 IR_7__I_0_1642_i15_2_lut_rep_550_3_lut_4_lut (.A(n37804), .B(n37803), 
            .C(n37855), .D(n37806), .Z(n37653)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_7__I_0_1642_i15_2_lut_rep_550_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 i7361_3_lut_4_lut (.A(n39842), .B(\IR[7] ), .C(n37849), .D(\IR[0] ), 
            .Z(n10077)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i7361_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i3_4_lut_adj_337 (.A(n32394), .B(n37734), .C(n37513), .D(n5_adj_1860), 
            .Z(n2185)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_4_lut_adj_337.init = 16'h8000;
    ORCALUT4 i16_4_lut (.A(ISet[0]), .B(n37539), .C(ISet[1]), .D(n37675), 
            .Z(n5_adj_1860)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i16_4_lut.init = 16'hc0c5;
    ORCALUT4 mux_1223_i9_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[8]), .D(ACC[0]), .Z(n1938[8])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i9_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i6_4_lut (.A(n9_adj_1861), .B(n34320), .C(ISet[0]), .D(n10_adj_1862), 
            .Z(n14_adj_1775)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i6_4_lut.init = 16'hfffb;
    ORCALUT4 i3_4_lut_adj_338 (.A(n4_adj_1863), .B(n23668), .C(n37541), 
            .D(n37560), .Z(n9_adj_1861)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam i3_4_lut_adj_338.init = 16'h3f3b;
    ORCALUT4 n32673_bdd_4_lut (.A(n32673), .B(n37876), .C(n39869), .D(ISet[1]), 
            .Z(n19_adj_1834)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n32673_bdd_4_lut.init = 16'hca00;
    ORCALUT4 i1_2_lut (.A(\IR[0] ), .B(n39863), .Z(n5_adj_1818)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut.init = 16'hdddd;
    ORCALUT4 i24654_3_lut_rep_640 (.A(n3_adj_1766), .B(n6_adj_1864), .C(\IR[5] ), 
            .Z(n37743)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(118[17:19])
    defparam i24654_3_lut_rep_640.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_563_4_lut (.A(n3_adj_1766), .B(n6_adj_1864), .C(\IR[5] ), 
            .D(\ALU_Op_3__N_1269[3] ), .Z(n37666)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(118[17:19])
    defparam i1_2_lut_rep_563_4_lut.init = 16'hffca;
    ORCALUT4 i3_4_lut_adj_339 (.A(n37839), .B(n37764), .C(n37825), .D(n37811), 
            .Z(\ALU_Op_3__N_1040[3] )) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_339.init = 16'h8000;
    ORCALUT4 i1_2_lut_4_lut_adj_340 (.A(n3_adj_1766), .B(n6_adj_1864), .C(\IR[5] ), 
            .D(\ALU_Op_3__N_1269[3] ), .Z(n4_adj_1863)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(118[17:19])
    defparam i1_2_lut_4_lut_adj_340.init = 16'h3500;
    ORCALUT4 mux_1223_i8_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[7]), .D(di_reg[7]), .Z(n1938[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i8_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 select_596_Select_2_i4_2_lut_4_lut (.A(n3_adj_1766), .B(n6_adj_1864), 
            .C(n39867), .D(n37811), .Z(n4_adj_1770)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(118[17:19])
    defparam select_596_Select_2_i4_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 mux_1223_i10_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[9]), .D(ACC[1]), .Z(n1938[9])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i10_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i9356_4_lut (.A(n39871), .B(n39854), .C(n5_adj_1772), .D(n37595), 
            .Z(n12288)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i9356_4_lut.init = 16'h3505;
    ORCALUT4 mux_3877_i1_4_lut (.A(n6025[0]), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\Set_BusA_To_3__N_1202[0] ), .D(n32688), .Z(n5727[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3877_i1_4_lut.init = 16'hca0a;
    ORCALUT4 i31693_3_lut (.A(n5727[0]), .B(n37911), .C(\IR[4] ), .Z(n5736[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i31693_3_lut.init = 16'hcaca;
    ORCALUT4 mux_4116_i1_4_lut (.A(n6025[0]), .B(n37811), .C(\Set_BusA_To_3__N_1202[0] ), 
            .D(n32688), .Z(n6046[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4116_i1_4_lut.init = 16'hca0a;
    ORCALUT4 i4_4_lut_adj_341 (.A(n37905), .B(n37791), .C(n50_adj_1821), 
            .D(n34131), .Z(n10_adj_1862)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i4_4_lut_adj_341.init = 16'hfbfa;
    ORCALUT4 i3_4_lut_adj_342 (.A(n37670), .B(n16909), .C(n37669), .D(n37568), 
            .Z(n34131)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i3_4_lut_adj_342.init = 16'hdfff;
    ORCALUT4 MCycle_4__I_0_2_lut_rep_509_3_lut_4_lut (.A(n37791), .B(\mc[2] ), 
            .C(\mc[4] ), .D(\mc[3] ), .Z(n37612)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam MCycle_4__I_0_2_lut_rep_509_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 mux_1223_i7_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[6]), .D(di_reg[6]), .Z(n1938[6])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i7_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i19411_2_lut (.A(TStates_2__N_1007[1]), .B(\mc[6] ), .Z(\tstates[1] )) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i19411_2_lut.init = 16'h2222;
    ORCALUT4 i2_4_lut_adj_343 (.A(n37675), .B(n23037), .C(\ALU_Op_3__N_1269[3] ), 
            .D(n22994), .Z(n23503)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_343.init = 16'h8880;
    PFUMX i19 (.BLUT(n33731), .ALUT(\F_Out[1] ), .C0(n37582), .Z(n18_adj_1865));
    ORCALUT4 IR_7__I_0_1626_i15_2_lut_3_lut_4_lut (.A(n37857), .B(n37813), 
            .C(n37855), .D(n39854), .Z(n15_adj_7)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam IR_7__I_0_1626_i15_2_lut_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 i32361_3_lut_rep_501_4_lut_4_lut (.A(n39867), .B(n39861), .C(n37805), 
            .D(n39841), .Z(n37604)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i32361_3_lut_rep_501_4_lut_4_lut.init = 16'h0020;
    ORCALUT4 i3_4_lut_adj_344 (.A(n37708), .B(n16969), .C(n32370), .Z(n8_adj_1803)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_344.init = 16'hfdfd;
    ORCALUT4 i1_2_lut_rep_495_3_lut_4_lut (.A(n37857), .B(n37813), .C(\Set_BusA_To_3__N_1198[2] ), 
            .D(n37782), .Z(n37598)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam i1_2_lut_rep_495_3_lut_4_lut.init = 16'h0020;
    ORCALUT4 IR_7__I_0_1636_i15_2_lut_rep_594_3_lut_4_lut (.A(n37857), .B(n37813), 
            .C(n37855), .D(n37806), .Z(n37697)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam IR_7__I_0_1636_i15_2_lut_rep_594_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 i1_3_lut_rep_441_4_lut (.A(n37746), .B(n39845), .C(n37811), 
            .D(n37734), .Z(n37544)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_rep_441_4_lut.init = 16'h1110;
    ORCALUT4 i2_4_lut_adj_345 (.A(n32544), .B(n37896), .C(n33973), .D(\ALU_Op_3__N_1269[3] ), 
            .Z(n32370)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_345.init = 16'heefe;
    ORCALUT4 i3_4_lut_adj_346 (.A(n5_adj_1866), .B(n33407), .C(n37643), 
            .D(n37653), .Z(n33973)) /* synthesis lut_function=(A+!(B ((D)+!C))) */ ;
    defparam i3_4_lut_adj_346.init = 16'hbbfb;
    ORCALUT4 i1_4_lut_adj_347 (.A(n37536), .B(n37769), .C(n37677), .D(n37560), 
            .Z(n5_adj_1866)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_347.init = 16'h5f57;
    ORCALUT4 i4_4_lut_adj_348 (.A(n37791), .B(n8_adj_1867), .C(n37545), 
            .D(n16909), .Z(n32815)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut_adj_348.init = 16'hfefc;
    ORCALUT4 i3_4_lut_adj_349 (.A(n23654), .B(n37611), .C(IncDec_16_3__N_1212[0]), 
            .D(n37664), .Z(n8_adj_1867)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_349.init = 16'hddfd;
    ORCALUT4 i20088_4_lut (.A(n37667), .B(n37670), .C(n39836), .D(n23177), 
            .Z(n23654)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i20088_4_lut.init = 16'heaaa;
    ORCALUT4 i18750_3_lut_4_lut (.A(n37680), .B(n37624), .C(n32647), .D(n37754), 
            .Z(\ISet_1__N_641[0] )) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !(C+!(D)))) */ ;
    defparam i18750_3_lut_4_lut.init = 16'h70ff;
    ORCALUT4 i11138_4_lut_4_lut (.A(n37812), .B(n32815), .C(n10248), .D(n39842), 
            .Z(n14265)) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;
    defparam i11138_4_lut_4_lut.init = 16'hfe54;
    ORCALUT4 i11146_4_lut_4_lut (.A(n37812), .B(n4_adj_1868), .C(n15_adj_1869), 
            .D(n8222[1]), .Z(n14273)) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;
    defparam i11146_4_lut_4_lut.init = 16'hfe54;
    ORCALUT4 i7_4_lut_adj_350 (.A(n13_adj_1870), .B(n11_adj_1871), .C(n39841), 
            .D(n37698), .Z(n33407)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_350.init = 16'h8000;
    ORCALUT4 i5_4_lut_adj_351 (.A(n37701), .B(n37617), .C(n37702), .D(n37700), 
            .Z(n13_adj_1870)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_351.init = 16'h8000;
    ORCALUT4 i3_4_lut_adj_352 (.A(n23417), .B(n33768), .C(n6_adj_1843), 
            .D(n37697), .Z(n11_adj_1871)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_352.init = 16'h8000;
    ORCALUT4 i4_4_lut_adj_353 (.A(n37712), .B(n8_adj_1836), .C(n37670), 
            .D(n37705), .Z(n33768)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_353.init = 16'hc080;
    ORCALUT4 i11143_4_lut_4_lut (.A(n37812), .B(n10_adj_1872), .C(n9_adj_1873), 
            .D(\IR[2] ), .Z(n14270)) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;
    defparam i11143_4_lut_4_lut.init = 16'hfe54;
    ORCALUT4 i29640_2_lut_rep_433_3_lut_4_lut (.A(n37680), .B(n37624), .C(n37671), 
            .D(n37707), .Z(n37536)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i29640_2_lut_rep_433_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i31749_3_lut_4_lut_4_lut (.A(n37812), .B(n11103), .C(n37711), 
            .D(n32815), .Z(n14263)) /* synthesis lut_function=(A (B)+!A (C+(D))) */ ;
    defparam i31749_3_lut_4_lut_4_lut.init = 16'hddd8;
    ORCALUT4 i3_4_lut_adj_354 (.A(n37843), .B(n37930), .C(n39845), .D(n4_adj_1849), 
            .Z(n23417)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_354.init = 16'hc080;
    ORCALUT4 i2_3_lut_adj_355 (.A(n23387), .B(n9_c), .C(n37570), .Z(n32855)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_adj_355.init = 16'hfdfd;
    ORCALUT4 i1_4_lut_adj_356 (.A(n25_adj_1814), .B(n37734), .C(n39839), 
            .D(n4_adj_1770), .Z(n16728)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_356.init = 16'hafae;
    ORCALUT4 i4_4_lut_adj_357 (.A(n37890), .B(\ALU_Op_3__N_1269[3] ), .C(n20_adj_1852), 
            .D(n4), .Z(n10_adj_1801)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i4_4_lut_adj_357.init = 16'hfbfa;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_358 (.A(n37706), .B(n37635), .C(n9_adj_1859), 
            .D(n19_adj_1788), .Z(n4_adj_1868)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_358.init = 16'hfff7;
    ORCALUT4 i1_3_lut_4_lut_adj_359 (.A(n37637), .B(n37711), .C(n37704), 
            .D(n1656[2]), .Z(n10_adj_1874)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;
    defparam i1_3_lut_4_lut_adj_359.init = 16'hdfdd;
    ORCALUT4 i3_4_lut_adj_360 (.A(n37655), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n15_adj_1812), .D(n37660), .Z(n13_adj_1798)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_4_lut_adj_360.init = 16'h0ace;
    ORCALUT4 i45_4_lut (.A(n28_adj_1825), .B(n11_adj_1786), .C(\IR[6] ), 
            .D(n37817), .Z(n41)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i45_4_lut.init = 16'hfaca;
    ORCALUT4 i8_4_lut_adj_361 (.A(n7_adj_1875), .B(n16_adj_1876), .C(n37606), 
            .D(n37843), .Z(n18_adj_1797)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i8_4_lut_adj_361.init = 16'hfeee;
    ORCALUT4 i1_4_lut_adj_362 (.A(n37674), .B(n37747), .C(\IR[5] ), .D(\ALU_Op_3__N_1269[3] ), 
            .Z(n7_adj_1875)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_362.init = 16'h5444;
    ORCALUT4 i6_4_lut_adj_363 (.A(n37565), .B(n12_adj_1790), .C(\IR[2] ), 
            .D(n26_adj_1877), .Z(n16_adj_1876)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i6_4_lut_adj_363.init = 16'hfeee;
    ORCALUT4 i18994_2_lut_4_lut (.A(n37684), .B(n39848), .C(\IR[1] ), 
            .D(n7259), .Z(n4749[0])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i18994_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i1_2_lut_adj_364 (.A(\mc[6] ), .B(n27), .Z(Set_BusB_To[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_2_lut_adj_364.init = 16'h4444;
    ORCALUT4 i1_4_lut_adj_365 (.A(n32357), .B(n39843), .C(n39845), .D(n1030), 
            .Z(n26_adj_1877)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_365.init = 16'haeaa;
    ORCALUT4 i2_4_lut_adj_366 (.A(n37650), .B(n9_adj_1859), .C(n37659), 
            .D(n19_adj_1788), .Z(n32357)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_adj_366.init = 16'hffdc;
    ORCALUT4 i1_4_lut_adj_367 (.A(\ALU_Op_3__N_1269[3] ), .B(n37591), .C(n5_adj_1878), 
            .D(n6_adj_1879), .Z(n4_adj_1783)) /* synthesis lut_function=(!(A (B)+!A !((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_367.init = 16'h7773;
    ORCALUT4 i1_4_lut_adj_368 (.A(n37811), .B(n33899), .C(n32574), .D(n37664), 
            .Z(n5_adj_1878)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_368.init = 16'h05cd;
    ORCALUT4 i2_4_lut_adj_369 (.A(n30031), .B(n37744), .C(n37708), .D(\Set_BusA_To_3__N_1198[2] ), 
            .Z(n6_adj_1879)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_369.init = 16'hafab;
    ORCALUT4 i3_4_lut_adj_370 (.A(\IR[5] ), .B(n3_adj_1815), .C(n37564), 
            .D(n32768), .Z(n8_adj_1880)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i3_4_lut_adj_370.init = 16'hffec;
    ORCALUT4 i2_4_lut_adj_371 (.A(n2_adj_1806), .B(n39842), .C(n4_adj_1800), 
            .D(n37605), .Z(n6_adj_12)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_371.init = 16'hfaea;
    ORCALUT4 mux_3885_i1_4_lut_4_lut (.A(n37688), .B(n37717), .C(n5733[0]), 
            .D(n37794), .Z(n5739[0])) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;
    defparam mux_3885_i1_4_lut_4_lut.init = 16'hd850;
    ORCALUT4 i1_4_lut_adj_372 (.A(n39842), .B(n22510), .C(n32858), .D(n23307), 
            .Z(n9_adj_1882)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_372.init = 16'haa2a;
    ORCALUT4 i1_4_lut_adj_373 (.A(n22510), .B(n37608), .C(\IR[0] ), .D(n37630), 
            .Z(n93)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B))) */ ;
    defparam i1_4_lut_adj_373.init = 16'h444c;
    ORCALUT4 i2_4_lut_then_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(n37664), .D(\ALU_Op_3__N_1269[3] ), .Z(n37901)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_then_4_lut.init = 16'h000d;
    ORCALUT4 i8191_3_lut_rep_453_4_lut (.A(n37656), .B(n37734), .C(\IR[1] ), 
            .D(n39842), .Z(n37556)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2027[19] 2072[26])
    defparam i8191_3_lut_rep_453_4_lut.init = 16'hefe0;
    ORCALUT4 mux_1223_i6_3_lut_4_lut (.A(Set_Addr_To_2__N_1044[0]), .B(n37756), 
            .C(SP[5]), .D(di_reg[5]), .Z(n1938[5])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[15] 2635[20])
    defparam mux_1223_i6_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i1_3_lut_adj_374 (.A(n39861), .B(n61), .C(n44), .Z(n26_adj_13)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_374.init = 16'hecec;
    ORCALUT4 i62_4_lut (.A(n39871), .B(n39869), .C(\IR[2] ), .D(n37794), 
            .Z(n61)) /* synthesis lut_function=(A (B+(C))+!A !(B (C+(D)))) */ ;
    defparam i62_4_lut.init = 16'hb9bd;
    ORCALUT4 i61_4_lut (.A(n39859), .B(n16849), .C(n39873), .D(n32373), 
            .Z(n44)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i61_4_lut.init = 16'hfaca;
    ORCALUT4 i2_3_lut_4_lut_adj_375 (.A(n39839), .B(n37653), .C(n37661), 
            .D(n37675), .Z(n32376)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_375.init = 16'h8000;
    ORCALUT4 mux_3100_i1_4_lut (.A(n39848), .B(n37595), .C(\IR[0] ), .D(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n4680[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3100_i1_4_lut.init = 16'hca0a;
    ORCALUT4 i76_2_lut_rep_450_3_lut_4_lut (.A(n39839), .B(n37653), .C(n64), 
            .D(n37656), .Z(n37553)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i76_2_lut_rep_450_3_lut_4_lut.init = 16'hf7f0;
    ORCALUT4 i1_3_lut_4_lut_adj_376 (.A(n37769), .B(n37677), .C(n37664), 
            .D(n37824), .Z(n41_adj_1884)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_376.init = 16'h2f00;
    ORCALUT4 i1_3_lut_4_lut_adj_377 (.A(n37797), .B(\IR[2] ), .C(n37811), 
            .D(n37629), .Z(n32768)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !((D)+!C)) */ ;
    defparam i1_3_lut_4_lut_adj_377.init = 16'h88f8;
    ORCALUT4 i32103_4_lut (.A(clk_op_enable_204), .B(n37469), .C(n33478), 
            .D(ISet[1]), .Z(n100)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i32103_4_lut.init = 16'h0a22;
    ORCALUT4 i4_4_lut_adj_378 (.A(n37678), .B(n8_adj_1885), .C(n32877), 
            .D(ALU_Op_3__N_1387), .Z(n33478)) /* synthesis lut_function=(A (B (C))+!A !(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i4_4_lut_adj_378.init = 16'h80c0;
    ORCALUT4 i3_4_lut_adj_379 (.A(n37597), .B(n5_adj_14), .C(n36537), 
            .D(n34306), .Z(n8_adj_1885)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i3_4_lut_adj_379.init = 16'h5010;
    PFUMX i33272 (.BLUT(n37884), .ALUT(n37885), .C0(\ALU_Op_3__N_1269[3] ), 
          .Z(n37886));
    ORCALUT4 i3_4_lut_4_lut_adj_380 (.A(n39839), .B(n25), .C(n37653), 
            .D(n32837), .Z(n16830)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i3_4_lut_4_lut_adj_380.init = 16'hffdf;
    ORCALUT4 i19001_4_lut (.A(n37595), .B(\IR[1] ), .C(n4529[0]), .D(\IR[2] ), 
            .Z(n4746[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i19001_4_lut.init = 16'hc088;
    ORCALUT4 i2_4_lut_else_4_lut (.A(\mc[2] ), .B(\Set_BusA_To_3__N_1198[2] ), 
            .C(\ALU_Op_3__N_1269[3] ), .Z(n37900)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_else_4_lut.init = 16'h2f2f;
    ORCALUT4 i4_4_lut_adj_381 (.A(n37784), .B(n32842), .C(n37779), .D(n23028), 
            .Z(n11)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C (D)))) */ ;
    defparam i4_4_lut_adj_381.init = 16'hcdff;
    ORCALUT4 i18757_4_lut (.A(n37839), .B(n39843), .C(n37798), .D(\Set_BusA_To_3__N_1198[2] ), 
            .Z(n17321)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i18757_4_lut.init = 16'hcecf;
    ORCALUT4 i30787_4_lut (.A(n36528), .B(\mc[2] ), .C(n33180), .D(n37682), 
            .Z(n34336)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i30787_4_lut.init = 16'ha080;
    ORCALUT4 i2_3_lut_4_lut_adj_382 (.A(n37652), .B(n37677), .C(n3_adj_1809), 
            .D(n4_adj_1808), .Z(n33874)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_4_lut_adj_382.init = 16'hfff2;
    ORCALUT4 i7_4_lut_adj_383 (.A(n9), .B(n14_adj_1888), .C(n49), .D(n37664), 
            .Z(n32842)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i7_4_lut_adj_383.init = 16'hfeff;
    ORCALUT4 i6_4_lut_adj_384 (.A(n37659), .B(n34238), .C(n48), .D(n37650), 
            .Z(n14_adj_1888)) /* synthesis lut_function=(A ((C)+!B)+!A ((C+!(D))+!B)) */ ;
    defparam i6_4_lut_adj_384.init = 16'hf3f7;
    ORCALUT4 i1_4_lut_adj_385 (.A(\IR[7] ), .B(\IR[4] ), .C(n33574), .D(\IR[6] ), 
            .Z(n105)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_385.init = 16'hafbb;
    ORCALUT4 i4_4_lut_adj_386 (.A(n7_adj_1846), .B(n37629), .C(n6_adj_1889), 
            .D(n39848), .Z(n32360)) /* synthesis lut_function=(A+(B (C)+!B (C+!(D)))) */ ;
    defparam i4_4_lut_adj_386.init = 16'hfafb;
    ORCALUT4 i1_3_lut_adj_387 (.A(n16287), .B(n22510), .C(\ALU_Op_3__N_1269[3] ), 
            .Z(n6_adj_1889)) /* synthesis lut_function=(A+!(B+(C))) */ ;
    defparam i1_3_lut_adj_387.init = 16'habab;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_388 (.A(n37652), .B(n37677), .C(n37660), 
            .D(\Set_BusA_To_3__N_1198[2] ), .Z(n7_adj_1890)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_3_lut_4_lut_adj_388.init = 16'h2f22;
    ORCALUT4 i19410_4_lut (.A(n8_adj_1891), .B(\mc[6] ), .C(TStates_2__N_1410[2]), 
            .D(ISet[1]), .Z(\tstates[2] )) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i19410_4_lut.init = 16'hfcee;
    ORCALUT4 i5_4_lut_adj_389 (.A(\ALU_Op_3__N_1269[3] ), .B(n10_adj_1892), 
            .C(n17014), .D(n23), .Z(TStates_2__N_1410[2])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i5_4_lut_adj_389.init = 16'hfefc;
    ORCALUT4 i4_4_lut_adj_390 (.A(n7_adj_1819), .B(n19_adj_1764), .C(n16775), 
            .D(n4_adj_1800), .Z(n10_adj_1892)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i4_4_lut_adj_390.init = 16'hfeee;
    ORCALUT4 i1_4_lut_4_lut_then_3_lut (.A(\IR[7] ), .B(\IR[1] ), .C(\IR[0] ), 
            .Z(n37875)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_4_lut_then_3_lut.init = 16'h0101;
    ORCALUT4 IR_5__I_0_i6_4_lut (.A(\F[2] ), .B(\F[7] ), .C(n39865), .D(n39863), 
            .Z(n6_adj_1864)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam IR_5__I_0_i6_4_lut.init = 16'hca35;
    ORCALUT4 i1_4_lut_adj_391 (.A(n37693), .B(n23307), .C(n16772), .D(n23363), 
            .Z(n17014)) /* synthesis lut_function=(A (B+!(D))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_391.init = 16'hc8fa;
    ORCALUT4 IR_5__I_0_i3_4_lut (.A(\F[6] ), .B(\F[0] ), .C(n39865), .D(n39863), 
            .Z(n3_adj_1766)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam IR_5__I_0_i3_4_lut.init = 16'hca35;
    ORCALUT4 i2_3_lut_4_lut_adj_392 (.A(n37837), .B(\mc[6] ), .C(Set_Addr_To_2__N_1044[0]), 
            .D(n30107), .Z(n33539)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i2_3_lut_4_lut_adj_392.init = 16'h7000;
    ORCALUT4 i18931_2_lut_3_lut_4_lut (.A(n37837), .B(\mc[6] ), .C(n37863), 
            .D(Set_Addr_To_2__N_1044[0]), .Z(n22386)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i18931_2_lut_3_lut_4_lut.init = 16'hf7f0;
    ORCALUT4 i30791_2_lut_4_lut (.A(n37704), .B(n37711), .C(n39848), .D(n23391), 
            .Z(n34340)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;
    defparam i30791_2_lut_4_lut.init = 16'h3200;
    ORCALUT4 i1_4_lut_adj_393 (.A(\ALU_Op_3__N_1269[3] ), .B(n15_adj_1771), 
            .C(n34294), .D(n23177), .Z(n16990)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_393.init = 16'h8aaa;
    ORCALUT4 i7_4_lut_adj_394 (.A(n16772), .B(n14_adj_1893), .C(n9901), 
            .D(n37708), .Z(n16)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i7_4_lut_adj_394.init = 16'hfcfe;
    ORCALUT4 mux_4118_i1_3_lut (.A(n6034[0]), .B(\IR[2] ), .C(n4754), 
            .Z(n6049[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4118_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i5_4_lut_adj_395 (.A(n37811), .B(n10_adj_1874), .C(n37653), 
            .D(n16282), .Z(n14_adj_1893)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i5_4_lut_adj_395.init = 16'hcfce;
    ORCALUT4 i3_4_lut_adj_396 (.A(n24_adj_1894), .B(n32574), .C(n37811), 
            .D(n12_adj_1805), .Z(n12_c)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_396.init = 16'hbbba;
    ORCALUT4 select_846_Select_2_i24_4_lut (.A(n37666), .B(n39839), .C(n16282), 
            .D(n37811), .Z(n24_adj_1894)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam select_846_Select_2_i24_4_lut.init = 16'h3230;
    ORCALUT4 i3_4_lut_adj_397 (.A(\IR[5] ), .B(Set_BusA_To_3__N_1182[2]), 
            .C(n33874), .D(n37670), .Z(n9_adj_1873)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_397.init = 16'ha0ec;
    ORCALUT4 i4_4_lut_adj_398 (.A(n7_adj_1850), .B(n32368), .C(n39848), 
            .D(n7_c), .Z(n10_adj_1872)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut_adj_398.init = 16'hfeee;
    ORCALUT4 i28_4_lut (.A(\Fp[4] ), .B(\F[4] ), .C(n37754), .D(n37625), 
            .Z(n30)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(127[30:41])
    defparam i28_4_lut.init = 16'hcacc;
    ORCALUT4 i32347_2_lut (.A(ISet[0]), .B(\IR[7] ), .Z(n34430)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i32347_2_lut.init = 16'h7777;
    ORCALUT4 IR_7__I_0_1610_i15_2_lut_3_lut_4_lut (.A(n37794), .B(n37813), 
            .C(n37792), .D(n37856), .Z(n15_adj_1812)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2298[15:26])
    defparam IR_7__I_0_1610_i15_2_lut_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 n13_bdd_4_lut (.A(n39845), .B(n37699), .C(n33871), .D(n37737), 
            .Z(n37509)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n13_bdd_4_lut.init = 16'hf0ee;
    ORCALUT4 i1_4_lut_adj_399 (.A(\Set_BusA_To_3__N_1202[0] ), .B(n32865), 
            .C(n34338), .D(n23658), .Z(n32900)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1794[19] 1798[22])
    defparam i1_4_lut_adj_399.init = 16'h8aaa;
    ORCALUT4 i30789_4_lut (.A(n32987), .B(n37711), .C(n32973), .D(n37596), 
            .Z(n34338)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i30789_4_lut.init = 16'h2000;
    ORCALUT4 i6_4_lut_adj_400 (.A(n11_adj_1844), .B(n34290), .C(n37664), 
            .D(n39841), .Z(n32865)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i6_4_lut_adj_400.init = 16'hbfff;
    ORCALUT4 select_825_Select_0_i63_2_lut_3_lut_4_lut (.A(n37794), .B(n37813), 
            .C(n37811), .D(n37765), .Z(n63)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2298[15:26])
    defparam select_825_Select_0_i63_2_lut_3_lut_4_lut.init = 16'h0020;
    ORCALUT4 i20092_2_lut (.A(n23642), .B(n23391), .Z(n23658)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20092_2_lut.init = 16'h8888;
    ORCALUT4 i4_4_lut_adj_401 (.A(n37638), .B(n37637), .C(n37692), .D(n6_adj_1895), 
            .Z(n23642)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_401.init = 16'h8000;
    ORCALUT4 i1_2_lut_adj_402 (.A(n32842), .B(n23503), .Z(n4_c)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_402.init = 16'hbbbb;
    ORCALUT4 i5_4_lut_adj_403 (.A(n32987), .B(n32869), .C(n23642), .D(n32973), 
            .Z(n12)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i5_4_lut_adj_403.init = 16'hdfff;
    ORCALUT4 i1_2_lut_rep_682_3_lut (.A(n39869), .B(n39871), .C(n39867), 
            .Z(n37785)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_682_3_lut.init = 16'hfefe;
    ORCALUT4 mux_3634_i1_4_lut (.A(n39842), .B(n5372[0]), .C(\IR[5] ), 
            .D(n37783), .Z(n5402[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_3634_i1_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_2_lut_rep_459_4_lut (.A(\IR[2] ), .B(n37805), .C(n37691), 
            .D(n39842), .Z(n37562)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_2_lut_rep_459_4_lut.init = 16'hfffb;
    L6MUX21 i33830 (.D0(n38798), .D1(n38795), .SD(ISet[1]), .Z(Read_To_Reg));
    PFUMX i33828 (.BLUT(n38797), .ALUT(Read_To_Reg_N_1452), .C0(ISet[0]), 
          .Z(n38798));
    ORCALUT4 mux_1460_i5_3_lut_4_lut (.A(n37700), .B(n37859), .C(Ap[4]), 
            .D(ACC[4]), .Z(n2311[4])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1460_i5_3_lut_4_lut.init = 16'h10fe;
    PFUMX i18180 (.BLUT(n3_adj_1804), .ALUT(TStates_2__N_1410[0]), .C0(ISet[1]), 
          .Z(n5));
    ORCALUT4 IR_7__I_0_1601_i15_2_lut_rep_579_3_lut_4_lut (.A(n39854), .B(n37792), 
            .C(n37858), .D(n37794), .Z(n37682)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam IR_7__I_0_1601_i15_2_lut_rep_579_3_lut_4_lut.init = 16'hbfff;
    ORCALUT4 i2_3_lut_rep_583_4_lut (.A(n39854), .B(n37792), .C(n37864), 
            .D(n37794), .Z(n37686)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam i2_3_lut_rep_583_4_lut.init = 16'hfbff;
    PFUMX i33826 (.BLUT(n38794), .ALUT(n36107), .C0(n4462), .Z(n38795));
    ORCALUT4 IR_7__I_0_1604_i15_2_lut_rep_558_3_lut_4_lut (.A(n39854), .B(n37792), 
            .C(n37813), .D(n37794), .Z(n37661)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam IR_7__I_0_1604_i15_2_lut_rep_558_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i1_3_lut_4_lut_adj_404 (.A(n39848), .B(n37704), .C(n37708), 
            .D(\ALU_Op_3__N_1269[3] ), .Z(n6_adj_1897)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_404.init = 16'h2f22;
    ORCALUT4 i1_2_lut_rep_516_3_lut_4_lut (.A(n39861), .B(n37853), .C(ISet[1]), 
            .D(n39869), .Z(n37619)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_516_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 i1_4_lut_4_lut_adj_405 (.A(n39865), .B(n37839), .C(n12_adj_1831), 
            .D(n37092), .Z(n4462)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_405.init = 16'hcc40;
    ORCALUT4 i2_4_lut_adj_406 (.A(n39854), .B(n37600), .C(n4_adj_1827), 
            .D(n37606), .Z(n6_adj_1794)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i2_4_lut_adj_406.init = 16'hdddc;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_407 (.A(\Set_BusA_To_3__N_1202[0] ), 
            .B(n39854), .C(n7259), .D(n39842), .Z(n32548)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i1_2_lut_3_lut_4_lut_adj_407.init = 16'he000;
    ORCALUT4 i1_3_lut_4_lut_adj_408 (.A(\Set_BusA_To_3__N_1202[0] ), .B(n39854), 
            .C(n39843), .D(n39845), .Z(n32168)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i1_3_lut_4_lut_adj_408.init = 16'h001e;
    ORCALUT4 i30834_4_lut_4_lut (.A(\Set_BusA_To_3__N_1202[0] ), .B(n39854), 
            .C(n37859), .D(Halt_FF), .Z(n34386)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i30834_4_lut_4_lut.init = 16'hff01;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_409 (.A(\IR[5] ), .B(n37792), .C(n37804), 
            .D(n37857), .Z(n23491)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i2_3_lut_4_lut_4_lut_adj_409.init = 16'h7fff;
    ORCALUT4 i1_3_lut_4_lut_adj_410 (.A(\IR[1] ), .B(n37845), .C(n39842), 
            .D(n39841), .Z(n19_adj_1788)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_410.init = 16'h00fd;
    ORCALUT4 i3_3_lut_4_lut_adj_411 (.A(\IR[1] ), .B(n37845), .C(last_tstate), 
            .D(n39845), .Z(clk_op_enable_20)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_3_lut_4_lut_adj_411.init = 16'h0020;
    ORCALUT4 i1_4_lut_4_lut_else_3_lut (.A(\IR[7] ), .B(\IR[1] ), .C(\IR[0] ), 
            .D(\Set_BusA_To_3__N_1202[0] ), .Z(n37874)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_4_lut_else_3_lut.init = 16'h4000;
    ORCALUT4 i5_4_lut_adj_412 (.A(n37595), .B(n10_adj_1898), .C(n41_adj_1884), 
            .D(n33345), .Z(Write_N_1546)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i5_4_lut_adj_412.init = 16'hfcfe;
    ORCALUT4 i32030_2_lut_3_lut_4_lut (.A(\IR[1] ), .B(n37845), .C(n39854), 
            .D(\Set_BusA_To_3__N_1202[0] ), .Z(n35158)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i32030_2_lut_3_lut_4_lut.init = 16'h222d;
    ORCALUT4 i19431_4_lut (.A(n37732), .B(n37839), .C(\ALU_Op_3__N_1269[3] ), 
            .D(n39843), .Z(Read_To_Reg_N_1452)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i19431_4_lut.init = 16'h3022;
    ORCALUT4 i1_3_lut_rep_442_4_lut (.A(n37720), .B(n37705), .C(n37791), 
            .D(n16728), .Z(n37545)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam i1_3_lut_rep_442_4_lut.init = 16'hff20;
    ORCALUT4 mux_4668_i1_3_lut (.A(Save_ALU_N_1468), .B(Read_To_Reg_N_1452), 
            .C(ISet[0]), .Z(n6787[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_4668_i1_3_lut.init = 16'hcaca;
    ORCALUT4 Set_BusB_To_3__I_0_i1_3_lut_4_lut (.A(n37849), .B(\mc[6] ), 
            .C(n39873), .D(Set_BusB_To_3__N_1028[0]), .Z(Set_BusB_To[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam Set_BusB_To_3__I_0_i1_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i30761_3_lut_rep_500_4_lut_4_lut_4_lut (.A(\IR[5] ), .B(n39841), 
            .C(\IR[2] ), .D(\IR[1] ), .Z(n37603)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i30761_3_lut_rep_500_4_lut_4_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i2_4_lut_adj_413 (.A(n37607), .B(n37667), .C(n37664), .D(n37670), 
            .Z(n7_adj_1807)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_413.init = 16'h0a3b;
    ORCALUT4 Set_BusB_To_3__I_0_i3_3_lut_4_lut (.A(n37849), .B(\mc[6] ), 
            .C(n39861), .D(Set_BusB_To_3__N_1028[2]), .Z(Set_BusB_To[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam Set_BusB_To_3__I_0_i3_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i4_4_lut_adj_414 (.A(n37600), .B(n9_adj_1859), .C(n37543), 
            .D(n6_adj_1897), .Z(Save_ALU_N_1468)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_414.init = 16'hfffe;
    ORCALUT4 Set_BusB_To_3__I_0_i2_3_lut_4_lut (.A(n37849), .B(\mc[6] ), 
            .C(n39859), .D(Set_BusB_To_3__N_1028[1]), .Z(Set_BusB_To[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam Set_BusB_To_3__I_0_i2_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_3_lut_4_lut_adj_415 (.A(n37791), .B(n37674), .C(n37664), 
            .D(n37612), .Z(n5_adj_1854)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_415.init = 16'h2f22;
    ORCALUT4 mux_4114_i1_4_lut (.A(n39848), .B(n6013[0]), .C(\IR[2] ), 
            .D(n37794), .Z(n6043[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4114_i1_4_lut.init = 16'hcac0;
    ORCALUT4 i5_4_lut_adj_416 (.A(n37880), .B(n33_c), .C(\IR[0] ), .D(n26_adj_1877), 
            .Z(n12_adj_1793)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i5_4_lut_adj_416.init = 16'hfeee;
    ORCALUT4 i1_4_lut_adj_417 (.A(n37811), .B(n5_adj_1813), .C(n37653), 
            .D(n15_adj_1812), .Z(n33_c)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_417.init = 16'h8aaa;
    ORCALUT4 i1_4_lut_adj_418 (.A(n37598), .B(\ALU_Op_3__N_1269[3] ), .C(n37570), 
            .D(n34217), .Z(n8_adj_1792)) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_418.init = 16'heaee;
    ORCALUT4 n4462_bdd_3_lut_32530 (.A(n37914), .B(n36166), .C(\IR[4] ), 
            .Z(n36177)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n4462_bdd_3_lut_32530.init = 16'hacac;
    ORCALUT4 i19132_4_lut (.A(n6362[0]), .B(n37552), .C(n6371[0]), .D(n37571), 
            .Z(IORQ_N_1479)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i19132_4_lut.init = 16'hc088;
    ORCALUT4 i1_4_lut_adj_419 (.A(n39838), .B(n37734), .C(n37811), .D(n39854), 
            .Z(n1_adj_1899)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_419.init = 16'h5044;
    ORCALUT4 i1_4_lut_then_4_lut_adj_420 (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(n37653), .C(\mc[2] ), .D(\mc[3] ), .Z(n37904)) /* synthesis lut_function=(!(A (B)+!A (B+(C+(D))))) */ ;
    defparam i1_4_lut_then_4_lut_adj_420.init = 16'h2223;
    ORCALUT4 i2_3_lut_4_lut_adj_421 (.A(n37663), .B(\mc[4] ), .C(n37693), 
            .D(\Set_BusA_To_3__N_1198[2] ), .Z(n33899)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam i2_3_lut_4_lut_adj_421.init = 16'hfff1;
    ORCALUT4 i1_4_lut_adj_422 (.A(\ALU_Op_3__N_1269[3] ), .B(\IR[4] ), .C(n34258), 
            .D(n37674), .Z(n21_c)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i1_4_lut_adj_422.init = 16'h0a8a;
    ORCALUT4 i4_4_lut_adj_423 (.A(n7_adj_1890), .B(n63), .C(\IR[1] ), 
            .D(n32358), .Z(n10_adj_1799)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i4_4_lut_adj_423.init = 16'hfeee;
    ORCALUT4 i1_4_lut_else_4_lut_adj_424 (.A(\Set_BusA_To_3__N_1198[2] ), 
            .B(\mc[2] ), .C(n37743), .D(\mc[3] ), .Z(n37903)) /* synthesis lut_function=(A+!(B (C)+!B (D))) */ ;
    defparam i1_4_lut_else_4_lut_adj_424.init = 16'haebf;
    ORCALUT4 i1_4_lut_adj_425 (.A(\IR[4] ), .B(n37674), .C(n32537), .D(\Set_BusA_To_3__N_1198[2] ), 
            .Z(n24)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1763[9:14])
    defparam i1_4_lut_adj_425.init = 16'ha2a0;
    ORCALUT4 select_846_Select_2_i50_3_lut_4_lut (.A(\mc[4] ), .B(n37663), 
            .C(n16772), .D(n37664), .Z(n50)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam select_846_Select_2_i50_3_lut_4_lut.init = 16'h00f2;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_426 (.A(n37856), .B(n37855), .C(n37805), 
            .D(n37858), .Z(n90)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_426.init = 16'hbfff;
    ORCALUT4 IR_7__I_0_1663_i15_2_lut_rep_604_3_lut_4_lut (.A(n37856), .B(n37855), 
            .C(n37803), .D(n37804), .Z(n37707)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam IR_7__I_0_1663_i15_2_lut_rep_604_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i1_3_lut_4_lut_adj_427 (.A(\mc[4] ), .B(n37663), .C(n37775), 
            .D(n37681), .Z(n43)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam i1_3_lut_4_lut_adj_427.init = 16'hff02;
    ORCALUT4 i2_3_lut_adj_428 (.A(last_tstate), .B(Auto_Wait_t1), .C(n17), 
            .Z(clk_op_enable_325)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i2_3_lut_adj_428.init = 16'hefef;
    ORCALUT4 i3_4_lut_adj_429 (.A(n4_adj_1789), .B(n37603), .C(n32768), 
            .D(n37791), .Z(n8_adj_1900)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i3_4_lut_adj_429.init = 16'hfbfa;
    PFUMX i33270 (.BLUT(n37881), .ALUT(n37882), .C0(\IR[1] ), .Z(n37883));
    ORCALUT4 i1_4_lut_adj_430 (.A(\IR[4] ), .B(n37550), .C(n37564), .D(n39847), 
            .Z(n7_adj_1901)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_430.init = 16'ha2a0;
    ORCALUT4 i19607_2_lut_rep_529_3_lut_4_lut (.A(n37856), .B(n37855), .C(n37859), 
            .D(n37776), .Z(n37632)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i19607_2_lut_rep_529_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i30802_4_lut (.A(n34332), .B(n37671), .C(n34334), .D(n37704), 
            .Z(n34354)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i30802_4_lut.init = 16'h2000;
    ORCALUT4 i30783_4_lut (.A(n34234), .B(\IR[5] ), .C(n37702), .D(n4_adj_1849), 
            .Z(n34332)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i30783_4_lut.init = 16'ha080;
    ORCALUT4 i29578_2_lut_rep_561_3_lut_4_lut (.A(n37856), .B(n37855), .C(n37813), 
            .D(n37857), .Z(n37664)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i29578_2_lut_rep_561_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i1_2_lut_rep_595_3_lut_4_lut (.A(n37856), .B(n37855), .C(n37803), 
            .D(n37858), .Z(n37698)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i1_2_lut_rep_595_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i1452_2_lut_rep_511 (.A(ISet[1]), .B(n37510), .Z(n37614)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1452_2_lut_rep_511.init = 16'h8888;
    ORCALUT4 i11_4_lut (.A(n39841), .B(n22_adj_1902), .C(n32168), .D(n39843), 
            .Z(n28_adj_1903)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+!(D)))) */ ;
    defparam i11_4_lut.init = 16'hfcfd;
    ORCALUT4 i5_4_lut_adj_431 (.A(n37743), .B(n37618), .C(n39839), .D(n37811), 
            .Z(n22_adj_1902)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;
    defparam i5_4_lut_adj_431.init = 16'h3733;
    ORCALUT4 IR_7__I_0_1627_i15_2_lut_rep_600_3_lut_4_lut (.A(n37858), .B(n37857), 
            .C(n37855), .D(n39854), .Z(n37703)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1627_i15_2_lut_rep_600_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i1_2_lut_rep_589_3_lut_4_lut (.A(n37858), .B(n37857), .C(n37855), 
            .D(n37856), .Z(n37692)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_589_3_lut_4_lut.init = 16'hff7f;
    PFUMX i21_adj_432 (.BLUT(n8_adj_1784), .ALUT(\TStates_2__N_1410[1] ), 
          .C0(ISet[1]), .Z(TStates_2__N_1007[1]));
    ORCALUT4 i6_4_lut_adj_433 (.A(n37708), .B(n37589), .C(n23391), .D(n37555), 
            .Z(n14_adj_1851)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_433.init = 16'h8000;
    ORCALUT4 mux_1460_i4_3_lut_4_lut (.A(n37700), .B(n37859), .C(Ap[3]), 
            .D(ACC[3]), .Z(n2311[3])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1460_i4_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 i29894_4_lut (.A(n37629), .B(n22510), .C(n33319), .D(n4_adj_1845), 
            .Z(MCycles_2__N_1004[2])) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i29894_4_lut.init = 16'h7fff;
    ORCALUT4 i1_4_lut_adj_434 (.A(\IR[4] ), .B(n4_adj_1808), .C(n8_adj_1904), 
            .D(n1), .Z(n15_adj_1869)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_434.init = 16'haaa8;
    ORCALUT4 i1_4_lut_4_lut_adj_435 (.A(\IR[0] ), .B(\IR[1] ), .C(n8_adj_1782), 
            .D(\IR[2] ), .Z(n32134)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_435.init = 16'h5140;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_436 (.A(n37858), .B(n37857), .C(n37782), 
            .D(n37811), .Z(n32665)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_436.init = 16'h0800;
    ORCALUT4 i3_4_lut_adj_437 (.A(n37600), .B(n37670), .C(n3_adj_1809), 
            .D(n37647), .Z(n8_adj_1904)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_437.init = 16'hfbfa;
    ORCALUT4 IR_7__I_0_1662_i15_2_lut_rep_577_3_lut_4_lut (.A(n37858), .B(n37857), 
            .C(n37855), .D(n37806), .Z(n37680)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1662_i15_2_lut_rep_577_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i29584_2_lut_3_lut_4_lut (.A(n37858), .B(n37857), .C(n37856), 
            .D(n37787), .Z(n33070)) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i29584_2_lut_3_lut_4_lut.init = 16'hf777;
    ORCALUT4 IR_7__I_0_1728_i15_2_lut_3_lut_4_lut (.A(n37806), .B(n39845), 
            .C(n37803), .D(n37804), .Z(n15_adj_1820)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2402[15:26])
    defparam IR_7__I_0_1728_i15_2_lut_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_438 (.A(n37672), .B(n37720), .C(n37669), 
            .D(n37570), .Z(n32837)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_438.init = 16'hff8f;
    ORCALUT4 i5_4_lut_adj_439 (.A(n9_adj_1905), .B(n32903), .C(\Set_BusA_To_3__N_1198[2] ), 
            .D(n37704), .Z(n12_adj_1778)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i5_4_lut_adj_439.init = 16'heefe;
    ORCALUT4 i2_4_lut_adj_440 (.A(n39842), .B(n37734), .C(n37664), .D(n15_adj_1768), 
            .Z(n9_adj_1905)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i2_4_lut_adj_440.init = 16'h0ace;
    ORCALUT4 i707_3_lut_rep_411_4_lut (.A(n37700), .B(n37859), .C(n37754), 
            .D(n914), .Z(n37514)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;
    defparam i707_3_lut_rep_411_4_lut.init = 16'hf0fe;
    ORCALUT4 i5_4_lut_adj_441 (.A(n23305), .B(n7_adj_1906), .C(n37692), 
            .D(n8_adj_1776), .Z(n23668)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_441.init = 16'h8000;
    ORCALUT4 i1_4_lut_adj_442 (.A(\Set_BusA_To_3__N_1202[0] ), .B(n37677), 
            .C(n3_adj_1809), .D(n29971), .Z(n32903)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_442.init = 16'haaa2;
    ORCALUT4 i1_4_lut_adj_443 (.A(n32368), .B(n2), .C(n37670), .D(n39842), 
            .Z(n8_adj_1777)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_443.init = 16'hafae;
    ORCALUT4 pwr_bdd_2_lut_33024_3_lut_4_lut (.A(n37674), .B(n37670), .C(n36869), 
            .D(n37617), .Z(n36870)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam pwr_bdd_2_lut_33024_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i5_4_lut_4_lut_adj_444 (.A(n39873), .B(ISet[1]), .C(n7_adj_1829), 
            .D(n6362[0]), .Z(n1165)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i5_4_lut_4_lut_adj_444.init = 16'h4000;
    ORCALUT4 i1_2_lut_rep_572_3_lut_4_lut (.A(\IR[2] ), .B(n37794), .C(n37792), 
            .D(n37856), .Z(n37675)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_2_lut_rep_572_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_445 (.A(n39861), .B(n37794), .C(n37792), 
            .D(n39854), .Z(n23037)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_445.init = 16'hffbf;
    ORCALUT4 i1_4_lut_adj_446 (.A(\Set_BusA_To_3__N_1198[2] ), .B(n32376), 
            .C(n37633), .D(n37682), .Z(n16919)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_446.init = 16'h2aaa;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_447 (.A(n37674), .B(n37670), .C(n23417), 
            .D(n37617), .Z(n6_adj_1895)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_447.init = 16'h8000;
    ORCALUT4 i30696_2_lut_3_lut (.A(n37674), .B(n37670), .C(n23668), .Z(n34238)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i30696_2_lut_3_lut.init = 16'h8080;
    ORCALUT4 i3_4_lut_adj_448 (.A(n37794), .B(n32574), .C(n34246), .D(n37671), 
            .Z(n33799)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!B))) */ ;
    defparam i3_4_lut_adj_448.init = 16'h00c4;
    ORCALUT4 i6945_3_lut_4_lut_4_lut (.A(n37859), .B(n37638), .C(ACC[5]), 
            .D(n37636), .Z(n609)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(265[9:14])
    defparam i6945_3_lut_4_lut_4_lut.init = 16'h0150;
    ORCALUT4 i155_3_lut_4_lut (.A(n37859), .B(n37638), .C(n23093), .D(\F[0] ), 
            .Z(n604)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(265[9:14])
    defparam i155_3_lut_4_lut.init = 16'h1f10;
    ORCALUT4 i20_3_lut_4_lut (.A(n37859), .B(n64), .C(n37754), .D(Halt_FF), 
            .Z(n7)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(265[9:14])
    defparam i20_3_lut_4_lut.init = 16'hf404;
    ORCALUT4 i1_2_lut_rep_557_3_lut_4_lut (.A(n37787), .B(n37855), .C(n37813), 
            .D(n37857), .Z(n37660)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1679[15:26])
    defparam i1_2_lut_rep_557_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i32168_3_lut_rep_568_4_lut (.A(n37787), .B(n37855), .C(\IR[2] ), 
            .D(n37857), .Z(n37671)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1679[15:26])
    defparam i32168_3_lut_rep_568_4_lut.init = 16'h0400;
    ORCALUT4 i19585_2_lut_rep_521_3_lut_4_lut_4_lut (.A(n37787), .B(n37855), 
            .C(n37737), .D(n39854), .Z(n37624)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1679[15:26])
    defparam i19585_2_lut_rep_521_3_lut_4_lut_4_lut.init = 16'hfbf3;
    ORCALUT4 i1_2_lut_rep_598_3_lut_4_lut (.A(n37787), .B(n37855), .C(n37803), 
            .D(n37858), .Z(n37701)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1679[15:26])
    defparam i1_2_lut_rep_598_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_449 (.A(n37686), .B(n37680), .C(n15935), 
            .D(\ALU_Op_3__N_1269[3] ), .Z(n7_adj_15)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A !((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_449.init = 16'h7f0f;
    ORCALUT4 i1_4_lut_adj_450 (.A(\IR[0] ), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(n45), .D(n37861), .Z(n33)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_450.init = 16'heca0;
    ORCALUT4 i3_4_lut_adj_451 (.A(\IR[0] ), .B(n6_adj_1910), .C(n33268), 
            .D(\IR[5] ), .Z(n33743)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;
    defparam i3_4_lut_adj_451.init = 16'hcfef;
    ORCALUT4 i18825_2_lut_3_lut_4_lut (.A(n37686), .B(n37680), .C(Set_Addr_To_2__N_1413[0]), 
            .D(\mc[5] ), .Z(Set_Addr_To_2__N_1044[0])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i18825_2_lut_3_lut_4_lut.init = 16'hf7f0;
    ORCALUT4 i1_4_lut_adj_452 (.A(n23656), .B(n37715), .C(n37714), .D(\ALU_Op_3__N_1269[3] ), 
            .Z(n7_adj_1906)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_452.init = 16'haaa8;
    ORCALUT4 i19413_2_lut_3_lut_4_lut (.A(n37686), .B(n37680), .C(Set_Addr_To_2__N_1413_c[2]), 
            .D(\mc[5] ), .Z(\Set_Addr_To_2__N_1044[2] )) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i19413_2_lut_3_lut_4_lut.init = 16'hf7f0;
    ORCALUT4 i2_4_lut_adj_453 (.A(n39861), .B(\IR[6] ), .C(n51), .D(n37853), 
            .Z(n6_adj_1910)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(D))) */ ;
    defparam i2_4_lut_adj_453.init = 16'ha0b3;
    ORCALUT4 i2_3_lut_rep_567_4_lut (.A(n37860), .B(\IR[0] ), .C(n37855), 
            .D(\Set_BusA_To_3__N_1202[0] ), .Z(n37670)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_rep_567_4_lut.init = 16'hff7f;
    ORCALUT4 i2_3_lut_rep_601_4_lut (.A(n37860), .B(\IR[0] ), .C(n37792), 
            .D(n39863), .Z(n37704)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_rep_601_4_lut.init = 16'h7fff;
    ORCALUT4 i16_4_lut_adj_454 (.A(n37877), .B(n34354), .C(n28_adj_1903), 
            .D(n34236), .Z(MCycles_2__N_998[1])) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i16_4_lut_adj_454.init = 16'hfbff;
    ORCALUT4 i4_4_lut_adj_455 (.A(n39842), .B(n8_adj_1900), .C(n7_adj_1901), 
            .D(n23363), .Z(Set_BusB_To_3__N_1400[1])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam i4_4_lut_adj_455.init = 16'hfcfe;
    ORCALUT4 i3_4_lut_adj_456 (.A(n37597), .B(n1_adj_1899), .C(n16443), 
            .D(n2_adj_1857), .Z(Set_BusB_To_3__N_1400[0])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_456.init = 16'hfffe;
    ORCALUT4 i73_3_lut (.A(n33496), .B(\IR[2] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n45)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i73_3_lut.init = 16'h3a3a;
    ORCALUT4 i32158_3_lut (.A(Set_BusA_To[3]), .B(Set_BusA_To[2]), .C(Set_BusA_To[1]), 
            .Z(n22352)) /* synthesis lut_function=(!(A (B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i32158_3_lut.init = 16'h5757;
    ORCALUT4 mux_1460_i3_3_lut_4_lut (.A(n37700), .B(n37859), .C(Ap[2]), 
            .D(ACC[2]), .Z(n2311[2])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1460_i3_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 i1_2_lut_rep_605_3_lut_4_lut (.A(n37787), .B(n37792), .C(n37813), 
            .D(n37805), .Z(n37708)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam i1_2_lut_rep_605_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 last_tstate_bdd_4_lut_33261 (.A(n37933), .B(n30), .C(n37625), 
            .D(n37754), .Z(n37270)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam last_tstate_bdd_4_lut_33261.init = 16'hccca;
    ORCALUT4 IR_7__I_0_1637_i15_2_lut_rep_592_3_lut_4_lut (.A(n37787), .B(n37792), 
            .C(n37805), .D(n37858), .Z(n37695)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam IR_7__I_0_1637_i15_2_lut_rep_592_3_lut_4_lut.init = 16'hbfff;
    ORCALUT4 i1_2_lut_rep_559_3_lut_4_lut (.A(\IR[5] ), .B(n37792), .C(n37813), 
            .D(n37794), .Z(n37662)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_2_lut_rep_559_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i3_4_lut_adj_457 (.A(n37728), .B(n37825), .C(\IR[7] ), .D(n37643), 
            .Z(n33496)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_457.init = 16'h0800;
    ORCALUT4 i1_2_lut_rep_513_3_lut_4_lut_4_lut (.A(n37857), .B(n37864), 
            .C(n37720), .D(n37804), .Z(n37616)) /* synthesis lut_function=(A (B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_513_3_lut_4_lut_4_lut.init = 16'ha020;
    ORCALUT4 i19722_2_lut_rep_524_3_lut_4_lut_4_lut (.A(n37857), .B(n37864), 
            .C(n37778), .D(n37804), .Z(n37627)) /* synthesis lut_function=((B (C+!(D))+!B (C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i19722_2_lut_rep_524_3_lut_4_lut_4_lut.init = 16'hf5fd;
    PFUMX i32571 (.BLUT(n36312), .ALUT(n36311), .C0(n39865), .Z(n36313));
    ORCALUT4 i1_4_lut_adj_458 (.A(n37855), .B(n33232), .C(n37719), .D(n39867), 
            .Z(n9_c)) /* synthesis lut_function=(!((B (C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_458.init = 16'h222a;
    ORCALUT4 i19691_2_lut_rep_507_3_lut_4_lut_4_lut (.A(n37857), .B(n37864), 
            .C(n37720), .D(n37804), .Z(n37610)) /* synthesis lut_function=(!(A (B (C (D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i19691_2_lut_rep_507_3_lut_4_lut_4_lut.init = 16'h5fdf;
    ORCALUT4 i32302_3_lut_4_lut (.A(n37857), .B(n37864), .C(n37683), .D(n37551), 
            .Z(n34491)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i32302_3_lut_4_lut.init = 16'hff20;
    L6MUX21 i33241 (.D0(n37468), .D1(n37465), .SD(n34430), .Z(n37469));
    PFUMX i33239 (.BLUT(n37467), .ALUT(n37466), .C0(n39843), .Z(n37468));
    ORCALUT4 IR_7__I_0_1621_i15_2_lut_rep_603_3_lut_4_lut (.A(n37857), .B(n37864), 
            .C(n37792), .D(n37856), .Z(n37706)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam IR_7__I_0_1621_i15_2_lut_rep_603_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 mux_4359_i1_4_lut (.A(n11350), .B(n37594), .C(\IR[6] ), .D(\IR[1] ), 
            .Z(n6371[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam mux_4359_i1_4_lut.init = 16'hcac0;
    ORCALUT4 i19552_2_lut_rep_526_3_lut_4_lut_4_lut (.A(n37857), .B(n37864), 
            .C(n14_adj_1780), .D(n37804), .Z(n37629)) /* synthesis lut_function=((B (C+!(D))+!B (C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i19552_2_lut_rep_526_3_lut_4_lut_4_lut.init = 16'hf5fd;
    ORCALUT4 i1_2_lut_rep_532_3_lut_4_lut_4_lut (.A(n37857), .B(n37864), 
            .C(n37785), .D(n37804), .Z(n37635)) /* synthesis lut_function=((B (C+!(D))+!B (C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_rep_532_3_lut_4_lut_4_lut.init = 16'hf5fd;
    ORCALUT4 i30726_2_lut_rep_533_3_lut_4_lut_4_lut (.A(n37857), .B(n37864), 
            .C(n37765), .D(n37804), .Z(n37636)) /* synthesis lut_function=((B (C+!(D))+!B (C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i30726_2_lut_rep_533_3_lut_4_lut_4_lut.init = 16'hf5fd;
    PFUMX i33236 (.BLUT(n37464), .ALUT(n37463), .C0(n37814), .Z(n37465));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_459 (.A(n37857), .B(n37864), .C(n37792), 
            .D(n39854), .Z(n15)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_459.init = 16'hffdf;
    ORCALUT4 i1_4_lut_adj_460 (.A(n37824), .B(n37811), .C(n37708), .D(n32574), 
            .Z(JumpE_N_1507)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_460.init = 16'h0ace;
    ORCALUT4 i4_4_lut_adj_461 (.A(n7_adj_1911), .B(n37746), .C(n53), .D(n43), 
            .Z(n10_adj_1898)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut_adj_461.init = 16'hfbfa;
    ORCALUT4 i1_4_lut_adj_462 (.A(n50_adj_1912), .B(n37760), .C(n12_adj_1855), 
            .D(n4_adj_1913), .Z(n7_adj_1911)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_462.init = 16'hbbba;
    ORCALUT4 i1_4_lut_adj_463 (.A(n37667), .B(n33653), .C(n37616), .D(n37674), 
            .Z(n53)) /* synthesis lut_function=(!(A+!((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_463.init = 16'h5155;
    ORCALUT4 i1_4_lut_adj_464 (.A(n37769), .B(n33824), .C(\Set_BusA_To_3__N_1198[2] ), 
            .D(n37648), .Z(n50_adj_1912)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_464.init = 16'ha888;
    ORCALUT4 i1_4_lut_adj_465 (.A(n37765), .B(n37714), .C(n37734), .D(\Set_BusA_To_3__N_1198[2] ), 
            .Z(n4_adj_1913)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_465.init = 16'h7350;
    ORCALUT4 i32221_3_lut_4_lut (.A(n37637), .B(n37859), .C(n37754), .D(n933), 
            .Z(n22513)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i32221_3_lut_4_lut.init = 16'h0f01;
    ORCALUT4 mux_1587_i15_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[14]), 
            .D(SP16[14]), .Z(n2582[14])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i15_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1587_i4_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[3]), 
            .D(SP16[3]), .Z(n2582[3])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i4_3_lut_4_lut.init = 16'hfe10;
    PFUMX i33234 (.BLUT(n37461), .ALUT(n37460), .C0(\IR[4] ), .Z(n37462));
    ORCALUT4 i31673_3_lut (.A(n11326), .B(n6043[0]), .C(n37688), .Z(n6052[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i31673_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1587_i10_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[9]), 
            .D(SP16[9]), .Z(n2582[9])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i10_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i2_4_lut_adj_466 (.A(n37769), .B(n22), .C(n37564), .D(n15_adj_1779), 
            .Z(n33727)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i2_4_lut_adj_466.init = 16'hffec;
    ORCALUT4 i1_3_lut_adj_467 (.A(\IR[4] ), .B(n32815), .C(n37711), .Z(IncDec_16_3__N_1012[0])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_adj_467.init = 16'hecec;
    PFUMX i21_adj_468 (.BLUT(n8_adj_1773), .ALUT(n34021), .C0(ISet[1]), 
          .Z(Set_Addr_To_2__N_1413[0]));
    ORCALUT4 i1_4_lut_4_lut_4_lut (.A(\IR[7] ), .B(\IR[6] ), .C(n37746), 
            .D(n4_adj_1810), .Z(n23605)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hfb00;
    ORCALUT4 i10612_4_lut (.A(\IR[7] ), .B(n37651), .C(n37609), .D(n4_adj_1822), 
            .Z(n13637)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i10612_4_lut.init = 16'hc0c5;
    ORCALUT4 mux_1587_i12_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[11]), 
            .D(SP16[11]), .Z(n2582[11])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i12_3_lut_4_lut.init = 16'hfe10;
    PFUMX i22_adj_469 (.BLUT(TStates_2__N_1404[2]), .ALUT(TStates_2__N_1407[2]), 
          .C0(ISet[0]), .Z(n8_adj_1891));
    ORCALUT4 mux_1587_i8_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[7]), 
            .D(SP16[7]), .Z(n2582[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i8_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i9358_4_lut (.A(n37738), .B(n37843), .C(n5_adj_1772), .D(n37595), 
            .Z(n12290)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i9358_4_lut.init = 16'hca0a;
    ORCALUT4 mux_1587_i9_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[8]), 
            .D(SP16[8]), .Z(n2582[8])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i9_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i19857_4_lut (.A(n90), .B(n37805), .C(\IR[2] ), .D(n37720), 
            .Z(n23387)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;
    defparam i19857_4_lut.init = 16'ha2aa;
    ORCALUT4 mux_1587_i14_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[13]), 
            .D(SP16[13]), .Z(n2582[13])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i14_3_lut_4_lut.init = 16'hfe10;
    PFUMX i33268 (.BLUT(n37878), .ALUT(n37879), .C0(n37674), .Z(n37880));
    ORCALUT4 i4_4_lut_adj_470 (.A(n37843), .B(n8_adj_1880), .C(n9_adj_1882), 
            .D(n37544), .Z(Set_BusB_To_3__N_1400[2])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i4_4_lut_adj_470.init = 16'hfefc;
    ORCALUT4 n15138_bdd_3_lut_32612_4_lut_4_lut (.A(\IR[2] ), .B(\IR[0] ), 
            .C(\IR[1] ), .D(\IR[5] ), .Z(n36311)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam n15138_bdd_3_lut_32612_4_lut_4_lut.init = 16'hc040;
    ORCALUT4 i21_4_lut_adj_471 (.A(n8_adj_1763), .B(n23623), .C(ISet[1]), 
            .D(n32597), .Z(mcycles_d[1])) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i21_4_lut_adj_471.init = 16'h3afa;
    ORCALUT4 mux_1587_i11_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[10]), 
            .D(SP16[10]), .Z(n2582[10])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i11_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1587_i6_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[5]), 
            .D(SP16[5]), .Z(n2582[5])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i6_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1587_i3_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[2]), 
            .D(SP16[2]), .Z(n2582[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i3_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1587_i7_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[6]), 
            .D(SP16[6]), .Z(n2582[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i7_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1407_i3_4_lut (.A(n39842), .B(n2207[2]), .C(n37614), 
            .D(n37613), .Z(n2230[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_1407_i3_4_lut.init = 16'hcac0;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_472 (.A(\IR[2] ), .B(n7292), .C(n39842), 
            .D(n37769), .Z(n34083)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_4_lut_4_lut_adj_472.init = 16'h0010;
    ORCALUT4 i5068_2_lut (.A(\IR[0] ), .B(\Set_BusA_To_3__N_1202[0] ), .Z(n7292)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i5068_2_lut.init = 16'h2222;
    ORCALUT4 mux_1587_i2_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[1]), 
            .D(SP16[1]), .Z(n2582[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i2_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1587_i16_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[15]), 
            .D(SP16[15]), .Z(n2582[15])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i16_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 mux_1407_i2_4_lut (.A(n37647), .B(n2207[2]), .C(n37614), 
            .D(n37613), .Z(n2230[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam mux_1407_i2_4_lut.init = 16'hcac0;
    ORCALUT4 mux_1587_i1_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[0]), 
            .D(SP16[0]), .Z(n2582[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i1_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i10_4_lut_adj_473 (.A(n37512), .B(\Save_Mux[1] ), .C(n37533), 
            .D(n18_adj_1865), .Z(\F_7__N_669[1] )) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(196[18:28])
    defparam i10_4_lut_adj_473.init = 16'hc5c0;
    ORCALUT4 i18996_2_lut_4_lut_4_lut (.A(\IR[2] ), .B(\IR[1] ), .C(n39848), 
            .D(n37684), .Z(n4719[0])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i18996_2_lut_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i1_2_lut_adj_474 (.A(\IR[2] ), .B(n39873), .Z(n11_adj_1786)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_474.init = 16'h4444;
    PFUMX i33301 (.BLUT(n37931), .ALUT(n37932), .C0(n37859), .Z(n37933));
    ORCALUT4 mux_1460_i2_3_lut_4_lut (.A(n37700), .B(n37859), .C(Ap[1]), 
            .D(ACC[1]), .Z(n2311[1])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam mux_1460_i2_3_lut_4_lut.init = 16'h10fe;
    ORCALUT4 IR_7__I_0_1746_i12_2_lut_rep_684 (.A(n39865), .B(n39867), .Z(n37787)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam IR_7__I_0_1746_i12_2_lut_rep_684.init = 16'hdddd;
    PFUMX i21_adj_475 (.BLUT(n8_adj_1767), .ALUT(n33996), .C0(ISet[1]), 
          .Z(Set_Addr_To_2__N_1413_c[2]));
    PFUMX i33299 (.BLUT(n37928), .ALUT(n37929), .C0(n39859), .Z(n37930));
    ORCALUT4 mux_1587_i5_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[4]), 
            .D(SP16[4]), .Z(n2582[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i5_3_lut_4_lut.init = 16'hfe10;
    PFUMX i33297 (.BLUT(n37925), .ALUT(n37926), .C0(n39845), .Z(n23623));
    ORCALUT4 i11_4_lut_adj_476 (.A(n37676), .B(n22_adj_1858), .C(n34219), 
            .D(n37633), .Z(MCycles_2__N_998[0])) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i11_4_lut_adj_476.init = 16'hdfff;
    PFUMX i33295 (.BLUT(n37922), .ALUT(n37923), .C0(n37858), .Z(n23437));
    L6MUX21 mux_1149_i1 (.D0(n8222[0]), .D1(n10080), .SD(n34658), .Z(Set_BusA_To[0]));
    PFUMX i33266 (.BLUT(n37874), .ALUT(n37875), .C0(\IR[2] ), .Z(n37876));
    PFUMX i33289 (.BLUT(n37912), .ALUT(n37913), .C0(\IR[1] ), .Z(n37914));
    PFUMX i33287 (.BLUT(n37909), .ALUT(n37910), .C0(\IR[2] ), .Z(n37911));
    ORCALUT4 i1_2_lut_rep_578_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(n37811), 
            .D(n37855), .Z(n37681)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2451[15:26])
    defparam i1_2_lut_rep_578_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_477 (.A(\IR[5] ), .B(\IR[2] ), .C(n37803), 
            .D(n39841), .Z(n22510)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2524[15:26])
    defparam i2_3_lut_4_lut_4_lut_adj_477.init = 16'hfffd;
    PFUMX i33155 (.BLUT(n37272), .ALUT(n37269), .C0(n37582), .Z(n37273));
    PFUMX i33153 (.BLUT(n30), .ALUT(n37270), .C0(last_tstate), .Z(n37271));
    PFUMX i34434 (.BLUT(n39849), .ALUT(n39850), .C0(n39837), .Z(Set_BusA_To_3__N_1020[3]));
    ORCALUT4 mux_1587_i13_3_lut_4_lut (.A(n37637), .B(n37859), .C(RegBusC[12]), 
            .D(SP16[12]), .Z(n2582[12])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam mux_1587_i13_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i11134_4_lut (.A(\Set_BusA_To_3__N_1202[0] ), .B(n17173), .C(n37609), 
            .D(n30676), .Z(n14261)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i11134_4_lut.init = 16'hcac0;
    
endmodule
//
// Verilog Description of module tv80_alu
//

module tv80_alu (n2779, \BusA[5] , \BusA[7] , \Set_BusA_To_3__N_1202[0] , 
            \BusA[3] , n9458, \BusA[1] , n2780, n37751, n30700, 
            n34751, \ALU_Q[1] , \F[1] , n2781, \IR[5] , n37788, 
            ALU_Op_r, BusB, \Q_7__N_1567[7] , F_Out_7__N_1638, n37866, 
            n2782, Q_7__N_1607, \F[0] , n12437, n39854, \Q_7__N_1718[0] , 
            n37841, \IR[4] , F_Out_7__N_1636, n12430, \BusA[6] , VCC_net, 
            \BusA[4] , \BusA[2] , \F[4] , \Q_7__N_1599[7] , n7, n14257, 
            Q_7__N_1566, n37763, n37741, n2834, n32621, n12434, 
            n37728, n37769, n2832, n37828, PreserveC_r, n34292, 
            n37755, n17, n2683, n37742, n36724, n37833, n37834, 
            n36717, n36714, n22322, n36703, n37771, Save_ALU_r, 
            n9937, \ALU_Q[0] , n14278, \ALU_Q[5] , n2836, n6, n37716, 
            n37532, n12441, \F_Out[2] , \F_Out[6] , F_Out_7__N_1645, 
            n36034, n37807, \ALU_Q[3] , F_Out_7__N_1663, n15845, n37836, 
            \Q_7__N_1599[3] , n36726, n37334, n37335, n37938, \F_Out[3] , 
            n2776, n37859, n2777, n37157, \F[6] , n2778, n6_adj_1, 
            n2872, n6_adj_2, n8, n6_adj_3, n6_adj_4, n37641, n6_adj_5, 
            n6_adj_6) /* synthesis syn_module_defined=1 */ ;
    output n2779;
    input \BusA[5] ;
    input \BusA[7] ;
    input \Set_BusA_To_3__N_1202[0] ;
    input \BusA[3] ;
    output n9458;
    input \BusA[1] ;
    output n2780;
    output n37751;
    output n30700;
    output n34751;
    output \ALU_Q[1] ;
    input \F[1] ;
    output n2781;
    input \IR[5] ;
    output n37788;
    input [3:0]ALU_Op_r;
    input [7:0]BusB;
    output \Q_7__N_1567[7] ;
    input F_Out_7__N_1638;
    output n37866;
    output n2782;
    input [7:0]Q_7__N_1607;
    input \F[0] ;
    output n12437;
    input n39854;
    input \Q_7__N_1718[0] ;
    input n37841;
    input \IR[4] ;
    input F_Out_7__N_1636;
    output n12430;
    input \BusA[6] ;
    input VCC_net;
    input \BusA[4] ;
    input \BusA[2] ;
    input \F[4] ;
    output \Q_7__N_1599[7] ;
    output n7;
    input n14257;
    output Q_7__N_1566;
    input n37763;
    input n37741;
    output n2834;
    input n32621;
    output n12434;
    input n37728;
    input n37769;
    output n2832;
    output n37828;
    input PreserveC_r;
    output n34292;
    output n37755;
    output n17;
    output n2683;
    input n37742;
    output n36724;
    output n37833;
    output n37834;
    output n36717;
    output n36714;
    output n22322;
    output n36703;
    output n37771;
    input Save_ALU_r;
    input n9937;
    output \ALU_Q[0] ;
    input n14278;
    output \ALU_Q[5] ;
    output n2836;
    output n6;
    output n37716;
    output n37532;
    input n12441;
    output \F_Out[2] ;
    output \F_Out[6] ;
    input F_Out_7__N_1645;
    output n36034;
    input n37807;
    output \ALU_Q[3] ;
    output F_Out_7__N_1663;
    output n15845;
    input n37836;
    output \Q_7__N_1599[3] ;
    output n36726;
    input n37334;
    output n37335;
    input n37938;
    output \F_Out[3] ;
    output n2776;
    input n37859;
    output n2777;
    output n37157;
    input \F[6] ;
    output n2778;
    output n6_adj_1;
    input n2872;
    output n6_adj_2;
    output n8;
    output n6_adj_3;
    output n6_adj_4;
    input n37641;
    output n6_adj_5;
    output n6_adj_6;
    
    wire [7:0]Q_v;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(92[13:16])
    wire [7:0]Q_7__N_1701;
    
    wire n2774, n37789, n6_c, n35113, n35114, n37761, n14288, 
        n37721, n33060, n9, F_Out_7__N_1643, n9949, n12394, n14286;
    wire [8:0]Q_7__N_1718;
    wire [8:0]Q_7__N_1709;
    wire [8:0]Q_7__N_1567;
    
    wire n36033;
    wire [6:0]n6853;
    
    wire n12432, n36722, n16, n12, n37897, n37898, n39835;
    wire [8:0]n166;
    
    wire cout, n37535, n12436;
    wire [7:0]n2933;
    
    wire n36725, n34598, HalfCarry_v_N_1660, n2, n36712, n37871, 
        n37872, n37873, n37626, n10, n36715, n29814, GND_net, 
        n29813, n29812, n29811, n37793, n37809, n12220, n15842, 
        F_Out_7__N_1640, n12440, n14, n10_adj_1741, Q_7__N_1563, n10_adj_1742, 
        n37723, n37525, n37520, n29809;
    wire [6:0]n42;
    wire [6:0]n6970;
    wire [7:0]Q_7__N_1599;
    
    wire n29808, OverFlow_v, n37531, n37528, n29807, n37730, n37822, 
        n8_c;
    wire [7:0]n2830;
    
    wire n37846, n36723, F_Out_7__N_1621, n10_adj_1743, n9_adj_1744, 
        n36713, n9_adj_1745, n14_adj_1746, n10_adj_1747;
    wire [4:0]n2673;
    
    wire n34733, n36702, n39705, n39703, n39706, n39704, n10_adj_1749, 
        n251, n37640, n37709, n37590, n12433, n9456, n14_adj_1750, 
        n12390, n10_adj_1751, n14_adj_1752, n14_adj_1753, n10_adj_1754, 
        n37722;
    wire [7:0]Q_7__N_1591;
    wire [7:0]n2821;
    
    wire n24443, n33609, n33557, n10_adj_1756, n5;
    
    PFUMX mux_1654_i5 (.BLUT(Q_v[4]), .ALUT(Q_7__N_1701[4]), .C0(n2774), 
          .Z(n2779));
    ORCALUT4 i11129_3_lut_rep_686 (.A(\BusA[5] ), .B(\BusA[7] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n37789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11129_3_lut_rep_686.init = 16'hcaca;
    ORCALUT4 i2_2_lut_4_lut (.A(\BusA[5] ), .B(\BusA[7] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .D(\BusA[3] ), .Z(n6_c)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i2_2_lut_4_lut.init = 16'hffca;
    PFUMX mux_1716_i3 (.BLUT(n35113), .ALUT(n35114), .C0(n37761), .Z(n9458));
    ORCALUT4 i11162_3_lut_rep_618 (.A(n14288), .B(\BusA[1] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n37721)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11162_3_lut_rep_618.init = 16'hcaca;
    ORCALUT4 i1_2_lut_4_lut (.A(n14288), .B(\BusA[1] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .D(n33060), .Z(n9)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i1_2_lut_4_lut.init = 16'h35ca;
    PFUMX mux_1654_i4 (.BLUT(Q_v[3]), .ALUT(Q_7__N_1701[3]), .C0(n2774), 
          .Z(n2780));
    PFUMX i32 (.BLUT(F_Out_7__N_1643), .ALUT(n9949), .C0(n37751), .Z(n30700));
    PFUMX i11160 (.BLUT(n12394), .ALUT(n14286), .C0(n34751), .Z(\ALU_Q[1] ));
    PFUMX mux_4810_i8 (.BLUT(Q_7__N_1718[8]), .ALUT(Q_7__N_1709[8]), .C0(\F[1] ), 
          .Z(Q_7__N_1567[8]));
    PFUMX mux_1654_i3 (.BLUT(Q_v[2]), .ALUT(Q_7__N_1701[2]), .C0(n2774), 
          .Z(n2781));
    ORCALUT4 Q_7__N_1599_0__bdd_3_lut_4_lut (.A(\IR[5] ), .B(n37788), .C(ALU_Op_r[1]), 
            .D(BusB[0]), .Z(n36033)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+(D)))) */ ;
    defparam Q_7__N_1599_0__bdd_3_lut_4_lut.init = 16'hf110;
    PFUMX mux_4810_i6 (.BLUT(Q_7__N_1718[6]), .ALUT(Q_7__N_1709[6]), .C0(\F[1] ), 
          .Z(Q_7__N_1567[6]));
    PFUMX mux_4810_i7 (.BLUT(Q_7__N_1718[7]), .ALUT(Q_7__N_1709[7]), .C0(\F[1] ), 
          .Z(\Q_7__N_1567[7] ));
    PFUMX i9460 (.BLUT(F_Out_7__N_1638), .ALUT(n6853[5]), .C0(n37866), 
          .Z(n12432));
    PFUMX mux_4810_i5 (.BLUT(Q_7__N_1718[5]), .ALUT(Q_7__N_1709[5]), .C0(\F[1] ), 
          .Z(Q_7__N_1567[5]));
    PFUMX mux_1654_i2 (.BLUT(Q_v[1]), .ALUT(Q_7__N_1701[1]), .C0(n2774), 
          .Z(n2782));
    ORCALUT4 BusA_3__bdd_3_lut_32818_4_lut (.A(\IR[5] ), .B(n37788), .C(ALU_Op_r[1]), 
            .D(BusB[4]), .Z(n36722)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam BusA_3__bdd_3_lut_32818_4_lut.init = 16'hf220;
    ORCALUT4 i31761_1_lut_4_lut (.A(Q_7__N_1567[4]), .B(n16), .C(n12), 
            .D(Q_7__N_1567[8]), .Z(n35113)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i31761_1_lut_4_lut.init = 16'h9669;
    PFUMX i33279 (.BLUT(n37897), .ALUT(n37898), .C0(ALU_Op_r[2]), .Z(Q_7__N_1607[0]));
    ORCALUT4 i2_4_lut_rep_432 (.A(n39835), .B(\F[0] ), .C(n166[7]), .D(cout), 
            .Z(n37535)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[7:45])
    defparam i2_4_lut_rep_432.init = 16'hffec;
    ORCALUT4 i6100_2_lut_3_lut_4_lut (.A(n39835), .B(\F[0] ), .C(n166[7]), 
            .D(cout), .Z(Q_7__N_1718[7])) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[7:45])
    defparam i6100_2_lut_3_lut_4_lut.init = 16'h5a58;
    PFUMX i9465 (.BLUT(n12436), .ALUT(n2933[4]), .C0(n37751), .Z(n12437));
    ORCALUT4 Q_7__N_1599_7__bdd_3_lut_32821_4_lut (.A(\Set_BusA_To_3__N_1202[0] ), 
            .B(n39854), .C(ALU_Op_r[1]), .D(BusB[7]), .Z(n36725)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam Q_7__N_1599_7__bdd_3_lut_32821_4_lut.init = 16'hf220;
    ORCALUT4 i32286_2_lut (.A(\Set_BusA_To_3__N_1202[0] ), .B(\IR[5] ), 
            .Z(n34598)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i32286_2_lut.init = 16'hdddd;
    ORCALUT4 Q_7__N_1718_0__bdd_4_lut (.A(\Q_7__N_1718[0] ), .B(HalfCarry_v_N_1660), 
            .C(BusB[0]), .D(ALU_Op_r[1]), .Z(n2)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam Q_7__N_1718_0__bdd_4_lut.init = 16'h2be8;
    ORCALUT4 BusA_1__bdd_4_lut_33511 (.A(\Set_BusA_To_3__N_1202[0] ), .B(BusB[2]), 
            .C(ALU_Op_r[1]), .D(n37841), .Z(n36712)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam BusA_1__bdd_4_lut_33511.init = 16'hd4c0;
    PFUMX i33264 (.BLUT(n37871), .ALUT(n37872), .C0(\IR[4] ), .Z(n37873));
    ORCALUT4 mux_4810_i2_3_lut_rep_523 (.A(Q_7__N_1718[2]), .B(Q_7__N_1709[2]), 
            .C(\F[1] ), .Z(n37626)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4810_i2_3_lut_rep_523.init = 16'hcaca;
    ORCALUT4 i3_2_lut_4_lut (.A(Q_7__N_1718[2]), .B(Q_7__N_1709[2]), .C(\F[1] ), 
            .D(\Q_7__N_1718[0] ), .Z(n12)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam i3_2_lut_4_lut.init = 16'h35ca;
    ORCALUT4 i2_2_lut_4_lut_adj_174 (.A(Q_7__N_1718[2]), .B(Q_7__N_1709[2]), 
            .C(\F[1] ), .D(Q_7__N_1567[1]), .Z(n10)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam i2_2_lut_4_lut_adj_174.init = 16'hffca;
    ORCALUT4 n191_bdd_4_lut_32829 (.A(n39854), .B(BusB[6]), .C(ALU_Op_r[1]), 
            .D(\Set_BusA_To_3__N_1202[0] ), .Z(n36715)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !((D)+!C))) */ ;
    defparam n191_bdd_4_lut_32829.init = 16'hc0d4;
    PFUMX i9458 (.BLUT(F_Out_7__N_1636), .ALUT(n6853[6]), .C0(n37866), 
          .Z(n12430));
    CCU2B add_5896_add_4_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29814), .S0(cout));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5896_add_4_cout.INIT0 = 16'h0000;
    defparam add_5896_add_4_cout.INIT1 = 16'h0000;
    defparam add_5896_add_4_cout.INJECT1_0 = "NO";
    defparam add_5896_add_4_cout.INJECT1_1 = "NO";
    CCU2B add_5896_add_4_7 (.A0(\BusA[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[7] ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n29813), .COUT(n29814), .S0(n166[6]), .S1(n166[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5896_add_4_7.INIT0 = 16'haaaa;
    defparam add_5896_add_4_7.INIT1 = 16'haaaa;
    defparam add_5896_add_4_7.INJECT1_0 = "NO";
    defparam add_5896_add_4_7.INJECT1_1 = "NO";
    CCU2B add_5896_add_4_5 (.A0(\BusA[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[5] ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n29812), .COUT(n29813), .S0(Q_7__N_1718[4]), 
          .S1(n166[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5896_add_4_5.INIT0 = 16'haaaa;
    defparam add_5896_add_4_5.INIT1 = 16'haaaa;
    defparam add_5896_add_4_5.INJECT1_0 = "NO";
    defparam add_5896_add_4_5.INJECT1_1 = "NO";
    CCU2B add_5896_add_4_3 (.A0(\BusA[2] ), .B0(\BusA[3] ), .C0(n37793), 
          .D0(\F[4] ), .A1(\BusA[3] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n29811), .COUT(n29812), .S0(Q_7__N_1718[2]), .S1(Q_7__N_1718[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5896_add_4_3.INIT0 = 16'h556a;
    defparam add_5896_add_4_3.INIT1 = 16'haaaa;
    defparam add_5896_add_4_3.INJECT1_0 = "NO";
    defparam add_5896_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i11119_3_lut_rep_706 (.A(\Q_7__N_1718[0] ), .B(\BusA[2] ), 
            .C(\Set_BusA_To_3__N_1202[0] ), .Z(n37809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11119_3_lut_rep_706.init = 16'hcaca;
    ORCALUT4 i2_2_lut_4_lut_adj_175 (.A(\Q_7__N_1718[0] ), .B(\BusA[2] ), 
            .C(\Set_BusA_To_3__N_1202[0] ), .D(\Q_7__N_1599[7] ), .Z(n7)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i2_2_lut_4_lut_adj_175.init = 16'hffca;
    PFUMX i11131 (.BLUT(n12220), .ALUT(n14257), .C0(n34598), .Z(\Q_7__N_1599[7] ));
    ORCALUT4 and_23_i6_2_lut (.A(\BusA[5] ), .B(BusB[5]), .Z(Q_7__N_1701[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i6_2_lut.init = 16'h8888;
    ORCALUT4 i32024_3_lut_4_lut (.A(n15842), .B(ALU_Op_r[1]), .C(n37866), 
            .D(F_Out_7__N_1640), .Z(n12440)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i32024_3_lut_4_lut.init = 16'h1f10;
    ORCALUT4 i31762_1_lut_4_lut (.A(Q_7__N_1566), .B(n14), .C(n10_adj_1741), 
            .D(Q_7__N_1563), .Z(n35114)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(304[30:36])
    defparam i31762_1_lut_4_lut.init = 16'h9669;
    ORCALUT4 i2_3_lut_4_lut (.A(BusB[2]), .B(n37763), .C(n37741), .D(BusB[1]), 
            .Z(n10_adj_1742)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(310[17:31])
    defparam i2_3_lut_4_lut.init = 16'hf888;
    ORCALUT4 mux_1669_i5_4_lut (.A(BusB[4]), .B(Q_7__N_1567[4]), .C(ALU_Op_r[2]), 
            .D(n37723), .Z(n2834)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1669_i5_4_lut.init = 16'hc0ca;
    ORCALUT4 and_23_i7_2_lut (.A(\BusA[6] ), .B(BusB[6]), .Z(Q_7__N_1701[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i7_2_lut.init = 16'h8888;
    CCU2B add_5896_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[1] ), .B1(\BusA[3] ), .C1(n37793), 
          .D1(\F[4] ), .COUT(n29811), .S1(Q_7__N_1718[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam add_5896_add_4_1.INIT0 = 16'h0000;
    defparam add_5896_add_4_1.INIT1 = 16'h556a;
    defparam add_5896_add_4_1.INJECT1_0 = "NO";
    defparam add_5896_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i6056_4_lut_rep_417_4_lut (.A(BusB[7]), .B(ALU_Op_r[1]), .C(\BusA[7] ), 
            .D(n37525), .Z(n37520)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam i6056_4_lut_rep_417_4_lut.init = 16'hf660;
    CCU2B add_5175_add_4_7 (.A0(\BusA[6] ), .B0(\BusA[3] ), .C0(n37793), 
          .D0(\F[4] ), .A1(\BusA[7] ), .B1(\BusA[3] ), .C1(n37793), 
          .D1(\F[4] ), .CIN(n29809), .S0(n42[5]), .S1(n6970[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5175_add_4_7.INIT0 = 16'h556a;
    defparam add_5175_add_4_7.INIT1 = 16'h556a;
    defparam add_5175_add_4_7.INJECT1_0 = "NO";
    defparam add_5175_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i2_3_lut_4_lut_adj_176 (.A(BusB[7]), .B(ALU_Op_r[1]), .C(n37525), 
            .D(\BusA[7] ), .Z(Q_v[7])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam i2_3_lut_4_lut_adj_176.init = 16'h6996;
    ORCALUT4 i9462_4_lut (.A(Q_7__N_1599[5]), .B(BusB[5]), .C(n37866), 
            .D(n32621), .Z(n12434)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i9462_4_lut.init = 16'hca0a;
    CCU2B add_5175_add_4_5 (.A0(\BusA[4] ), .B0(\BusA[3] ), .C0(n37793), 
          .D0(\F[4] ), .A1(\BusA[5] ), .B1(\BusA[3] ), .C1(n37793), 
          .D1(\F[4] ), .CIN(n29808), .COUT(n29809), .S0(Q_7__N_1709[4]), 
          .S1(n42[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5175_add_4_5.INIT0 = 16'h556a;
    defparam add_5175_add_4_5.INIT1 = 16'h556a;
    defparam add_5175_add_4_5.INJECT1_0 = "NO";
    defparam add_5175_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 Carry_v_I_0_2_lut_4_lut_3_lut_4_lut (.A(BusB[7]), .B(ALU_Op_r[1]), 
            .C(\BusA[7] ), .D(n37525), .Z(OverFlow_v)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam Carry_v_I_0_2_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    ORCALUT4 i2_3_lut_4_lut_adj_177 (.A(BusB[5]), .B(ALU_Op_r[1]), .C(n37531), 
            .D(\BusA[5] ), .Z(Q_v[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_177.init = 16'h6996;
    ORCALUT4 i6042_4_lut_3_lut_rep_425_4_lut (.A(BusB[5]), .B(ALU_Op_r[1]), 
            .C(\BusA[5] ), .D(n37531), .Z(n37528)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i6042_4_lut_3_lut_rep_425_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_178 (.A(BusB[6]), .B(ALU_Op_r[1]), .C(n37528), 
            .D(\BusA[6] ), .Z(Q_v[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_178.init = 16'h6996;
    ORCALUT4 i6049_4_lut_3_lut_rep_422_4_lut (.A(BusB[6]), .B(ALU_Op_r[1]), 
            .C(\BusA[6] ), .D(n37528), .Z(n37525)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i6049_4_lut_3_lut_rep_422_4_lut.init = 16'hf660;
    CCU2B add_5175_add_4_3 (.A0(\BusA[2] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\F[4] ), .B1(n37730), .C1(\BusA[3] ), .D1(VCC_net), 
          .CIN(n29807), .COUT(n29808), .S0(Q_7__N_1709[2]), .S1(Q_7__N_1709[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5175_add_4_3.INIT0 = 16'haaaa;
    defparam add_5175_add_4_3.INIT1 = 16'h1e1e;
    defparam add_5175_add_4_3.INJECT1_0 = "NO";
    defparam add_5175_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_rep_719 (.A(\BusA[5] ), .B(\BusA[6] ), .Z(n37822)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_719.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut (.A(\BusA[5] ), .B(\BusA[6] ), .C(\BusA[7] ), 
            .Z(n8_c)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 mux_1669_i6_4_lut (.A(BusB[5]), .B(Q_7__N_1567[5]), .C(ALU_Op_r[2]), 
            .D(n37728), .Z(n2830[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1669_i6_4_lut.init = 16'hc0ca;
    CCU2B add_5175_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\BusA[1] ), .B1(\BusA[3] ), .C1(n37793), 
          .D1(\F[4] ), .COUT(n29807), .S1(Q_7__N_1709[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[3] 254[8])
    defparam add_5175_add_4_1.INIT0 = 16'h0000;
    defparam add_5175_add_4_1.INIT1 = 16'h556a;
    defparam add_5175_add_4_1.INJECT1_0 = "NO";
    defparam add_5175_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i6_4_lut_then_4_lut (.A(BusB[6]), .B(\IR[5] ), .C(BusB[7]), 
            .D(\Set_BusA_To_3__N_1202[0] ), .Z(n37872)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i6_4_lut_then_4_lut.init = 16'hc088;
    ORCALUT4 and_23_i8_2_lut (.A(\BusA[7] ), .B(BusB[7]), .Z(Q_7__N_1701[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i8_2_lut.init = 16'h8888;
    ORCALUT4 mux_1669_i7_4_lut (.A(BusB[6]), .B(Q_7__N_1567[6]), .C(ALU_Op_r[2]), 
            .D(n37769), .Z(n2832)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1669_i7_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_2_lut_rep_725 (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .Z(n37828)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_725.init = 16'h8888;
    ORCALUT4 i30747_2_lut_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(PreserveC_r), .D(n37846), .Z(n34292)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i30747_2_lut_3_lut_4_lut.init = 16'hf7f0;
    ORCALUT4 i1614_2_lut_rep_652_3_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .Z(n37755)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1614_2_lut_rep_652_3_lut.init = 16'h8080;
    ORCALUT4 i32179_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .D(ALU_Op_r[3]), .Z(n34751)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;
    defparam i32179_3_lut_4_lut.init = 16'hf8ff;
    ORCALUT4 i33_4_lut_4_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .D(n37520), .Z(n17)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (C+!(D)))) */ ;
    defparam i33_4_lut_4_lut_4_lut.init = 16'h058a;
    ORCALUT4 i19311_3_lut_3_lut_3_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .Z(n2683)) /* synthesis lut_function=(A (B+!(C))) */ ;
    defparam i19311_3_lut_3_lut_3_lut.init = 16'h8a8a;
    PFUMX i32819 (.BLUT(n36723), .ALUT(n36722), .C0(n37742), .Z(n36724));
    ORCALUT4 i19346_4_lut_4_lut (.A(n37761), .B(\F[1] ), .C(F_Out_7__N_1621), 
            .D(n37730), .Z(n2933[4])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i19346_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 BusB_1__I_0_3_lut_rep_730 (.A(BusB[1]), .B(BusB[5]), .C(ALU_Op_r[0]), 
            .Z(n37833)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_1__I_0_3_lut_rep_730.init = 16'hcaca;
    ORCALUT4 i3_2_lut_4_lut_adj_179 (.A(BusB[1]), .B(BusB[5]), .C(ALU_Op_r[0]), 
            .D(Q_7__N_1563), .Z(n10_adj_1743)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam i3_2_lut_4_lut_adj_179.init = 16'hffca;
    ORCALUT4 i2_2_lut_4_lut_adj_180 (.A(BusB[1]), .B(BusB[5]), .C(ALU_Op_r[0]), 
            .D(n37834), .Z(n10_adj_1741)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam i2_2_lut_4_lut_adj_180.init = 16'h35ca;
    ORCALUT4 BusB_2__I_0_3_lut_rep_731 (.A(BusB[2]), .B(BusB[6]), .C(ALU_Op_r[0]), 
            .Z(n37834)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_2__I_0_3_lut_rep_731.init = 16'hcaca;
    PFUMX i32815 (.BLUT(n37789), .ALUT(n36715), .C0(n37742), .Z(n36717));
    ORCALUT4 i2_2_lut_4_lut_adj_181 (.A(BusB[2]), .B(BusB[6]), .C(ALU_Op_r[0]), 
            .D(\BusA[4] ), .Z(n9_adj_1744)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam i2_2_lut_4_lut_adj_181.init = 16'hffca;
    PFUMX i32813 (.BLUT(n36713), .ALUT(n36712), .C0(n37742), .Z(n36714));
    ORCALUT4 i18933_4_lut (.A(n9_adj_1745), .B(ALU_Op_r[2]), .C(n14_adj_1746), 
            .D(n10_adj_1747), .Z(n2673[0])) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam i18933_4_lut.init = 16'h4884;
    ORCALUT4 i1_2_lut_rep_743 (.A(ALU_Op_r[3]), .B(ALU_Op_r[2]), .Z(n37846)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_743.init = 16'h8888;
    ORCALUT4 i32207_2_lut_3_lut_4_lut_4_lut (.A(ALU_Op_r[3]), .B(ALU_Op_r[2]), 
            .C(ALU_Op_r[0]), .D(ALU_Op_r[1]), .Z(n34733)) /* synthesis lut_function=(!(A ((C (D))+!B))) */ ;
    defparam i32207_2_lut_3_lut_4_lut_4_lut.init = 16'h5ddd;
    ORCALUT4 i2_2_lut_rep_648_3_lut_4_lut (.A(ALU_Op_r[3]), .B(ALU_Op_r[2]), 
            .C(ALU_Op_r[0]), .D(ALU_Op_r[1]), .Z(n37751)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i2_2_lut_rep_648_3_lut_4_lut.init = 16'h0888;
    ORCALUT4 i2_2_lut_rep_658_3_lut_4_lut (.A(ALU_Op_r[3]), .B(ALU_Op_r[2]), 
            .C(ALU_Op_r[1]), .D(ALU_Op_r[0]), .Z(n37761)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i2_2_lut_rep_658_3_lut_4_lut.init = 16'h0880;
    ORCALUT4 i32344_2_lut_3_lut_4_lut (.A(ALU_Op_r[3]), .B(ALU_Op_r[2]), 
            .C(ALU_Op_r[0]), .D(ALU_Op_r[1]), .Z(n22322)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i32344_2_lut_3_lut_4_lut.init = 16'h7fff;
    PFUMX i32807 (.BLUT(Q_7__N_1599[5]), .ALUT(n36702), .C0(n37742), .Z(n36703));
    ORCALUT4 n39705_bdd_3_lut (.A(n39705), .B(n39703), .C(n37771), .Z(n39706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n39705_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 Q_7__N_1607_3__bdd_4_lut (.A(Q_7__N_1607[3]), .B(n22322), .C(Q_7__N_1563), 
            .D(ALU_Op_r[3]), .Z(n39703)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam Q_7__N_1607_3__bdd_4_lut.init = 16'hc0aa;
    ORCALUT4 Q_7__N_1567_3__bdd_4_lut (.A(BusB[3]), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(\IR[5] ), .D(\IR[4] ), .Z(n39704)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;
    defparam Q_7__N_1567_3__bdd_4_lut.init = 16'ha2aa;
    ORCALUT4 i31701_3_lut_4_lut (.A(Save_ALU_r), .B(n37771), .C(n9937), 
            .D(n2830[0]), .Z(\ALU_Q[0] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i31701_3_lut_4_lut.init = 16'hf2d0;
    ORCALUT4 i31915_3_lut_4_lut (.A(Save_ALU_r), .B(n37771), .C(n14278), 
            .D(n2830[5]), .Z(\ALU_Q[5] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i31915_3_lut_4_lut.init = 16'hf2d0;
    ORCALUT4 BusA_3__bdd_3_lut_34009 (.A(\BusA[3] ), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(\BusA[5] ), .Z(n36723)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam BusA_3__bdd_3_lut_34009.init = 16'he2e2;
    ORCALUT4 i6_4_lut_else_4_lut (.A(BusB[4]), .B(BusB[5]), .C(\IR[5] ), 
            .D(\Set_BusA_To_3__N_1202[0] ), .Z(n37871)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i6_4_lut_else_4_lut.init = 16'hc0a0;
    ORCALUT4 mux_1669_i3_4_lut (.A(BusB[2]), .B(n37626), .C(ALU_Op_r[2]), 
            .D(n37763), .Z(n2836)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1669_i3_4_lut.init = 16'hc0ca;
    ORCALUT4 i14_3_lut (.A(BusB[2]), .B(ALU_Op_r[1]), .C(\BusA[2] ), .Z(n6)) /* synthesis lut_function=(!(A (B+!(C))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam i14_3_lut.init = 16'h2525;
    ORCALUT4 mux_4810_i4_3_lut (.A(Q_7__N_1718[4]), .B(Q_7__N_1709[4]), 
            .C(\F[1] ), .Z(Q_7__N_1567[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4810_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i7_4_lut (.A(Q_7__N_1567[5]), .B(Q_7__N_1567[3]), .C(Q_7__N_1567[1]), 
            .D(n10_adj_1749), .Z(n16)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i7_4_lut.init = 16'h6996;
    ORCALUT4 i1_2_lut (.A(Q_7__N_1567[6]), .B(\Q_7__N_1567[7] ), .Z(n10_adj_1749)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i1_2_lut.init = 16'h6666;
    ORCALUT4 mux_4810_i3_3_lut (.A(Q_7__N_1718[3]), .B(Q_7__N_1709[3]), 
            .C(\F[1] ), .Z(Q_7__N_1567[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4810_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_4810_i1_3_lut (.A(Q_7__N_1718[1]), .B(Q_7__N_1709[1]), 
            .C(\F[1] ), .Z(Q_7__N_1567[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam mux_4810_i1_3_lut.init = 16'hcaca;
    ORCALUT4 BusB_0__I_0_3_lut (.A(BusB[0]), .B(BusB[4]), .C(ALU_Op_r[0]), 
            .Z(Q_7__N_1566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_0__I_0_3_lut.init = 16'hcaca;
    ORCALUT4 i6_4_lut (.A(\BusA[7] ), .B(\BusA[4] ), .C(\BusA[5] ), .D(\BusA[6] ), 
            .Z(n14)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(304[30:36])
    defparam i6_4_lut.init = 16'h6996;
    ORCALUT4 BusB_3__I_0_112_3_lut (.A(BusB[3]), .B(BusB[7]), .C(ALU_Op_r[0]), 
            .Z(Q_7__N_1563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_3__I_0_112_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_4_lut_4_lut (.A(n42[4]), .B(n251), .C(n6970[6]), 
            .D(n42[5]), .Z(Q_7__N_1709[7])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hb43c;
    ORCALUT4 i6121_2_lut_3_lut (.A(n42[4]), .B(n251), .C(n42[5]), .Z(Q_7__N_1709[6])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i6121_2_lut_3_lut.init = 16'h7878;
    ORCALUT4 i2_3_lut (.A(ALU_Op_r[2]), .B(\F[0] ), .C(ALU_Op_r[0]), .Z(HalfCarry_v_N_1660)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(111[88:114])
    defparam i2_3_lut.init = 16'h4040;
    ORCALUT4 i19764_2_lut_rep_613_3_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .Z(n37716)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i19764_2_lut_rep_613_3_lut.init = 16'hfefe;
    ORCALUT4 i7257_2_lut_rep_537_3_lut_3_lut_4_lut_3_lut (.A(ALU_Op_r[1]), 
            .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), .Z(n37640)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam i7257_2_lut_rep_537_3_lut_3_lut_4_lut_3_lut.init = 16'h8181;
    ORCALUT4 i6133_3_lut_4_lut_4_lut (.A(n42[4]), .B(n251), .C(n6970[6]), 
            .D(n42[5]), .Z(Q_7__N_1709[8])) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i6133_3_lut_4_lut_4_lut.init = 16'hc8c0;
    ORCALUT4 i1_2_lut_3_lut_adj_182 (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), .C(ALU_Op_r[2]), 
            .Z(n2774)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_182.init = 16'h1010;
    ORCALUT4 i32175_3_lut_rep_668_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(ALU_Op_r[3]), .Z(n37771)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam i32175_3_lut_rep_668_3_lut_4_lut.init = 16'he0ff;
    ORCALUT4 i1_3_lut_4_lut_3_lut_rep_763 (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .Z(n37866)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i1_3_lut_4_lut_3_lut_rep_763.init = 16'h8e8e;
    ORCALUT4 i19404_3_lut_3_lut_4_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[0]), 
            .C(ALU_Op_r[2]), .D(\F[4] ), .Z(n12436)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !((C)+!B)) */ ;
    defparam i19404_3_lut_3_lut_4_lut.init = 16'h8e04;
    ORCALUT4 i2_3_lut_4_lut_adj_183 (.A(BusB[1]), .B(ALU_Op_r[1]), .C(n2), 
            .D(\BusA[1] ), .Z(Q_v[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_183.init = 16'h6996;
    ORCALUT4 i6070_4_lut_3_lut_rep_606_4_lut (.A(BusB[1]), .B(ALU_Op_r[1]), 
            .C(\BusA[1] ), .D(n2), .Z(n37709)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i6070_4_lut_3_lut_rep_606_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_184 (.A(BusB[2]), .B(ALU_Op_r[1]), .C(n37709), 
            .D(\BusA[2] ), .Z(Q_v[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_184.init = 16'h6996;
    ORCALUT4 i6077_4_lut_3_lut_rep_487_4_lut (.A(BusB[2]), .B(ALU_Op_r[1]), 
            .C(\BusA[2] ), .D(n37709), .Z(n37590)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i6077_4_lut_3_lut_rep_487_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_185 (.A(BusB[3]), .B(ALU_Op_r[1]), .C(n37590), 
            .D(\BusA[3] ), .Z(Q_v[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_185.init = 16'h6996;
    ORCALUT4 i6084_4_lut_3_lut_rep_429_4_lut (.A(BusB[3]), .B(ALU_Op_r[1]), 
            .C(\BusA[3] ), .D(n37590), .Z(n37532)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i6084_4_lut_3_lut_rep_429_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_186 (.A(BusB[4]), .B(ALU_Op_r[1]), .C(n37532), 
            .D(\BusA[4] ), .Z(Q_v[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_186.init = 16'h6996;
    ORCALUT4 i6035_4_lut_3_lut_rep_428_4_lut (.A(BusB[4]), .B(ALU_Op_r[1]), 
            .C(\BusA[4] ), .D(n37532), .Z(n37531)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i6035_4_lut_3_lut_rep_428_4_lut.init = 16'hf660;
    ORCALUT4 BusA_1__bdd_3_lut (.A(\BusA[1] ), .B(\Set_BusA_To_3__N_1202[0] ), 
            .C(\BusA[3] ), .Z(n36713)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam BusA_1__bdd_3_lut.init = 16'he2e2;
    PFUMX mux_1727_i3 (.BLUT(n12440), .ALUT(n12441), .C0(n34733), .Z(\F_Out[2] ));
    L6MUX21 mux_1727_i7 (.D0(n12432), .D1(n12433), .SD(n34733), .Z(\F_Out[6] ));
    PFUMX i9461 (.BLUT(F_Out_7__N_1645), .ALUT(n9456), .C0(n37751), .Z(n12433));
    PFUMX i32434 (.BLUT(n37721), .ALUT(n36033), .C0(n37742), .Z(n36034));
    ORCALUT4 i6_4_lut_adj_187 (.A(\Q_7__N_1599[7] ), .B(\BusA[3] ), .C(\BusA[4] ), 
            .D(n37789), .Z(n14_adj_1750)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i6_4_lut_adj_187.init = 16'h6996;
    ORCALUT4 Q_7__N_1599_5__bdd_3_lut_4_lut (.A(\IR[5] ), .B(n37807), .C(ALU_Op_r[1]), 
            .D(BusB[5]), .Z(n36702)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam Q_7__N_1599_5__bdd_3_lut_4_lut.init = 16'hf880;
    PFUMX i34358 (.BLUT(n39704), .ALUT(Q_7__N_1567[3]), .C0(ALU_Op_r[2]), 
          .Z(n39705));
    PFUMX i34360 (.BLUT(n12390), .ALUT(n39706), .C0(n34751), .Z(\ALU_Q[3] ));
    ORCALUT4 i2_4_lut (.A(n37809), .B(\BusA[1] ), .C(\BusA[5] ), .D(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n10_adj_1751)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i2_4_lut.init = 16'h5a66;
    ORCALUT4 i6_4_lut_adj_188 (.A(Q_7__N_1567[3]), .B(Q_7__N_1567[4]), .C(Q_7__N_1567[5]), 
            .D(Q_7__N_1567[6]), .Z(n14_adj_1752)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(266[10:35])
    defparam i6_4_lut_adj_188.init = 16'hfffe;
    ORCALUT4 i18870_2_lut_rep_685 (.A(\Set_BusA_To_3__N_1202[0] ), .B(\IR[4] ), 
            .Z(n37788)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18870_2_lut_rep_685.init = 16'heeee;
    PFUMX i7258 (.BLUT(n2673[0]), .ALUT(OverFlow_v), .C0(n37640), .Z(F_Out_7__N_1663));
    ORCALUT4 i7_4_lut_adj_189 (.A(Q_7__N_1607[0]), .B(n14_adj_1753), .C(n10_adj_1754), 
            .D(Q_7__N_1607[3]), .Z(n15845)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i7_4_lut_adj_189.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_190 (.A(Q_7__N_1607[7]), .B(Q_7__N_1607[4]), .C(Q_7__N_1607[5]), 
            .D(Q_7__N_1607[6]), .Z(n14_adj_1753)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i6_4_lut_adj_190.init = 16'hfffe;
    ORCALUT4 i2_2_lut (.A(Q_7__N_1607[1]), .B(Q_7__N_1607[2]), .Z(n10_adj_1754)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i2_2_lut.init = 16'heeee;
    ORCALUT4 i6107_3_lut_4_lut_3_lut_4_lut (.A(n166[5]), .B(n166[6]), .C(cout), 
            .D(n166[7]), .Z(Q_7__N_1718[8])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i6107_3_lut_4_lut_3_lut_4_lut.init = 16'h1ef0;
    ORCALUT4 i19626_2_lut_rep_619_3_lut (.A(\Set_BusA_To_3__N_1202[0] ), .B(\IR[4] ), 
            .C(\IR[5] ), .Z(n37722)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i19626_2_lut_rep_619_3_lut.init = 16'hfefe;
    ORCALUT4 BusB_7__I_0_129_i1_2_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1202[0] ), 
            .B(\IR[4] ), .C(BusB[0]), .D(\IR[5] ), .Z(Q_7__N_1591[0])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam BusB_7__I_0_129_i1_2_lut_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i9296_3_lut (.A(\Q_7__N_1718[0] ), .B(\F[0] ), .C(\IR[4] ), 
            .Z(n12220)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i9296_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1668_i2_4_lut_3_lut_4_lut (.A(\IR[5] ), .B(n37807), .C(ALU_Op_r[1]), 
            .D(BusB[1]), .Z(n2821[1])) /* synthesis lut_function=(A (C (D))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam mux_1668_i2_4_lut_3_lut_4_lut.init = 16'hf440;
    ORCALUT4 i9437_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n37836), .C(n2821[1]), 
            .D(n37809), .Z(n12394)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i9437_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i2_2_lut_rep_620_3_lut (.A(\Set_BusA_To_3__N_1202[0] ), .B(\IR[4] ), 
            .C(\IR[5] ), .Z(n37723)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_rep_620_3_lut.init = 16'h1010;
    ORCALUT4 i9433_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n37836), .C(n2821[3]), 
            .D(\Q_7__N_1599[3] ), .Z(n12390)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i9433_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 Q_7__N_1599_7__bdd_3_lut_4_lut (.A(ALU_Op_r[2]), .B(n37836), 
            .C(n36725), .D(\Q_7__N_1599[7] ), .Z(n36726)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam Q_7__N_1599_7__bdd_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i1_2_lut_adj_191 (.A(Q_7__N_1607[0]), .B(Q_7__N_1607[3]), .Z(n9_adj_1745)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[27:33])
    defparam i1_2_lut_adj_191.init = 16'h6666;
    ORCALUT4 i6_4_lut_adj_192 (.A(Q_7__N_1607[7]), .B(Q_7__N_1607[4]), .C(Q_7__N_1607[5]), 
            .D(Q_7__N_1607[6]), .Z(n14_adj_1746)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[27:33])
    defparam i6_4_lut_adj_192.init = 16'h6996;
    ORCALUT4 i2_2_lut_adj_193 (.A(Q_7__N_1607[1]), .B(Q_7__N_1607[2]), .Z(n10_adj_1747)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[27:33])
    defparam i2_2_lut_adj_193.init = 16'h6666;
    ORCALUT4 mux_1659_i1_then_4_lut (.A(\Q_7__N_1718[0] ), .B(ALU_Op_r[1]), 
            .C(ALU_Op_r[0]), .D(BusB[0]), .Z(n37898)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A !(B (D)+!B (C (D))))) */ ;
    defparam mux_1659_i1_then_4_lut.init = 16'h5ea8;
    ORCALUT4 i11127_3_lut (.A(\BusA[4] ), .B(\BusA[6] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .Z(Q_7__N_1599[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11127_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1659_i1_else_4_lut (.A(\Q_7__N_1718[0] ), .B(ALU_Op_r[0]), 
            .C(BusB[0]), .D(\F[0] ), .Z(n37897)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;
    defparam mux_1659_i1_else_4_lut.init = 16'h965a;
    ORCALUT4 n37334_bdd_3_lut_4_lut (.A(n37828), .B(n37846), .C(n2933[5]), 
            .D(n37334), .Z(n37335)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam n37334_bdd_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i31888_3_lut_4_lut (.A(n37828), .B(n37846), .C(n24443), .D(n37938), 
            .Z(\F_Out[3] )) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i31888_3_lut_4_lut.init = 16'hfb40;
    PFUMX mux_1654_i8 (.BLUT(Q_v[7]), .ALUT(Q_7__N_1701[7]), .C0(n2774), 
          .Z(n2776));
    ORCALUT4 i18847_4_lut (.A(n9), .B(n37859), .C(n14_adj_1750), .D(n10_adj_1751), 
            .Z(F_Out_7__N_1640)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(426[6] 431[11])
    defparam i18847_4_lut.init = 16'h4884;
    ORCALUT4 i11123_3_lut (.A(\BusA[2] ), .B(\BusA[4] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .Z(\Q_7__N_1599[3] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11123_3_lut.init = 16'hcaca;
    ORCALUT4 mux_1716_i6_3_lut_4_lut (.A(n37836), .B(n37846), .C(\BusA[5] ), 
            .D(Q_7__N_1567[5]), .Z(n2933[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_1716_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i7252_3_lut_3_lut_4_lut (.A(n37836), .B(n37846), .C(\F[0] ), 
            .D(Q_7__N_1567[8]), .Z(n9949)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i7252_3_lut_3_lut_4_lut.init = 16'hf7f0;
    PFUMX mux_1654_i7 (.BLUT(Q_v[6]), .ALUT(Q_7__N_1701[6]), .C0(n2774), 
          .Z(n2777));
    ORCALUT4 i32021_3_lut_4_lut (.A(n37836), .B(n37846), .C(n33609), .D(n33557), 
            .Z(n9456)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (D))) */ ;
    defparam i32021_3_lut_4_lut.init = 16'h087f;
    ORCALUT4 n12431_bdd_3_lut_4_lut (.A(n37836), .B(n37846), .C(\BusA[7] ), 
            .D(\Q_7__N_1567[7] ), .Z(n37157)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n12431_bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i20995_3_lut_4_lut (.A(n37836), .B(n37846), .C(Q_7__N_1563), 
            .D(Q_7__N_1567[3]), .Z(n24443)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i20995_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 and_23_i2_2_lut (.A(\BusA[1] ), .B(BusB[1]), .Z(Q_7__N_1701[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i2_2_lut.init = 16'h8888;
    ORCALUT4 i5955_2_lut_rep_690 (.A(\BusA[1] ), .B(\BusA[2] ), .Z(n37793)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5955_2_lut_rep_690.init = 16'heeee;
    ORCALUT4 mux_1669_i1_4_lut (.A(BusB[0]), .B(\Q_7__N_1718[0] ), .C(ALU_Op_r[2]), 
            .D(n37722), .Z(n2830[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1669_i1_4_lut.init = 16'hcac0;
    ORCALUT4 mux_1668_i4_4_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1202[0] ), 
            .B(n37841), .C(ALU_Op_r[1]), .D(BusB[3]), .Z(n2821[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam mux_1668_i4_4_lut_3_lut_4_lut.init = 16'hf880;
    ORCALUT4 i6113_2_lut (.A(n42[4]), .B(n251), .Z(Q_7__N_1709[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[3] 258[8])
    defparam i6113_2_lut.init = 16'h6666;
    ORCALUT4 i6085_2_lut (.A(n166[5]), .B(n37535), .Z(Q_7__N_1718[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[3] 242[8])
    defparam i6085_2_lut.init = 16'h6666;
    ORCALUT4 mux_4724_i6_3_lut (.A(n15842), .B(\F[6] ), .C(ALU_Op_r[1]), 
            .Z(n6853[5])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_4724_i6_3_lut.init = 16'hc5c5;
    ORCALUT4 i5965_2_lut_rep_627_3_lut (.A(\BusA[1] ), .B(\BusA[2] ), .C(\BusA[3] ), 
            .Z(n37730)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i5965_2_lut_rep_627_3_lut.init = 16'he0e0;
    PFUMX mux_1654_i6 (.BLUT(Q_v[5]), .ALUT(Q_7__N_1701[5]), .C0(n2774), 
          .Z(n2778));
    ORCALUT4 i2_4_lut_adj_194 (.A(\BusA[3] ), .B(\F[4] ), .C(\BusA[1] ), 
            .D(\BusA[2] ), .Z(F_Out_7__N_1621)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i2_4_lut_adj_194.init = 16'h0444;
    ORCALUT4 i6093_3_lut (.A(n166[6]), .B(n37535), .C(n166[5]), .Z(Q_7__N_1718[6])) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[3] 242[8])
    defparam i6093_3_lut.init = 16'ha6a6;
    ORCALUT4 i14_3_lut_adj_195 (.A(BusB[1]), .B(ALU_Op_r[1]), .C(\BusA[1] ), 
            .Z(n6_adj_1)) /* synthesis lut_function=(!(A (B+!(C))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam i14_3_lut_adj_195.init = 16'h2525;
    ORCALUT4 i69_4_lut (.A(n10_adj_1756), .B(\F[0] ), .C(\BusA[7] ), .D(n37822), 
            .Z(n251)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[7:41])
    defparam i69_4_lut.init = 16'hfcec;
    ORCALUT4 and_23_i3_2_lut (.A(\BusA[2] ), .B(BusB[2]), .Z(Q_7__N_1701[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i3_2_lut.init = 16'h8888;
    ORCALUT4 mux_1669_i2_4_lut (.A(BusB[1]), .B(Q_7__N_1567[1]), .C(ALU_Op_r[2]), 
            .D(n37741), .Z(n2830[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam mux_1669_i2_4_lut.init = 16'hc0ca;
    ORCALUT4 i31745_3_lut (.A(n2830[1]), .B(n2872), .C(n37771), .Z(n14286)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i31745_3_lut.init = 16'hcaca;
    ORCALUT4 i5964_2_lut_3_lut_4_lut (.A(\BusA[1] ), .B(\BusA[2] ), .C(\BusA[4] ), 
            .D(\BusA[3] ), .Z(n10_adj_1756)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i5964_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i5960_2_lut_rep_768 (.A(n166[5]), .B(n166[6]), .Z(n39835)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5960_2_lut_rep_768.init = 16'heeee;
    ORCALUT4 i14_3_lut_3_lut (.A(ALU_Op_r[1]), .B(\BusA[7] ), .C(BusB[7]), 
            .Z(n6_adj_2)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i14_3_lut_3_lut.init = 16'h4343;
    ORCALUT4 i3_4_lut (.A(\BusA[4] ), .B(n5), .C(n33060), .D(n6_c), 
            .Z(n8)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(416[10:33])
    defparam i3_4_lut.init = 16'hfffe;
    ORCALUT4 i1_4_lut (.A(n14288), .B(\BusA[1] ), .C(\BusA[5] ), .D(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n5)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(416[10:33])
    defparam i1_4_lut.init = 16'hfcee;
    ORCALUT4 i14_3_lut_3_lut_adj_196 (.A(ALU_Op_r[1]), .B(\BusA[6] ), .C(BusB[6]), 
            .Z(n6_adj_3)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i14_3_lut_3_lut_adj_196.init = 16'h4343;
    ORCALUT4 i14_3_lut_3_lut_adj_197 (.A(ALU_Op_r[1]), .B(\BusA[4] ), .C(BusB[4]), 
            .Z(n6_adj_4)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i14_3_lut_3_lut_adj_197.init = 16'h4343;
    ORCALUT4 i11161_4_lut (.A(\BusA[7] ), .B(\IR[4] ), .C(\IR[5] ), .D(\F[0] ), 
            .Z(n14288)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i11161_4_lut.init = 16'hcec2;
    ORCALUT4 i29574_3_lut (.A(\BusA[2] ), .B(\BusA[6] ), .C(\Set_BusA_To_3__N_1202[0] ), 
            .Z(n33060)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i29574_3_lut.init = 16'hcaca;
    ORCALUT4 i7_4_lut_adj_198 (.A(Q_7__N_1591[0]), .B(n37873), .C(n10_adj_1742), 
            .D(n37641), .Z(n15842)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i7_4_lut_adj_198.init = 16'hfffe;
    ORCALUT4 i14_3_lut_3_lut_adj_199 (.A(ALU_Op_r[1]), .B(\BusA[3] ), .C(BusB[3]), 
            .Z(n6_adj_5)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i14_3_lut_3_lut_adj_199.init = 16'h4343;
    ORCALUT4 i14_3_lut_3_lut_adj_200 (.A(ALU_Op_r[1]), .B(\BusA[5] ), .C(BusB[5]), 
            .Z(n6_adj_6)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i14_3_lut_3_lut_adj_200.init = 16'h4343;
    ORCALUT4 i18988_2_lut_3_lut_4_lut_4_lut (.A(ALU_Op_r[1]), .B(BusB[7]), 
            .C(n39854), .D(\Set_BusA_To_3__N_1202[0] ), .Z(n6853[6])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(173[10:31])
    defparam i18988_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    ORCALUT4 BusA_7__I_0_126_3_lut (.A(\BusA[7] ), .B(\Q_7__N_1718[0] ), 
            .C(\Set_BusA_To_3__N_1202[0] ), .Z(F_Out_7__N_1643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam BusA_7__I_0_126_3_lut.init = 16'hcaca;
    ORCALUT4 i6_4_lut_adj_201 (.A(Q_7__N_1566), .B(n9_adj_1744), .C(n8_c), 
            .D(n10_adj_1743), .Z(n33609)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_201.init = 16'hfffe;
    ORCALUT4 i7_4_lut_adj_202 (.A(\Q_7__N_1718[0] ), .B(n14_adj_1752), .C(n10), 
            .D(\Q_7__N_1567[7] ), .Z(n33557)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(266[10:35])
    defparam i7_4_lut_adj_202.init = 16'hfffe;
    ORCALUT4 and_23_i5_2_lut (.A(\BusA[4] ), .B(BusB[4]), .Z(Q_7__N_1701[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i5_2_lut.init = 16'h8888;
    ORCALUT4 and_23_i4_2_lut (.A(\BusA[3] ), .B(BusB[3]), .Z(Q_7__N_1701[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(155[16:27])
    defparam and_23_i4_2_lut.init = 16'h8888;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (uart_rx_data, clk_op, clk_op_enable_128, uart_rx_avail, 
            n39877, rx_state, n39884, uart_rx_c, n39875, \sr[7] , 
            \bitidx[3] , n32712, k, VCC_net, \bitidx[1] , n39879, 
            n39880, n32385, uart_rd, n34387, n37518) /* synthesis syn_module_defined=1 */ ;
    output [7:0]uart_rx_data;
    input clk_op;
    input clk_op_enable_128;
    output uart_rx_avail;
    input n39877;
    output rx_state;
    input n39884;
    input uart_rx_c;
    input n39875;
    output \sr[7] ;
    output \bitidx[3] ;
    output n32712;
    output [11:0]k;
    input VCC_net;
    output \bitidx[1] ;
    input n39879;
    input n39880;
    output n32385;
    input uart_rd;
    input n34387;
    output n37518;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    wire [7:0]sr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(17[16:18])
    
    wire n17829, n35162, rxd_d;
    wire [3:0]bitidx;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(16[16:22])
    
    wire n36950, n37906, n39834, n39844;
    wire [31:0]n70;
    
    wire n18143;
    wire [11:0]k_c;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(15[17:18])
    
    wire n17819, n37832, n8436, GND_net;
    wire [31:0]rx_state_N_219;
    wire [12:0]n287;
    
    wire clk_op_enable_185, n7, n7_adj_1740, n29844, n29843, n29746, 
        n29747, n29842, n29841, n29806;
    wire [11:0]n53;
    
    wire n29840, n29839, n29805, n29804, n29803, n29745, n29802, 
        n37831, n37521, clk_op_enable_305, clk_op_enable_302, n29801, 
        n17798, n29748, rx_state_N_218, n17796, n17794, n17792, 
        n17790, n17788, n17784, n17778, n17776, n17764, n17762, 
        n37848, n24, n37850, n37772, n33961, n10, rx_state_N_251, 
        n12, n35, n36, n32, n34, n28, n30, n37526, n32691, 
        clk_op_enable_301, clk_op_enable_303, n37524, clk_op_enable_310, 
        n32794, clk_op_enable_306, clk_op_enable_312;
    
    FD1P3AX rx_data_i0_i0 (.D(sr[0]), .SP(clk_op_enable_128), .CK(clk_op), 
            .Q(uart_rx_data[0])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i0.GSR = "ENABLED";
    FD1S3DX rx_avail_73 (.D(n17829), .CK(clk_op), .CD(n39877), .Q(uart_rx_avail)) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_avail_73.GSR = "ENABLED";
    FD1S3DX rx_state_72 (.D(n35162), .CK(clk_op), .CD(n39884), .Q(rx_state)) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_state_72.GSR = "ENABLED";
    FD1S3BX rxd_d_78 (.D(uart_rx_c), .CK(clk_op), .PD(n39884), .Q(rxd_d)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rxd_d_78.GSR = "ENABLED";
    FD1S3DX bitidx__i0 (.D(n36950), .CK(clk_op), .CD(n39875), .Q(bitidx[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i0.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i7 (.D(\sr[7] ), .SP(clk_op_enable_128), .CK(clk_op), 
            .Q(uart_rx_data[7])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i7.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i6 (.D(sr[6]), .SP(clk_op_enable_128), .CK(clk_op), 
            .Q(uart_rx_data[6])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i6.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i5 (.D(sr[5]), .SP(clk_op_enable_128), .CK(clk_op), 
            .Q(uart_rx_data[5])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i5.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i4 (.D(sr[4]), .SP(clk_op_enable_128), .CK(clk_op), 
            .Q(uart_rx_data[4])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i4.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i3 (.D(sr[3]), .SP(clk_op_enable_128), .CK(clk_op), 
            .Q(uart_rx_data[3])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i3.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i2 (.D(sr[2]), .SP(clk_op_enable_128), .CK(clk_op), 
            .Q(uart_rx_data[2])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i2.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i1 (.D(sr[1]), .SP(clk_op_enable_128), .CK(clk_op), 
            .Q(uart_rx_data[1])) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i1.GSR = "ENABLED";
    ORCALUT4 bitidx_3__bdd_4_lut (.A(\bitidx[3] ), .B(n32712), .C(n37906), 
            .D(k[11]), .Z(n39834)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam bitidx_3__bdd_4_lut.init = 16'h88f0;
    ORCALUT4 rxd_d_I_0_2_lut_rep_777 (.A(rxd_d), .B(uart_rx_c), .Z(n39844)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam rxd_d_I_0_2_lut_rep_777.init = 16'h2222;
    ORCALUT4 i19215_2_lut_3_lut_4_lut_3_lut_4_lut (.A(rxd_d), .B(uart_rx_c), 
            .C(n70[3]), .D(rx_state), .Z(n18143)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam i19215_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hf0d0;
    FD1S3DX k_5689__i0 (.D(n17819), .CK(clk_op), .CD(n39884), .Q(k_c[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i0.GSR = "ENABLED";
    MULT9X9B mult_67 (.P12(n287[12]), .P11(n287[11]), .P10(n287[10]), 
            .P9(n287[9]), .P8(n287[8]), .P7(n287[7]), .P6(n287[6]), 
            .P5(n287[5]), .P4(n287[4]), .P3(n287[3]), .P2(n287[2]), 
            .P1(rx_state_N_219[1]), .P0(rx_state_N_219[0]), .A8(GND_net), 
            .A7(GND_net), .A6(GND_net), .A5(GND_net), .A4(n8436), .A3(n70[3]), 
            .A2(n70[2]), .A1(n70[1]), .A0(n37832), .B8(GND_net), .B7(VCC_net), 
            .B6(VCC_net), .B5(GND_net), .B4(VCC_net), .B3(VCC_net), 
            .B2(GND_net), .B1(GND_net), .B0(VCC_net), .SRIA8(GND_net), 
            .SRIA7(GND_net), .SRIA6(GND_net), .SRIA5(GND_net), .SRIA4(GND_net), 
            .SRIA3(GND_net), .SRIA2(GND_net), .SRIA1(GND_net), .SRIA0(GND_net), 
            .SRIB8(GND_net), .SRIB7(GND_net), .SRIB6(GND_net), .SRIB5(GND_net), 
            .SRIB4(GND_net), .SRIB3(GND_net), .SRIB2(GND_net), .SRIB1(GND_net), 
            .SRIB0(GND_net), .SIGNEDA(GND_net), .SIGNEDB(GND_net), .CE0(VCC_net), 
            .CE1(GND_net), .CE2(GND_net), .CE3(GND_net), .CLK0(GND_net), 
            .CLK1(GND_net), .CLK2(GND_net), .CLK3(GND_net), .RST0(GND_net), 
            .RST1(GND_net), .RST2(GND_net), .RST3(GND_net), .SOURCEA(GND_net), 
            .SOURCEB(GND_net));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:57])
    defparam mult_67.REG_INPUTA_CLK = "NONE";
    defparam mult_67.REG_INPUTA_CE = "CE0";
    defparam mult_67.REG_INPUTA_RST = "RST0";
    defparam mult_67.REG_INPUTB_CLK = "NONE";
    defparam mult_67.REG_INPUTB_CE = "CE0";
    defparam mult_67.REG_INPUTB_RST = "RST0";
    defparam mult_67.REG_PIPELINE_CLK = "NONE";
    defparam mult_67.REG_PIPELINE_CE = "CE0";
    defparam mult_67.REG_PIPELINE_RST = "RST0";
    defparam mult_67.REG_OUTPUT_CLK = "NONE";
    defparam mult_67.REG_OUTPUT_CE = "CE0";
    defparam mult_67.REG_OUTPUT_RST = "RST0";
    defparam mult_67.REG_SIGNEDA_CLK = "NONE";
    defparam mult_67.REG_SIGNEDA_CE = "CE0";
    defparam mult_67.REG_SIGNEDA_RST = "RST0";
    defparam mult_67.REG_SIGNEDB_CLK = "NONE";
    defparam mult_67.REG_SIGNEDB_CE = "CE0";
    defparam mult_67.REG_SIGNEDB_RST = "RST0";
    defparam mult_67.GSR = "ENABLED";
    FD1P3DX bitidx__i1 (.D(n7), .SP(clk_op_enable_185), .CK(clk_op), .CD(n39884), 
            .Q(\bitidx[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i1.GSR = "ENABLED";
    FD1P3DX bitidx__i2 (.D(n7_adj_1740), .SP(clk_op_enable_185), .CK(clk_op), 
            .CD(n39884), .Q(bitidx[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i2.GSR = "ENABLED";
    FD1P3DX bitidx__i3 (.D(n18143), .SP(clk_op_enable_185), .CK(clk_op), 
            .CD(n39879), .Q(\bitidx[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx__i3.GSR = "ENABLED";
    CCU2B add_1089_add_4_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29844), .S0(rx_state_N_219[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1089_add_4_cout.INIT0 = 16'h0000;
    defparam add_1089_add_4_cout.INIT1 = 16'h0000;
    defparam add_1089_add_4_cout.INJECT1_0 = "NO";
    defparam add_1089_add_4_cout.INJECT1_1 = "NO";
    CCU2B add_1089_add_4_11 (.A0(n287[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n287[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n29843), .COUT(n29844), .S0(rx_state_N_219[11]), .S1(rx_state_N_219[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1089_add_4_11.INIT0 = 16'haaaa;
    defparam add_1089_add_4_11.INIT1 = 16'haaaa;
    defparam add_1089_add_4_11.INJECT1_0 = "NO";
    defparam add_1089_add_4_11.INJECT1_1 = "NO";
    CCU2B equal_4711_12 (.A0(rx_state_N_219[7]), .B0(k_c[7]), .C0(rx_state_N_219[6]), 
          .D0(k_c[6]), .A1(rx_state_N_219[5]), .B1(k_c[5]), .C1(rx_state_N_219[4]), 
          .D1(k_c[4]), .CIN(n29746), .COUT(n29747));
    defparam equal_4711_12.INIT0 = 16'h9009;
    defparam equal_4711_12.INIT1 = 16'h9009;
    defparam equal_4711_12.INJECT1_0 = "YES";
    defparam equal_4711_12.INJECT1_1 = "YES";
    CCU2B add_1089_add_4_9 (.A0(n287[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n287[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n29842), .COUT(n29843), .S0(rx_state_N_219[9]), .S1(rx_state_N_219[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1089_add_4_9.INIT0 = 16'haaaa;
    defparam add_1089_add_4_9.INIT1 = 16'haaaa;
    defparam add_1089_add_4_9.INJECT1_0 = "NO";
    defparam add_1089_add_4_9.INJECT1_1 = "NO";
    CCU2B add_1089_add_4_7 (.A0(n287[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n287[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n29841), .COUT(n29842), .S0(rx_state_N_219[7]), .S1(rx_state_N_219[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1089_add_4_7.INIT0 = 16'haaaa;
    defparam add_1089_add_4_7.INIT1 = 16'haaaa;
    defparam add_1089_add_4_7.INJECT1_0 = "NO";
    defparam add_1089_add_4_7.INJECT1_1 = "NO";
    CCU2B k_5689_add_4_13 (.A0(k[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n29806), 
          .S0(n53[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689_add_4_13.INIT0 = 16'haaa0;
    defparam k_5689_add_4_13.INIT1 = 16'h0000;
    defparam k_5689_add_4_13.INJECT1_0 = "NO";
    defparam k_5689_add_4_13.INJECT1_1 = "NO";
    CCU2B add_1089_add_4_5 (.A0(n287[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n287[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n29840), .COUT(n29841), .S0(rx_state_N_219[5]), .S1(rx_state_N_219[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1089_add_4_5.INIT0 = 16'h555a;
    defparam add_1089_add_4_5.INIT1 = 16'h555a;
    defparam add_1089_add_4_5.INJECT1_0 = "NO";
    defparam add_1089_add_4_5.INJECT1_1 = "NO";
    CCU2B add_1089_add_4_3 (.A0(n287[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n287[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n29839), .COUT(n29840), .S0(rx_state_N_219[3]), .S1(rx_state_N_219[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1089_add_4_3.INIT0 = 16'h555a;
    defparam add_1089_add_4_3.INIT1 = 16'haaaa;
    defparam add_1089_add_4_3.INJECT1_0 = "NO";
    defparam add_1089_add_4_3.INJECT1_1 = "NO";
    CCU2B k_5689_add_4_11 (.A0(k_c[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k_c[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29805), 
          .COUT(n29806), .S0(n53[9]), .S1(n53[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689_add_4_11.INIT0 = 16'haaa0;
    defparam k_5689_add_4_11.INIT1 = 16'haaa0;
    defparam k_5689_add_4_11.INJECT1_0 = "NO";
    defparam k_5689_add_4_11.INJECT1_1 = "NO";
    CCU2B add_1089_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n287[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n29839), .S1(rx_state_N_219[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_1089_add_4_1.INIT0 = 16'h0000;
    defparam add_1089_add_4_1.INIT1 = 16'h555a;
    defparam add_1089_add_4_1.INJECT1_0 = "NO";
    defparam add_1089_add_4_1.INJECT1_1 = "NO";
    CCU2B k_5689_add_4_9 (.A0(k_c[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k_c[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29804), 
          .COUT(n29805), .S0(n53[7]), .S1(n53[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689_add_4_9.INIT0 = 16'haaa0;
    defparam k_5689_add_4_9.INIT1 = 16'haaa0;
    defparam k_5689_add_4_9.INJECT1_0 = "NO";
    defparam k_5689_add_4_9.INJECT1_1 = "NO";
    CCU2B k_5689_add_4_7 (.A0(k_c[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k_c[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29803), 
          .COUT(n29804), .S0(n53[5]), .S1(n53[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689_add_4_7.INIT0 = 16'haaa0;
    defparam k_5689_add_4_7.INIT1 = 16'haaa0;
    defparam k_5689_add_4_7.INJECT1_0 = "NO";
    defparam k_5689_add_4_7.INJECT1_1 = "NO";
    CCU2B equal_4711_10 (.A0(rx_state_N_219[11]), .B0(k[11]), .C0(rx_state_N_219[10]), 
          .D0(k_c[10]), .A1(rx_state_N_219[9]), .B1(k_c[9]), .C1(rx_state_N_219[8]), 
          .D1(k_c[8]), .CIN(n29745), .COUT(n29746));
    defparam equal_4711_10.INIT0 = 16'h9009;
    defparam equal_4711_10.INIT1 = 16'h9009;
    defparam equal_4711_10.INJECT1_0 = "YES";
    defparam equal_4711_10.INJECT1_1 = "YES";
    CCU2B equal_4711_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rx_state_N_219[13]), .B1(rx_state_N_219[12]), .C1(GND_net), 
          .D1(GND_net), .COUT(n29745));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[32:71])
    defparam equal_4711_0.INIT0 = 16'h000F;
    defparam equal_4711_0.INIT1 = 16'h1111;
    defparam equal_4711_0.INJECT1_0 = "NO";
    defparam equal_4711_0.INJECT1_1 = "YES";
    CCU2B k_5689_add_4_5 (.A0(k_c[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k_c[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29802), 
          .COUT(n29803), .S0(n53[3]), .S1(n53[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689_add_4_5.INIT0 = 16'haaa0;
    defparam k_5689_add_4_5.INIT1 = 16'haaa0;
    defparam k_5689_add_4_5.INJECT1_0 = "NO";
    defparam k_5689_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i5989_2_lut_rep_728 (.A(\bitidx[1] ), .B(bitidx[0]), .Z(n37831)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i5989_2_lut_rep_728.init = 16'h8888;
    ORCALUT4 i6003_2_lut_3_lut_4_lut (.A(\bitidx[1] ), .B(bitidx[0]), .C(\bitidx[3] ), 
            .D(bitidx[2]), .Z(n8436)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i6003_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i5994_2_lut_3_lut (.A(\bitidx[1] ), .B(bitidx[0]), .C(bitidx[2]), 
            .Z(n70[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i5994_2_lut_3_lut.init = 16'h7878;
    ORCALUT4 i6001_2_lut_3_lut_4_lut (.A(\bitidx[1] ), .B(bitidx[0]), .C(\bitidx[3] ), 
            .D(bitidx[2]), .Z(n70[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i6001_2_lut_3_lut_4_lut.init = 16'h78f0;
    ORCALUT4 i8_1_lut_rep_729 (.A(bitidx[0]), .Z(n37832)) /* synthesis lut_function=(!(A)) */ ;
    defparam i8_1_lut_rep_729.init = 16'h5555;
    ORCALUT4 i32191_2_lut_3_lut_4_lut_4_lut (.A(bitidx[0]), .B(\bitidx[1] ), 
            .C(bitidx[2]), .D(n37521), .Z(clk_op_enable_305)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i32191_2_lut_3_lut_4_lut_4_lut.init = 16'h0800;
    ORCALUT4 i32205_2_lut_3_lut_4_lut_4_lut (.A(bitidx[0]), .B(\bitidx[1] ), 
            .C(bitidx[2]), .D(n37521), .Z(clk_op_enable_302)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i32205_2_lut_3_lut_4_lut_4_lut.init = 16'h0200;
    CCU2B k_5689_add_4_3 (.A0(k_c[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k_c[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29801), 
          .COUT(n29802), .S0(n53[1]), .S1(n53[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689_add_4_3.INIT0 = 16'haaa0;
    defparam k_5689_add_4_3.INIT1 = 16'haaa0;
    defparam k_5689_add_4_3.INJECT1_0 = "NO";
    defparam k_5689_add_4_3.INJECT1_1 = "NO";
    CCU2B k_5689_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(k_c[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n29801), 
          .S1(n53[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689_add_4_1.INIT0 = 16'h0000;
    defparam k_5689_add_4_1.INIT1 = 16'h555f;
    defparam k_5689_add_4_1.INJECT1_0 = "NO";
    defparam k_5689_add_4_1.INJECT1_1 = "NO";
    FD1S3DX k_5689__i11 (.D(n17798), .CK(clk_op), .CD(n39884), .Q(k[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i11.GSR = "ENABLED";
    CCU2B equal_4711_14 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n29748), 
          .S0(rx_state_N_218));
    defparam equal_4711_14.INIT0 = 16'h0000;
    defparam equal_4711_14.INIT1 = 16'h0000;
    defparam equal_4711_14.INJECT1_0 = "NO";
    defparam equal_4711_14.INJECT1_1 = "NO";
    CCU2B equal_4711_14_26365 (.A0(rx_state_N_219[3]), .B0(k_c[3]), .C0(rx_state_N_219[2]), 
          .D0(k_c[2]), .A1(rx_state_N_219[1]), .B1(k_c[1]), .C1(rx_state_N_219[0]), 
          .D1(k_c[0]), .CIN(n29747), .COUT(n29748));
    defparam equal_4711_14_26365.INIT0 = 16'h9009;
    defparam equal_4711_14_26365.INIT1 = 16'h9009;
    defparam equal_4711_14_26365.INJECT1_0 = "YES";
    defparam equal_4711_14_26365.INJECT1_1 = "YES";
    FD1S3DX k_5689__i10 (.D(n17796), .CK(clk_op), .CD(n39879), .Q(k_c[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i10.GSR = "ENABLED";
    FD1S3DX k_5689__i9 (.D(n17794), .CK(clk_op), .CD(n39884), .Q(k_c[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i9.GSR = "ENABLED";
    FD1S3DX k_5689__i8 (.D(n17792), .CK(clk_op), .CD(n39884), .Q(k_c[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i8.GSR = "ENABLED";
    FD1S3DX k_5689__i7 (.D(n17790), .CK(clk_op), .CD(n39884), .Q(k_c[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i7.GSR = "ENABLED";
    FD1S3DX k_5689__i6 (.D(n17788), .CK(clk_op), .CD(n39880), .Q(k_c[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i6.GSR = "ENABLED";
    FD1S3DX k_5689__i5 (.D(n17784), .CK(clk_op), .CD(n39880), .Q(k_c[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i5.GSR = "ENABLED";
    FD1S3DX k_5689__i4 (.D(n17778), .CK(clk_op), .CD(n39880), .Q(k_c[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i4.GSR = "ENABLED";
    FD1S3DX k_5689__i3 (.D(n17776), .CK(clk_op), .CD(n39880), .Q(k_c[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i3.GSR = "ENABLED";
    FD1S3DX k_5689__i2 (.D(n17764), .CK(clk_op), .CD(n39880), .Q(k_c[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i2.GSR = "ENABLED";
    FD1S3DX k_5689__i1 (.D(n17762), .CK(clk_op), .CD(n39884), .Q(k_c[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_5689__i1.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_rep_745 (.A(bitidx[0]), .B(\bitidx[1] ), .Z(n37848)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(47[18:29])
    defparam i1_2_lut_rep_745.init = 16'heeee;
    ORCALUT4 i5_2_lut_3_lut (.A(bitidx[0]), .B(\bitidx[1] ), .C(k_c[4]), 
            .Z(n24)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(47[18:29])
    defparam i5_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i29567_2_lut_rep_747 (.A(bitidx[0]), .B(bitidx[2]), .Z(n37850)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29567_2_lut_rep_747.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_669_3_lut (.A(bitidx[0]), .B(bitidx[2]), .C(uart_rx_c), 
            .Z(n37772)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_669_3_lut.init = 16'h1010;
    ORCALUT4 i1_2_lut_3_lut (.A(k_c[3]), .B(k_c[2]), .C(n33961), .Z(n32385)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0808;
    ORCALUT4 i5_3_lut_4_lut (.A(k_c[3]), .B(k_c[2]), .C(k[11]), .D(n10), 
            .Z(rx_state_N_251)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i5_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i3_4_lut (.A(k_c[0]), .B(k_c[6]), .C(k_c[5]), .D(n37850), 
            .Z(n32712)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0002;
    ORCALUT4 i6_4_lut (.A(k_c[10]), .B(n12), .C(k_c[9]), .D(k_c[7]), 
            .Z(n33961)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 i5_4_lut (.A(\bitidx[1] ), .B(k_c[4]), .C(k_c[8]), .D(k_c[1]), 
            .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    ORCALUT4 i1_4_lut (.A(n35), .B(uart_rx_avail), .C(n36), .D(uart_rd), 
            .Z(n17829)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i1_4_lut.init = 16'h05cd;
    ORCALUT4 i16_4_lut (.A(k_c[7]), .B(n32), .C(n24), .D(\bitidx[3] ), 
            .Z(n35)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i16_4_lut.init = 16'hfeff;
    ORCALUT4 i17_4_lut (.A(k_c[5]), .B(n34), .C(n28), .D(k_c[0]), .Z(n36)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i17_4_lut.init = 16'hfeff;
    ORCALUT4 i13_4_lut (.A(k_c[6]), .B(k_c[9]), .C(bitidx[2]), .D(k_c[8]), 
            .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    ORCALUT4 i15_4_lut (.A(uart_rx_c), .B(n30), .C(rx_state), .D(n37526), 
            .Z(n34)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i15_4_lut.init = 16'hffdf;
    ORCALUT4 i9_2_lut (.A(k[11]), .B(k_c[10]), .Z(n28)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i9_2_lut.init = 16'hdddd;
    ORCALUT4 i11_4_lut (.A(k_c[3]), .B(k_c[1]), .C(rx_state_N_251), .D(k_c[2]), 
            .Z(n30)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i11_4_lut.init = 16'hfdff;
    ORCALUT4 i4_4_lut (.A(n33961), .B(n37772), .C(\bitidx[3] ), .D(n32691), 
            .Z(n10)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i4_4_lut.init = 16'h0400;
    ORCALUT4 i2_3_lut (.A(k_c[0]), .B(k_c[5]), .C(k_c[6]), .Z(n32691)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut.init = 16'h4040;
    ORCALUT4 i32034_4_lut (.A(rx_state), .B(n39844), .C(n32385), .D(n39834), 
            .Z(n35162)) /* synthesis lut_function=(!(A (C (D))+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i32034_4_lut.init = 16'h4eee;
    ORCALUT4 i14323_4_lut (.A(k_c[0]), .B(n53[0]), .C(rx_state), .D(n39844), 
            .Z(n17819)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14323_4_lut.init = 16'hc0ca;
    ORCALUT4 i5987_2_lut (.A(\bitidx[1] ), .B(bitidx[0]), .Z(n70[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i5987_2_lut.init = 16'h6666;
    FD1P3DX sr_i0_i0 (.D(uart_rx_c), .SP(clk_op_enable_301), .CK(clk_op), 
            .CD(n39879), .Q(sr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i0.GSR = "ENABLED";
    ORCALUT4 i14303_4_lut (.A(k[11]), .B(n53[11]), .C(rx_state), .D(n39844), 
            .Z(n17798)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14303_4_lut.init = 16'hc0ca;
    ORCALUT4 i25021_4_lut (.A(n39844), .B(n53[10]), .C(rx_state), .D(k_c[10]), 
            .Z(n17796)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i25021_4_lut.init = 16'hc5c0;
    ORCALUT4 i25013_4_lut (.A(n39844), .B(n53[9]), .C(rx_state), .D(k_c[9]), 
            .Z(n17794)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i25013_4_lut.init = 16'hc5c0;
    ORCALUT4 i14297_4_lut (.A(n39844), .B(n53[8]), .C(rx_state), .D(k_c[8]), 
            .Z(n17792)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14297_4_lut.init = 16'hc5c0;
    ORCALUT4 i25019_4_lut (.A(n39844), .B(n53[7]), .C(rx_state), .D(k_c[7]), 
            .Z(n17790)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i25019_4_lut.init = 16'hc5c0;
    FD1P3DX sr_i0_i1 (.D(uart_rx_c), .SP(clk_op_enable_302), .CK(clk_op), 
            .CD(n39879), .Q(sr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i1.GSR = "ENABLED";
    ORCALUT4 i25017_4_lut (.A(n39844), .B(n53[6]), .C(rx_state), .D(k_c[6]), 
            .Z(n17788)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i25017_4_lut.init = 16'hc5c0;
    FD1P3DX sr_i0_i2 (.D(uart_rx_c), .SP(clk_op_enable_303), .CK(clk_op), 
            .CD(n39879), .Q(sr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i2.GSR = "ENABLED";
    ORCALUT4 i25015_4_lut (.A(n39844), .B(n53[5]), .C(rx_state), .D(k_c[5]), 
            .Z(n17784)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i25015_4_lut.init = 16'hc5c0;
    ORCALUT4 i14283_4_lut (.A(k_c[4]), .B(n53[4]), .C(rx_state), .D(n39844), 
            .Z(n17778)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14283_4_lut.init = 16'hc0ca;
    ORCALUT4 i14281_4_lut (.A(k_c[3]), .B(n53[3]), .C(rx_state), .D(n39844), 
            .Z(n17776)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14281_4_lut.init = 16'hc0ca;
    ORCALUT4 i14269_4_lut (.A(k_c[2]), .B(n53[2]), .C(rx_state), .D(n39844), 
            .Z(n17764)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14269_4_lut.init = 16'hc0ca;
    ORCALUT4 i14267_4_lut (.A(k_c[1]), .B(n53[1]), .C(rx_state), .D(n39844), 
            .Z(n17762)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i14267_4_lut.init = 16'hc0ca;
    FD1P3DX sr_i0_i3 (.D(uart_rx_c), .SP(clk_op_enable_305), .CK(clk_op), 
            .CD(n39879), .Q(sr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i3.GSR = "ENABLED";
    ORCALUT4 i527_2_lut_rep_421_3_lut (.A(\bitidx[3] ), .B(rx_state_N_218), 
            .C(rx_state_N_251), .Z(n37524)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam i527_2_lut_rep_421_3_lut.init = 16'h0404;
    ORCALUT4 i32185_3_lut_4_lut (.A(n37521), .B(bitidx[2]), .C(bitidx[0]), 
            .D(\bitidx[1] ), .Z(clk_op_enable_310)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i32185_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i1_2_lut (.A(bitidx[0]), .B(\bitidx[1] ), .Z(n32794)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i1_2_lut.init = 16'hbbbb;
    ORCALUT4 i32189_2_lut_3_lut_4_lut (.A(n37524), .B(rx_state), .C(n37848), 
            .D(bitidx[2]), .Z(clk_op_enable_306)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i32189_2_lut_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i32181_2_lut_3_lut_4_lut (.A(n37524), .B(rx_state), .C(n32794), 
            .D(bitidx[2]), .Z(clk_op_enable_312)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i32181_2_lut_3_lut_4_lut.init = 16'h0800;
    FD1P3DX sr_i0_i4 (.D(uart_rx_c), .SP(clk_op_enable_306), .CK(clk_op), 
            .CD(n39879), .Q(sr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i4.GSR = "ENABLED";
    FD1P3DX sr_i0_i5 (.D(uart_rx_c), .SP(clk_op_enable_310), .CK(clk_op), 
            .CD(n39879), .Q(sr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i5.GSR = "ENABLED";
    ORCALUT4 i32079_2_lut_3_lut_4_lut (.A(n37524), .B(rx_state), .C(n37848), 
            .D(bitidx[2]), .Z(clk_op_enable_301)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i32079_2_lut_3_lut_4_lut.init = 16'h0008;
    ORCALUT4 i32194_2_lut_3_lut_4_lut (.A(n37524), .B(rx_state), .C(n32794), 
            .D(bitidx[2]), .Z(clk_op_enable_303)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(35[12] 53[10])
    defparam i32194_2_lut_3_lut_4_lut.init = 16'h0008;
    ORCALUT4 i32337_3_lut_4_lut (.A(rx_state), .B(n39844), .C(bitidx[2]), 
            .D(n37831), .Z(n7_adj_1740)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B+(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i32337_3_lut_4_lut.init = 16'h0bb0;
    ORCALUT4 i32335_3_lut_4_lut (.A(rx_state), .B(n39844), .C(\bitidx[1] ), 
            .D(bitidx[0]), .Z(n7)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B+(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i32335_3_lut_4_lut.init = 16'h0bb0;
    ORCALUT4 bitidx_0__bdd_4_lut (.A(bitidx[0]), .B(n39844), .C(n37524), 
            .D(rx_state), .Z(n36950)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(C (D)))) */ ;
    defparam bitidx_0__bdd_4_lut.init = 16'h5a22;
    FD1P3DX sr_i0_i6 (.D(uart_rx_c), .SP(clk_op_enable_312), .CK(clk_op), 
            .CD(n39879), .Q(sr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i6.GSR = "ENABLED";
    FD1P3DX sr_i0_i7 (.D(n34387), .SP(bitidx[0]), .CK(clk_op), .CD(n39879), 
            .Q(\sr[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=100, LSE_RLINE=101 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i7.GSR = "ENABLED";
    ORCALUT4 i18818_2_lut_rep_415_3_lut_4_lut (.A(n37526), .B(rx_state_N_251), 
            .C(bitidx[2]), .D(rx_state), .Z(n37518)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[14] 52[12])
    defparam i18818_2_lut_rep_415_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i4835_3_lut_rep_419_4_lut (.A(n37526), .B(rx_state_N_251), 
            .C(rx_state), .D(n39844), .Z(clk_op_enable_185)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[14] 52[12])
    defparam i4835_3_lut_rep_419_4_lut.init = 16'h2f20;
    ORCALUT4 rx_state_I_11_2_lut_rep_423 (.A(\bitidx[3] ), .B(rx_state_N_218), 
            .Z(n37526)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam rx_state_I_11_2_lut_rep_423.init = 16'h4444;
    ORCALUT4 i41_else_2_lut (.A(n37850), .B(n32691), .C(\bitidx[3] ), 
            .D(uart_rx_c), .Z(n37906)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i41_else_2_lut.init = 16'h0400;
    ORCALUT4 i538_2_lut_rep_418_3_lut_4_lut (.A(\bitidx[3] ), .B(rx_state_N_218), 
            .C(rx_state), .D(rx_state_N_251), .Z(n37521)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam i538_2_lut_rep_418_3_lut_4_lut.init = 16'h0040;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module boot_rom
//

module boot_rom (n16763, sram_addr_0_0, n37542, sram_addr_0_6, sram_addr_0_10, 
            n37649, sram_addr_0_7, n37599, sram_addr_0_2, n22415, 
            n32735, sram_data_out_3, sram_go_N_77, n36280, sram_data_out_5, 
            n36300, n37645, n37852, led_reg_7__N_56, n37847, io_rdata_7__N_54, 
            n37800, n37559, sram_addr_0_1, sram_addr_0_8, sram_addr_0_11, 
            sram_addr_0_9, n37851, n13, n34074, n35174) /* synthesis syn_module_defined=1 */ ;
    output n16763;
    input sram_addr_0_0;
    output n37542;
    input sram_addr_0_6;
    input sram_addr_0_10;
    output n37649;
    input sram_addr_0_7;
    input n37599;
    input sram_addr_0_2;
    output n22415;
    output n32735;
    input sram_data_out_3;
    input sram_go_N_77;
    output n36280;
    input sram_data_out_5;
    output n36300;
    input n37645;
    input n37852;
    output led_reg_7__N_56;
    input n37847;
    output io_rdata_7__N_54;
    input n37800;
    output n37559;
    input sram_addr_0_1;
    input sram_addr_0_8;
    input sram_addr_0_11;
    input sram_addr_0_9;
    input n37851;
    output n13;
    output n34074;
    output n35174;
    
    
    wire n10, n7;
    
    ORCALUT4 i29523_2_lut_rep_439 (.A(n16763), .B(sram_addr_0_0), .Z(n37542)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i29523_2_lut_rep_439.init = 16'heeee;
    ORCALUT4 i5_3_lut_rep_546 (.A(sram_addr_0_6), .B(n10), .C(sram_addr_0_10), 
            .Z(n37649)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(11[9:17])
    defparam i5_3_lut_rep_546.init = 16'hfefe;
    ORCALUT4 i2_2_lut_4_lut (.A(sram_addr_0_6), .B(n10), .C(sram_addr_0_10), 
            .D(sram_addr_0_7), .Z(n7)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(11[9:17])
    defparam i2_2_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i18959_3_lut_4_lut_4_lut (.A(sram_addr_0_0), .B(n37599), .C(sram_addr_0_2), 
            .D(n16763), .Z(n22415)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(12[9:17])
    defparam i18959_3_lut_4_lut_4_lut.init = 16'hbfaa;
    ORCALUT4 i1_2_lut_3_lut (.A(sram_addr_0_0), .B(n37599), .C(sram_addr_0_2), 
            .Z(n32735)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(12[9:17])
    defparam i1_2_lut_3_lut.init = 16'hfbfb;
    ORCALUT4 n22669_bdd_3_lut_32563_4_lut (.A(sram_addr_0_2), .B(n37599), 
            .C(sram_data_out_3), .D(sram_go_N_77), .Z(n36280)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n22669_bdd_3_lut_32563_4_lut.init = 16'h44f0;
    ORCALUT4 n22669_bdd_3_lut_4_lut (.A(sram_addr_0_2), .B(n37599), .C(sram_data_out_5), 
            .D(sram_go_N_77), .Z(n36300)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n22669_bdd_3_lut_4_lut.init = 16'h44f0;
    ORCALUT4 i32322_2_lut_4_lut (.A(sram_addr_0_0), .B(n37645), .C(sram_addr_0_6), 
            .D(n37852), .Z(led_reg_7__N_56)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(12[9:17])
    defparam i32322_2_lut_4_lut.init = 16'h0040;
    ORCALUT4 i32057_2_lut_4_lut (.A(sram_addr_0_0), .B(n37645), .C(sram_addr_0_6), 
            .D(n37847), .Z(io_rdata_7__N_54)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(12[9:17])
    defparam i32057_2_lut_4_lut.init = 16'h4000;
    ORCALUT4 i19687_2_lut_rep_456_4_lut (.A(sram_go_N_77), .B(n37800), .C(n37649), 
            .D(sram_addr_0_2), .Z(n37559)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i19687_2_lut_rep_456_4_lut.init = 16'hfffd;
    ORCALUT4 i4_4_lut (.A(n7), .B(sram_addr_0_2), .C(sram_addr_0_1), .D(sram_go_N_77), 
            .Z(n16763)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(11[9:17])
    defparam i4_4_lut.init = 16'hefff;
    ORCALUT4 i4_4_lut_adj_173 (.A(sram_addr_0_8), .B(sram_addr_0_11), .C(sram_addr_0_9), 
            .D(n37851), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(11[9:17])
    defparam i4_4_lut_adj_173.init = 16'hfffe;
    ORCALUT4 i1_3_lut (.A(n37599), .B(sram_addr_0_0), .C(sram_addr_0_2), 
            .Z(n13)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2828;
    ORCALUT4 i2_3_lut (.A(n37599), .B(sram_addr_0_2), .C(sram_addr_0_0), 
            .Z(n34074)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    ORCALUT4 i32046_2_lut (.A(sram_addr_0_0), .B(sram_addr_0_2), .Z(n35174)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i32046_2_lut.init = 16'h9999;
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (uart_tx_busy, clk_op, n39882, VCC_net, n27499, n32730, 
            wr_n, iorq_n, uart_tx_c, n39880, clk_op_enable_284, n605, 
            n37639, clk_op_enable_311, n18125, n39877, n18123, n18121, 
            n18119, n18117, n18115, n18113, n37585, n18111, cpu_dout, 
            n37554, n18109, n18107, rst_s, n18105, n18103, n18101, 
            n18099, n39879, n18097, clk_op_enable_307, n17980) /* synthesis syn_module_defined=1 */ ;
    output uart_tx_busy;
    input clk_op;
    input n39882;
    input VCC_net;
    output n27499;
    input n32730;
    input wr_n;
    input iorq_n;
    output uart_tx_c;
    input n39880;
    input clk_op_enable_284;
    output [15:0]n605;
    output n37639;
    input clk_op_enable_311;
    input n18125;
    input n39877;
    input n18123;
    input n18121;
    input n18119;
    input n18117;
    input n18115;
    input n18113;
    input n37585;
    input n18111;
    input [7:0]cpu_dout;
    input n37554;
    input n18109;
    input n18107;
    input rst_s;
    input n18105;
    input n18103;
    input n18101;
    input n18099;
    input n39879;
    input n18097;
    input clk_op_enable_307;
    input n17980;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire tx_busy_N_127, n29786;
    wire [8:0]k;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(14[14:15])
    
    wire GND_net;
    wire [8:0]n52;
    
    wire n29785, n29784, n29783, n16247, n37917, n37916;
    wire [7:0]sr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(16[14:16])
    
    wire n17844, clk_op_enable_181, n18012, n33811, n40_adj_1739, 
        n18139, n18137, n18135, n18133, n18131, n18129, n18127, 
        n12, n15, n14, n18095, n18093, n18091, n18089, n17969, 
        n18087, n18085, n17965;
    
    FD1S3DX tx_busy_34 (.D(tx_busy_N_127), .CK(clk_op), .CD(n39882), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam tx_busy_34.GSR = "ENABLED";
    CCU2B add_48_add_4_9 (.A0(k[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29786), 
          .S0(n52[7]), .S1(n52[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_9.INIT0 = 16'haaaa;
    defparam add_48_add_4_9.INIT1 = 16'haaaa;
    defparam add_48_add_4_9.INJECT1_0 = "NO";
    defparam add_48_add_4_9.INJECT1_1 = "NO";
    CCU2B add_48_add_4_7 (.A0(k[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29785), 
          .COUT(n29786), .S0(n52[5]), .S1(n52[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_7.INIT0 = 16'haaaa;
    defparam add_48_add_4_7.INIT1 = 16'haaaa;
    defparam add_48_add_4_7.INJECT1_0 = "NO";
    defparam add_48_add_4_7.INJECT1_1 = "NO";
    CCU2B add_48_add_4_5 (.A0(k[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29784), 
          .COUT(n29785), .S0(n52[3]), .S1(n52[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_5.INIT0 = 16'haaaa;
    defparam add_48_add_4_5.INIT1 = 16'haaaa;
    defparam add_48_add_4_5.INJECT1_0 = "NO";
    defparam add_48_add_4_5.INJECT1_1 = "NO";
    CCU2B add_48_add_4_3 (.A0(k[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n29783), 
          .COUT(n29784), .S0(n52[1]), .S1(n52[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_3.INIT0 = 16'haaaa;
    defparam add_48_add_4_3.INIT1 = 16'haaaa;
    defparam add_48_add_4_3.INJECT1_0 = "NO";
    defparam add_48_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i32155_4_lut_then_2_lut (.A(n16247), .B(n27499), .Z(n37917)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i32155_4_lut_then_2_lut.init = 16'h1111;
    ORCALUT4 i32155_4_lut_else_2_lut (.A(n32730), .B(wr_n), .C(iorq_n), 
            .Z(n37916)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i32155_4_lut_else_2_lut.init = 16'h0101;
    FD1S3DX sr_i7 (.D(n17844), .CK(clk_op), .CD(n39882), .Q(sr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i7.GSR = "ENABLED";
    FD1P3BX txd_36 (.D(n18012), .SP(clk_op_enable_181), .CK(clk_op), .PD(n39880), 
            .Q(uart_tx_c)) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam txd_36.GSR = "ENABLED";
    FD1P3DX k__i1 (.D(n33811), .SP(clk_op_enable_284), .CK(clk_op), .CD(n39880), 
            .Q(k[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i1.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_rep_536 (.A(n27499), .B(n605[8]), .C(n16247), .Z(n37639)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_536.init = 16'hfefe;
    ORCALUT4 i1_2_lut_4_lut (.A(n27499), .B(n605[8]), .C(n16247), .D(uart_tx_busy), 
            .Z(n40_adj_1739)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfeff;
    FD1P3DX k__i2 (.D(n18139), .SP(clk_op_enable_284), .CK(clk_op), .CD(n39882), 
            .Q(k[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i2.GSR = "ENABLED";
    FD1P3DX k__i3 (.D(n18137), .SP(clk_op_enable_284), .CK(clk_op), .CD(n39880), 
            .Q(k[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i3.GSR = "ENABLED";
    FD1P3DX k__i4 (.D(n18135), .SP(clk_op_enable_284), .CK(clk_op), .CD(n39880), 
            .Q(k[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i4.GSR = "ENABLED";
    FD1P3DX k__i5 (.D(n18133), .SP(clk_op_enable_284), .CK(clk_op), .CD(n39880), 
            .Q(k[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i5.GSR = "ENABLED";
    FD1P3DX k__i6 (.D(n18131), .SP(clk_op_enable_284), .CK(clk_op), .CD(n39880), 
            .Q(k[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i6.GSR = "ENABLED";
    FD1P3DX k__i7 (.D(n18129), .SP(clk_op_enable_284), .CK(clk_op), .CD(n39880), 
            .Q(k[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i7.GSR = "ENABLED";
    FD1P3DX k__i8 (.D(n18127), .SP(clk_op_enable_284), .CK(clk_op), .CD(n39880), 
            .Q(k[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i8.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i1 (.D(n18125), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39882), .Q(n605[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i1.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i2 (.D(n18123), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39877), .Q(n605[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i2.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i3 (.D(n18121), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39882), .Q(n605[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i3.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i4 (.D(n18119), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39882), .Q(n605[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i4.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i5 (.D(n18117), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39877), .Q(n605[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i5.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i6 (.D(n18115), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39877), .Q(n605[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i6.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i7 (.D(n18113), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39877), .Q(n605[7]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i7.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(uart_tx_busy), .B(n37585), .C(n52[2]), 
            .D(n27499), .Z(n18139)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i18725_4_lut_4_lut (.A(uart_tx_busy), .B(n37585), .C(n27499), 
            .D(n16247), .Z(tx_busy_N_127)) /* synthesis lut_function=(A (C+!(D))+!A !(B)) */ ;
    defparam i18725_4_lut_4_lut.init = 16'hb1bb;
    ORCALUT4 i1_3_lut_4_lut (.A(uart_tx_busy), .B(n37585), .C(n605[8]), 
            .D(sr[0]), .Z(n18012)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i2_3_lut_4_lut (.A(uart_tx_busy), .B(n37585), .C(n27499), 
            .D(n52[1]), .Z(n33811)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'he000;
    FD1P3DX bitcnt_FSM_i8 (.D(n18111), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39880), .Q(n605[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i8.GSR = "ENABLED";
    ORCALUT4 i24091_4_lut (.A(cpu_dout[7]), .B(n40_adj_1739), .C(n37554), 
            .D(sr[7]), .Z(n17844)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i24091_4_lut.init = 16'hca0a;
    ORCALUT4 i6_4_lut (.A(n605[9]), .B(n12), .C(n605[11]), .D(n605[12]), 
            .Z(n16247)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(25[10] 35[8])
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 i5_4_lut (.A(n605[14]), .B(n605[10]), .C(n605[13]), .D(n605[15]), 
            .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(25[10] 35[8])
    defparam i5_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_165 (.A(uart_tx_busy), .B(n37585), 
            .C(n52[4]), .D(n27499), .Z(n18135)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_165.init = 16'he000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_166 (.A(uart_tx_busy), .B(n37585), 
            .C(n52[3]), .D(n27499), .Z(n18137)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_166.init = 16'he000;
    ORCALUT4 i8_4_lut (.A(n15), .B(k[4]), .C(n14), .D(k[6]), .Z(n27499)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i8_4_lut.init = 16'hfbff;
    ORCALUT4 i6_4_lut_adj_167 (.A(k[0]), .B(k[2]), .C(k[3]), .D(k[1]), 
            .Z(n15)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i6_4_lut_adj_167.init = 16'hffef;
    ORCALUT4 i5_3_lut (.A(k[7]), .B(k[5]), .C(k[8]), .Z(n14)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i5_3_lut.init = 16'hfdfd;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_168 (.A(uart_tx_busy), .B(n37585), 
            .C(n52[5]), .D(n27499), .Z(n18133)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_168.init = 16'he000;
    ORCALUT4 i14597_3_lut_4_lut (.A(uart_tx_busy), .B(n37585), .C(cpu_dout[1]), 
            .D(sr[2]), .Z(n18095)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i14597_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_169 (.A(uart_tx_busy), .B(n37585), 
            .C(n52[6]), .D(n27499), .Z(n18131)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_169.init = 16'he000;
    FD1P3DX bitcnt_FSM_i9 (.D(n18109), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39880), .Q(n605[9]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i9.GSR = "ENABLED";
    ORCALUT4 i14595_3_lut_4_lut (.A(uart_tx_busy), .B(n37585), .C(cpu_dout[2]), 
            .D(sr[3]), .Z(n18093)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i14595_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_170 (.A(uart_tx_busy), .B(n37585), 
            .C(n52[7]), .D(n27499), .Z(n18129)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_170.init = 16'he000;
    ORCALUT4 i14593_3_lut_4_lut (.A(uart_tx_busy), .B(n37585), .C(cpu_dout[3]), 
            .D(sr[4]), .Z(n18091)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i14593_3_lut_4_lut.init = 16'hfe10;
    FD1P3DX bitcnt_FSM_i10 (.D(n18107), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39880), .Q(n605[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i10.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_171 (.A(uart_tx_busy), .B(n37585), 
            .C(n52[8]), .D(n27499), .Z(n18127)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_171.init = 16'he000;
    FD1P3DX bitcnt_FSM_i11 (.D(n18105), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(rst_s), .Q(n605[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i11.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i12 (.D(n18103), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39882), .Q(n605[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i12.GSR = "ENABLED";
    ORCALUT4 i14591_3_lut_4_lut (.A(uart_tx_busy), .B(n37585), .C(cpu_dout[4]), 
            .D(sr[5]), .Z(n18089)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i14591_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_172 (.A(uart_tx_busy), .B(n37585), 
            .C(n52[0]), .D(n27499), .Z(n17969)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_172.init = 16'he000;
    FD1P3DX bitcnt_FSM_i13 (.D(n18101), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(rst_s), .Q(n605[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i13.GSR = "ENABLED";
    ORCALUT4 i14589_3_lut_4_lut (.A(uart_tx_busy), .B(n37585), .C(cpu_dout[5]), 
            .D(sr[6]), .Z(n18087)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i14589_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 i24109_3_lut_4_lut (.A(uart_tx_busy), .B(n37585), .C(sr[7]), 
            .D(cpu_dout[6]), .Z(n18085)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i24109_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i14467_3_lut_4_lut (.A(uart_tx_busy), .B(n37585), .C(cpu_dout[0]), 
            .D(sr[1]), .Z(n17965)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i14467_3_lut_4_lut.init = 16'hfe10;
    FD1P3DX bitcnt_FSM_i14 (.D(n18099), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(rst_s), .Q(n605[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i14.GSR = "ENABLED";
    FD1P3DX k__i0 (.D(n17969), .SP(clk_op_enable_284), .CK(clk_op), .CD(n39879), 
            .Q(k[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i0.GSR = "ENABLED";
    FD1P3DX bitcnt_FSM_i15 (.D(n18097), .SP(clk_op_enable_311), .CK(clk_op), 
            .CD(n39879), .Q(n605[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i15.GSR = "ENABLED";
    FD1P3DX sr_i1 (.D(n18095), .SP(clk_op_enable_307), .CK(clk_op), .CD(n39882), 
            .Q(sr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i1.GSR = "ENABLED";
    CCU2B add_48_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(k[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n29783), 
          .S1(n52[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_1.INIT0 = 16'h0000;
    defparam add_48_add_4_1.INIT1 = 16'h555a;
    defparam add_48_add_4_1.INJECT1_0 = "NO";
    defparam add_48_add_4_1.INJECT1_1 = "NO";
    FD1P3DX sr_i2 (.D(n18093), .SP(clk_op_enable_307), .CK(clk_op), .CD(n39882), 
            .Q(sr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i2.GSR = "ENABLED";
    FD1P3DX sr_i3 (.D(n18091), .SP(clk_op_enable_307), .CK(clk_op), .CD(n39882), 
            .Q(sr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i3.GSR = "ENABLED";
    FD1P3DX sr_i4 (.D(n18089), .SP(clk_op_enable_307), .CK(clk_op), .CD(n39882), 
            .Q(sr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i4.GSR = "ENABLED";
    FD1P3DX sr_i5 (.D(n18087), .SP(clk_op_enable_307), .CK(clk_op), .CD(n39882), 
            .Q(sr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i5.GSR = "ENABLED";
    FD1P3DX sr_i6 (.D(n18085), .SP(clk_op_enable_307), .CK(clk_op), .CD(n39882), 
            .Q(sr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i6.GSR = "ENABLED";
    FD1P3DX sr_i0 (.D(n17965), .SP(clk_op_enable_307), .CK(clk_op), .CD(n39882), 
            .Q(sr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=12, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=98, LSE_RLINE=99 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i0.GSR = "ENABLED";
    FD1P3BX bitcnt_FSM_i0 (.D(n17980), .SP(clk_op_enable_311), .CK(clk_op), 
            .PD(n39882), .Q(n605[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam bitcnt_FSM_i0.GSR = "ENABLED";
    PFUMX i33291 (.BLUT(n37916), .ALUT(n37917), .C0(uart_tx_busy), .Z(clk_op_enable_181));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 5.7 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -arch mg5a00 -n pmi_pll0o500X125252550d29c740 -bb -bus_exp 7 -type pll -fin 50 -fclkop 25 -fclkok 12.500000 -fb_mode CLKOP -phaseadj 0 -duty 8.00000 -pmi -lang verilog  */
/* Sun Nov 15 21:03:40 2026 */


`timescale 1 ns / 1 ps
module pmi_pll0o500X125252550d29c740 (CLKI, RESET, CLKFB, CLKOP, CLKOS, 
    CLKOK, CLKOK2, LOCK)/* synthesis NGD_DRC_MASK=1 */;
    input wire CLKI;
    input wire RESET;
    input wire CLKFB;
    output wire CLKOP;
    output wire CLKOS;
    output wire CLKOK;
    output wire CLKOK2;
    output wire LOCK;

    wire CLKOP_t;
    wire scuba_vlo;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    // synopsys translate_off
    defparam PLLInst_0.CLKOK_BYPASS = "DISABLED" ;
    defparam PLLInst_0.CLKOS_BYPASS = "DISABLED" ;
    defparam PLLInst_0.CLKOP_BYPASS = "DISABLED" ;
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0 ;
    defparam PLLInst_0.CLKOS_TRIM_POL = "RISING" ;
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0 ;
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING" ;
    defparam PLLInst_0.PHASE_CNTL = "STATIC" ;
    defparam PLLInst_0.DUTY = 8 ;
    defparam PLLInst_0.PHASEADJ = "0.0" ;
    defparam PLLInst_0.CLKOK_DIV = 2 ;
    defparam PLLInst_0.CLKOP_DIV = 32 ;
    defparam PLLInst_0.CLKFB_DIV = 1 ;
    defparam PLLInst_0.CLKI_DIV = 2 ;
    // synopsys translate_on
    EHXPLLE1 PLLInst_0 (.CLKI(CLKI), .CLKFB(CLKOP_t), .RST(RESET), .RSTK(scuba_vlo), 
        .WRDEL(scuba_vlo), .DRPAI3(scuba_vlo), .DRPAI2(scuba_vlo), .DRPAI1(scuba_vlo), 
        .DRPAI0(scuba_vlo), .DFPAI3(scuba_vlo), .DFPAI2(scuba_vlo), .DFPAI1(scuba_vlo), 
        .DFPAI0(scuba_vlo), .PWD(scuba_vlo), .CLKOP(CLKOP_t), .CLKOS(CLKOS), 
        .CLKOK(CLKOK), .CLKOK2(CLKOK2), .LOCK(LOCK), .CLKINTFB())
             /* synthesis CLKOK_BYPASS="DISABLED" */
             /* synthesis CLKOS_BYPASS="DISABLED" */
             /* synthesis FREQUENCY_PIN_CLKOK2="8.333333" */
             /* synthesis FREQUENCY_PIN_CLKOP="25.000000" */
             /* synthesis CLKOP_BYPASS="DISABLED" */
             /* synthesis CLKOS_TRIM_DELAY="0" */
             /* synthesis CLKOS_TRIM_POL="RISING" */
             /* synthesis CLKOP_TRIM_DELAY="0" */
             /* synthesis CLKOP_TRIM_POL="FALLING" */
             /* synthesis PHASE_CNTL="STATIC" */
             /* synthesis DUTY="8" */
             /* synthesis PHASEADJ="0.0" */
             /* synthesis FREQUENCY_PIN_CLKOS="25.000000" */
             /* synthesis FREQUENCY_PIN_CLKI="50.000000" */
             /* synthesis FREQUENCY_PIN_CLKOK="12.500000" */
             /* synthesis CLKOK_DIV="2" */
             /* synthesis CLKOP_DIV="32" */
             /* synthesis CLKFB_DIV="1" */
             /* synthesis CLKI_DIV="2" */
             /* synthesis FIN="50.000000" */;

    assign CLKOP = CLKOP_t;


    // exemplar begin
    // exemplar attribute PLLInst_0 CLKOK_BYPASS DISABLED
    // exemplar attribute PLLInst_0 CLKOS_BYPASS DISABLED
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOK2 8.333333
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOP 25.000000
    // exemplar attribute PLLInst_0 CLKOP_BYPASS DISABLED
    // exemplar attribute PLLInst_0 CLKOS_TRIM_DELAY 0
    // exemplar attribute PLLInst_0 CLKOS_TRIM_POL RISING
    // exemplar attribute PLLInst_0 CLKOP_TRIM_DELAY 0
    // exemplar attribute PLLInst_0 CLKOP_TRIM_POL FALLING
    // exemplar attribute PLLInst_0 PHASE_CNTL STATIC
    // exemplar attribute PLLInst_0 DUTY 8
    // exemplar attribute PLLInst_0 PHASEADJ 0.0
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOS 25.000000
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKI 50.000000
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOK 12.500000
    // exemplar attribute PLLInst_0 CLKOK_DIV 2
    // exemplar attribute PLLInst_0 CLKOP_DIV 32
    // exemplar attribute PLLInst_0 CLKFB_DIV 1
    // exemplar attribute PLLInst_0 CLKI_DIV 2
    // exemplar attribute PLLInst_0 FIN 50.000000
    // exemplar end

endmodule
