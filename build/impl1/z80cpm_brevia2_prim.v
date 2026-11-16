// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Nov 15 22:33:23 2026
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
    wire clk_N_320 /* synthesis is_inv_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(25[17:23])
    
    wire VCC_net, clk_in_c, rst_n_c, led_c_7, led_c_6, led_c_5, 
        led_c_4, led_c_3, led_c_2, led_c_1, led_c_0, sw_c_7, sw_c_6, 
        sw_c_5, sw_c_4, sw_c_3, sw_c_2, sw_c_1, sw_c_0, uart_rx_c, 
        uart_tx_c, sram_addr_0_15, sram_addr_0_14, sram_addr_0_13, sram_addr_0_12, 
        sram_addr_0_11, sram_addr_0_10, sram_addr_0_9, sram_addr_0_8, 
        sram_addr_0_7, sram_addr_0_6, sram_addr_0_5, sram_addr_0_4, 
        sram_addr_0_3, sram_addr_0_2, sram_addr_0_1, sram_addr_0_0, 
        sram_cen_c, sram_oen_c, sram_wen_c, rst_n_N_77, rst_n_sync1, 
        rst_n_sync2;
    wire [3:0]rst_cnt;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(65[13:20])
    
    wire iorq_n, wr_n;
    wire [7:0]cpu_dout;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(93[15:23])
    wire [7:0]bus_din;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(94[15:22])
    
    wire mem_rd;
    wire [7:0]led_reg;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(117[13:20])
    wire [7:0]uart_rx_data;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(126[15:27])
    
    wire uart_rx_avail, uart_tx_busy;
    wire [7:0]io_rdata;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(133[13:21])
    
    wire rst_cnt_3__N_31, n24, sram_go_N_88, led_reg_7__N_68, clk_op_enable_161;
    wire [7:0]io_rdata_7__N_54;
    
    wire n106, n107, n108, n109, n110, n111, n112, n113, rx_avail_N_294, 
        n7;
    wire [6:0]mcycle;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(51[17:23])
    wire [6:0]tstate;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    
    wire nxt_mreq_n_N_333;
    wire [7:0]BusA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(153[17:21])
    
    wire n33438, n33437, n33435, n10605, n33329, n33328, n33327, 
        n9385, n2545, n9, n10, n11, n30740, n23, n123, n2, 
        n3, n30741, n124, n30749, n125, n126, n178;
    wire [8:0]Q_7__N_1746;
    
    wire n251;
    wire [8:0]Q_7__N_1737;
    
    wire n127, n31012, n29060, n128, n129, n23175, n130, n3347, 
        n122, clk_op_enable_163, n121, n6, n23173, n120, n17, 
        n2596, n119, n118, clk_op_enable_153, n117, n1698, n9435, 
        n943, n951, n952, n1172, n25, n8, n2_adj_2164, n4, n25_adj_2165, 
        n4_adj_2166, n116, n115, n18, n20, n15, n22, n17_adj_2167, 
        n13, n23_adj_2168, n3_adj_2169, n14, n4_adj_2170, n5, n21, 
        n12, n114, n24_adj_2171, n16, n19, n6_adj_2172, n28379, 
        n3168, n30750, n3194, n31309, n31298, n23184, n16360, 
        n31295, n23183, n31280, n26091, n25751, n23182, n23181, 
        n23180, n26876, n30989, sram_data_out_7, n23179, n23178, 
        n23177, n23176, n31138, n31133, sram_data_out_6, sram_data_out_5, 
        sram_data_out_4, sram_data_out_3, sram_data_out_2, sram_data_out_1, 
        sram_data_out_0, n23174, n28586, n26750, n33941, n31077, 
        n31057, GND_net, n6_adj_2173, n26604, n31045, n31044, n31030, 
        clk_op_enable_275;
    
    VHI i2 (.Z(VCC_net));
    INV i30022 (.A(clk_op), .Z(clk_N_320));
    FD1S3DX rst_n_sync1_59 (.D(n33941), .CK(clk_op), .CD(rst_n_N_77), 
            .Q(rst_n_sync1)) /* synthesis lse_init_val=0 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(69[18:38])
    defparam rst_n_sync1_59.GSR = "ENABLED";
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
    BB sram_data_pad_6 (.I(cpu_dout[6]), .T(sram_wen_c), .B(sram_data[6]), 
       .O(sram_data_out_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    CCU2B hb_174_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n25), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n23173), 
          .S1(n130));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_1.INIT0 = 16'h0000;
    defparam hb_174_add_4_1.INIT1 = 16'h555f;
    defparam hb_174_add_4_1.INJECT1_0 = "NO";
    defparam hb_174_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 rst_cnt_3__I_0_66_1_lut (.A(rst_cnt[3]), .Z(rst_cnt_3__N_31)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(84[29:40])
    defparam rst_cnt_3__I_0_66_1_lut.init = 16'h5555;
    FD1P3DX led_reg__i1 (.D(cpu_dout[0]), .SP(led_reg_7__N_68), .CK(clk_op), 
            .CD(n31309), .Q(led_reg[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(120[10:62])
    defparam led_reg__i1.GSR = "ENABLED";
    ORCALUT4 i21528_1_lut (.A(n4), .Z(n25_adj_2165)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(79[38:52])
    defparam i21528_1_lut.init = 16'h5555;
    ORCALUT4 i21530_2_lut (.A(n3), .B(n4), .Z(n24)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(79[38:52])
    defparam i21530_2_lut.init = 16'h6666;
    BB sram_data_pad_7 (.I(cpu_dout[7]), .T(sram_wen_c), .B(sram_data[7]), 
       .O(sram_data_out_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    ORCALUT4 io_rdata_7__I_0_67_i1_3_lut_4_lut (.A(n31280), .B(n26091), 
            .C(sw_c_0), .D(io_rdata_7__N_54[0]), .Z(io_rdata[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam io_rdata_7__I_0_67_i1_3_lut_4_lut.init = 16'hfe10;
    ORCALUT4 io_rdata_7__I_0_67_i2_3_lut_4_lut (.A(n31280), .B(n26091), 
            .C(sw_c_1), .D(io_rdata_7__N_54[1]), .Z(io_rdata[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam io_rdata_7__I_0_67_i2_3_lut_4_lut.init = 16'hfe10;
    FD1S3AX hb_174__i0 (.D(n130), .CK(clk_op), .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i0.GSR = "ENABLED";
    FD1P3DX rst_cnt_173__i0 (.D(n25_adj_2165), .SP(rst_cnt_3__N_31), .CK(clk_op), 
            .CD(rst_n_N_77), .Q(n4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(79[38:52])
    defparam rst_cnt_173__i0.GSR = "ENABLED";
    FD1P3DX rst_cnt_173__i3 (.D(n33941), .SP(clk_op_enable_161), .CK(clk_op), 
            .CD(rst_n_N_77), .Q(rst_cnt[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(79[38:52])
    defparam rst_cnt_173__i3.GSR = "ENABLED";
    FD1P3DX rst_cnt_173__i2 (.D(n23), .SP(rst_cnt_3__N_31), .CK(clk_op), 
            .CD(rst_n_N_77), .Q(n2_adj_2164));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(79[38:52])
    defparam rst_cnt_173__i2.GSR = "ENABLED";
    FD1P3DX rst_cnt_173__i1 (.D(n24), .SP(rst_cnt_3__N_31), .CK(clk_op), 
            .CD(rst_n_N_77), .Q(n3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(79[38:52])
    defparam rst_cnt_173__i1.GSR = "ENABLED";
    FD1S3AX hb_174__i24 (.D(n106), .CK(clk_op), .Q(led_c_7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i24.GSR = "ENABLED";
    FD1S3AX hb_174__i23 (.D(n107), .CK(clk_op), .Q(n2)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i23.GSR = "ENABLED";
    FD1S3AX hb_174__i22 (.D(n108), .CK(clk_op), .Q(n3_adj_2169)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i22.GSR = "ENABLED";
    FD1S3AX hb_174__i21 (.D(n109), .CK(clk_op), .Q(n4_adj_2170)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i21.GSR = "ENABLED";
    FD1S3AX hb_174__i20 (.D(n110), .CK(clk_op), .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i20.GSR = "ENABLED";
    FD1S3AX hb_174__i19 (.D(n111), .CK(clk_op), .Q(n6_adj_2172)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i19.GSR = "ENABLED";
    FD1S3AX hb_174__i18 (.D(n112), .CK(clk_op), .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i18.GSR = "ENABLED";
    FD1S3AX hb_174__i17 (.D(n113), .CK(clk_op), .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i17.GSR = "ENABLED";
    FD1S3AX hb_174__i16 (.D(n114), .CK(clk_op), .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i16.GSR = "ENABLED";
    FD1S3AX hb_174__i15 (.D(n115), .CK(clk_op), .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i15.GSR = "ENABLED";
    FD1S3AX hb_174__i14 (.D(n116), .CK(clk_op), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i14.GSR = "ENABLED";
    FD1S3AX hb_174__i13 (.D(n117), .CK(clk_op), .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i13.GSR = "ENABLED";
    FD1S3AX hb_174__i12 (.D(n118), .CK(clk_op), .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i12.GSR = "ENABLED";
    FD1S3AX hb_174__i11 (.D(n119), .CK(clk_op), .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i11.GSR = "ENABLED";
    FD1S3AX hb_174__i10 (.D(n120), .CK(clk_op), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i10.GSR = "ENABLED";
    FD1S3AX hb_174__i9 (.D(n121), .CK(clk_op), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i9.GSR = "ENABLED";
    FD1S3AX hb_174__i8 (.D(n122), .CK(clk_op), .Q(n17_adj_2167)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i8.GSR = "ENABLED";
    FD1S3AX hb_174__i7 (.D(n123), .CK(clk_op), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i7.GSR = "ENABLED";
    FD1S3AX hb_174__i6 (.D(n124), .CK(clk_op), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i6.GSR = "ENABLED";
    FD1S3AX hb_174__i5 (.D(n125), .CK(clk_op), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i5.GSR = "ENABLED";
    FD1S3AX hb_174__i4 (.D(n126), .CK(clk_op), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i4.GSR = "ENABLED";
    FD1S3AX hb_174__i3 (.D(n127), .CK(clk_op), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i3.GSR = "ENABLED";
    FD1S3AX hb_174__i2 (.D(n128), .CK(clk_op), .Q(n23_adj_2168)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i2.GSR = "ENABLED";
    FD1S3AX hb_174__i1 (.D(n129), .CK(clk_op), .Q(n24_adj_2171)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174__i1.GSR = "ENABLED";
    ORCALUT4 i14844_2_lut_4_lut (.A(n6), .B(n30989), .C(n31138), .D(n251), 
            .Z(Q_7__N_1737[8])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i14844_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i7972_2_lut_4_lut (.A(n1698), .B(n951), .C(n31138), .D(n178), 
            .Z(Q_7__N_1746[8])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7972_2_lut_4_lut.init = 16'hca00;
    FD1P3DX led_reg__i7 (.D(cpu_dout[6]), .SP(led_reg_7__N_68), .CK(clk_op), 
            .CD(n31309), .Q(led_reg[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(120[10:62])
    defparam led_reg__i7.GSR = "ENABLED";
    ORCALUT4 sram_data_out_6_bdd_3_lut_4_lut (.A(n33435), .B(n9435), .C(sram_go_N_88), 
            .D(sram_data_out_6), .Z(n33437)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam sram_data_out_6_bdd_3_lut_4_lut.init = 16'h2f20;
    ORCALUT4 i2264_4_lut (.A(sram_data_out_2), .B(n31044), .C(sram_go_N_88), 
            .D(n28379), .Z(n3194)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(142[20] 144[42])
    defparam i2264_4_lut.init = 16'h3a0a;
    ORCALUT4 io_rdata_7__I_0_67_i3_4_lut (.A(uart_rx_data[2]), .B(sw_c_2), 
            .C(n31045), .D(n31057), .Z(io_rdata[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(137[10] 138[90])
    defparam io_rdata_7__I_0_67_i3_4_lut.init = 16'hcac0;
    ORCALUT4 i27180_4_lut (.A(sram_addr_0_12), .B(sram_addr_0_14), .C(sram_addr_0_15), 
            .D(sram_addr_0_13), .Z(sram_go_N_88)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(102[37:55])
    defparam i27180_4_lut.init = 16'h0001;
    ORCALUT4 i1643_3_lut (.A(sram_data_out_0), .B(n16360), .C(sram_go_N_88), 
            .Z(n2545)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(142[20] 144[42])
    defparam i1643_3_lut.init = 16'h3a3a;
    PFUMX mux_701_i7 (.BLUT(n943), .ALUT(n952), .C0(n31138), .Z(n1172));
    CCU2B hb_174_add_4_3 (.A0(n24_adj_2171), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n23_adj_2168), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n23173), .COUT(n23174), .S0(n129), .S1(n128));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_3.INIT0 = 16'haaa0;
    defparam hb_174_add_4_3.INIT1 = 16'haaa0;
    defparam hb_174_add_4_3.INJECT1_0 = "NO";
    defparam hb_174_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 n10_bdd_4_lut (.A(n31133), .B(n31138), .C(BusA[6]), .D(BusA[5]), 
            .Z(n29060)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam n10_bdd_4_lut.init = 16'h0f78;
    ORCALUT4 io_rdata_7__N_62_bdd_4_lut_28347 (.A(n31045), .B(n31057), .C(uart_rx_data[3]), 
            .D(sw_c_3), .Z(n30741)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam io_rdata_7__N_62_bdd_4_lut_28347.init = 16'hea40;
    ORCALUT4 io_rdata_7__N_62_bdd_4_lut (.A(n31045), .B(n31057), .C(uart_rx_data[5]), 
            .D(sw_c_5), .Z(n30750)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam io_rdata_7__N_62_bdd_4_lut.init = 16'hea40;
    ORCALUT4 i2396_4_lut (.A(sram_data_out_1), .B(n16360), .C(sram_go_N_88), 
            .D(n31012), .Z(n3347)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(142[20] 144[42])
    defparam i2396_4_lut.init = 16'h3afa;
    ORCALUT4 i27268_3_lut (.A(iorq_n), .B(n26091), .C(wr_n), .Z(led_reg_7__N_68)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i27268_3_lut.init = 16'h0101;
    ORCALUT4 i2241_4_lut (.A(sram_data_out_7), .B(n26876), .C(sram_go_N_88), 
            .D(n16360), .Z(n3168)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(142[20] 144[42])
    defparam i2241_4_lut.init = 16'h3afa;
    ORCALUT4 io_rdata_7__I_0_67_i8_4_lut (.A(uart_rx_data[7]), .B(sw_c_7), 
            .C(n31045), .D(n31057), .Z(io_rdata[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(137[10] 138[90])
    defparam io_rdata_7__I_0_67_i8_4_lut.init = 16'hcac0;
    FD1P3DX led_reg__i6 (.D(cpu_dout[5]), .SP(led_reg_7__N_68), .CK(clk_op), 
            .CD(n31309), .Q(led_reg[5]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(120[10:62])
    defparam led_reg__i6.GSR = "ENABLED";
    FD1P3DX led_reg__i5 (.D(cpu_dout[4]), .SP(led_reg_7__N_68), .CK(clk_op), 
            .CD(n31309), .Q(led_reg[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(120[10:62])
    defparam led_reg__i5.GSR = "ENABLED";
    FD1P3DX led_reg__i4 (.D(cpu_dout[3]), .SP(led_reg_7__N_68), .CK(clk_op), 
            .CD(n31309), .Q(led_reg[3]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(120[10:62])
    defparam led_reg__i4.GSR = "ENABLED";
    FD1P3DX led_reg__i3 (.D(cpu_dout[2]), .SP(led_reg_7__N_68), .CK(clk_op), 
            .CD(n31309), .Q(led_reg[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(120[10:62])
    defparam led_reg__i3.GSR = "ENABLED";
    FD1P3DX led_reg__i2 (.D(cpu_dout[1]), .SP(led_reg_7__N_68), .CK(clk_op), 
            .CD(n31309), .Q(led_reg[1]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(120[10:62])
    defparam led_reg__i2.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut (.A(uart_tx_busy), .B(n31077), .C(n17), .Z(n4_adj_2166)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0e0e;
    CCU2B hb_174_add_4_25 (.A0(n2), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(led_c_7), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23184), 
          .S0(n107), .S1(n106));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_25.INIT0 = 16'haaa0;
    defparam hb_174_add_4_25.INIT1 = 16'haaa0;
    defparam hb_174_add_4_25.INJECT1_0 = "NO";
    defparam hb_174_add_4_25.INJECT1_1 = "NO";
    CCU2B hb_174_add_4_23 (.A0(n4_adj_2170), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n3_adj_2169), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n23183), .COUT(n23184), .S0(n109), .S1(n108));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_23.INIT0 = 16'haaa0;
    defparam hb_174_add_4_23.INIT1 = 16'haaa0;
    defparam hb_174_add_4_23.INJECT1_0 = "NO";
    defparam hb_174_add_4_23.INJECT1_1 = "NO";
    CCU2B hb_174_add_4_21 (.A0(n6_adj_2172), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n5), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n23182), .COUT(n23183), .S0(n111), .S1(n110));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_21.INIT0 = 16'haaa0;
    defparam hb_174_add_4_21.INIT1 = 16'haaa0;
    defparam hb_174_add_4_21.INJECT1_0 = "NO";
    defparam hb_174_add_4_21.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    ORCALUT4 sram_addr_0_6_bdd_4_lut (.A(n31045), .B(n31057), .C(uart_rx_data[4]), 
            .D(sw_c_4), .Z(n33329)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam sram_addr_0_6_bdd_4_lut.init = 16'hea40;
    ORCALUT4 sram_data_out_4_bdd_3_lut (.A(sram_data_out_4), .B(n33327), 
            .C(sram_go_N_88), .Z(n33328)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam sram_data_out_4_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 sram_addr_0_6_bdd_4_lut_29704 (.A(sram_addr_0_6), .B(n9435), 
            .C(sram_addr_0_2), .D(sram_addr_0_0), .Z(n33327)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam sram_addr_0_6_bdd_4_lut_29704.init = 16'h0001;
    ORCALUT4 n9435_bdd_4_lut_29753 (.A(sram_addr_0_1), .B(sram_addr_0_6), 
            .C(sram_addr_0_2), .D(sram_addr_0_0), .Z(n33435)) /* synthesis lut_function=(!(A (B+(C))+!A (B+((D)+!C)))) */ ;
    defparam n9435_bdd_4_lut_29753.init = 16'h0212;
    ORCALUT4 n9435_bdd_4_lut (.A(n31045), .B(n31057), .C(uart_rx_data[6]), 
            .D(sw_c_6), .Z(n33438)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam n9435_bdd_4_lut.init = 16'hea40;
    ORCALUT4 i3_4_lut (.A(n31298), .B(sram_addr_0_0), .C(sram_addr_0_7), 
            .D(n9385), .Z(n25751)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut.init = 16'h0040;
    ORCALUT4 i21544_3_lut_4_lut (.A(n3), .B(n4), .C(n2_adj_2164), .D(rst_cnt[3]), 
            .Z(clk_op_enable_161)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(79[38:52])
    defparam i21544_3_lut_4_lut.init = 16'h7f80;
    ORCALUT4 i21537_2_lut_3_lut (.A(n3), .B(n4), .C(n2_adj_2164), .Z(n23)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(79[38:52])
    defparam i21537_2_lut_3_lut.init = 16'h7878;
    CCU2B hb_174_add_4_19 (.A0(n8), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n7), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23181), 
          .COUT(n23182), .S0(n113), .S1(n112));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_19.INIT0 = 16'haaa0;
    defparam hb_174_add_4_19.INIT1 = 16'haaa0;
    defparam hb_174_add_4_19.INJECT1_0 = "NO";
    defparam hb_174_add_4_19.INJECT1_1 = "NO";
    CCU2B hb_174_add_4_17 (.A0(n10), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n9), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23180), 
          .COUT(n23181), .S0(n115), .S1(n114));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_17.INIT0 = 16'haaa0;
    defparam hb_174_add_4_17.INIT1 = 16'haaa0;
    defparam hb_174_add_4_17.INJECT1_0 = "NO";
    defparam hb_174_add_4_17.INJECT1_1 = "NO";
    CCU2B hb_174_add_4_15 (.A0(n12), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n11), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23179), 
          .COUT(n23180), .S0(n117), .S1(n116));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_15.INIT0 = 16'haaa0;
    defparam hb_174_add_4_15.INIT1 = 16'haaa0;
    defparam hb_174_add_4_15.INJECT1_0 = "NO";
    defparam hb_174_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 i27077_2_lut_rep_722 (.A(rst_n_sync2), .B(rst_cnt[3]), .Z(n31309)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i27077_2_lut_rep_722.init = 16'h7777;
    ORCALUT4 i607_2_lut_3_lut (.A(rst_n_sync2), .B(rst_cnt[3]), .C(tstate[2]), 
            .Z(clk_op_enable_153)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i607_2_lut_3_lut.init = 16'hf7f7;
    ORCALUT4 i27278_3_lut_4_lut (.A(rst_n_sync2), .B(rst_cnt[3]), .C(nxt_mreq_n_N_333), 
            .D(mcycle[0]), .Z(n28586)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i27278_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_2_lut_3_lut_adj_683 (.A(rst_n_sync2), .B(rst_cnt[3]), .C(rx_avail_N_294), 
            .Z(clk_op_enable_163)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_683.init = 16'h8080;
    ORCALUT4 i27090_3_lut_3_lut_4_lut (.A(rst_n_sync2), .B(rst_cnt[3]), 
            .C(n2596), .D(mcycle[0]), .Z(n26604)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i27090_3_lut_3_lut_4_lut.init = 16'hff7f;
    CCU2B hb_174_add_4_13 (.A0(n14), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n13), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23178), 
          .COUT(n23179), .S0(n119), .S1(n118));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_13.INIT0 = 16'haaa0;
    defparam hb_174_add_4_13.INIT1 = 16'haaa0;
    defparam hb_174_add_4_13.INJECT1_0 = "NO";
    defparam hb_174_add_4_13.INJECT1_1 = "NO";
    PFUMX i29754 (.BLUT(n33438), .ALUT(n33437), .C0(mem_rd), .Z(bus_din[6]));
    ORCALUT4 io_rdata_7__I_1_i1_4_lut (.A(uart_tx_busy), .B(uart_rx_data[0]), 
            .C(n31057), .D(n26750), .Z(io_rdata_7__N_54[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(138[10:90])
    defparam io_rdata_7__I_1_i1_4_lut.init = 16'hc0ca;
    BB sram_data_pad_5 (.I(cpu_dout[5]), .T(sram_wen_c), .B(sram_data[5]), 
       .O(sram_data_out_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_4 (.I(cpu_dout[4]), .T(sram_wen_c), .B(sram_data[4]), 
       .O(sram_data_out_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_3 (.I(cpu_dout[3]), .T(sram_wen_c), .B(sram_data[3]), 
       .O(sram_data_out_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_2 (.I(cpu_dout[2]), .T(sram_wen_c), .B(sram_data[2]), 
       .O(sram_data_out_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_1 (.I(cpu_dout[1]), .T(sram_wen_c), .B(sram_data[1]), 
       .O(sram_data_out_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
    BB sram_data_pad_0 (.I(cpu_dout[0]), .T(sram_wen_c), .B(sram_data[0]), 
       .O(sram_data_out_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/sram_async.v(29[10:19])
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
    OB sram_cen_pad (.I(sram_cen_c), .O(sram_cen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(21[17:25])
    OB sram_oen_pad (.I(sram_oen_c), .O(sram_oen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(22[17:25])
    OB sram_wen_pad (.I(sram_wen_c), .O(sram_wen));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(23[17:25])
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
    CCU2B hb_174_add_4_11 (.A0(n16), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n15), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23177), 
          .COUT(n23178), .S0(n121), .S1(n120));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_11.INIT0 = 16'haaa0;
    defparam hb_174_add_4_11.INIT1 = 16'haaa0;
    defparam hb_174_add_4_11.INJECT1_0 = "NO";
    defparam hb_174_add_4_11.INJECT1_1 = "NO";
    PFUMX i29705 (.BLUT(n33329), .ALUT(n33328), .C0(mem_rd), .Z(bus_din[4]));
    ORCALUT4 m1_lut (.Z(n33941)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    CCU2B hb_174_add_4_9 (.A0(n18), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n17_adj_2167), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n23176), .COUT(n23177), .S0(n123), .S1(n122));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_9.INIT0 = 16'haaa0;
    defparam hb_174_add_4_9.INIT1 = 16'haaa0;
    defparam hb_174_add_4_9.INJECT1_0 = "NO";
    defparam hb_174_add_4_9.INJECT1_1 = "NO";
    PFUMX i2242 (.BLUT(io_rdata[7]), .ALUT(n3168), .C0(mem_rd), .Z(bus_din[7]));
    PFUMX i2397 (.BLUT(io_rdata[1]), .ALUT(n3347), .C0(mem_rd), .Z(bus_din[1]));
    PFUMX i28348 (.BLUT(n30750), .ALUT(n30749), .C0(mem_rd), .Z(bus_din[5]));
    PFUMX i28342 (.BLUT(n30741), .ALUT(n30740), .C0(mem_rd), .Z(bus_din[3]));
    CCU2B hb_174_add_4_7 (.A0(n20), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n19), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23175), 
          .COUT(n23176), .S0(n125), .S1(n124));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_7.INIT0 = 16'haaa0;
    defparam hb_174_add_4_7.INIT1 = 16'haaa0;
    defparam hb_174_add_4_7.INJECT1_0 = "NO";
    defparam hb_174_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 rst_n_I_0_1_lut (.A(rst_n_c), .Z(rst_n_N_77)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(61[18:24])
    defparam rst_n_I_0_1_lut.init = 16'h5555;
    CCU2B hb_174_add_4_5 (.A0(n22), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n21), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23174), 
          .COUT(n23175), .S0(n127), .S1(n126));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(89[31:40])
    defparam hb_174_add_4_5.INIT0 = 16'haaa0;
    defparam hb_174_add_4_5.INIT1 = 16'haaa0;
    defparam hb_174_add_4_5.INJECT1_0 = "NO";
    defparam hb_174_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i2_3_lut_rep_490 (.A(iorq_n), .B(n25751), .C(wr_n), .Z(n31077)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_rep_490.init = 16'h0404;
    ORCALUT4 i601_2_lut_rep_442_4_lut (.A(iorq_n), .B(n25751), .C(wr_n), 
            .D(uart_tx_busy), .Z(clk_op_enable_275)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i601_2_lut_rep_442_4_lut.init = 16'hff04;
    ORCALUT4 sr_7__I_4_2_lut_rep_443_4_lut (.A(iorq_n), .B(n25751), .C(wr_n), 
            .D(uart_tx_busy), .Z(n31030)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam sr_7__I_4_2_lut_rep_443_4_lut.init = 16'h0004;
    PFUMX i1644 (.BLUT(io_rdata[0]), .ALUT(n2545), .C0(mem_rd), .Z(bus_din[0]));
    PFUMX i2265 (.BLUT(io_rdata[2]), .ALUT(n3194), .C0(mem_rd), .Z(bus_din[2]));
    ORCALUT4 led_reg_6__I_0_i7_1_lut (.A(led_reg[6]), .Z(led_c_6)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(149[21:34])
    defparam led_reg_6__I_0_i7_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i6_1_lut (.A(led_reg[5]), .Z(led_c_5)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(149[21:34])
    defparam led_reg_6__I_0_i6_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i5_1_lut (.A(led_reg[4]), .Z(led_c_4)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(149[21:34])
    defparam led_reg_6__I_0_i5_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i4_1_lut (.A(led_reg[3]), .Z(led_c_3)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(149[21:34])
    defparam led_reg_6__I_0_i4_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i3_1_lut (.A(led_reg[2]), .Z(led_c_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(149[21:34])
    defparam led_reg_6__I_0_i3_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i2_1_lut (.A(led_reg[1]), .Z(led_c_1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(149[21:34])
    defparam led_reg_6__I_0_i2_1_lut.init = 16'h5555;
    ORCALUT4 led_reg_6__I_0_i1_1_lut (.A(led_reg[0]), .Z(led_c_0)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(149[21:34])
    defparam led_reg_6__I_0_i1_1_lut.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    uart_rx u_rx (.uart_rx_avail(uart_rx_avail), .clk_op(clk_op), .n31309(n31309), 
            .n10605(n10605), .uart_rx_c(uart_rx_c), .VCC_net(VCC_net), 
            .uart_rx_data({uart_rx_data}), .clk_op_enable_163(clk_op_enable_163), 
            .rx_avail_N_294(rx_avail_N_294)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(130[11] 131[63])
    FD1S3DX rst_n_sync2_60 (.D(rst_n_sync1), .CK(clk_op), .CD(rst_n_N_77), 
            .Q(rst_n_sync2)) /* synthesis lse_init_val=0 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(74[18:45])
    defparam rst_n_sync2_60.GSR = "ENABLED";
    tv80n u_cpu (.clk_op(clk_op), .clk_op_enable_153(clk_op_enable_153), 
          .n31309(n31309), .bus_din({bus_din}), .clk_N_320(clk_N_320), 
          .\tstate[2] (tstate[2]), .n2596(n2596), .n9385(n9385), .sram_addr_0_7(sram_addr_0_7), 
          .sram_addr_0_6(sram_addr_0_6), .n26091(n26091), .sram_addr_0_0(sram_addr_0_0), 
          .sram_addr_0_1(sram_addr_0_1), .iorq_n(iorq_n), .n31280(n31280), 
          .n25751(n25751), .n31057(n31057), .n31045(n31045), .wr_n(wr_n), 
          .n28586(n28586), .uart_rx_avail(uart_rx_avail), .rx_avail_N_294(rx_avail_N_294), 
          .n10605(n10605), .\ALU_Op_3__N_1297[3] (mcycle[0]), .nxt_mreq_n_N_333(nxt_mreq_n_N_333), 
          .n26604(n26604), .mem_rd(mem_rd), .cpu_dout({cpu_dout}), .VCC_net(VCC_net), 
          .sram_go_N_88(sram_go_N_88), .sram_wen_c(sram_wen_c), .sram_cen_c(sram_cen_c), 
          .sram_oen_c(sram_oen_c), .\BusA[6] (BusA[6]), .sram_addr_0_3(sram_addr_0_3), 
          .sram_addr_0_5(sram_addr_0_5), .sram_addr_0_4(sram_addr_0_4), 
          .n31295(n31295), .sram_addr_0_2(sram_addr_0_2), .n31298(n31298), 
          .n9435(n9435), .n31044(n31044), .n31012(n31012), .\BusA[5] (BusA[5]), 
          .sram_addr_0_15(sram_addr_0_15), .sram_addr_0_14(sram_addr_0_14), 
          .sram_addr_0_13(sram_addr_0_13), .sram_addr_0_12(sram_addr_0_12), 
          .sram_addr_0_11(sram_addr_0_11), .sram_addr_0_10(sram_addr_0_10), 
          .sram_addr_0_9(sram_addr_0_9), .sram_addr_0_8(sram_addr_0_8), 
          .n6(n6_adj_2173), .n26750(n26750), .n31138(n31138), .n952(n952), 
          .n251(n251), .n1172(n1172), .n178(n178), .n29060(n29060), 
          .n951(n951), .n30989(n30989), .n943(n943), .n1698(n1698), 
          .n6_adj_37(n6), .n31133(n31133), .\Q_7__N_1746[8] (Q_7__N_1746[8]), 
          .\Q_7__N_1737[8] (Q_7__N_1737[8])) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(151[9] 156[4])
    ORCALUT4 io_rdata_7__I_1_i2_4_lut (.A(uart_rx_avail), .B(uart_rx_data[1]), 
            .C(n31057), .D(n26750), .Z(io_rdata_7__N_54[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(138[10:90])
    defparam io_rdata_7__I_1_i2_4_lut.init = 16'hc0ca;
    boot_rom u_rom (.sram_addr_0_0(sram_addr_0_0), .sram_addr_0_2(sram_addr_0_2), 
            .n28379(n28379), .sram_addr_0_6(sram_addr_0_6), .n9435(n9435), 
            .n31044(n31044), .sram_data_out_3(sram_data_out_3), .sram_go_N_88(sram_go_N_88), 
            .n30740(n30740), .sram_data_out_5(sram_data_out_5), .n30749(n30749), 
            .n31295(n31295), .n6(n6_adj_2173), .n31298(n31298), .n26876(n26876), 
            .sram_addr_0_1(sram_addr_0_1), .n16360(n16360), .sram_addr_0_9(sram_addr_0_9), 
            .sram_addr_0_8(sram_addr_0_8), .sram_addr_0_7(sram_addr_0_7), 
            .sram_addr_0_11(sram_addr_0_11), .sram_addr_0_10(sram_addr_0_10)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(106[12:47])
    uart_tx u_tx (.uart_tx_busy(uart_tx_busy), .clk_op(clk_op), .n31309(n31309), 
            .VCC_net(VCC_net), .n31030(n31030), .n4(n4_adj_2166), .clk_op_enable_275(clk_op_enable_275), 
            .n17(n17), .n31077(n31077), .cpu_dout({cpu_dout}), .uart_tx_c(uart_tx_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(128[11] 129[54])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_rx
//

module uart_rx (uart_rx_avail, clk_op, n31309, n10605, uart_rx_c, 
            VCC_net, uart_rx_data, clk_op_enable_163, rx_avail_N_294) /* synthesis syn_module_defined=1 */ ;
    output uart_rx_avail;
    input clk_op;
    input n31309;
    input n10605;
    input uart_rx_c;
    input VCC_net;
    output [7:0]uart_rx_data;
    input clk_op_enable_163;
    output rx_avail_N_294;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire rx_state, n28369, rxd_d;
    wire [7:0]sr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(17[16:18])
    
    wire clk_op_enable_179, n27544;
    wire [11:0]k;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(15[17:18])
    wire [11:0]n53;
    
    wire n31279, n10580, n31304;
    wire [31:0]n70;
    
    wire n31145, n1424, GND_net;
    wire [31:0]rx_state_N_230;
    wire [12:0]n313;
    
    wire n10576, n23191, n10571, n23190, n23189, n23188;
    wire [3:0]bitidx;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(16[16:22])
    
    wire rx_state_N_229, n30980, n9191, clk_op_enable_178;
    wire [3:0]bitidx_3__N_182;
    
    wire n31189, clk_op_enable_231, n23187, n10567, n10565, n23229, 
        n23228, n23227, n23226, n23225, n23224, n27549, n23186, 
        n27551, clk_op_enable_276, n31281, n10578, n27550, n27545, 
        n27547, n23138, n27546, n27548, n23137, n31229, n23135, 
        n23136, n10594, n33, n27396, n27362, n28, n29, n27368, 
        n10592, n10590, n10588, n10586, n10584, n26374, n5, n26012, 
        n26884, n10, n6, n29_adj_2163, n27183;
    
    FD1S3DX rx_avail_73 (.D(n10605), .CK(clk_op), .CD(n31309), .Q(uart_rx_avail)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_avail_73.GSR = "ENABLED";
    FD1S3DX rx_state_72 (.D(n28369), .CK(clk_op), .CD(n31309), .Q(rx_state)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_state_72.GSR = "ENABLED";
    FD1S3BX rxd_d_78 (.D(uart_rx_c), .CK(clk_op), .PD(n31309), .Q(rxd_d)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rxd_d_78.GSR = "ENABLED";
    FD1P3DX sr_i0_i0 (.D(n27544), .SP(clk_op_enable_179), .CK(clk_op), 
            .CD(n31309), .Q(sr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i0.GSR = "ENABLED";
    ORCALUT4 i8731_4_lut (.A(k[7]), .B(n53[7]), .C(rx_state), .D(n31279), 
            .Z(n10580)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i8731_4_lut.init = 16'hc0ca;
    MULT9X9B mult_78 (.P12(n313[12]), .P11(n313[11]), .P10(n313[10]), 
            .P9(n313[9]), .P8(n313[8]), .P7(n313[7]), .P6(n313[6]), 
            .P5(n313[5]), .P4(n313[4]), .P3(n313[3]), .P2(n313[2]), 
            .P1(rx_state_N_230[1]), .P0(rx_state_N_230[0]), .A8(GND_net), 
            .A7(GND_net), .A6(GND_net), .A5(GND_net), .A4(n1424), .A3(n31145), 
            .A2(n70[2]), .A1(n70[1]), .A0(n31304), .B8(GND_net), .B7(VCC_net), 
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
    defparam mult_78.REG_INPUTA_CLK = "NONE";
    defparam mult_78.REG_INPUTA_CE = "CE0";
    defparam mult_78.REG_INPUTA_RST = "RST0";
    defparam mult_78.REG_INPUTB_CLK = "NONE";
    defparam mult_78.REG_INPUTB_CE = "CE0";
    defparam mult_78.REG_INPUTB_RST = "RST0";
    defparam mult_78.REG_PIPELINE_CLK = "NONE";
    defparam mult_78.REG_PIPELINE_CE = "CE0";
    defparam mult_78.REG_PIPELINE_RST = "RST0";
    defparam mult_78.REG_OUTPUT_CLK = "NONE";
    defparam mult_78.REG_OUTPUT_CE = "CE0";
    defparam mult_78.REG_OUTPUT_RST = "RST0";
    defparam mult_78.REG_SIGNEDA_CLK = "NONE";
    defparam mult_78.REG_SIGNEDA_CE = "CE0";
    defparam mult_78.REG_SIGNEDA_RST = "RST0";
    defparam mult_78.REG_SIGNEDB_CLK = "NONE";
    defparam mult_78.REG_SIGNEDB_CE = "CE0";
    defparam mult_78.REG_SIGNEDB_RST = "RST0";
    defparam mult_78.GSR = "ENABLED";
    ORCALUT4 i14023_4_lut (.A(k[8]), .B(n53[8]), .C(rx_state), .D(n31279), 
            .Z(n10576)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i14023_4_lut.init = 16'hc0ca;
    CCU2B add_112_add_4_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n23191), .S0(rx_state_N_230[13]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_112_add_4_cout.INIT0 = 16'h0000;
    defparam add_112_add_4_cout.INIT1 = 16'h0000;
    defparam add_112_add_4_cout.INJECT1_0 = "NO";
    defparam add_112_add_4_cout.INJECT1_1 = "NO";
    ORCALUT4 i8722_4_lut (.A(k[9]), .B(n53[9]), .C(rx_state), .D(n31279), 
            .Z(n10571)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i8722_4_lut.init = 16'hc0ca;
    CCU2B add_112_add_4_11 (.A0(n313[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n313[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n23190), .COUT(n23191), .S0(rx_state_N_230[11]), .S1(rx_state_N_230[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_112_add_4_11.INIT0 = 16'haaaa;
    defparam add_112_add_4_11.INIT1 = 16'haaaa;
    defparam add_112_add_4_11.INJECT1_0 = "NO";
    defparam add_112_add_4_11.INJECT1_1 = "NO";
    CCU2B add_112_add_4_9 (.A0(n313[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n313[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23189), 
          .COUT(n23190), .S0(rx_state_N_230[9]), .S1(rx_state_N_230[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_112_add_4_9.INIT0 = 16'haaaa;
    defparam add_112_add_4_9.INIT1 = 16'haaaa;
    defparam add_112_add_4_9.INJECT1_0 = "NO";
    defparam add_112_add_4_9.INJECT1_1 = "NO";
    CCU2B add_112_add_4_7 (.A0(n313[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n313[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23188), 
          .COUT(n23189), .S0(rx_state_N_230[7]), .S1(rx_state_N_230[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_112_add_4_7.INIT0 = 16'haaaa;
    defparam add_112_add_4_7.INIT1 = 16'haaaa;
    defparam add_112_add_4_7.INJECT1_0 = "NO";
    defparam add_112_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 rx_state_I_11_2_lut_rep_393 (.A(bitidx[3]), .B(rx_state_N_229), 
            .Z(n30980)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam rx_state_I_11_2_lut_rep_393.init = 16'h4444;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(bitidx[3]), .B(rx_state_N_229), .C(bitidx[1]), 
            .D(n9191), .Z(clk_op_enable_178)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h4000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_675 (.A(bitidx[3]), .B(rx_state_N_229), 
            .C(bitidx[1]), .D(n9191), .Z(clk_op_enable_179)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam i1_2_lut_3_lut_4_lut_adj_675.init = 16'h0400;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_676 (.A(bitidx[3]), .B(rx_state_N_229), 
            .C(n70[2]), .D(n9191), .Z(bitidx_3__N_182[2])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam i1_2_lut_3_lut_4_lut_adj_676.init = 16'h4000;
    ORCALUT4 i15184_3_lut_4_lut (.A(bitidx[3]), .B(rx_state_N_229), .C(n9191), 
            .D(bitidx[0]), .Z(bitidx_3__N_182[0])) /* synthesis lut_function=(A (C (D))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam i15184_3_lut_4_lut.init = 16'hb040;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_677 (.A(bitidx[3]), .B(rx_state_N_229), 
            .C(n70[1]), .D(n9191), .Z(bitidx_3__N_182[1])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam i1_2_lut_3_lut_4_lut_adj_677.init = 16'h4000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_678 (.A(bitidx[3]), .B(rx_state_N_229), 
            .C(n31189), .D(n9191), .Z(clk_op_enable_231)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[18:71])
    defparam i1_2_lut_3_lut_4_lut_adj_678.init = 16'hf4f0;
    FD1P3AX rx_data_i0_i7 (.D(sr[7]), .SP(clk_op_enable_163), .CK(clk_op), 
            .Q(uart_rx_data[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i7.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i6 (.D(sr[6]), .SP(clk_op_enable_163), .CK(clk_op), 
            .Q(uart_rx_data[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i6.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i5 (.D(sr[5]), .SP(clk_op_enable_163), .CK(clk_op), 
            .Q(uart_rx_data[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i5.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i4 (.D(sr[4]), .SP(clk_op_enable_163), .CK(clk_op), 
            .Q(uart_rx_data[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i4.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i3 (.D(sr[3]), .SP(clk_op_enable_163), .CK(clk_op), 
            .Q(uart_rx_data[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i3.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i2 (.D(sr[2]), .SP(clk_op_enable_163), .CK(clk_op), 
            .Q(uart_rx_data[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i2.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i1 (.D(sr[1]), .SP(clk_op_enable_163), .CK(clk_op), 
            .Q(uart_rx_data[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i1.GSR = "ENABLED";
    CCU2B add_112_add_4_5 (.A0(n313[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n313[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23187), 
          .COUT(n23188), .S0(rx_state_N_230[5]), .S1(rx_state_N_230[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_112_add_4_5.INIT0 = 16'h555a;
    defparam add_112_add_4_5.INIT1 = 16'h555a;
    defparam add_112_add_4_5.INJECT1_0 = "NO";
    defparam add_112_add_4_5.INJECT1_1 = "NO";
    FD1P3AX rx_data_i0_i0 (.D(sr[0]), .SP(clk_op_enable_163), .CK(clk_op), 
            .Q(uart_rx_data[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam rx_data_i0_i0.GSR = "ENABLED";
    ORCALUT4 i8718_4_lut (.A(k[10]), .B(n53[10]), .C(rx_state), .D(n31279), 
            .Z(n10567)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i8718_4_lut.init = 16'hc0ca;
    ORCALUT4 i8716_4_lut (.A(k[11]), .B(n53[11]), .C(rx_state), .D(n31279), 
            .Z(n10565)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i8716_4_lut.init = 16'hc0ca;
    CCU2B k_175_add_4_13 (.A0(k[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23229), 
          .S0(n53[11]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175_add_4_13.INIT0 = 16'haaa0;
    defparam k_175_add_4_13.INIT1 = 16'h0000;
    defparam k_175_add_4_13.INJECT1_0 = "NO";
    defparam k_175_add_4_13.INJECT1_1 = "NO";
    CCU2B k_175_add_4_11 (.A0(k[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23228), 
          .COUT(n23229), .S0(n53[9]), .S1(n53[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175_add_4_11.INIT0 = 16'haaa0;
    defparam k_175_add_4_11.INIT1 = 16'haaa0;
    defparam k_175_add_4_11.INJECT1_0 = "NO";
    defparam k_175_add_4_11.INJECT1_1 = "NO";
    CCU2B k_175_add_4_9 (.A0(k[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23227), 
          .COUT(n23228), .S0(n53[7]), .S1(n53[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175_add_4_9.INIT0 = 16'haaa0;
    defparam k_175_add_4_9.INIT1 = 16'haaa0;
    defparam k_175_add_4_9.INJECT1_0 = "NO";
    defparam k_175_add_4_9.INJECT1_1 = "NO";
    CCU2B k_175_add_4_7 (.A0(k[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23226), 
          .COUT(n23227), .S0(n53[5]), .S1(n53[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175_add_4_7.INIT0 = 16'haaa0;
    defparam k_175_add_4_7.INIT1 = 16'haaa0;
    defparam k_175_add_4_7.INJECT1_0 = "NO";
    defparam k_175_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i769_2_lut (.A(bitidx[1]), .B(bitidx[0]), .Z(n70[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i769_2_lut.init = 16'h6666;
    CCU2B k_175_add_4_5 (.A0(k[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23225), 
          .COUT(n23226), .S0(n53[3]), .S1(n53[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175_add_4_5.INIT0 = 16'haaa0;
    defparam k_175_add_4_5.INIT1 = 16'haaa0;
    defparam k_175_add_4_5.INJECT1_0 = "NO";
    defparam k_175_add_4_5.INJECT1_1 = "NO";
    CCU2B k_175_add_4_3 (.A0(k[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23224), 
          .COUT(n23225), .S0(n53[1]), .S1(n53[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175_add_4_3.INIT0 = 16'haaa0;
    defparam k_175_add_4_3.INIT1 = 16'haaa0;
    defparam k_175_add_4_3.INJECT1_0 = "NO";
    defparam k_175_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i25813_3_lut_4_lut (.A(bitidx[0]), .B(bitidx[2]), .C(uart_rx_c), 
            .D(sr[3]), .Z(n27549)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i25813_3_lut_4_lut.init = 16'hfd20;
    CCU2B add_112_add_4_3 (.A0(n313[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n313[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23186), 
          .COUT(n23187), .S0(rx_state_N_230[3]), .S1(rx_state_N_230[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_112_add_4_3.INIT0 = 16'h555a;
    defparam add_112_add_4_3.INIT1 = 16'haaaa;
    defparam add_112_add_4_3.INJECT1_0 = "NO";
    defparam add_112_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i25815_3_lut_4_lut (.A(bitidx[0]), .B(bitidx[2]), .C(uart_rx_c), 
            .D(sr[1]), .Z(n27551)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i25815_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 rxd_d_I_0_2_lut_rep_692 (.A(rxd_d), .B(uart_rx_c), .Z(n31279)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam rxd_d_I_0_2_lut_rep_692.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_679 (.A(rxd_d), .B(uart_rx_c), .C(n9191), 
            .D(rx_state), .Z(clk_op_enable_276)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam i1_2_lut_3_lut_4_lut_adj_679.init = 16'hf0f2;
    ORCALUT4 i1_2_lut_rep_602_3_lut (.A(rxd_d), .B(uart_rx_c), .C(rx_state), 
            .Z(n31189)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(31[13:43])
    defparam i1_2_lut_rep_602_3_lut.init = 16'h0202;
    ORCALUT4 i24566_2_lut_rep_694 (.A(bitidx[0]), .B(bitidx[2]), .Z(n31281)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i24566_2_lut_rep_694.init = 16'heeee;
    ORCALUT4 i25808_3_lut_4_lut (.A(bitidx[0]), .B(bitidx[2]), .C(uart_rx_c), 
            .D(sr[0]), .Z(n27544)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i25808_3_lut_4_lut.init = 16'hfe10;
    FD1S3DX k_175__i0 (.D(n10578), .CK(clk_op), .CD(n31309), .Q(k[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i0.GSR = "ENABLED";
    CCU2B k_175_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(k[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n23224), 
          .S1(n53[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175_add_4_1.INIT0 = 16'h0000;
    defparam k_175_add_4_1.INIT1 = 16'h555f;
    defparam k_175_add_4_1.INJECT1_0 = "NO";
    defparam k_175_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i25814_3_lut_4_lut (.A(bitidx[0]), .B(bitidx[2]), .C(uart_rx_c), 
            .D(sr[2]), .Z(n27550)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i25814_3_lut_4_lut.init = 16'hfe10;
    CCU2B add_112_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n313[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n23186), 
          .S1(rx_state_N_230[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[37:71])
    defparam add_112_add_4_1.INIT0 = 16'h0000;
    defparam add_112_add_4_1.INIT1 = 16'h555a;
    defparam add_112_add_4_1.INJECT1_0 = "NO";
    defparam add_112_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i25809_3_lut_4_lut (.A(bitidx[0]), .B(bitidx[2]), .C(uart_rx_c), 
            .D(sr[7]), .Z(n27545)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i25809_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i25811_3_lut_4_lut (.A(bitidx[0]), .B(bitidx[2]), .C(uart_rx_c), 
            .D(sr[5]), .Z(n27547)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i25811_3_lut_4_lut.init = 16'hf780;
    CCU2B equal_641_14 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23138), 
          .S0(rx_state_N_229));
    defparam equal_641_14.INIT0 = 16'h0000;
    defparam equal_641_14.INIT1 = 16'h0000;
    defparam equal_641_14.INJECT1_0 = "NO";
    defparam equal_641_14.INJECT1_1 = "NO";
    FD1P3DX sr_i0_i7 (.D(n27545), .SP(clk_op_enable_178), .CK(clk_op), 
            .CD(n31309), .Q(sr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i7.GSR = "ENABLED";
    FD1P3DX sr_i0_i6 (.D(n27546), .SP(clk_op_enable_178), .CK(clk_op), 
            .CD(n31309), .Q(sr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i6.GSR = "ENABLED";
    FD1P3DX sr_i0_i5 (.D(n27547), .SP(clk_op_enable_179), .CK(clk_op), 
            .CD(n31309), .Q(sr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i5.GSR = "ENABLED";
    FD1P3DX sr_i0_i4 (.D(n27548), .SP(clk_op_enable_179), .CK(clk_op), 
            .CD(n31309), .Q(sr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i4.GSR = "ENABLED";
    FD1P3DX sr_i0_i3 (.D(n27549), .SP(clk_op_enable_178), .CK(clk_op), 
            .CD(n31309), .Q(sr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i3.GSR = "ENABLED";
    FD1P3DX sr_i0_i2 (.D(n27550), .SP(clk_op_enable_178), .CK(clk_op), 
            .CD(n31309), .Q(sr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i2.GSR = "ENABLED";
    FD1P3DX sr_i0_i1 (.D(n27551), .SP(clk_op_enable_179), .CK(clk_op), 
            .CD(n31309), .Q(sr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam sr_i0_i1.GSR = "ENABLED";
    CCU2B equal_641_14_21520 (.A0(rx_state_N_230[3]), .B0(k[3]), .C0(rx_state_N_230[2]), 
          .D0(k[2]), .A1(rx_state_N_230[1]), .B1(k[1]), .C1(rx_state_N_230[0]), 
          .D1(k[0]), .CIN(n23137), .COUT(n23138));
    defparam equal_641_14_21520.INIT0 = 16'h9009;
    defparam equal_641_14_21520.INIT1 = 16'h9009;
    defparam equal_641_14_21520.INJECT1_0 = "YES";
    defparam equal_641_14_21520.INJECT1_1 = "YES";
    ORCALUT4 i776_2_lut_3_lut (.A(bitidx[1]), .B(bitidx[0]), .C(bitidx[2]), 
            .Z(n70[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i776_2_lut_3_lut.init = 16'h7878;
    ORCALUT4 i783_2_lut_rep_558_3_lut_4_lut (.A(bitidx[1]), .B(bitidx[0]), 
            .C(bitidx[3]), .D(bitidx[2]), .Z(n31145)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i783_2_lut_rep_558_3_lut_4_lut.init = 16'h78f0;
    ORCALUT4 i778_2_lut_rep_642_3_lut (.A(bitidx[1]), .B(bitidx[0]), .C(bitidx[2]), 
            .Z(n31229)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i778_2_lut_rep_642_3_lut.init = 16'h8080;
    ORCALUT4 i785_2_lut_3_lut_4_lut (.A(bitidx[1]), .B(bitidx[0]), .C(bitidx[3]), 
            .D(bitidx[2]), .Z(n1424)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i785_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 Decoder_26_i2_1_lut_rep_717 (.A(bitidx[0]), .Z(n31304)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam Decoder_26_i2_1_lut_rep_717.init = 16'h5555;
    ORCALUT4 i25810_3_lut_4_lut_4_lut (.A(bitidx[0]), .B(sr[6]), .C(uart_rx_c), 
            .D(bitidx[2]), .Z(n27546)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i25810_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i25812_3_lut_4_lut_4_lut (.A(bitidx[0]), .B(sr[4]), .C(uart_rx_c), 
            .D(bitidx[2]), .Z(n27548)) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(43[11:21])
    defparam i25812_3_lut_4_lut_4_lut.init = 16'hd8cc;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(bitidx[3]), .B(n31229), .C(n9191), 
            .D(rx_state_N_229), .Z(bitidx_3__N_182[3])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[38:48])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    CCU2B equal_641_10 (.A0(rx_state_N_230[11]), .B0(k[11]), .C0(rx_state_N_230[10]), 
          .D0(k[10]), .A1(rx_state_N_230[9]), .B1(k[9]), .C1(rx_state_N_230[8]), 
          .D1(k[8]), .CIN(n23135), .COUT(n23136));
    defparam equal_641_10.INIT0 = 16'h9009;
    defparam equal_641_10.INIT1 = 16'h9009;
    defparam equal_641_10.INJECT1_0 = "YES";
    defparam equal_641_10.INJECT1_1 = "YES";
    FD1P3DX bitidx_i3 (.D(bitidx_3__N_182[3]), .SP(clk_op_enable_231), .CK(clk_op), 
            .CD(n31309), .Q(bitidx[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx_i3.GSR = "ENABLED";
    FD1P3DX bitidx_i2 (.D(bitidx_3__N_182[2]), .SP(clk_op_enable_231), .CK(clk_op), 
            .CD(n31309), .Q(bitidx[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx_i2.GSR = "ENABLED";
    FD1P3DX bitidx_i1 (.D(bitidx_3__N_182[1]), .SP(clk_op_enable_231), .CK(clk_op), 
            .CD(n31309), .Q(bitidx[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx_i1.GSR = "ENABLED";
    FD1S3DX k_175__i1 (.D(n10594), .CK(clk_op), .CD(n31309), .Q(k[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i1.GSR = "ENABLED";
    CCU2B equal_641_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rx_state_N_230[13]), .B1(rx_state_N_230[12]), .C1(GND_net), 
          .D1(GND_net), .COUT(n23135));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(42[32:71])
    defparam equal_641_0.INIT0 = 16'h000F;
    defparam equal_641_0.INIT1 = 16'h1111;
    defparam equal_641_0.INJECT1_0 = "NO";
    defparam equal_641_0.INJECT1_1 = "YES";
    ORCALUT4 i14017_4_lut (.A(k[0]), .B(n53[0]), .C(rx_state), .D(n31279), 
            .Z(n10578)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i14017_4_lut.init = 16'hc0ca;
    ORCALUT4 i17_4_lut (.A(n33), .B(n27396), .C(n27362), .D(n28), .Z(rx_avail_N_294)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i17_4_lut.init = 16'h0200;
    ORCALUT4 i15_4_lut (.A(n29), .B(k[11]), .C(n27368), .D(bitidx[1]), 
            .Z(n33)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i15_4_lut.init = 16'h0008;
    ORCALUT4 i25660_4_lut (.A(k[8]), .B(k[7]), .C(bitidx[2]), .D(k[6]), 
            .Z(n27396)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i25660_4_lut.init = 16'hfffe;
    ORCALUT4 i25626_2_lut (.A(bitidx[0]), .B(k[5]), .Z(n27362)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i25626_2_lut.init = 16'heeee;
    FD1S3DX k_175__i2 (.D(n10592), .CK(clk_op), .CD(n31309), .Q(k[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i2.GSR = "ENABLED";
    FD1S3DX k_175__i3 (.D(n10590), .CK(clk_op), .CD(n31309), .Q(k[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i3.GSR = "ENABLED";
    FD1S3DX k_175__i4 (.D(n10588), .CK(clk_op), .CD(n31309), .Q(k[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i4.GSR = "ENABLED";
    FD1S3DX k_175__i5 (.D(n10586), .CK(clk_op), .CD(n31309), .Q(k[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i5.GSR = "ENABLED";
    FD1S3DX k_175__i6 (.D(n10584), .CK(clk_op), .CD(n31309), .Q(k[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i6.GSR = "ENABLED";
    FD1S3DX k_175__i7 (.D(n10580), .CK(clk_op), .CD(n31309), .Q(k[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i7.GSR = "ENABLED";
    FD1S3DX k_175__i8 (.D(n10576), .CK(clk_op), .CD(n31309), .Q(k[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i8.GSR = "ENABLED";
    FD1S3DX k_175__i9 (.D(n10571), .CK(clk_op), .CD(n31309), .Q(k[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i9.GSR = "ENABLED";
    FD1S3DX k_175__i10 (.D(n10567), .CK(clk_op), .CD(n31309), .Q(k[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i10.GSR = "ENABLED";
    FD1S3DX k_175__i11 (.D(n10565), .CK(clk_op), .CD(n31309), .Q(k[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam k_175__i11.GSR = "ENABLED";
    ORCALUT4 i10_4_lut (.A(uart_rx_c), .B(n9191), .C(n30980), .D(n26374), 
            .Z(n28)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i10_4_lut.init = 16'h0800;
    ORCALUT4 i11_4_lut (.A(k[0]), .B(k[4]), .C(bitidx[3]), .D(k[1]), 
            .Z(n29)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i11_4_lut.init = 16'h0020;
    ORCALUT4 i25632_2_lut (.A(k[9]), .B(k[10]), .Z(n27368)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i25632_2_lut.init = 16'heeee;
    ORCALUT4 i24665_2_lut (.A(k[3]), .B(k[2]), .Z(n26374)) /* synthesis lut_function=(A (B)) */ ;
    defparam i24665_2_lut.init = 16'h8888;
    ORCALUT4 i1_4_lut (.A(rx_state), .B(n5), .C(n26012), .D(k[5]), .Z(n9191)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i1_4_lut.init = 16'h2aaa;
    ORCALUT4 i1_4_lut_adj_680 (.A(n31281), .B(n26884), .C(n10), .D(k[10]), 
            .Z(n5)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_680.init = 16'h0010;
    ORCALUT4 i3_4_lut (.A(k[4]), .B(k[7]), .C(k[9]), .D(k[8]), .Z(n26884)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    ORCALUT4 i4_4_lut (.A(bitidx[1]), .B(k[1]), .C(k[3]), .D(k[2]), 
            .Z(n10)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i4_4_lut.init = 16'h1000;
    ORCALUT4 i4_4_lut_adj_681 (.A(uart_rx_c), .B(k[0]), .C(bitidx[3]), 
            .D(n6), .Z(n26012)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut_adj_681.init = 16'h0200;
    ORCALUT4 i1_2_lut (.A(k[6]), .B(k[11]), .Z(n6)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    ORCALUT4 i27061_4_lut (.A(rx_state), .B(n31279), .C(n29_adj_2163), 
            .D(n5), .Z(n28369)) /* synthesis lut_function=(!(A (C (D))+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam i27061_4_lut.init = 16'h4eee;
    ORCALUT4 i40_3_lut (.A(n27183), .B(n26012), .C(k[5]), .Z(n29_adj_2163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i40_3_lut.init = 16'hcaca;
    ORCALUT4 i3_4_lut_adj_682 (.A(k[11]), .B(k[0]), .C(bitidx[3]), .D(k[6]), 
            .Z(n27183)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut_adj_682.init = 16'h0080;
    CCU2B equal_641_12 (.A0(rx_state_N_230[7]), .B0(k[7]), .C0(rx_state_N_230[6]), 
          .D0(k[6]), .A1(rx_state_N_230[5]), .B1(k[5]), .C1(rx_state_N_230[4]), 
          .D1(k[4]), .CIN(n23136), .COUT(n23137));
    defparam equal_641_12.INIT0 = 16'h9009;
    defparam equal_641_12.INIT1 = 16'h9009;
    defparam equal_641_12.INJECT1_0 = "YES";
    defparam equal_641_12.INJECT1_1 = "YES";
    ORCALUT4 i14026_4_lut (.A(k[2]), .B(n53[2]), .C(rx_state), .D(n31279), 
            .Z(n10592)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i14026_4_lut.init = 16'hc0ca;
    ORCALUT4 i8741_4_lut (.A(k[3]), .B(n53[3]), .C(rx_state), .D(n31279), 
            .Z(n10590)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i8741_4_lut.init = 16'hc0ca;
    ORCALUT4 i8745_4_lut (.A(k[1]), .B(n53[1]), .C(rx_state), .D(n31279), 
            .Z(n10594)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i8745_4_lut.init = 16'hc0ca;
    ORCALUT4 i14020_4_lut (.A(k[4]), .B(n53[4]), .C(rx_state), .D(n31279), 
            .Z(n10588)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(14[16:24])
    defparam i14020_4_lut.init = 16'hc0ca;
    ORCALUT4 i8737_4_lut (.A(k[5]), .B(n53[5]), .C(rx_state), .D(n31279), 
            .Z(n10586)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i8737_4_lut.init = 16'hc0ca;
    FD1P3DX bitidx_i0 (.D(bitidx_3__N_182[0]), .SP(clk_op_enable_276), .CK(clk_op), 
            .CD(n31309), .Q(bitidx[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=63, LSE_LLINE=130, LSE_RLINE=131 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(26[10] 54[8])
    defparam bitidx_i0.GSR = "ENABLED";
    ORCALUT4 i8735_4_lut (.A(k[6]), .B(n53[6]), .C(rx_state), .D(n31279), 
            .Z(n10584)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_rx.v(36[14:19])
    defparam i8735_4_lut.init = 16'hc0ca;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module tv80n
//

module tv80n (clk_op, clk_op_enable_153, n31309, bus_din, clk_N_320, 
            \tstate[2] , n2596, n9385, sram_addr_0_7, sram_addr_0_6, 
            n26091, sram_addr_0_0, sram_addr_0_1, iorq_n, n31280, 
            n25751, n31057, n31045, wr_n, n28586, uart_rx_avail, 
            rx_avail_N_294, n10605, \ALU_Op_3__N_1297[3] , nxt_mreq_n_N_333, 
            n26604, mem_rd, cpu_dout, VCC_net, sram_go_N_88, sram_wen_c, 
            sram_cen_c, sram_oen_c, \BusA[6] , sram_addr_0_3, sram_addr_0_5, 
            sram_addr_0_4, n31295, sram_addr_0_2, n31298, n9435, n31044, 
            n31012, \BusA[5] , sram_addr_0_15, sram_addr_0_14, sram_addr_0_13, 
            sram_addr_0_12, sram_addr_0_11, sram_addr_0_10, sram_addr_0_9, 
            sram_addr_0_8, n6, n26750, n31138, n952, n251, n1172, 
            n178, n29060, n951, n30989, n943, n1698, n6_adj_37, 
            n31133, \Q_7__N_1746[8] , \Q_7__N_1737[8] ) /* synthesis syn_module_defined=1 */ ;
    input clk_op;
    input clk_op_enable_153;
    input n31309;
    input [7:0]bus_din;
    input clk_N_320;
    output \tstate[2] ;
    output n2596;
    output n9385;
    output sram_addr_0_7;
    output sram_addr_0_6;
    output n26091;
    output sram_addr_0_0;
    output sram_addr_0_1;
    output iorq_n;
    output n31280;
    input n25751;
    output n31057;
    output n31045;
    output wr_n;
    input n28586;
    input uart_rx_avail;
    input rx_avail_N_294;
    output n10605;
    output \ALU_Op_3__N_1297[3] ;
    output nxt_mreq_n_N_333;
    input n26604;
    output mem_rd;
    output [7:0]cpu_dout;
    input VCC_net;
    input sram_go_N_88;
    output sram_wen_c;
    output sram_cen_c;
    output sram_oen_c;
    output \BusA[6] ;
    output sram_addr_0_3;
    output sram_addr_0_5;
    output sram_addr_0_4;
    output n31295;
    output sram_addr_0_2;
    output n31298;
    input n9435;
    output n31044;
    output n31012;
    output \BusA[5] ;
    output sram_addr_0_15;
    output sram_addr_0_14;
    output sram_addr_0_13;
    output sram_addr_0_12;
    output sram_addr_0_11;
    output sram_addr_0_10;
    output sram_addr_0_9;
    output sram_addr_0_8;
    input n6;
    output n26750;
    output n31138;
    output n952;
    output n251;
    input n1172;
    output n178;
    input n29060;
    output n951;
    output n30989;
    output n943;
    output n1698;
    output n6_adj_37;
    output n31133;
    input \Q_7__N_1746[8] ;
    input \Q_7__N_1737[8] ;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    wire clk_N_320 /* synthesis is_inv_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(25[17:23])
    wire [7:0]di_reg;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(50[17:23])
    
    wire mreq_n, nxt_mreq_n, rd_n, nxt_rd_n;
    wire [6:0]tstate;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(52[17:23])
    
    wire n26642, write, iorq, iorq_N_340, n7, n31191, n31048;
    wire [6:0]MCycle;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(51[25:31])
    
    wire NoRead_N_1567;
    
    FD1P3IX di_reg__i0 (.D(bus_din[0]), .SP(clk_op_enable_153), .CD(n31309), 
            .CK(clk_op), .Q(di_reg[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i0.GSR = "ENABLED";
    FD1S3JX mreq_n_47 (.D(nxt_mreq_n), .CK(clk_N_320), .PD(n31309), .Q(mreq_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam mreq_n_47.GSR = "ENABLED";
    FD1S3JX rd_n_44 (.D(nxt_rd_n), .CK(clk_N_320), .PD(n31309), .Q(rd_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam rd_n_44.GSR = "ENABLED";
    ORCALUT4 i1692_3_lut_4_lut_4_lut (.A(tstate[1]), .B(\tstate[2] ), .C(n26642), 
            .D(write), .Z(n2596)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(101[15:39])
    defparam i1692_3_lut_4_lut_4_lut.init = 16'hce0e;
    ORCALUT4 iorq_I_0_1_lut (.A(iorq), .Z(iorq_N_340)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(104[28:34])
    defparam iorq_I_0_1_lut.init = 16'h5555;
    FD1P3IX di_reg__i7 (.D(bus_din[7]), .SP(clk_op_enable_153), .CD(n31309), 
            .CK(clk_op), .Q(di_reg[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i7.GSR = "ENABLED";
    FD1P3IX di_reg__i6 (.D(bus_din[6]), .SP(clk_op_enable_153), .CD(n31309), 
            .CK(clk_op), .Q(di_reg[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i6.GSR = "ENABLED";
    FD1P3IX di_reg__i5 (.D(bus_din[5]), .SP(clk_op_enable_153), .CD(n31309), 
            .CK(clk_op), .Q(di_reg[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i5.GSR = "ENABLED";
    FD1P3IX di_reg__i4 (.D(bus_din[4]), .SP(clk_op_enable_153), .CD(n31309), 
            .CK(clk_op), .Q(di_reg[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i4.GSR = "ENABLED";
    FD1P3IX di_reg__i3 (.D(bus_din[3]), .SP(clk_op_enable_153), .CD(n31309), 
            .CK(clk_op), .Q(di_reg[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i3.GSR = "ENABLED";
    FD1P3IX di_reg__i2 (.D(bus_din[2]), .SP(clk_op_enable_153), .CD(n31309), 
            .CK(clk_op), .Q(di_reg[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i2.GSR = "ENABLED";
    FD1P3IX di_reg__i1 (.D(bus_din[1]), .SP(clk_op_enable_153), .CD(n31309), 
            .CK(clk_op), .Q(di_reg[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(146[10] 155[8])
    defparam di_reg__i1.GSR = "ENABLED";
    ORCALUT4 i4_4_lut (.A(n7), .B(n9385), .C(sram_addr_0_7), .D(sram_addr_0_6), 
            .Z(n26091)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i4_4_lut.init = 16'hfeff;
    ORCALUT4 i2_2_lut (.A(sram_addr_0_0), .B(sram_addr_0_1), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_693 (.A(rd_n), .B(iorq_n), .Z(n31280)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_693.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_470_3_lut (.A(rd_n), .B(iorq_n), .C(n25751), 
            .Z(n31057)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_470_3_lut.init = 16'h1010;
    ORCALUT4 i27080_2_lut_rep_458_3_lut (.A(rd_n), .B(iorq_n), .C(n26091), 
            .Z(n31045)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i27080_2_lut_rep_458_3_lut.init = 16'h0101;
    FD1S3AY wr_n_45 (.D(n28586), .CK(clk_N_320), .Q(wr_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam wr_n_45.GSR = "ENABLED";
    ORCALUT4 i8756_3_lut_4_lut (.A(n31280), .B(n25751), .C(uart_rx_avail), 
            .D(rx_avail_N_294), .Z(n10605)) /* synthesis lut_function=(A (C+(D))+!A (B (D)+!B (C+(D)))) */ ;
    defparam i8756_3_lut_4_lut.init = 16'hffb0;
    ORCALUT4 nxt_mreq_n_I_18_4_lut (.A(iorq), .B(n31191), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n2596), .Z(nxt_mreq_n)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(100[9] 125[12])
    defparam nxt_mreq_n_I_18_4_lut.init = 16'h3a3f;
    ORCALUT4 i27087_2_lut (.A(\tstate[2] ), .B(write), .Z(nxt_mreq_n_N_333)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(109[15] 114[20])
    defparam i27087_2_lut.init = 16'h7777;
    ORCALUT4 tstate_1__I_0_2_lut_rep_604 (.A(tstate[1]), .B(\tstate[2] ), 
            .Z(n31191)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(101[15:39])
    defparam tstate_1__I_0_2_lut_rep_604.init = 16'heeee;
    ORCALUT4 i27083_3_lut_4_lut (.A(tstate[1]), .B(\tstate[2] ), .C(n26642), 
            .D(\ALU_Op_3__N_1297[3] ), .Z(nxt_rd_n)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(101[15:39])
    defparam i27083_3_lut_4_lut.init = 16'h11f1;
    ORCALUT4 i2_4_lut (.A(n31048), .B(write), .C(MCycle[6]), .D(NoRead_N_1567), 
            .Z(n26642)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut.init = 16'hffec;
    FD1S3JX iorq_n_46 (.D(iorq_N_340), .CK(clk_N_320), .PD(n26604), .Q(iorq_n)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=4, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(128[10] 144[8])
    defparam iorq_n_46.GSR = "ENABLED";
    ORCALUT4 i27275_2_lut (.A(rd_n), .B(mreq_n), .Z(mem_rd)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i27275_2_lut.init = 16'h1111;
    \tv80_core(Mode=0)  i_tv80_core (.sram_addr_0_0(sram_addr_0_0), .clk_op(clk_op), 
            .n31309(n31309), .\tstate[1] (tstate[1]), .cpu_dout({cpu_dout}), 
            .\ALU_Op_3__N_1297[3] (\ALU_Op_3__N_1297[3] ), .n7(MCycle[6]), 
            .\tstate[2] (\tstate[2] ), .bus_din({bus_din}), .di_reg({di_reg}), 
            .VCC_net(VCC_net), .sram_go_N_88(sram_go_N_88), .mreq_n(mreq_n), 
            .wr_n(wr_n), .sram_wen_c(sram_wen_c), .rd_n(rd_n), .sram_cen_c(sram_cen_c), 
            .sram_oen_c(sram_oen_c), .iorq(iorq), .\BusA[6] (\BusA[6] ), 
            .sram_addr_0_3(sram_addr_0_3), .sram_addr_0_5(sram_addr_0_5), 
            .sram_addr_0_4(sram_addr_0_4), .n31295(n31295), .sram_addr_0_2(sram_addr_0_2), 
            .n9385(n9385), .sram_addr_0_6(sram_addr_0_6), .sram_addr_0_1(sram_addr_0_1), 
            .n31298(n31298), .n9435(n9435), .n31044(n31044), .n31012(n31012), 
            .\BusA[5] (\BusA[5] ), .sram_addr_0_15(sram_addr_0_15), .sram_addr_0_14(sram_addr_0_14), 
            .sram_addr_0_13(sram_addr_0_13), .sram_addr_0_12(sram_addr_0_12), 
            .sram_addr_0_11(sram_addr_0_11), .sram_addr_0_10(sram_addr_0_10), 
            .sram_addr_0_9(sram_addr_0_9), .sram_addr_0_8(sram_addr_0_8), 
            .sram_addr_0_7(sram_addr_0_7), .n31280(n31280), .n6(n6), .n26750(n26750), 
            .write(write), .n31048(n31048), .NoRead_N_1567(NoRead_N_1567), 
            .n31138(n31138), .n952(n952), .n251(n251), .n1172(n1172), 
            .n178(n178), .n29060(n29060), .n951(n951), .n30989(n30989), 
            .n943(n943), .n1698(n1698), .n6_adj_36(n6_adj_37), .n31133(n31133), 
            .\Q_7__N_1746[8] (\Q_7__N_1746[8] ), .\Q_7__N_1737[8] (\Q_7__N_1737[8] )) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    
endmodule
//
// Verilog Description of module \tv80_core(Mode=0) 
//

module \tv80_core(Mode=0)  (sram_addr_0_0, clk_op, n31309, \tstate[1] , 
            cpu_dout, \ALU_Op_3__N_1297[3] , n7, \tstate[2] , bus_din, 
            di_reg, VCC_net, sram_go_N_88, mreq_n, wr_n, sram_wen_c, 
            rd_n, sram_cen_c, sram_oen_c, iorq, \BusA[6] , sram_addr_0_3, 
            sram_addr_0_5, sram_addr_0_4, n31295, sram_addr_0_2, n9385, 
            sram_addr_0_6, sram_addr_0_1, n31298, n9435, n31044, n31012, 
            \BusA[5] , sram_addr_0_15, sram_addr_0_14, sram_addr_0_13, 
            sram_addr_0_12, sram_addr_0_11, sram_addr_0_10, sram_addr_0_9, 
            sram_addr_0_8, sram_addr_0_7, n31280, n6, n26750, write, 
            n31048, NoRead_N_1567, n31138, n952, n251, n1172, n178, 
            n29060, n951, n30989, n943, n1698, n6_adj_36, n31133, 
            \Q_7__N_1746[8] , \Q_7__N_1737[8] ) /* synthesis syn_module_defined=1 */ ;
    output sram_addr_0_0;
    input clk_op;
    input n31309;
    output \tstate[1] ;
    output [7:0]cpu_dout;
    output \ALU_Op_3__N_1297[3] ;
    output n7;
    output \tstate[2] ;
    input [7:0]bus_din;
    input [7:0]di_reg;
    input VCC_net;
    input sram_go_N_88;
    input mreq_n;
    input wr_n;
    output sram_wen_c;
    input rd_n;
    output sram_cen_c;
    output sram_oen_c;
    output iorq;
    output \BusA[6] ;
    output sram_addr_0_3;
    output sram_addr_0_5;
    output sram_addr_0_4;
    output n31295;
    output sram_addr_0_2;
    output n9385;
    output sram_addr_0_6;
    output sram_addr_0_1;
    output n31298;
    input n9435;
    output n31044;
    output n31012;
    output \BusA[5] ;
    output sram_addr_0_15;
    output sram_addr_0_14;
    output sram_addr_0_13;
    output sram_addr_0_12;
    output sram_addr_0_11;
    output sram_addr_0_10;
    output sram_addr_0_9;
    output sram_addr_0_8;
    output sram_addr_0_7;
    input n31280;
    input n6;
    output n26750;
    output write;
    output n31048;
    output NoRead_N_1567;
    output n31138;
    output n952;
    output n251;
    input n1172;
    output n178;
    input n29060;
    output n951;
    output n30989;
    output n943;
    output n1698;
    output n6_adj_36;
    output n31133;
    input \Q_7__N_1746[8] ;
    input \Q_7__N_1737[8] ;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire n23196;
    wire [15:0]RegBusA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(104[17:24])
    wire [3:0]IncDec_16_3__N_1044;
    wire [1:0]ISet;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    
    wire n3;
    wire [15:0]ID16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(122[17:21])
    
    wire n23197, clk_op_enable_246;
    wire [15:0]n542;
    wire [2:0]RegAddrA_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(107[17:27])
    wire [3:0]Set_BusA_To;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(178[18:29])
    
    wire n1660, Auto_Wait_t1;
    wire [7:0]BusA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(153[17:21])
    wire [7:0]n1187;
    wire [7:0]IR;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(118[17:19])
    
    wire n25904, n33929;
    wire [2:0]TStates_2__N_1435;
    
    wire n25978, n23, n34, n23195, n23194, n31257, n57;
    wire [3:0]ALU_Op_3__N_1064;
    
    wire n31195, n31194, n25853, n5067, clk_op_enable_266, n23193, 
        n33958, n31276, n90, n33944, n56, n23192, n31226, n31250, 
        n9117, clk_op_enable_172;
    wire [7:0]IR_7__N_609;
    
    wire clk_op_enable_228;
    wire [1:0]ISet_1__N_633;
    wire [1:0]XY_State;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(140[17:25])
    
    wire clk_op_enable_218, n25924;
    wire [2:0]mcycles;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(164[17:24])
    wire [2:0]mcycles_d;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(167[17:26])
    wire [7:0]dout_7__N_709;
    wire [7:0]F;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(95[22:23])
    wire [7:0]F_7__N_661;
    wire [7:0]Ap;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(96[17:19])
    
    wire clk_op_enable_217;
    wire [7:0]ACC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(95[17:20])
    wire [7:0]Fp;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(96[21:23])
    wire [7:0]I;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(97[17:18])
    
    wire clk_op_enable_203;
    wire [15:0]SP;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(101[17:19])
    wire [15:0]SP_15__N_669;
    wire [2:0]RegAddrB_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(109[17:27])
    wire [3:0]Set_BusB_To;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(177[18:29])
    
    wire n1669;
    wire [4:0]Read_To_Reg_r;
    wire [4:0]Read_To_Reg_r_4__N_717;
    wire [3:0]ALU_Op_r;
    wire [3:0]ALU_Op_r_3__N_722;
    
    wire BTR_r, BTR_r_N_1016;
    wire [15:0]RegBusA_r;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(120[17:26])
    
    wire PreserveC_r, PreserveC;
    wire [2:0]RegAddrC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(111[17:25])
    
    wire n1684, n27110;
    wire [7:0]BusB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(152[17:21])
    wire [7:0]BusB_7__N_760;
    wire [7:0]BusA_7__N_768;
    wire [15:0]PC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(101[21:23])
    
    wire clk_op_enable_196;
    wire [15:0]PC_15__N_593;
    wire [2:0]Pre_XY_F_M;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(141[17:27])
    
    wire clk_op_enable_181, n25070;
    wire [6:0]mcycle_6__N_779;
    wire [6:0]tstate;
    wire [6:0]tstate_6__N_786;
    wire [7:0]ACC_7__N_653;
    
    wire Halt_FF, n27543, IntE_FF2, IntE_FF2_N_915, No_BTR, No_BTR_N_964;
    wire [6:0]mcycle;
    
    wire last_mcycle, last_tstate, Arith16_r, Save_ALU_r, n1357, n26706, 
        Auto_Wait_t2, n1366, n10652;
    wire [15:0]n938;
    
    wire n2696, n10717, n31272, n31123, n30260, n3284, n100, GND_net;
    wire [7:0]n1177;
    
    wire n27743;
    wire [7:0]n1196;
    
    wire n45, n36, Z16_r, n26924, n10654, n25883;
    wire [15:0]SP16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[18:22])
    
    wire Save_ALU, n15, n27727, n31322, n25907, n27160, n1165, 
        n31266, n33921, n4_adj_2037;
    wire [7:0]Save_Mux;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(123[17:25])
    
    wire n4_adj_2038, n4_adj_2039;
    wire [15:0]RegBusC;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(106[17:24])
    wire [15:0]SP16_A;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[24:30])
    
    wire n31265, n13, n5_adj_2040, n5_adj_2041, n5_adj_2042, n10699;
    wire [1:0]Prefix;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(174[17:23])
    
    wire clk_op_enable_271, n10694, n10, n10715;
    wire [2:0]Special_LD;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(193[18:28])
    
    wire n31317, n31260, n31172, n31173, n31356, n31355, n31359, 
        n31358, n12185, n30975, n33932, n30981, n30970;
    wire [15:0]n1004;
    
    wire n9093, RegWEH_N_872, n13_adj_2044, n30130;
    wire [7:0]n995;
    
    wire n30131;
    wire [3:0]Set_BusA_To_3__N_1230;
    
    wire n33633, n33635, n30973, n30129, n30127, n30128, n33627, 
        n33629, n3996;
    wire [15:0]n855;
    
    wire n10174, n31095, n16668, n5_adj_2045;
    wire [3:0]IncDec_16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(173[17:26])
    
    wire n817, n29258, n2730, n29259, n26109, n25731, n30976, 
        n27456, n29255, n29256;
    wire [7:0]Save_Mux_7__N_521;
    
    wire n31068, n30977, n31043, n9151, n29253, n31096, n9091, 
        n11, n29254, n30979, n11943, n10145, n30984, n31098, n4_adj_2046;
    wire [15:0]TmpAddr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(117[17:24])
    
    wire n31058, n294;
    wire [15:0]n525;
    
    wire RegAddrA_2__N_468;
    wire [2:0]RegAddrA_2__N_464;
    wire [2:0]RegAddrA;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(108[17:25])
    
    wire n9153, n9092, n30985, n13_adj_2047, n10_adj_2048, n13_adj_2049, 
        n10_adj_2050, n13_adj_2051, n10_adj_2052, n13_adj_2053, n10_adj_2054, 
        n13_adj_2055, n10_adj_2056, n13_adj_2057, n10_adj_2058, n2670, 
        Jump, n27764;
    wire [15:0]PC16;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(214[18:22])
    wire [15:0]n559;
    
    wire n30310, n31246, Call_N_1537, n31290, n30307, n26532, n10581, 
        IncDecZ_N_988, IncDecZ_N_990, n10582, n27434;
    wire [15:0]n508;
    
    wire n27835, n27437, n27440, Alternate, clk_op_enable_162, Alternate_N_907, 
        n27443, n31247, n31163, n25995, n31088, n27446, n31150, 
        n3_adj_2059, n28, n27449, IncDecZ, n27452, n27461, n27774, 
        n30999, n30993;
    wire [7:0]n1154;
    
    wire n27500, n1221, n27524, n1223, n27432;
    wire [15:0]n474;
    
    wire n27861, n27531, n27532, n31079, n30309, n27435, n27438, 
        n27441, n27444, n27447, n13_adj_2060, n14, n31979, n14_adj_2061, 
        n29946, n31978, n31981;
    wire [7:0]F_Out;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(155[17:22])
    
    wire n31027, n31982, n8_adj_2062;
    wire [3:0]ALU_Op_3__N_1068;
    
    wire n31097, n31980, n30972, n25862, n31025, n27609, n32685, 
        n14_adj_2063, n1228, n31019, n31018;
    wire [7:0]RegDIH_7__N_444;
    wire [7:0]RegDIH_7__N_743;
    wire [7:0]RegDIH;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(102[17:23])
    
    wire n27450;
    wire [7:0]RegDIL_7__N_453;
    wire [7:0]RegDIL_7__N_752;
    wire [7:0]RegDIL;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(103[17:23])
    
    wire n27459, n4_adj_2064, n5_adj_2065, n1, n2_adj_2066, RegsL_7_2, 
        RegsL_6_2, n28016, n25858, RegsL_5_2, RegsL_4_2, n28015, 
        RegsL_3_2, RegsL_2_2, n28014, RegsL_1_2, RegsL_0_2, n28013, 
        RegsL_7_3, RegsL_6_3, n28009, n25873, RegsL_5_3, RegsL_4_3, 
        n28008, n27496;
    wire [7:0]ALU_Q;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(154[17:22])
    
    wire n27893, n27529, n33531, n33532, RegsL_3_3, RegsL_2_3, n28007, 
        n27522, n27603, RegsL_1_3, RegsL_0_3, n28006, RegsH_7_2, 
        RegsH_6_2, n28079, RegsH_5_2, RegsH_4_2, n28078, n27498, 
        n33923, RegsH_3_2, RegsH_2_2, n28077, RegsH_1_2, RegsH_0_2, 
        n28076, RegsH_7_6, RegsH_6_6, n28072, RegsH_5_6, RegsH_4_6, 
        n28071, RegsH_3_6, RegsH_2_6, n28070, RegsH_1_6, RegsH_0_6, 
        n28069, n33930, n25910, n31153, n13_adj_2067, RegsL_7_4, 
        RegsL_6_4, n28002, n30974, n27406, n27407, RegsL_5_4, RegsL_4_4, 
        n28001, RegsH_7_7, RegsH_6_7, n28065, RegsH_5_7, RegsH_4_7, 
        n28064, RegsH_3_7, RegsH_2_7, n28063, RegsH_1_7, RegsH_0_7, 
        n28062, RegsL_3_4, RegsL_2_4, n28000, RegsL_1_4, RegsL_0_4, 
        n27999, RegsH_7_4, RegsH_6_4, n28058, RegsH_5_4, RegsH_4_4, 
        n28057, RegsH_3_4, RegsH_2_4, n28056, n25859, RegsH_1_4, 
        RegsH_0_4, n28055, RegsH_7_5, RegsH_6_5, n28051, RegsH_5_5, 
        RegsH_4_5, n28050, RegsH_3_5, RegsH_2_5, n28049, n27453, 
        n27455, n27863;
    wire [15:0]n389;
    
    wire RegsH_1_5, RegsH_0_5, n28048, RegsL_7_5, RegsL_6_5, n27995, 
        RegsL_5_5, RegsL_4_5, n27994, RegsL_3_5, RegsL_2_5, n27993, 
        RegsL_1_5, RegsL_0_5, n27992, RegsH_7_3, RegsH_6_3, n28044, 
        RegsH_5_3, RegsH_4_3, n28043, RegsH_3_3, RegsH_2_3, n28042, 
        RegsH_1_3, RegsH_0_3, n28041, RegsL_7_6, RegsL_6_6, n27988, 
        RegsL_5_6, RegsL_4_6, n27987, RegsL_3_6, RegsL_2_6, n27986, 
        RegsL_1_6, RegsL_0_6, n27985, n10_adj_2068, n30963, RegsL_7_7, 
        RegsL_6_7, n27981, RegsL_5_7, RegsL_4_7, n27980, RegsL_3_7, 
        RegsL_2_7, n27979, RegsL_1_7, RegsL_0_7, n27978, RegsH_7_1, 
        RegsH_6_1, n27974, RegsH_5_1, RegsH_4_1, n27973, RegsH_3_1, 
        RegsH_2_1, n27972, RegsH_1_1, RegsH_0_1, n27971, RegsH_7_0, 
        RegsH_6_0, n28037, n25864, n27429, n27431, RegsH_5_0, RegsH_4_0, 
        n28036, RegsH_3_0, RegsH_2_0, n28035, RegsH_1_0, RegsH_0_0, 
        n28034, n27426, n27428, RegsL_7_0, RegsL_6_0, n28030, RegsL_5_0, 
        RegsL_4_0, n28029, RegsL_3_0, RegsL_2_0, n28028, n27423, 
        n27425, n31306, n25704, n30659, RegsL_1_0, RegsL_0_0, n28027, 
        RegsL_7_1, RegsL_6_1, n28023, RegsL_5_1, RegsL_4_1, n28022, 
        RegsL_3_1, RegsL_2_1, n28021, RegsL_1_1, RegsL_0_1, n28020, 
        n30969, n27414, n27416, n25872, n27411, n27413, n27409, 
        n27410, n27408, n27412, n27405, n10158, n31348, n30698, 
        n30700, n30701, n31360, m1_n_N_807, n16375, stop, n31059;
    wire [15:0]RegBusB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(105[17:24])
    wire [2:0]RegAddrA_2__N_735;
    
    wire n2258, n27433;
    wire [7:0]n1133;
    
    wire n4_adj_2069, n13_adj_2070, n32681, n13_adj_2071, n14_adj_2072, 
        n32680, n32682, F_Out_7__N_1690, n32683, n26668, n27332, 
        n32684, n27436, n33927, n18, n31357, n31081, n27439, n27442, 
        n25868, n27445;
    wire [2:0]RegAddrB;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(110[17:25])
    
    wire n27448, n27451, RegAddrA_2__N_738, n10176, n32819, n32820, 
        n29904, n32817;
    wire [8:0]Q_7__N_1595;
    
    wire n32818;
    wire [7:0]Q_7__N_1635;
    
    wire n25869, n27460, n31072, n10230;
    wire [7:0]n900;
    
    wire n1146, n27415, n27424, n27915, n27495;
    wire [7:0]n882;
    wire [7:0]n986;
    
    wire n27956, n27489, n27519, n4_adj_2073, n1_adj_2074, n27427, 
        n27430, n4_adj_2075, n27004, n31212, n5_adj_2076, n31227, 
        n31228, n31078, n31244, n46, n6_adj_2077, n30971, n33534, 
        n9, n94, n100_adj_2078, n4_adj_2079, n47, n27490, n27487, 
        n23223;
    wire [15:0]n87;
    
    wire n14_adj_2081, n27488, n23222, n27534, n27536, n27692, n27484, 
        n27661, n27483, n27537, n27539, n27540, n27542, n27417, 
        n27419, n27481, n27480, n23221, n27420, n27422, n23220, 
        n27478, n27477, n27486, n27475, n27474, n27472, n23219, 
        n27471, n27501, n27503, n27510, n27512, n23218, n27469, 
        n27468, n27466, n27402, n27403;
    wire [2:0]tstates;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(168[17:24])
    
    wire n1_adj_2084, n2_adj_2085, n27465, n4_adj_2086, n5_adj_2087, 
        n27463, n27462, n27541, n14_adj_2088, n27538, n14_adj_2089, 
        n27535, n14_adj_2090, n27511, n14_adj_2091, n12250, n14_adj_2092, 
        n27502, n27521, n27905, n27421, n14_adj_2093, n14_adj_2094, 
        n27418, n9149, n9150, n9152, n8_adj_2095, n8_adj_2096, n10713, 
        n8_adj_2097, n8_adj_2098, n8_adj_2099, n9146, n9147, n33530, 
        n9148, n33533, n8_adj_2100, n31362, n33924, n31193, n62, 
        n31149, n26885, n26854, n33630, n33631, n31278, clk_op_enable_270, 
        n33632;
    wire [2:0]n2116;
    
    wire n27071, clk_op_enable_189, n30982, n23524, XY_Ind, n31188, 
        n10711, n8_adj_2101, n16290, n26017, n31296, n26946, n31075, 
        n23_adj_2102, n12, n31307, n27164;
    wire [2:0]RegAddrC_2__N_732;
    
    wire n27035;
    wire [2:0]Set_Addr_To_2__N_1441;
    
    wire n10709, n31288, n31291, n31101, n6_adj_2103, n31345, n61, 
        n31060;
    wire [2:0]RegAddrB_r_2__N_729;
    
    wire n31024, n26594, n25923, n10617, n10644, n10646, n10648, 
        n10650, n25950, n31186, n31187, n30658, n30661, n33942, 
        n17, n27, n23_adj_2104, n30, n27485, n14_adj_2105, n23217, 
        n26, n18_adj_2106, n6_adj_2107, n31202, n10481, n30968, 
        n10348, n10326, n27454, n27765, n52, n41, n27689, n50, 
        n27113, n26754, n38, n25706, n23216, n27464, n14_adj_2108, 
        n27467, n14_adj_2109, n4_adj_2110, n27470, n14_adj_2111, n27473, 
        n14_adj_2112, n27476, n14_adj_2113, n27479, n14_adj_2114, 
        n27482, n14_adj_2115, n1224, n4_adj_2116, n16293;
    wire [15:0]n798;
    
    wire n10719, n10707, n10_adj_2117, n27722, n55, n31282, n10705, 
        n10703, n10701, n23215, JumpE, n31230, n31111, n31231, 
        n27040, n27528;
    wire [3:0]ALU_Op_adj_2160;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(179[18:24])
    
    wire n30132, n33956, n31255, n19, n10723;
    wire [2:0]RegAddrA_r_2__N_726;
    
    wire n10721, n9_adj_2118, n23214, n23213, RegWEH_N_894;
    wire [15:0]PC16_B_15__N_557;
    
    wire n26000, n31023, n10231, n31065, n4_adj_2119, n13_adj_2120, 
        n17380, n31067, n31066;
    wire [15:0]ID16_B;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(217[18:24])
    wire [15:0]SP16_B;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(216[32:38])
    
    wire n31293, n31127, n4_adj_2121, n23577, n3693, n23583, n23585, 
        n23587, n23212, n23589, n23591, n23593, n23595, n23211, 
        n9088, n5_adj_2122, n17316, n5_adj_2123, n9089, n9086, Inc_WZ, 
        n5_adj_2124, n9087, n5_adj_2125, n58, n31020, n9090, n31234, 
        n31233, n26156, n7_adj_2126, n5_adj_2127, clk_op_enable_273, 
        n26233, n30965, n23210, n5_adj_2128, n1142, n17398, n37, 
        n26764, n13_adj_2129, n7_adj_2130, n31262, n4_adj_2131, n27883, 
        n4_adj_2132, n30967, n4_adj_2133, n13_adj_2134, n24338, n31040, 
        n10_adj_2135, n10727, n33954, n31177, n31180, n31178, n9_adj_2136, 
        n31181, RegWEH_N_890, n7851, n6_adj_2137, n10725, n27917, 
        n23209, n27526, n30699, n10493, n4_adj_2139, n30662, n30663, 
        n8_adj_2140, n29257, n27907, n23457, n17001, n33925, n27310, 
        n8_adj_2141, n31268, n31254, n31152, n31190;
    wire [2:0]Set_Addr_To_2__N_1072;
    
    wire n31192, n31315, n6_adj_2142, n30660, n23208, n25959, n23207, 
        n4_adj_2143, n25912, n92, n48_adj_2144, n23206, n4_adj_2145, 
        n10_adj_2146, n9_adj_2147, n23205, n33952, n23204, n4_adj_2148, 
        n23203, n27491, n3942, n27520, n7_adj_2149, n23202, n9_adj_2150, 
        n7_adj_2151, n26034, n31061, n31124, n29, n23201, n31983, 
        n8_adj_2152, Read_To_Acc, n8_adj_2153, n30261, n31167, n33950, 
        n23200, n23199, n23198, n31107, n23_adj_2154, n27101, n30962, 
        n31220, n11_adj_2155, F_Out_7__N_1689, n33948, F_Out_7__N_1677, 
        n33946, n76;
    wire [2:0]TStates_2__N_1438;
    
    wire n31370, n50_adj_2156, n1169, n27011, n31051;
    wire [2:0]TStates_2__N_1432;
    
    wire n14_adj_2158, n31289, n31299, n30081, n31213, n31217, n31218, 
        n31136, n29902, n10142, n31137, n31222, n31132, n31120;
    
    CCU2B RegBusA_15__I_0_add_4_11 (.A0(RegBusA[9]), .B0(IncDec_16_3__N_1044[3]), 
          .C0(ISet[1]), .D0(n3), .A1(RegBusA[10]), .B1(IncDec_16_3__N_1044[3]), 
          .C1(ISet[1]), .D1(n3), .CIN(n23196), .COUT(n23197), .S0(ID16[9]), 
          .S1(ID16[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_11.INIT0 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_11.INIT1 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_11.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_11.INJECT1_1 = "NO";
    FD1P3DX A__i1 (.D(n542[0]), .SP(clk_op_enable_246), .CK(clk_op), .CD(n31309), 
            .Q(sram_addr_0_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i1.GSR = "ENABLED";
    FD1S3JX RegAddrA_r_i0_i0 (.D(n1660), .CK(clk_op), .PD(Set_BusA_To[1]), 
            .Q(RegAddrA_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i0_i0.GSR = "ENABLED";
    ORCALUT4 mux_293_i7_3_lut_4_lut (.A(\tstate[1] ), .B(Auto_Wait_t1), 
            .C(cpu_dout[6]), .D(BusA[2]), .Z(n1187[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[19:52])
    defparam mux_293_i7_3_lut_4_lut.init = 16'hf2d0;
    ORCALUT4 i7_4_lut_4_lut (.A(IR[0]), .B(n25904), .C(n33929), .D(\ALU_Op_3__N_1297[3] ), 
            .Z(TStates_2__N_1435[0])) /* synthesis lut_function=(!(A (D)+!A (B (C+(D))+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i7_4_lut_4_lut.init = 16'h00bf;
    ORCALUT4 i59_4_lut_4_lut (.A(IR[0]), .B(n25978), .C(IR[7]), .D(n23), 
            .Z(n34)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i59_4_lut_4_lut.init = 16'hf404;
    CCU2B RegBusA_15__I_0_add_4_9 (.A0(RegBusA[7]), .B0(IncDec_16_3__N_1044[3]), 
          .C0(ISet[1]), .D0(n3), .A1(RegBusA[8]), .B1(IncDec_16_3__N_1044[3]), 
          .C1(ISet[1]), .D1(n3), .CIN(n23195), .COUT(n23196), .S0(ID16[7]), 
          .S1(ID16[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_9.INIT0 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_9.INIT1 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_9.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_9.INJECT1_1 = "NO";
    CCU2B RegBusA_15__I_0_add_4_7 (.A0(RegBusA[5]), .B0(IncDec_16_3__N_1044[3]), 
          .C0(ISet[1]), .D0(n3), .A1(RegBusA[6]), .B1(IncDec_16_3__N_1044[3]), 
          .C1(ISet[1]), .D1(n3), .CIN(n23194), .COUT(n23195), .S0(ID16[5]), 
          .S1(ID16[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_7.INIT0 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_7.INIT1 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_7.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i14922_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n31257), 
            .C(n57), .D(IR[5]), .Z(ALU_Op_3__N_1064[2])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i14922_4_lut_4_lut.init = 16'h7400;
    ORCALUT4 mux_293_i6_3_lut_4_lut (.A(\tstate[1] ), .B(Auto_Wait_t1), 
            .C(cpu_dout[5]), .D(BusA[1]), .Z(n1187[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[19:52])
    defparam mux_293_i6_3_lut_4_lut.init = 16'hf2d0;
    ORCALUT4 i8853_4_lut_4_lut (.A(n31195), .B(n31194), .C(n25853), .D(n5067), 
            .Z(clk_op_enable_266)) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8853_4_lut_4_lut.init = 16'hff54;
    CCU2B RegBusA_15__I_0_add_4_5 (.A0(RegBusA[3]), .B0(IncDec_16_3__N_1044[3]), 
          .C0(ISet[1]), .D0(n3), .A1(RegBusA[4]), .B1(IncDec_16_3__N_1044[3]), 
          .C1(ISet[1]), .D1(n3), .CIN(n23193), .COUT(n23194), .S0(ID16[3]), 
          .S1(ID16[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_5.INIT0 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_5.INIT1 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_5.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_4_lut (.A(n33958), .B(n31276), .C(n90), .D(n33944), 
            .Z(n56)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_4_lut_4_lut.init = 16'hfdf0;
    CCU2B RegBusA_15__I_0_add_4_3 (.A0(RegBusA[1]), .B0(IncDec_16_3__N_1044[3]), 
          .C0(ISet[1]), .D0(n3), .A1(RegBusA[2]), .B1(IncDec_16_3__N_1044[3]), 
          .C1(ISet[1]), .D1(n3), .CIN(n23192), .COUT(n23193), .S0(ID16[1]), 
          .S1(ID16[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_3.INIT0 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_3.INIT1 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_3.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i2_2_lut_3_lut_4_lut_4_lut (.A(IR[0]), .B(n31226), .C(n31250), 
            .D(mcycle[2]), .Z(n9117)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    FD1P3DX IR_i0_i0 (.D(IR_7__N_609[0]), .SP(clk_op_enable_172), .CK(clk_op), 
            .CD(n31309), .Q(IR[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i0.GSR = "ENABLED";
    FD1P3DX ISet_i0_i0 (.D(ISet_1__N_633[0]), .SP(clk_op_enable_228), .CK(clk_op), 
            .CD(n31309), .Q(ISet[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ISet_i0_i0.GSR = "ENABLED";
    FD1P3DX XY_State_i0_i0 (.D(n25924), .SP(clk_op_enable_218), .CK(clk_op), 
            .CD(n31309), .Q(XY_State[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_State_i0_i0.GSR = "ENABLED";
    FD1S3DX mcycles_i0_i0 (.D(mcycles_d[0]), .CK(clk_op), .CD(n31309), 
            .Q(mcycles[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i0_i0.GSR = "ENABLED";
    FD1S3DX dout_i0_i0 (.D(dout_7__N_709[0]), .CK(clk_op), .CD(n31309), 
            .Q(cpu_dout[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i0_i0.GSR = "ENABLED";
    FD1S3BX F_i0_i0 (.D(F_7__N_661[0]), .CK(clk_op), .PD(n31309), .Q(F[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i0_i0.GSR = "ENABLED";
    FD1P3BX Ap_i0_i0 (.D(ACC[0]), .SP(clk_op_enable_217), .CK(clk_op), 
            .PD(n31309), .Q(Ap[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i0.GSR = "ENABLED";
    FD1P3BX Fp_i0_i0 (.D(F[0]), .SP(clk_op_enable_217), .CK(clk_op), .PD(n31309), 
            .Q(Fp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i0.GSR = "ENABLED";
    FD1P3DX I_i0_i0 (.D(ACC[0]), .SP(clk_op_enable_203), .CK(clk_op), 
            .CD(n31309), .Q(I[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i0.GSR = "ENABLED";
    FD1S3BX SP_i0_i0 (.D(SP_15__N_669[0]), .CK(clk_op), .PD(n31309), .Q(SP[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i0.GSR = "ENABLED";
    FD1S3JX RegAddrB_r_i0_i0 (.D(n1669), .CK(clk_op), .PD(Set_BusB_To[1]), 
            .Q(RegAddrB_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i0_i0.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r_i0 (.D(Read_To_Reg_r_4__N_717[0]), .CK(clk_op), 
            .CD(n31309), .Q(Read_To_Reg_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r_i0.GSR = "ENABLED";
    FD1S3DX ALU_Op_r_i0 (.D(ALU_Op_r_3__N_722[0]), .CK(clk_op), .CD(n31309), 
            .Q(ALU_Op_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r_i0.GSR = "ENABLED";
    FD1S3DX BTR_r_758 (.D(BTR_r_N_1016), .CK(clk_op), .CD(n31309), .Q(BTR_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam BTR_r_758.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i0 (.D(RegBusA[0]), .CK(clk_op), .Q(RegBusA_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i0.GSR = "ENABLED";
    FD1S3DX PreserveC_r_762 (.D(PreserveC), .CK(clk_op), .CD(n31309), 
            .Q(PreserveC_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PreserveC_r_762.GSR = "ENABLED";
    FD1S3JX RegAddrC_i0_i0 (.D(n27110), .CK(clk_op), .PD(n1684), .Q(RegAddrC[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i0_i0.GSR = "ENABLED";
    FD1S3AX BusB_i0_i0 (.D(BusB_7__N_760[0]), .CK(clk_op), .Q(BusB[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i0_i0.GSR = "ENABLED";
    FD1S3AX BusA_i0_i0 (.D(BusA_7__N_768[0]), .CK(clk_op), .Q(BusA[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i0_i0.GSR = "ENABLED";
    FD1P3DX PC_i0_i0 (.D(PC_15__N_593[0]), .SP(clk_op_enable_196), .CK(clk_op), 
            .CD(n31309), .Q(PC[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i0.GSR = "ENABLED";
    FD1P3DX Pre_XY_F_M_i0_i0 (.D(n25070), .SP(clk_op_enable_181), .CK(clk_op), 
            .CD(n31309), .Q(Pre_XY_F_M[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i0.GSR = "ENABLED";
    FD1S3BX mcycle_i0 (.D(mcycle_6__N_779[0]), .CK(clk_op), .PD(n31309), 
            .Q(\ALU_Op_3__N_1297[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i0.GSR = "ENABLED";
    FD1S3BX tstate_i0 (.D(tstate_6__N_786[0]), .CK(clk_op), .PD(n31309), 
            .Q(tstate[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i0.GSR = "ENABLED";
    FD1S3BX ACC_i0_i0 (.D(ACC_7__N_653[0]), .CK(clk_op), .PD(n31309), 
            .Q(ACC[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i0_i0.GSR = "ENABLED";
    FD1P3DX Halt_FF_778 (.D(n27543), .SP(last_tstate), .CK(clk_op), .CD(n31309), 
            .Q(Halt_FF)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Halt_FF_778.GSR = "ENABLED";
    FD1S3DX IntE_FF2_783 (.D(IntE_FF2_N_915), .CK(clk_op), .CD(n31309), 
            .Q(IntE_FF2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam IntE_FF2_783.GSR = "ENABLED";
    FD1S3DX No_BTR_784 (.D(No_BTR_N_964), .CK(clk_op), .CD(n31309), .Q(No_BTR)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam No_BTR_784.GSR = "ENABLED";
    ORCALUT4 mux_293_i5_3_lut_4_lut (.A(\tstate[1] ), .B(Auto_Wait_t1), 
            .C(cpu_dout[4]), .D(BusA[0]), .Z(n1187[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[19:52])
    defparam mux_293_i5_3_lut_4_lut.init = 16'hf2d0;
    FD1S3DX Save_ALU_r_761 (.D(n1357), .CK(clk_op), .CD(n31309), .Q(Save_ALU_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Save_ALU_r_761.GSR = "ENABLED";
    ORCALUT4 mux_293_i4_3_lut_4_lut (.A(\tstate[1] ), .B(Auto_Wait_t1), 
            .C(cpu_dout[3]), .D(BusB[7]), .Z(n1187[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[19:52])
    defparam mux_293_i4_3_lut_4_lut.init = 16'hf2d0;
    FD1S3DX Auto_Wait_t1_785 (.D(n26706), .CK(clk_op), .CD(n31309), .Q(Auto_Wait_t1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Auto_Wait_t1_785.GSR = "ENABLED";
    FD1S3DX Auto_Wait_t2_786 (.D(n1366), .CK(clk_op), .CD(n31309), .Q(Auto_Wait_t2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Auto_Wait_t2_786.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut (.A(n31195), .B(Halt_FF), .C(bus_din[2]), 
            .Z(n10652)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h7070;
    ORCALUT4 i8868_3_lut (.A(n938[6]), .B(di_reg[6]), .C(n2696), .Z(n10717)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8868_3_lut.init = 16'hcaca;
    ORCALUT4 n44_bdd_4_lut_28121_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n31272), 
            .C(IR[0]), .D(n31123), .Z(n30260)) /* synthesis lut_function=(A (B (C))+!A !(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam n44_bdd_4_lut_28121_4_lut.init = 16'h80c0;
    ORCALUT4 i90_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n3284), 
            .C(IR[1]), .D(IR[5]), .Z(n100)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i90_3_lut_4_lut_4_lut.init = 16'h5c0c;
    CCU2B RegBusA_15__I_0_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(RegBusA[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n23192), .S1(ID16[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_1.INIT0 = 16'h0000;
    defparam RegBusA_15__I_0_add_4_1.INIT1 = 16'h555a;
    defparam RegBusA_15__I_0_add_4_1.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_1.INJECT1_1 = "NO";
    PFUMX mux_294_i1 (.BLUT(n1177[0]), .ALUT(n1187[0]), .C0(n27743), .Z(n1196[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i79_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n45), .C(IR[6]), 
            .D(IR[1]), .Z(n36)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i79_4_lut_4_lut.init = 16'hc505;
    FD1S3DX Z16_r_759 (.D(n26924), .CK(clk_op), .CD(n31309), .Q(Z16_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Z16_r_759.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_adj_563 (.A(n31195), .B(Halt_FF), .C(bus_din[1]), 
            .Z(n10654)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_3_lut_adj_563.init = 16'h7070;
    ORCALUT4 mux_293_i3_3_lut_4_lut (.A(\tstate[1] ), .B(Auto_Wait_t1), 
            .C(cpu_dout[2]), .D(BusB[6]), .Z(n1187[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[19:52])
    defparam mux_293_i3_3_lut_4_lut.init = 16'hf2d0;
    FD1S3DX Arith16_r_757 (.D(n25883), .CK(clk_op), .CD(n31309), .Q(Arith16_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Arith16_r_757.GSR = "ENABLED";
    PFUMX mux_294_i2 (.BLUT(n1177[1]), .ALUT(n1187[1]), .C0(n27743), .Z(n1196[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 mux_293_i2_3_lut_4_lut (.A(\tstate[1] ), .B(Auto_Wait_t1), 
            .C(cpu_dout[1]), .D(BusB[5]), .Z(n1187[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[19:52])
    defparam mux_293_i2_3_lut_4_lut.init = 16'hf2d0;
    PFUMX mux_294_i3 (.BLUT(n1177[2]), .ALUT(n1187[2]), .C0(n27743), .Z(n1196[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 mux_212_i7_4_lut (.A(SP16[6]), .B(bus_din[6]), .C(n31195), 
            .D(n31194), .Z(n938[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i7_4_lut.init = 16'hcac0;
    ORCALUT4 i14618_2_lut_3_lut (.A(last_tstate), .B(n31195), .C(Save_ALU), 
            .Z(n1357)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i14618_2_lut_3_lut.init = 16'h2020;
    ORCALUT4 i27197_2_lut_3_lut (.A(tstate[3]), .B(n15), .C(n31195), .Z(n27727)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i27197_2_lut_3_lut.init = 16'hf8f8;
    ORCALUT4 i2_4_lut (.A(n31322), .B(n25907), .C(n27160), .D(ISet[1]), 
            .Z(n1165)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(798[19:50])
    defparam i2_4_lut.init = 16'hc800;
    ORCALUT4 i5_2_lut_3_lut_4_lut (.A(Read_To_Reg_r[1]), .B(n31266), .C(Read_To_Reg_r[0]), 
            .D(n33921), .Z(n4_adj_2037)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_564 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Read_To_Reg_r[0]), .D(Save_Mux[6]), .Z(n4_adj_2038)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_564.init = 16'h8000;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_565 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Read_To_Reg_r[0]), .D(Save_Mux[0]), .Z(n4_adj_2039)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_565.init = 16'h8000;
    ORCALUT4 SP_15__I_0_794_i6_3_lut (.A(SP[5]), .B(RegBusC[5]), .C(tstate[3]), 
            .Z(SP16_A[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_794_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut (.A(Read_To_Reg_r[0]), .B(n31265), .C(Read_To_Reg_r[1]), 
            .Z(n13)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut.init = 16'hdfdf;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_566 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Read_To_Reg_r[0]), .D(n33921), .Z(n5_adj_2040)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_566.init = 16'h4000;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_567 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Read_To_Reg_r[0]), .D(Save_Mux[0]), .Z(n5_adj_2041)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_567.init = 16'h4000;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_568 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Read_To_Reg_r[0]), .D(Save_Mux[6]), .Z(n5_adj_2042)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_568.init = 16'h4000;
    ORCALUT4 SP_15__I_0_794_i7_3_lut (.A(SP[6]), .B(RegBusC[6]), .C(tstate[3]), 
            .Z(SP16_A[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_794_i7_3_lut.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_794_i4_3_lut (.A(SP[3]), .B(RegBusC[3]), .C(tstate[3]), 
            .Z(SP16_A[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_794_i4_3_lut.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_794_i5_3_lut (.A(SP[4]), .B(RegBusC[4]), .C(tstate[3]), 
            .Z(SP16_A[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_794_i5_3_lut.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_794_i2_3_lut (.A(SP[1]), .B(RegBusC[1]), .C(tstate[3]), 
            .Z(SP16_A[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_794_i2_3_lut.init = 16'hcaca;
    ORCALUT4 SP_15__I_0_794_i3_3_lut (.A(SP[2]), .B(RegBusC[2]), .C(tstate[3]), 
            .Z(SP16_A[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP_15__I_0_794_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i8850_4_lut (.A(SP16[15]), .B(di_reg[7]), .C(n5067), .D(n31194), 
            .Z(n10699)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8850_4_lut.init = 16'hcac0;
    PFUMX mux_294_i4 (.BLUT(n1177[3]), .ALUT(n1187[3]), .C0(n27743), .Z(n1196[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i12_4_lut (.A(mcycle[5]), .B(Prefix[0]), .C(n31195), .D(\tstate[2] ), 
            .Z(clk_op_enable_271)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i12_4_lut.init = 16'h3a0a;
    ORCALUT4 i8845_3_lut (.A(n938[0]), .B(di_reg[0]), .C(n2696), .Z(n10694)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8845_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i1_4_lut (.A(SP16[0]), .B(bus_din[0]), .C(n31195), 
            .D(n31194), .Z(n938[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i1_4_lut.init = 16'hcac0;
    ORCALUT4 i1_2_lut_4_lut_4_lut_4_lut_4_lut (.A(IR[0]), .B(mcycle[1]), 
            .C(\ALU_Op_3__N_1297[3] ), .Z(n10)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_2_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0101;
    ORCALUT4 i8866_3_lut (.A(n938[7]), .B(di_reg[7]), .C(n2696), .Z(n10715)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8866_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i6_3_lut_4_lut (.A(bus_din[5]), .B(di_reg[5]), .C(tstate[3]), 
            .D(n15), .Z(n938[5])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i6_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_212_i4_3_lut_4_lut (.A(bus_din[3]), .B(di_reg[3]), .C(tstate[3]), 
            .D(n15), .Z(n938[3])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i4_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_212_i5_3_lut_4_lut (.A(bus_din[4]), .B(di_reg[4]), .C(tstate[3]), 
            .D(n15), .Z(n938[4])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i5_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 i27262_4_lut (.A(Special_LD[0]), .B(n31317), .C(n31260), 
            .D(n31172), .Z(clk_op_enable_203)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27262_4_lut.init = 16'h8000;
    PFUMX mux_294_i5 (.BLUT(n1177[4]), .ALUT(n1187[4]), .C0(n27743), .Z(n1196[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i1_4_lut_then_3_lut (.A(n31173), .B(IR[4]), .C(F[6]), .Z(n31356)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_4_lut_then_3_lut.init = 16'ha2a2;
    ORCALUT4 i1_4_lut_else_3_lut (.A(n31173), .B(IR[4]), .C(F[2]), .D(IR[0]), 
            .Z(n31355)) /* synthesis lut_function=(!((B (C+(D))+!B (D))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_4_lut_else_3_lut.init = 16'h002a;
    ORCALUT4 i1_2_lut_3_lut_adj_569 (.A(sram_go_N_88), .B(mreq_n), .C(wr_n), 
            .Z(sram_wen_c)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    defparam i1_2_lut_3_lut_adj_569.init = 16'hfefe;
    ORCALUT4 i1_4_lut_then_4_lut (.A(n7), .B(Pre_XY_F_M[0]), .C(Pre_XY_F_M[1]), 
            .D(Pre_XY_F_M[2]), .Z(n31359)) /* synthesis lut_function=(A+(B (C (D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i1_4_lut_then_4_lut.init = 16'heaab;
    ORCALUT4 i1_3_lut_4_lut (.A(sram_go_N_88), .B(mreq_n), .C(wr_n), .D(rd_n), 
            .Z(sram_cen_c)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    defparam i1_3_lut_4_lut.init = 16'hfeee;
    ORCALUT4 i1_4_lut_else_4_lut (.A(n7), .Z(n31358)) /* synthesis lut_function=(A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i1_4_lut_else_4_lut.init = 16'haaaa;
    ORCALUT4 i2_3_lut_4_lut (.A(sram_go_N_88), .B(mreq_n), .C(wr_n), .D(rd_n), 
            .Z(sram_oen_c)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(20[17:26])
    defparam i2_3_lut_4_lut.init = 16'hffef;
    PFUMX mux_294_i6 (.BLUT(n1177[5]), .ALUT(n1187[5]), .C0(n27743), .Z(n1196[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i1_2_lut_rep_383_2_lut_4_lut (.A(n12185), .B(n30975), .C(n33932), 
            .D(n30981), .Z(n30970)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_rep_383_2_lut_4_lut.init = 16'hdc00;
    ORCALUT4 mux_329_i1_4_lut (.A(n1004[0]), .B(n9093), .C(RegWEH_N_872), 
            .D(n13_adj_2044), .Z(SP_15__N_669[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i1_4_lut.init = 16'heaca;
    ORCALUT4 n30130_bdd_3_lut (.A(n30130), .B(n995[0]), .C(PreserveC_r), 
            .Z(n30131)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n30130_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 Set_BusA_To_3__N_1230_0__bdd_3_lut_4_lut (.A(Set_BusA_To_3__N_1230[0]), 
            .B(n33633), .C(IR[7]), .D(IR[5]), .Z(n33635)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam Set_BusA_To_3__N_1230_0__bdd_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 Carry_v_bdd_4_lut_28088 (.A(n30973), .B(ALU_Op_r[2]), .C(ALU_Op_r[0]), 
            .D(ALU_Op_r[1]), .Z(n30129)) /* synthesis lut_function=(!(A (B+(D))+!A !(B (C (D))+!B (D)))) */ ;
    defparam Carry_v_bdd_4_lut_28088.init = 16'h5122;
    ORCALUT4 n30127_bdd_3_lut (.A(n30127), .B(F[0]), .C(ALU_Op_r[1]), 
            .Z(n30128)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n30127_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 n33628_bdd_3_lut_4_lut (.A(n33627), .B(Set_BusA_To_3__N_1230[0]), 
            .C(IR[7]), .D(IR[0]), .Z(n33629)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam n33628_bdd_3_lut_4_lut.init = 16'hccca;
    ORCALUT4 n3996_bdd_4_lut_28089 (.A(n3996), .B(ALU_Op_r[2]), .C(ALU_Op_r[0]), 
            .D(F[0]), .Z(n30127)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+!(C (D)))) */ ;
    defparam n3996_bdd_4_lut_28089.init = 16'hba8a;
    PFUMX mux_294_i7 (.BLUT(n1177[6]), .ALUT(n1187[6]), .C0(n27743), .Z(n1196[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 mux_222_i1_3_lut (.A(n855[0]), .B(SP[0]), .C(n10174), .Z(n1004[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i1_4_lut (.A(SP16[0]), .B(RegBusC[0]), .C(n31095), 
            .D(n16668), .Z(n855[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i1_4_lut.init = 16'hac0c;
    ORCALUT4 i3_4_lut (.A(n5_adj_2045), .B(\tstate[2] ), .C(IncDec_16[1]), 
            .D(n817), .Z(n16668)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'ha080;
    ORCALUT4 i1_2_lut (.A(IncDec_16[2]), .B(IncDec_16[0]), .Z(n5_adj_2045)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    ORCALUT4 i196_2_lut (.A(tstate[4]), .B(\ALU_Op_3__N_1297[3] ), .Z(n817)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(698[56:80])
    defparam i196_2_lut.init = 16'h8888;
    ORCALUT4 n29258_bdd_2_lut (.A(n29258), .B(n2730), .Z(n29259)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n29258_bdd_2_lut.init = 16'h2222;
    ORCALUT4 i1_3_lut_rep_389 (.A(Read_To_Reg_r[0]), .B(n26109), .C(n25731), 
            .Z(n30976)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i1_3_lut_rep_389.init = 16'hdcdc;
    ORCALUT4 n27456_bdd_3_lut_28038 (.A(n27456), .B(n29255), .C(ALU_Op_r[3]), 
            .Z(n29256)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n27456_bdd_3_lut_28038.init = 16'hcaca;
    ORCALUT4 Save_Mux_7__I_0_i4_3_lut_rep_390 (.A(Save_Mux_7__N_521[3]), .B(BusB[3]), 
            .C(n31068), .Z(n30977)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam Save_Mux_7__I_0_i4_3_lut_rep_390.init = 16'hcaca;
    ORCALUT4 i1_2_lut_4_lut (.A(Save_Mux_7__N_521[3]), .B(BusB[3]), .C(n31068), 
            .D(n31043), .Z(n9151)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam i1_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 n11_bdd_3_lut_27497 (.A(ALU_Op_r[2]), .B(ALU_Op_r[0]), .C(F[4]), 
            .Z(n29253)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam n11_bdd_3_lut_27497.init = 16'hd0d0;
    ORCALUT4 i1_2_lut_4_lut_adj_570 (.A(Save_Mux_7__N_521[3]), .B(BusB[3]), 
            .C(n31068), .D(n31096), .Z(n9091)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam i1_2_lut_4_lut_adj_570.init = 16'hca00;
    ORCALUT4 n11_bdd_3_lut_28034 (.A(n11), .B(ALU_Op_r[2]), .C(ALU_Op_r[0]), 
            .Z(n29254)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam n11_bdd_3_lut_28034.init = 16'hb8b8;
    ORCALUT4 i1_3_lut_rep_392 (.A(Read_To_Reg_r[0]), .B(n26109), .C(n25731), 
            .Z(n30979)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i1_3_lut_rep_392.init = 16'hecec;
    PFUMX mux_294_i8 (.BLUT(n1177[7]), .ALUT(n1187[7]), .C0(n27743), .Z(n1196[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i1_3_lut_4_lut_adj_571 (.A(last_tstate), .B(n31195), .C(n11943), 
            .D(n10145), .Z(clk_op_enable_196)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_3_lut_4_lut_adj_571.init = 16'hf2f0;
    ORCALUT4 i5_2_lut_3_lut (.A(Read_To_Reg_r[0]), .B(n30984), .C(n31098), 
            .Z(n4_adj_2046)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut.init = 16'h8080;
    ORCALUT4 mux_139_i9_4_lut (.A(TmpAddr[8]), .B(RegBusC[8]), .C(n31058), 
            .D(n294), .Z(n525[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i9_4_lut.init = 16'hcac0;
    ORCALUT4 RegAddrA_2__I_0_i2_rep_16_3_lut_4_lut (.A(RegAddrA_2__N_468), 
            .B(n33932), .C(IncDec_16[1]), .D(RegAddrA_2__N_464[1]), .Z(RegAddrA[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(935[11:95])
    defparam RegAddrA_2__I_0_i2_rep_16_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 Save_Mux_7__I_0_i2_3_lut_rep_397 (.A(Save_Mux_7__N_521[1]), .B(BusB[1]), 
            .C(n31068), .Z(n30984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam Save_Mux_7__I_0_i2_3_lut_rep_397.init = 16'hcaca;
    ORCALUT4 i1_2_lut_4_lut_adj_572 (.A(Save_Mux_7__N_521[1]), .B(BusB[1]), 
            .C(n31068), .D(n31043), .Z(n9153)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam i1_2_lut_4_lut_adj_572.init = 16'hca00;
    ORCALUT4 i1_2_lut_4_lut_adj_573 (.A(Save_Mux_7__N_521[1]), .B(BusB[1]), 
            .C(n31068), .D(n31096), .Z(n9092)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam i1_2_lut_4_lut_adj_573.init = 16'hca00;
    ORCALUT4 i26834_3_lut_4_lut (.A(F[6]), .B(Set_BusB_To[0]), .C(n30985), 
            .D(n13_adj_2047), .Z(n10_adj_2048)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam i26834_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i26832_3_lut_4_lut (.A(F[5]), .B(Set_BusB_To[0]), .C(n30985), 
            .D(n13_adj_2049), .Z(n10_adj_2050)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam i26832_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i26830_3_lut_4_lut (.A(F[4]), .B(Set_BusB_To[0]), .C(n30985), 
            .D(n13_adj_2051), .Z(n10_adj_2052)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam i26830_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i26828_3_lut_4_lut (.A(F[3]), .B(Set_BusB_To[0]), .C(n30985), 
            .D(n13_adj_2053), .Z(n10_adj_2054)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam i26828_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i26826_3_lut_4_lut (.A(F[2]), .B(Set_BusB_To[0]), .C(n30985), 
            .D(n13_adj_2055), .Z(n10_adj_2056)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam i26826_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i26824_3_lut_4_lut (.A(F[1]), .B(Set_BusB_To[0]), .C(n30985), 
            .D(n13_adj_2057), .Z(n10_adj_2058)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam i26824_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i27191_2_lut_3_lut (.A(n2670), .B(n31195), .C(Jump), .Z(n27764)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i27191_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i8823_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[7]), .D(n559[7]), 
            .Z(PC_15__N_593[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i8823_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i8825_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[6]), .D(n559[6]), 
            .Z(PC_15__N_593[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i8825_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i8833_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[2]), .D(n559[2]), 
            .Z(PC_15__N_593[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i8833_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 last_tstate_keep_bdd_4_lut_28437 (.A(last_tstate), .B(n2670), 
            .C(n294), .D(n31058), .Z(n30310)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam last_tstate_keep_bdd_4_lut_28437.init = 16'heeec;
    ORCALUT4 i8827_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[5]), .D(n559[5]), 
            .Z(PC_15__N_593[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i8827_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_2_lut_rep_659 (.A(mcycle[1]), .B(mcycle[2]), .Z(n31246)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_2_lut_rep_659.init = 16'h4444;
    ORCALUT4 i8829_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[4]), .D(n559[4]), 
            .Z(PC_15__N_593[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i8829_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i8831_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[3]), .D(n559[3]), 
            .Z(PC_15__N_593[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i8831_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i8789_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[0]), .D(n559[0]), 
            .Z(PC_15__N_593[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i8789_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_141_i9_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[8]), 
            .D(di_reg[0]), .Z(n559[8])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_141_i9_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_141_i10_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[9]), 
            .D(di_reg[1]), .Z(n559[9])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_141_i10_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_141_i11_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[10]), 
            .D(di_reg[2]), .Z(n559[10])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_141_i11_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_141_i12_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[11]), 
            .D(di_reg[3]), .Z(n559[11])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_141_i12_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_141_i13_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[12]), 
            .D(di_reg[4]), .Z(n559[12])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_141_i13_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 Call_N_1537_bdd_4_lut_28436 (.A(Call_N_1537), .B(n31290), .C(\tstate[2] ), 
            .D(Halt_FF), .Z(n30307)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;
    defparam Call_N_1537_bdd_4_lut_28436.init = 16'h00d0;
    ORCALUT4 mux_141_i14_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[13]), 
            .D(di_reg[5]), .Z(n559[13])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_141_i14_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_141_i15_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[14]), 
            .D(di_reg[6]), .Z(n559[14])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_141_i15_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i2_3_lut_4_lut_adj_574 (.A(mcycle[1]), .B(mcycle[2]), .C(tstate[3]), 
            .D(n26532), .Z(n5067)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i2_3_lut_4_lut_adj_574.init = 16'h0040;
    ORCALUT4 mux_141_i16_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[15]), 
            .D(di_reg[7]), .Z(n559[15])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_141_i16_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i8835_3_lut_4_lut (.A(n2670), .B(n31195), .C(PC16[1]), .D(n559[1]), 
            .Z(PC_15__N_593[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i8835_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i8733 (.BLUT(n10581), .ALUT(IncDecZ_N_988), .C0(IncDecZ_N_990), 
          .Z(n10582));
    L6MUX21 mux_140_i9 (.D0(n27434), .D1(n508[8]), .SD(n27835), .Z(n542[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    L6MUX21 mux_140_i10 (.D0(n27437), .D1(n508[9]), .SD(n27835), .Z(n542[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    L6MUX21 mux_140_i11 (.D0(n27440), .D1(n508[10]), .SD(n27835), .Z(n542[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    FD1P3DX Alternate_755 (.D(Alternate_N_907), .SP(clk_op_enable_162), 
            .CK(clk_op), .CD(n31309), .Q(Alternate)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Alternate_755.GSR = "ENABLED";
    L6MUX21 mux_140_i12 (.D0(n27443), .D1(n508[11]), .SD(n27835), .Z(n542[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 select_592_Select_1_i4_2_lut_rep_576_3_lut (.A(mcycle[1]), .B(mcycle[2]), 
            .C(n31247), .Z(n31163)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam select_592_Select_1_i4_2_lut_rep_576_3_lut.init = 16'h4040;
    ORCALUT4 i1_2_lut_3_lut_adj_575 (.A(mcycle[1]), .B(mcycle[2]), .C(n31247), 
            .Z(n25995)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_2_lut_3_lut_adj_575.init = 16'h0404;
    ORCALUT4 reduce_or_152_i1_2_lut_rep_501_3_lut_4_lut_3_lut (.A(mcycle[1]), 
            .B(mcycle[2]), .C(mcycle[3]), .Z(n31088)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam reduce_or_152_i1_2_lut_rep_501_3_lut_4_lut_3_lut.init = 16'h5454;
    L6MUX21 mux_140_i13 (.D0(n27446), .D1(n508[12]), .SD(n27835), .Z(n542[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 MCycles_2__I_117_Select_0_i28_4_lut_3_lut (.A(mcycle[1]), .B(n31150), 
            .C(n3_adj_2059), .Z(n28)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam MCycles_2__I_117_Select_0_i28_4_lut_3_lut.init = 16'h3131;
    L6MUX21 mux_140_i14 (.D0(n27449), .D1(n508[13]), .SD(n27835), .Z(n542[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    FD1S3AX IncDecZ_767 (.D(n10582), .CK(clk_op), .Q(IncDecZ)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam IncDecZ_767.GSR = "ENABLED";
    L6MUX21 mux_140_i15 (.D0(n27452), .D1(n508[14]), .SD(n27835), .Z(n542[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    L6MUX21 mux_140_i16 (.D0(n27461), .D1(n508[15]), .SD(n27774), .Z(n542[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i302_3_lut_4_lut (.A(n30999), .B(n30993), .C(n1154[5]), .D(n27500), 
            .Z(n1221)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i302_3_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i304_3_lut_4_lut (.A(n30999), .B(n30993), .C(n1154[3]), .D(n27524), 
            .Z(n1223)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i304_3_lut_4_lut.init = 16'hf4b0;
    PFUMX mux_138_i9 (.BLUT(n27432), .ALUT(n474[8]), .C0(n27861), .Z(n508[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    L6MUX21 i25797 (.D0(n27531), .D1(n27532), .SD(mcycles[2]), .Z(last_mcycle));
    ORCALUT4 n30308_bdd_2_lut_3_lut (.A(n30307), .B(n31079), .C(Jump), 
            .Z(n30309)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n30308_bdd_2_lut_3_lut.init = 16'h0808;
    PFUMX mux_138_i10 (.BLUT(n27435), .ALUT(n474[9]), .C0(n27861), .Z(n508[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_138_i11 (.BLUT(n27438), .ALUT(n474[10]), .C0(n27861), .Z(n508[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_138_i12 (.BLUT(n27441), .ALUT(n474[11]), .C0(n27861), .Z(n508[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_138_i13 (.BLUT(n27444), .ALUT(n474[12]), .C0(n27861), .Z(n508[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_138_i14 (.BLUT(n27447), .ALUT(n474[13]), .C0(n27861), .Z(n508[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 n31195_bdd_2_lut (.A(n13_adj_2060), .B(n14), .Z(n31979)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n31195_bdd_2_lut.init = 16'h1111;
    ORCALUT4 F_Out_6__bdd_2_lut_29880 (.A(n14_adj_2061), .B(n29946), .Z(n31978)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam F_Out_6__bdd_2_lut_29880.init = 16'h4444;
    ORCALUT4 n31981_bdd_3_lut (.A(n31981), .B(F_Out[6]), .C(n31027), .Z(n31982)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n31981_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i14860_4_lut (.A(n8_adj_2062), .B(clk_op_enable_246), .C(ALU_Op_3__N_1068[0]), 
            .D(ISet[1]), .Z(ALU_Op_r_3__N_722[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i14860_4_lut.init = 16'hc088;
    ORCALUT4 n31195_bdd_4_lut (.A(n31195), .B(n31097), .C(F[6]), .D(Fp[6]), 
            .Z(n31980)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam n31195_bdd_4_lut.init = 16'hf4b0;
    ORCALUT4 i1_2_lut_3_lut_3_lut (.A(n30981), .B(n30972), .C(PC[8]), 
            .Z(n25862)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_3_lut.init = 16'h8080;
    ORCALUT4 i309_4_lut_4_lut (.A(n31025), .B(n27609), .C(n32685), .D(n14_adj_2063), 
            .Z(n1228)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(848[19:47])
    defparam i309_4_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i27284_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIH_7__N_444[4]), 
            .D(RegDIH_7__N_743[4]), .Z(RegDIH[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27284_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i27281_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIH_7__N_444[5]), 
            .D(RegDIH_7__N_743[5]), .Z(RegDIH[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27281_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i27282_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIH_7__N_444[6]), 
            .D(RegDIH_7__N_743[6]), .Z(RegDIH[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27282_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i27287_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIH_7__N_444[2]), 
            .D(RegDIH_7__N_743[2]), .Z(RegDIH[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27287_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i27286_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIH_7__N_444[1]), 
            .D(RegDIH_7__N_743[1]), .Z(RegDIH[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27286_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i27279_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIH_7__N_444[7]), 
            .D(RegDIH_7__N_743[7]), .Z(RegDIH[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27279_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i27288_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIH_7__N_444[0]), 
            .D(RegDIH_7__N_743[0]), .Z(RegDIH[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27288_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i27283_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIH_7__N_444[3]), 
            .D(RegDIH_7__N_743[3]), .Z(RegDIH[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27283_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_138_i15 (.BLUT(n27450), .ALUT(n474[14]), .C0(n27861), .Z(n508[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i27280_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIL_7__N_453[7]), 
            .D(RegDIL_7__N_752[7]), .Z(RegDIL[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27280_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_138_i16 (.BLUT(n27459), .ALUT(n474[15]), .C0(n27861), .Z(n508[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i27285_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIL_7__N_453[6]), 
            .D(RegDIL_7__N_752[6]), .Z(RegDIL[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27285_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i25796 (.BLUT(n4_adj_2064), .ALUT(n5_adj_2065), .C0(mcycles[1]), 
          .Z(n27532));
    ORCALUT4 i27289_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIL_7__N_453[5]), 
            .D(RegDIL_7__N_752[5]), .Z(RegDIL[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27289_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i27291_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIL_7__N_453[4]), 
            .D(RegDIL_7__N_752[4]), .Z(RegDIL[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27291_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i27290_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIL_7__N_453[3]), 
            .D(RegDIL_7__N_752[3]), .Z(RegDIL[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27290_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i25795 (.BLUT(n1), .ALUT(n2_adj_2066), .C0(mcycles[1]), .Z(n27531));
    ORCALUT4 i27293_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIL_7__N_453[2]), 
            .D(RegDIL_7__N_752[2]), .Z(RegDIL[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27293_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i27292_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIL_7__N_453[1]), 
            .D(RegDIL_7__N_752[1]), .Z(RegDIL[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27292_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i27294_3_lut_4_lut (.A(n31019), .B(n31018), .C(RegDIL_7__N_453[0]), 
            .D(RegDIL_7__N_752[0]), .Z(RegDIL[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1005[12] 1014[12])
    defparam i27294_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26280_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_7_2), 
            .D(RegsL_6_2), .Z(n28016)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26280_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_2_lut_3_lut_3_lut_adj_576 (.A(n30981), .B(n30972), .C(PC[13]), 
            .Z(n25858)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_576.init = 16'h8080;
    ORCALUT4 i26279_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_5_2), 
            .D(RegsL_4_2), .Z(n28015)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26279_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_212_i8_4_lut (.A(SP16[7]), .B(bus_din[7]), .C(n31195), 
            .D(n31194), .Z(n938[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i8_4_lut.init = 16'hcac0;
    ORCALUT4 i26278_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_3_2), 
            .D(RegsL_2_2), .Z(n28014)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26278_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26277_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_1_2), 
            .D(RegsL_0_2), .Z(n28013)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26277_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26273_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_7_3), 
            .D(RegsL_6_3), .Z(n28009)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26273_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_2_lut_3_lut_3_lut_adj_577 (.A(n30981), .B(n30972), .C(PC[14]), 
            .Z(n25873)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_577.init = 16'h8080;
    ORCALUT4 i26272_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_5_3), 
            .D(RegsL_4_3), .Z(n28008)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26272_3_lut_4_lut.init = 16'hf1e0;
    PFUMX ALU_Q_7__I_0_i8 (.BLUT(n27496), .ALUT(ALU_Q[7]), .C0(n27893), 
          .Z(Save_Mux_7__N_521[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 n33531_bdd_3_lut_4_lut (.A(n27529), .B(ALU_Op_r[2]), .C(ALU_Op_r[1]), 
            .D(n33531), .Z(n33532)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam n33531_bdd_3_lut_4_lut.init = 16'h2f20;
    ORCALUT4 i26271_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_3_3), 
            .D(RegsL_2_3), .Z(n28007)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26271_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_276_i4 (.BLUT(n27522), .ALUT(F_Out[3]), .C0(n27603), .Z(n1154[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i26270_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_1_3), 
            .D(RegsL_0_3), .Z(n28006)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26270_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26343_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_7_2), 
            .D(RegsH_6_2), .Z(n28079)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26343_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26342_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_5_2), 
            .D(RegsH_4_2), .Z(n28078)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26342_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_276_i6 (.BLUT(n27498), .ALUT(F_Out[5]), .C0(n27603), .Z(n1154[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i1_2_lut_rep_733 (.A(mcycle[3]), .B(mcycle[4]), .C(mcycle[5]), 
            .Z(n33923)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_2_lut_rep_733.init = 16'hfefe;
    ORCALUT4 i26341_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_3_2), 
            .D(RegsH_2_2), .Z(n28077)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26341_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26340_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_1_2), 
            .D(RegsH_0_2), .Z(n28076)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26340_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26336_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_7_6), 
            .D(RegsH_6_6), .Z(n28072)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26336_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26335_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_5_6), 
            .D(RegsH_4_6), .Z(n28071)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26335_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26334_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_3_6), 
            .D(RegsH_2_6), .Z(n28070)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26334_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26333_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_1_6), 
            .D(RegsH_0_6), .Z(n28069)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26333_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_4_lut (.A(n33930), .B(n25910), .C(n31153), .D(IR[2]), 
            .Z(n13_adj_2067)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i1_4_lut.init = 16'ha088;
    ORCALUT4 i26266_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_7_4), 
            .D(RegsL_6_4), .Z(n28002)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26266_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26986_3_lut_4_lut (.A(PC[1]), .B(n30970), .C(n30974), .D(n27406), 
            .Z(n27407)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i26986_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i26265_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_5_4), 
            .D(RegsL_4_4), .Z(n28001)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26265_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26329_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_7_7), 
            .D(RegsH_6_7), .Z(n28065)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26329_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26328_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_5_7), 
            .D(RegsH_4_7), .Z(n28064)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26328_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26327_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_3_7), 
            .D(RegsH_2_7), .Z(n28063)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26327_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26326_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_1_7), 
            .D(RegsH_0_7), .Z(n28062)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26326_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26264_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_3_4), 
            .D(RegsL_2_4), .Z(n28000)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26264_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26263_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_1_4), 
            .D(RegsL_0_4), .Z(n27999)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26263_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26322_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_7_4), 
            .D(RegsH_6_4), .Z(n28058)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26322_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26321_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_5_4), 
            .D(RegsH_4_4), .Z(n28057)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26321_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26320_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_3_4), 
            .D(RegsH_2_4), .Z(n28056)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26320_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_2_lut_3_lut_3_lut_adj_578 (.A(n30981), .B(n30972), .C(PC[12]), 
            .Z(n25859)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_578.init = 16'h8080;
    ORCALUT4 i26319_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_1_4), 
            .D(RegsH_0_4), .Z(n28055)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26319_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26315_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_7_5), 
            .D(RegsH_6_5), .Z(n28051)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26315_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26314_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_5_5), 
            .D(RegsH_4_5), .Z(n28050)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26314_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26313_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_3_5), 
            .D(RegsH_2_5), .Z(n28049)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26313_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_131_Mux_0_i7 (.BLUT(n27453), .ALUT(n27455), .C0(n27863), 
          .Z(n389[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i26312_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_1_5), 
            .D(RegsH_0_5), .Z(n28048)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26312_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_141_i1_4_lut (.A(RegBusC[0]), .B(TmpAddr[0]), .C(n10145), 
            .D(n31058), .Z(n559[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i1_4_lut.init = 16'hcac0;
    ORCALUT4 i26259_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_7_5), 
            .D(RegsL_6_5), .Z(n27995)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26259_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26258_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_5_5), 
            .D(RegsL_4_5), .Z(n27994)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26258_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26257_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_3_5), 
            .D(RegsL_2_5), .Z(n27993)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26257_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26256_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_1_5), 
            .D(RegsL_0_5), .Z(n27992)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26256_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26308_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_7_3), 
            .D(RegsH_6_3), .Z(n28044)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26308_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26307_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_5_3), 
            .D(RegsH_4_3), .Z(n28043)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26307_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26306_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_3_3), 
            .D(RegsH_2_3), .Z(n28042)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26306_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26305_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_1_3), 
            .D(RegsH_0_3), .Z(n28041)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26305_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26252_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_7_6), 
            .D(RegsL_6_6), .Z(n27988)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26252_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26251_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_5_6), 
            .D(RegsL_4_6), .Z(n27987)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26251_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26250_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_3_6), 
            .D(RegsL_2_6), .Z(n27986)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26250_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26249_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_1_6), 
            .D(RegsL_0_6), .Z(n27985)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26249_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_276_i8 (.BLUT(n10_adj_2068), .ALUT(F_Out[7]), .C0(n30963), 
          .Z(n1154[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i26245_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_7_7), 
            .D(RegsL_6_7), .Z(n27981)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26245_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26244_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_5_7), 
            .D(RegsL_4_7), .Z(n27980)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26244_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26243_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_3_7), 
            .D(RegsL_2_7), .Z(n27979)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26243_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26242_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_1_7), 
            .D(RegsL_0_7), .Z(n27978)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26242_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26238_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_7_1), 
            .D(RegsH_6_1), .Z(n27974)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26238_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26237_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_5_1), 
            .D(RegsH_4_1), .Z(n27973)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26237_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26236_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_3_1), 
            .D(RegsH_2_1), .Z(n27972)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26236_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26235_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_1_1), 
            .D(RegsH_0_1), .Z(n27971)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26235_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26301_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_7_0), 
            .D(RegsH_6_0), .Z(n28037)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26301_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_2_lut_3_lut_3_lut_adj_579 (.A(n30981), .B(n30972), .C(PC[10]), 
            .Z(n25864)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_579.init = 16'h8080;
    PFUMX mux_131_Mux_7_i7 (.BLUT(n27429), .ALUT(n27431), .C0(n27863), 
          .Z(n389[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i26300_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_5_0), 
            .D(RegsH_4_0), .Z(n28036)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26300_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26299_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_3_0), 
            .D(RegsH_2_0), .Z(n28035)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26299_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26298_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsH_1_0), 
            .D(RegsH_0_0), .Z(n28034)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26298_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_131_Mux_6_i7 (.BLUT(n27426), .ALUT(n27428), .C0(n27863), 
          .Z(n389[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i26294_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_7_0), 
            .D(RegsL_6_0), .Z(n28030)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26294_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26293_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_5_0), 
            .D(RegsL_4_0), .Z(n28029)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26293_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26292_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_3_0), 
            .D(RegsL_2_0), .Z(n28028)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26292_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_131_Mux_5_i7 (.BLUT(n27423), .ALUT(n27425), .C0(n27863), 
          .Z(n389[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 n2908_bdd_4_lut (.A(n31306), .B(mcycle[5]), .C(n25704), .D(n7), 
            .Z(n30659)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C)+!B))) */ ;
    defparam n2908_bdd_4_lut.init = 16'h0c04;
    ORCALUT4 i26291_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_1_0), 
            .D(RegsL_0_0), .Z(n28027)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26291_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26287_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_7_1), 
            .D(RegsL_6_1), .Z(n28023)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26287_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26286_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_5_1), 
            .D(RegsL_4_1), .Z(n28022)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26286_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26285_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_3_1), 
            .D(RegsL_2_1), .Z(n28021)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26285_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i26284_3_lut_4_lut (.A(RegAddrB_r[0]), .B(n31019), .C(RegsL_1_1), 
            .D(RegsL_0_1), .Z(n28020)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(949[9:31])
    defparam i26284_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_2_lut_rep_382_4_lut (.A(n33932), .B(n30981), .C(n30972), 
            .D(n30974), .Z(n30969)) /* synthesis lut_function=(A (B+!(D))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam i1_2_lut_rep_382_4_lut.init = 16'hc8ff;
    PFUMX mux_131_Mux_4_i7 (.BLUT(n27414), .ALUT(n27416), .C0(n27863), 
          .Z(n389[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i1_2_lut_3_lut_3_lut_adj_580 (.A(n30981), .B(n30972), .C(PC[9]), 
            .Z(n25872)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_580.init = 16'h8080;
    ORCALUT4 i2_3_lut_rep_678 (.A(Read_To_Reg_r[4]), .B(Read_To_Reg_r[3]), 
            .C(Read_To_Reg_r[2]), .Z(n31265)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_3_lut_rep_678.init = 16'hf7f7;
    ORCALUT4 i2_3_lut_rep_679 (.A(Read_To_Reg_r[4]), .B(Read_To_Reg_r[2]), 
            .C(Read_To_Reg_r[3]), .Z(n31266)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i2_3_lut_rep_679.init = 16'h2020;
    PFUMX mux_131_Mux_3_i7 (.BLUT(n27411), .ALUT(n27413), .C0(n27863), 
          .Z(n389[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i26988_3_lut_4_lut (.A(PC[2]), .B(n30970), .C(n30974), .D(n27409), 
            .Z(n27410)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i26988_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i1_2_lut_adj_581 (.A(last_tstate), .B(n12185), .Z(clk_op_enable_181)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_2_lut_adj_581.init = 16'h2222;
    PFUMX mux_131_Mux_2_i7 (.BLUT(n27408), .ALUT(n27410), .C0(n27863), 
          .Z(n389[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i26990_3_lut_4_lut (.A(PC[3]), .B(n30970), .C(n30974), .D(n27412), 
            .Z(n27413)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i26990_3_lut_4_lut.init = 16'h8f80;
    PFUMX mux_131_Mux_1_i7 (.BLUT(n27405), .ALUT(n27407), .C0(n27863), 
          .Z(n389[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 n10158_bdd_3_lut (.A(n10158), .B(n31348), .C(BusB[0]), .Z(n30698)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n10158_bdd_3_lut.init = 16'he4e4;
    ORCALUT4 di_reg_0__bdd_3_lut_29720 (.A(di_reg[0]), .B(n30700), .C(Save_ALU_r), 
            .Z(n30701)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_0__bdd_3_lut_29720.init = 16'hcaca;
    ORCALUT4 mux_668_i1_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n12185), .C(last_tstate), 
            .D(n31360), .Z(mcycle_6__N_779[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam mux_668_i1_4_lut.init = 16'hca0a;
    ORCALUT4 i3_4_lut_adj_582 (.A(m1_n_N_807), .B(No_BTR), .C(n16375), 
            .D(last_mcycle), .Z(n25704)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i3_4_lut_adj_582.init = 16'hfffe;
    ORCALUT4 i2_3_lut_adj_583 (.A(mcycle[1]), .B(IncDecZ), .C(stop), .Z(m1_n_N_807)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1293[36:84])
    defparam i2_3_lut_adj_583.init = 16'h8080;
    ORCALUT4 i27097_2_lut (.A(Pre_XY_F_M[0]), .B(n7), .Z(n16375)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i27097_2_lut.init = 16'h1111;
    ORCALUT4 RegDIL_7__I_34_i2_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[1]), 
            .D(RegBusA_r[1]), .Z(RegDIL_7__N_453[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIL_7__I_34_i2_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i1_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[0]), 
            .D(RegBusA_r[0]), .Z(RegDIL_7__N_453[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIL_7__I_34_i1_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i14558_3_lut_4_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegAddrA_r[0]), 
            .D(tstate[4]), .Z(RegAddrA_2__N_735[0])) /* synthesis lut_function=(A (C)+!A !(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam i14558_3_lut_4_lut_4_lut.init = 16'hb1b0;
    ORCALUT4 i14579_4_lut (.A(tstate[0]), .B(last_tstate), .C(tstate[6]), 
            .D(n2258), .Z(tstate_6__N_786[0])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam i14579_4_lut.init = 16'h2230;
    ORCALUT4 i662_2_lut (.A(iorq), .B(Auto_Wait_t1), .Z(n2258)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1320[29:84])
    defparam i662_2_lut.init = 16'h2222;
    PFUMX i25698 (.BLUT(n27433), .ALUT(n25862), .C0(n30974), .Z(n27434));
    ORCALUT4 mux_327_i1_4_lut (.A(n1133[0]), .B(n4_adj_2069), .C(RegWEH_N_872), 
            .D(n13_adj_2070), .Z(ACC_7__N_653[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_327_i1_4_lut.init = 16'heaca;
    ORCALUT4 n31172_bdd_4_lut (.A(n995[2]), .B(n31260), .C(IntE_FF2), 
            .D(IR[4]), .Z(n32681)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (B (C (D))+!B (C))) */ ;
    defparam n31172_bdd_4_lut.init = 16'hf0b8;
    ORCALUT4 F_Out_7__N_1690_bdd_2_lut_29673 (.A(n13_adj_2071), .B(n14_adj_2072), 
            .Z(n32680)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam F_Out_7__N_1690_bdd_2_lut_29673.init = 16'h9999;
    ORCALUT4 n32682_bdd_3_lut (.A(n32682), .B(F_Out_7__N_1690), .C(n31027), 
            .Z(n32683)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n32682_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i14705_4_lut (.A(IntE_FF2), .B(tstate[3]), .C(n26668), .D(n27332), 
            .Z(IntE_FF2_N_915)) /* synthesis lut_function=(A ((D)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i14705_4_lut.init = 16'hfa32;
    ORCALUT4 n32684_bdd_3_lut_29873 (.A(n32684), .B(IncDecZ), .C(n31025), 
            .Z(n32685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n32684_bdd_3_lut_29873.init = 16'hcaca;
    ORCALUT4 RegDIL_7__I_34_i3_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[2]), 
            .D(RegBusA_r[2]), .Z(RegDIL_7__N_453[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIL_7__I_34_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i5_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[4]), 
            .D(RegBusA_r[4]), .Z(RegDIL_7__N_453[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIL_7__I_34_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i4_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[3]), 
            .D(RegBusA_r[3]), .Z(RegDIL_7__N_453[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIL_7__I_34_i4_3_lut_4_lut.init = 16'hfb40;
    PFUMX i25701 (.BLUT(n27436), .ALUT(n25872), .C0(n30974), .Z(n27437));
    ORCALUT4 RegDIL_7__I_34_i6_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[5]), 
            .D(RegBusA_r[5]), .Z(RegDIL_7__N_453[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIL_7__I_34_i6_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i1_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[8]), 
            .D(RegBusA_r[8]), .Z(RegDIH_7__N_444[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIH_7__I_33_i1_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i3_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[10]), 
            .D(RegBusA_r[10]), .Z(RegDIH_7__N_444[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIH_7__I_33_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i2_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[9]), 
            .D(RegBusA_r[9]), .Z(RegDIH_7__N_444[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIH_7__I_33_i2_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIL_7__I_34_i7_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[6]), 
            .D(RegBusA_r[6]), .Z(RegDIL_7__N_453[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIL_7__I_34_i7_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i5_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[12]), 
            .D(RegBusA_r[12]), .Z(RegDIH_7__N_444[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIH_7__I_33_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i4_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[11]), 
            .D(RegBusA_r[11]), .Z(RegDIH_7__N_444[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIH_7__I_33_i4_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i2_4_lut_adj_584 (.A(n33927), .B(n18), .C(ISet[1]), .D(n31357), 
            .Z(No_BTR_N_964)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i2_4_lut_adj_584.init = 16'ha080;
    ORCALUT4 i1_4_lut_adj_585 (.A(n31081), .B(F[6]), .C(F[2]), .D(IR[4]), 
            .Z(n18)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_4_lut_adj_585.init = 16'h8aaa;
    ORCALUT4 RegDIH_7__I_33_i7_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[14]), 
            .D(RegBusA_r[14]), .Z(RegDIH_7__N_444[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIH_7__I_33_i7_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegDIH_7__I_33_i6_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[13]), 
            .D(RegBusA_r[13]), .Z(RegDIH_7__N_444[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIH_7__I_33_i6_3_lut_4_lut.init = 16'hfb40;
    PFUMX i25704 (.BLUT(n27439), .ALUT(n25864), .C0(n30974), .Z(n27440));
    ORCALUT4 RegDIL_7__I_34_i8_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[7]), 
            .D(RegBusA_r[7]), .Z(RegDIL_7__N_453[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIL_7__I_34_i8_3_lut_4_lut.init = 16'hfb40;
    PFUMX i25707 (.BLUT(n27442), .ALUT(n25868), .C0(n30974), .Z(n27443));
    PFUMX i25710 (.BLUT(n27445), .ALUT(n25859), .C0(n30974), .Z(n27446));
    ORCALUT4 RegDIH_7__I_33_i8_3_lut_4_lut (.A(n31059), .B(tstate[3]), .C(RegBusB[15]), 
            .D(RegBusA_r[15]), .Z(RegDIH_7__N_444[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegDIH_7__I_33_i8_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 RegAddrB_r_2__I_0_795_i3_3_lut_4_lut (.A(n31059), .B(tstate[3]), 
            .C(Alternate), .D(RegAddrB_r[2]), .Z(RegAddrB[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1000[11:42])
    defparam RegAddrB_r_2__I_0_795_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i2_3_lut_adj_586 (.A(last_tstate), .B(Auto_Wait_t2), .C(iorq), 
            .Z(n26706)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i2_3_lut_adj_586.init = 16'h1010;
    PFUMX i25713 (.BLUT(n27448), .ALUT(n25858), .C0(n30974), .Z(n27449));
    PFUMX i25716 (.BLUT(n27451), .ALUT(n25873), .C0(n30974), .Z(n27452));
    ORCALUT4 i8329_2_lut_4_lut (.A(n31059), .B(tstate[4]), .C(tstate[3]), 
            .D(RegAddrA_2__N_738), .Z(n10176)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(941[12] 944[31])
    defparam i8329_2_lut_4_lut.init = 16'h0054;
    ORCALUT4 i14553_2_lut (.A(Auto_Wait_t1), .B(last_tstate), .Z(n1366)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam i14553_2_lut.init = 16'h2222;
    ORCALUT4 di_reg_6__bdd_3_lut_29656 (.A(di_reg[6]), .B(n32819), .C(Save_ALU_r), 
            .Z(n32820)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_6__bdd_3_lut_29656.init = 16'hcaca;
    ORCALUT4 Q_7__N_1635_6__bdd_3_lut_29493 (.A(n29904), .B(n31068), .C(BusB[6]), 
            .Z(n32817)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam Q_7__N_1635_6__bdd_3_lut_29493.init = 16'he2e2;
    ORCALUT4 Q_7__N_1635_6__bdd_4_lut_29654 (.A(Q_7__N_1595[6]), .B(ALU_Op_r[0]), 
            .C(\BusA[6] ), .D(ALU_Op_r[1]), .Z(n32818)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam Q_7__N_1635_6__bdd_4_lut_29654.init = 16'h30e2;
    ORCALUT4 Q_7__N_1635_6__bdd_3_lut_29653 (.A(Q_7__N_1635[6]), .B(n32818), 
            .C(ALU_Op_r[3]), .Z(n32819)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam Q_7__N_1635_6__bdd_3_lut_29653.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_3_lut_adj_587 (.A(n30981), .B(n30972), .C(PC[15]), 
            .Z(n25869)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_587.init = 16'h8080;
    ORCALUT4 i1_2_lut_3_lut_3_lut_adj_588 (.A(n30981), .B(n30972), .C(PC[11]), 
            .Z(n25868)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_588.init = 16'h8080;
    PFUMX i25725 (.BLUT(n27460), .ALUT(n25869), .C0(n30974), .Z(n27461));
    ORCALUT4 i14810_4_lut_4_lut (.A(n31072), .B(n10230), .C(F[1]), .D(n900[1]), 
            .Z(n1146)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i14810_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i26992_3_lut_4_lut (.A(PC[4]), .B(n30970), .C(n30974), .D(n27415), 
            .Z(n27416)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i26992_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i26994_3_lut_4_lut (.A(PC[5]), .B(n30970), .C(n30974), .D(n27424), 
            .Z(n27425)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i26994_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 Save_Mux_7__I_0_i8_3_lut_4_lut (.A(n31068), .B(n27915), .C(Save_Mux_7__N_521[7]), 
            .D(n27495), .Z(Save_Mux[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam Save_Mux_7__I_0_i8_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i5423 (.BLUT(n882[1]), .ALUT(n986[1]), .C0(n27956), .Z(n1133[1]));
    PFUMX i5420 (.BLUT(n882[2]), .ALUT(n986[2]), .C0(n27956), .Z(n1133[2]));
    ORCALUT4 Save_Mux_7__I_0_i6_3_lut_4_lut (.A(n31068), .B(n27915), .C(Save_Mux_7__N_521[5]), 
            .D(n27489), .Z(Save_Mux[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam Save_Mux_7__I_0_i6_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i5417 (.BLUT(n882[3]), .ALUT(n986[3]), .C0(n27956), .Z(n1133[3]));
    ORCALUT4 Save_Mux_7__I_0_i5_3_lut_4_lut (.A(n31068), .B(n27915), .C(Save_Mux_7__N_521[4]), 
            .D(n27519), .Z(Save_Mux[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam Save_Mux_7__I_0_i5_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i5414 (.BLUT(n882[4]), .ALUT(n986[4]), .C0(n27956), .Z(n1133[4]));
    PFUMX i5411 (.BLUT(n882[5]), .ALUT(n986[5]), .C0(n27956), .Z(n1133[5]));
    PFUMX i5408 (.BLUT(n882[6]), .ALUT(n986[6]), .C0(n27956), .Z(n1133[6]));
    PFUMX i5405 (.BLUT(n882[7]), .ALUT(n986[7]), .C0(n27956), .Z(n1133[7]));
    ORCALUT4 mux_330_i5_4_lut (.A(n29259), .B(n4_adj_2073), .C(RegWEH_N_872), 
            .D(n13), .Z(F_7__N_661[4])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_330_i5_4_lut.init = 16'heaca;
    ORCALUT4 i2_3_lut_adj_589 (.A(n31195), .B(Prefix[0]), .C(n1_adj_2074), 
            .Z(ISet_1__N_633[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[19:68])
    defparam i2_3_lut_adj_589.init = 16'h2020;
    ORCALUT4 i26996_3_lut_4_lut (.A(PC[6]), .B(n30970), .C(n30974), .D(n27427), 
            .Z(n27428)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i26996_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i26998_3_lut_4_lut (.A(PC[7]), .B(n30970), .C(n30974), .D(n27430), 
            .Z(n27431)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i26998_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i5_2_lut_3_lut_adj_590 (.A(Read_To_Reg_r[0]), .B(Save_Mux[4]), 
            .C(n31098), .Z(n4_adj_2075)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_adj_590.init = 16'h8080;
    ORCALUT4 i274_3_lut_rep_440 (.A(stop), .B(n27004), .C(Save_ALU_r), 
            .Z(n31027)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[19:80])
    defparam i274_3_lut_rep_440.init = 16'h7373;
    ORCALUT4 i25851_2_lut_rep_406_4_lut (.A(stop), .B(n27004), .C(Save_ALU_r), 
            .D(n31212), .Z(n30993)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C (D))+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[19:80])
    defparam i25851_2_lut_rep_406_4_lut.init = 16'h7300;
    PFUMX i1804 (.BLUT(n882[0]), .ALUT(n986[0]), .C0(n27956), .Z(n1133[0]));
    ORCALUT4 i27243_2_lut_rep_376_4_lut (.A(stop), .B(n27004), .C(Save_ALU_r), 
            .D(n1165), .Z(n30963)) /* synthesis lut_function=(A (B+(D))+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[19:80])
    defparam i27243_2_lut_rep_376_4_lut.init = 16'hff8c;
    ORCALUT4 i14086_4_lut_4_lut (.A(No_BTR), .B(clk_op_enable_246), .C(n5_adj_2076), 
            .D(BTR_r), .Z(BTR_r_N_1016)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i14086_4_lut_4_lut.init = 16'h7340;
    ORCALUT4 i2_3_lut_rep_438_4_lut_4_lut (.A(IR[1]), .B(ISet[1]), .C(n31173), 
            .D(n33927), .Z(n31025)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i2_3_lut_rep_438_4_lut_4_lut.init = 16'h4000;
    ORCALUT4 XY_State_1__I_0_793_i3_2_lut_rep_742 (.A(XY_State[0]), .B(XY_State[1]), 
            .Z(n33932)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(935[78:95])
    defparam XY_State_1__I_0_793_i3_2_lut_rep_742.init = 16'heeee;
    ORCALUT4 i27196_4_lut (.A(n31227), .B(n31228), .C(n31078), .D(n31244), 
            .Z(n27743)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[15] 828[20])
    defparam i27196_4_lut.init = 16'haaba;
    ORCALUT4 i4_4_lut (.A(mcycle[2]), .B(ISet[0]), .C(n46), .D(n6_adj_2077), 
            .Z(n26924)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i4_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut_adj_591 (.A(ISet[1]), .B(ALU_Op_3__N_1068[0]), .Z(n6_adj_2077)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_adj_591.init = 16'h8888;
    ORCALUT4 i15291_3_lut_rep_384_3_lut_4_lut (.A(XY_State[0]), .B(XY_State[1]), 
            .C(n30981), .D(n30975), .Z(n30971)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(935[78:95])
    defparam i15291_3_lut_rep_384_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 n33534_bdd_3_lut_rep_731 (.A(n33534), .B(BusB[2]), .C(n10158), 
            .Z(n33921)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n33534_bdd_3_lut_rep_731.init = 16'hcaca;
    ORCALUT4 i3_2_lut_4_lut (.A(n33534), .B(BusB[2]), .C(n10158), .D(Read_To_Reg_r[0]), 
            .Z(n9)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i3_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i1_4_lut_adj_592 (.A(IR[4]), .B(n94), .C(n100_adj_2078), 
            .D(n4_adj_2079), .Z(n47)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i1_4_lut_adj_592.init = 16'heeec;
    PFUMX ALU_Q_7__I_0_i6 (.BLUT(n27490), .ALUT(ALU_Q[5]), .C0(n27893), 
          .Z(Save_Mux_7__N_521[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i25751_3_lut (.A(di_reg[3]), .B(ACC[3]), .C(Set_BusA_To[0]), 
            .Z(n27487)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25751_3_lut.init = 16'hcaca;
    CCU2B add_883_add_4_17 (.A0(TmpAddr[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n23223), .S0(n87[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_883_add_4_17.INIT0 = 16'haaaa;
    defparam add_883_add_4_17.INIT1 = 16'h0000;
    defparam add_883_add_4_17.INJECT1_0 = "NO";
    defparam add_883_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 i26931_3_lut (.A(n27487), .B(n14_adj_2081), .C(Set_BusA_To[3]), 
            .Z(n27488)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i26931_3_lut.init = 16'hcaca;
    CCU2B add_883_add_4_15 (.A0(TmpAddr[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n23222), .COUT(n23223), .S0(n87[13]), .S1(n87[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_883_add_4_15.INIT0 = 16'haaaa;
    defparam add_883_add_4_15.INIT1 = 16'haaaa;
    defparam add_883_add_4_15.INJECT1_0 = "NO";
    defparam add_883_add_4_15.INJECT1_1 = "NO";
    PFUMX mux_505_Mux_0_i15 (.BLUT(n27534), .ALUT(n27536), .C0(n27692), 
          .Z(BusA_7__N_768[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i25748_3_lut (.A(di_reg[0]), .B(ACC[0]), .C(Set_BusB_To[0]), 
            .Z(n27484)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25748_3_lut.init = 16'hcaca;
    ORCALUT4 i27217_2_lut (.A(Set_BusB_To[0]), .B(Set_BusB_To[1]), .Z(n27661)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(177[18:29])
    defparam i27217_2_lut.init = 16'hdddd;
    ORCALUT4 i25747_3_lut (.A(RegBusB[8]), .B(RegBusB[0]), .C(Set_BusB_To[0]), 
            .Z(n27483)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25747_3_lut.init = 16'hcaca;
    PFUMX mux_505_Mux_7_i15 (.BLUT(n27537), .ALUT(n27539), .C0(n27692), 
          .Z(BusA_7__N_768[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_505_Mux_6_i15 (.BLUT(n27540), .ALUT(n27542), .C0(n27692), 
          .Z(BusA_7__N_768[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_505_Mux_5_i15 (.BLUT(n27417), .ALUT(n27419), .C0(n27692), 
          .Z(BusA_7__N_768[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i25745_3_lut (.A(di_reg[1]), .B(ACC[1]), .C(Set_BusB_To[0]), 
            .Z(n27481)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25745_3_lut.init = 16'hcaca;
    ORCALUT4 i25744_3_lut (.A(RegBusB[9]), .B(RegBusB[1]), .C(Set_BusB_To[0]), 
            .Z(n27480)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25744_3_lut.init = 16'hcaca;
    CCU2B add_883_add_4_13 (.A0(TmpAddr[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n23221), .COUT(n23222), .S0(n87[11]), .S1(n87[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_883_add_4_13.INIT0 = 16'haaaa;
    defparam add_883_add_4_13.INIT1 = 16'haaaa;
    defparam add_883_add_4_13.INJECT1_0 = "NO";
    defparam add_883_add_4_13.INJECT1_1 = "NO";
    PFUMX mux_505_Mux_4_i15 (.BLUT(n27420), .ALUT(n27422), .C0(n27692), 
          .Z(BusA_7__N_768[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    CCU2B add_883_add_4_11 (.A0(TmpAddr[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n23220), .COUT(n23221), .S0(n87[9]), .S1(n87[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_883_add_4_11.INIT0 = 16'haaaa;
    defparam add_883_add_4_11.INIT1 = 16'haaaa;
    defparam add_883_add_4_11.INJECT1_0 = "NO";
    defparam add_883_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i25742_3_lut (.A(di_reg[2]), .B(ACC[2]), .C(Set_BusB_To[0]), 
            .Z(n27478)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25742_3_lut.init = 16'hcaca;
    ORCALUT4 i25741_3_lut (.A(RegBusB[10]), .B(RegBusB[2]), .C(Set_BusB_To[0]), 
            .Z(n27477)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25741_3_lut.init = 16'hcaca;
    PFUMX mux_505_Mux_3_i15 (.BLUT(n27486), .ALUT(n27488), .C0(n27692), 
          .Z(BusA_7__N_768[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i25739_3_lut (.A(di_reg[3]), .B(ACC[3]), .C(Set_BusB_To[0]), 
            .Z(n27475)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25739_3_lut.init = 16'hcaca;
    ORCALUT4 i25738_3_lut (.A(RegBusB[11]), .B(RegBusB[3]), .C(Set_BusB_To[0]), 
            .Z(n27474)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25738_3_lut.init = 16'hcaca;
    ORCALUT4 i3838_3_lut_4_lut (.A(n31097), .B(n31195), .C(Fp[2]), .D(F[2]), 
            .Z(n995[2])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i3838_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i14504_3_lut_4_lut (.A(n31097), .B(n31195), .C(Fp[7]), .D(F[7]), 
            .Z(n995[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i14504_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i25736_3_lut (.A(di_reg[4]), .B(ACC[4]), .C(Set_BusB_To[0]), 
            .Z(n27472)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25736_3_lut.init = 16'hcaca;
    CCU2B add_883_add_4_9 (.A0(TmpAddr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n23219), .COUT(n23220), .S0(n87[7]), .S1(n87[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_883_add_4_9.INIT0 = 16'haaaa;
    defparam add_883_add_4_9.INIT1 = 16'haaaa;
    defparam add_883_add_4_9.INJECT1_0 = "NO";
    defparam add_883_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i25735_3_lut (.A(RegBusB[12]), .B(RegBusB[4]), .C(Set_BusB_To[0]), 
            .Z(n27471)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25735_3_lut.init = 16'hcaca;
    PFUMX mux_505_Mux_2_i15 (.BLUT(n27501), .ALUT(n27503), .C0(n27692), 
          .Z(BusA_7__N_768[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_505_Mux_1_i15 (.BLUT(n27510), .ALUT(n27512), .C0(n27692), 
          .Z(BusA_7__N_768[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    CCU2B add_883_add_4_7 (.A0(TmpAddr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n23218), .COUT(n23219), .S0(n87[5]), .S1(n87[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_883_add_4_7.INIT0 = 16'haaaa;
    defparam add_883_add_4_7.INIT1 = 16'haaaa;
    defparam add_883_add_4_7.INJECT1_0 = "NO";
    defparam add_883_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i25733_3_lut (.A(di_reg[5]), .B(ACC[5]), .C(Set_BusB_To[0]), 
            .Z(n27469)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25733_3_lut.init = 16'hcaca;
    ORCALUT4 i25732_3_lut (.A(RegBusB[13]), .B(RegBusB[5]), .C(Set_BusB_To[0]), 
            .Z(n27468)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25732_3_lut.init = 16'hcaca;
    ORCALUT4 i25730_3_lut (.A(di_reg[6]), .B(ACC[6]), .C(Set_BusB_To[0]), 
            .Z(n27466)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25730_3_lut.init = 16'hcaca;
    L6MUX21 i25668 (.D0(n27402), .D1(n27403), .SD(tstates[2]), .Z(last_tstate));
    PFUMX i25666 (.BLUT(n1_adj_2084), .ALUT(n2_adj_2085), .C0(tstates[1]), 
          .Z(n27402));
    ORCALUT4 i25729_3_lut (.A(RegBusB[14]), .B(RegBusB[6]), .C(Set_BusB_To[0]), 
            .Z(n27465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25729_3_lut.init = 16'hcaca;
    PFUMX i25667 (.BLUT(n4_adj_2086), .ALUT(n5_adj_2087), .C0(tstates[1]), 
          .Z(n27403));
    ORCALUT4 i25727_3_lut (.A(di_reg[7]), .B(ACC[7]), .C(Set_BusB_To[0]), 
            .Z(n27463)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25727_3_lut.init = 16'hcaca;
    ORCALUT4 i25726_3_lut (.A(RegBusB[15]), .B(RegBusB[7]), .C(Set_BusB_To[0]), 
            .Z(n27462)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25726_3_lut.init = 16'hcaca;
    ORCALUT4 i25805_3_lut (.A(di_reg[6]), .B(ACC[6]), .C(Set_BusA_To[0]), 
            .Z(n27541)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25805_3_lut.init = 16'hcaca;
    ORCALUT4 i26937_3_lut (.A(n27541), .B(n14_adj_2088), .C(Set_BusA_To[3]), 
            .Z(n27542)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i26937_3_lut.init = 16'hcaca;
    ORCALUT4 i25802_3_lut (.A(di_reg[7]), .B(ACC[7]), .C(Set_BusA_To[0]), 
            .Z(n27538)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25802_3_lut.init = 16'hcaca;
    ORCALUT4 i26939_3_lut (.A(n27538), .B(n14_adj_2089), .C(Set_BusA_To[3]), 
            .Z(n27539)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i26939_3_lut.init = 16'hcaca;
    ORCALUT4 i25799_3_lut (.A(di_reg[0]), .B(ACC[0]), .C(Set_BusA_To[0]), 
            .Z(n27535)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25799_3_lut.init = 16'hcaca;
    ORCALUT4 i26941_3_lut (.A(n27535), .B(n14_adj_2090), .C(Set_BusA_To[3]), 
            .Z(n27536)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i26941_3_lut.init = 16'hcaca;
    ORCALUT4 i25775_3_lut (.A(di_reg[1]), .B(ACC[1]), .C(Set_BusA_To[0]), 
            .Z(n27511)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25775_3_lut.init = 16'hcaca;
    ORCALUT4 i26927_3_lut (.A(n27511), .B(n14_adj_2091), .C(Set_BusA_To[3]), 
            .Z(n27512)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i26927_3_lut.init = 16'hcaca;
    ORCALUT4 i14886_4_lut (.A(SP[2]), .B(n12250), .C(SP[10]), .D(Set_BusA_To[0]), 
            .Z(n14_adj_2092)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i14886_4_lut.init = 16'hc088;
    ORCALUT4 i25766_3_lut (.A(di_reg[2]), .B(ACC[2]), .C(Set_BusA_To[0]), 
            .Z(n27502)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25766_3_lut.init = 16'hcaca;
    ORCALUT4 i26929_3_lut (.A(n27502), .B(n14_adj_2092), .C(Set_BusA_To[3]), 
            .Z(n27503)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i26929_3_lut.init = 16'hcaca;
    PFUMX ALU_Q_7__I_0_i5 (.BLUT(n27521), .ALUT(ALU_Q[4]), .C0(n27905), 
          .Z(Save_Mux_7__N_521[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i25685_3_lut (.A(di_reg[4]), .B(ACC[4]), .C(Set_BusA_To[0]), 
            .Z(n27421)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25685_3_lut.init = 16'hcaca;
    ORCALUT4 i26933_3_lut (.A(n27421), .B(n14_adj_2093), .C(Set_BusA_To[3]), 
            .Z(n27422)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i26933_3_lut.init = 16'hcaca;
    ORCALUT4 i14881_4_lut (.A(SP[5]), .B(n12250), .C(SP[13]), .D(Set_BusA_To[0]), 
            .Z(n14_adj_2094)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i14881_4_lut.init = 16'hc088;
    ORCALUT4 i25682_3_lut (.A(di_reg[5]), .B(ACC[5]), .C(Set_BusA_To[0]), 
            .Z(n27418)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25682_3_lut.init = 16'hcaca;
    ORCALUT4 i26935_3_lut (.A(n27418), .B(n14_adj_2094), .C(Set_BusA_To[3]), 
            .Z(n27419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i26935_3_lut.init = 16'hcaca;
    ORCALUT4 i27120_2_lut_4_lut (.A(last_tstate), .B(n31195), .C(n31097), 
            .D(n31072), .Z(n27956)) /* synthesis lut_function=(A (B+(D))+!A (B+((D)+!C))) */ ;
    defparam i27120_2_lut_4_lut.init = 16'hffcd;
    ORCALUT4 i1_2_lut_3_lut_adj_593 (.A(Read_To_Reg_r[0]), .B(n31098), .C(Save_Mux[5]), 
            .Z(n9149)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_adj_593.init = 16'h4040;
    ORCALUT4 i1_2_lut_3_lut_adj_594 (.A(Read_To_Reg_r[0]), .B(n31098), .C(Save_Mux[4]), 
            .Z(n9150)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_adj_594.init = 16'h4040;
    FD1P3DX IR_i0_i0_rep_760 (.D(IR_7__N_609[0]), .SP(clk_op_enable_172), 
            .CK(clk_op), .CD(n31309), .Q(n33958)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i0_rep_760.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_adj_595 (.A(Read_To_Reg_r[0]), .B(n31098), .C(n33921), 
            .Z(n9152)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_adj_595.init = 16'h4040;
    ORCALUT4 mux_502_Mux_1_i8_3_lut (.A(SP[1]), .B(SP[9]), .C(Set_BusB_To[0]), 
            .Z(n8_adj_2095)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_502_Mux_1_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_502_Mux_2_i8_3_lut (.A(SP[2]), .B(SP[10]), .C(Set_BusB_To[0]), 
            .Z(n8_adj_2096)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_502_Mux_2_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i8864_4_lut (.A(SP16[8]), .B(di_reg[0]), .C(n5067), .D(n31194), 
            .Z(n10713)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8864_4_lut.init = 16'hcac0;
    ORCALUT4 mux_502_Mux_3_i8_3_lut (.A(SP[3]), .B(SP[11]), .C(Set_BusB_To[0]), 
            .Z(n8_adj_2097)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_502_Mux_3_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_502_Mux_4_i8_3_lut (.A(SP[4]), .B(SP[12]), .C(Set_BusB_To[0]), 
            .Z(n8_adj_2098)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_502_Mux_4_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_502_Mux_5_i8_3_lut (.A(SP[5]), .B(SP[13]), .C(Set_BusB_To[0]), 
            .Z(n8_adj_2099)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_502_Mux_5_i8_3_lut.init = 16'hcaca;
    FD1S3BX ACC_i0_i7 (.D(ACC_7__N_653[7]), .CK(clk_op), .PD(n31309), 
            .Q(ACC[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i0_i7.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_adj_596 (.A(Read_To_Reg_r[0]), .B(n31098), .C(Save_Mux[0]), 
            .Z(n9146)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_adj_596.init = 16'h4040;
    ORCALUT4 i1_2_lut_3_lut_adj_597 (.A(Read_To_Reg_r[0]), .B(n31098), .C(Save_Mux[7]), 
            .Z(n9147)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_adj_597.init = 16'h4040;
    ORCALUT4 n27528_bdd_3_lut (.A(Q_7__N_1595[2]), .B(ALU_Op_r[0]), .C(BusB[6]), 
            .Z(n33530)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n27528_bdd_3_lut.init = 16'he2e2;
    ORCALUT4 i1_2_lut_3_lut_adj_598 (.A(Read_To_Reg_r[0]), .B(n31098), .C(Save_Mux[6]), 
            .Z(n9148)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_adj_598.init = 16'h4040;
    ORCALUT4 Q_7__N_1635_2__bdd_3_lut_29861 (.A(Q_7__N_1635[2]), .B(n33532), 
            .C(ALU_Op_r[3]), .Z(n33533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam Q_7__N_1635_2__bdd_3_lut_29861.init = 16'hcaca;
    ORCALUT4 di_reg_2__bdd_3_lut (.A(di_reg[2]), .B(n33533), .C(Save_ALU_r), 
            .Z(n33534)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam di_reg_2__bdd_3_lut.init = 16'hcaca;
    FD1S3BX ACC_i0_i6 (.D(ACC_7__N_653[6]), .CK(clk_op), .PD(n31309), 
            .Q(ACC[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i0_i6.GSR = "ENABLED";
    FD1S3BX ACC_i0_i5 (.D(ACC_7__N_653[5]), .CK(clk_op), .PD(n31309), 
            .Q(ACC[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i0_i5.GSR = "ENABLED";
    FD1S3BX ACC_i0_i4 (.D(ACC_7__N_653[4]), .CK(clk_op), .PD(n31309), 
            .Q(ACC[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i0_i4.GSR = "ENABLED";
    FD1S3BX ACC_i0_i3 (.D(ACC_7__N_653[3]), .CK(clk_op), .PD(n31309), 
            .Q(ACC[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i0_i3.GSR = "ENABLED";
    FD1S3BX ACC_i0_i2 (.D(ACC_7__N_653[2]), .CK(clk_op), .PD(n31309), 
            .Q(ACC[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i0_i2.GSR = "ENABLED";
    FD1S3BX ACC_i0_i1 (.D(ACC_7__N_653[1]), .CK(clk_op), .PD(n31309), 
            .Q(ACC[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ACC_i0_i1.GSR = "ENABLED";
    FD1S3DX tstate_i6 (.D(tstate_6__N_786[6]), .CK(clk_op), .CD(n31309), 
            .Q(tstate[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i6.GSR = "ENABLED";
    FD1S3DX tstate_i5 (.D(tstate_6__N_786[5]), .CK(clk_op), .CD(n31309), 
            .Q(tstate[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i5.GSR = "ENABLED";
    FD1S3DX tstate_i4 (.D(tstate_6__N_786[4]), .CK(clk_op), .CD(n31309), 
            .Q(tstate[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i4.GSR = "ENABLED";
    FD1S3DX tstate_i3 (.D(tstate_6__N_786[3]), .CK(clk_op), .CD(n31309), 
            .Q(tstate[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i3.GSR = "ENABLED";
    FD1S3DX tstate_i2 (.D(tstate_6__N_786[2]), .CK(clk_op), .CD(n31309), 
            .Q(\tstate[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i2.GSR = "ENABLED";
    FD1S3DX tstate_i1 (.D(tstate_6__N_786[1]), .CK(clk_op), .CD(n31309), 
            .Q(\tstate[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam tstate_i1.GSR = "ENABLED";
    FD1S3DX mcycle_i6 (.D(mcycle_6__N_779[6]), .CK(clk_op), .CD(n31309), 
            .Q(n7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i6.GSR = "ENABLED";
    ORCALUT4 mux_502_Mux_6_i8_3_lut (.A(SP[6]), .B(SP[14]), .C(Set_BusB_To[0]), 
            .Z(n8_adj_2100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_502_Mux_6_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i2_4_lut_then_2_lut_4_lut (.A(mcycle[3]), .B(mcycle[4]), .C(mcycle[5]), 
            .D(n7), .Z(n31362)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i2_4_lut_then_2_lut_4_lut.init = 16'h0001;
    ORCALUT4 IR_7__bdd_4_lut (.A(IR[1]), .B(Set_BusA_To_3__N_1230[0]), .C(IR[2]), 
            .D(n33924), .Z(n33627)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A !((C)+!B)) */ ;
    defparam IR_7__bdd_4_lut.init = 16'h8e8c;
    ORCALUT4 i2_4_lut_adj_599 (.A(n31193), .B(n62), .C(n31149), .D(n26885), 
            .Z(n26854)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i2_4_lut_adj_599.init = 16'hffec;
    ORCALUT4 IR_0__bdd_2_lut_29916 (.A(Set_BusA_To_3__N_1230[0]), .B(\ALU_Op_3__N_1297[3] ), 
            .Z(n33630)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam IR_0__bdd_2_lut_29916.init = 16'h2222;
    ORCALUT4 IR_0__bdd_4_lut_29917 (.A(IR[0]), .B(Set_BusA_To_3__N_1230[0]), 
            .C(\ALU_Op_3__N_1297[3] ), .D(mcycle[1]), .Z(n33631)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam IR_0__bdd_4_lut_29917.init = 16'hcacc;
    ORCALUT4 i1_4_lut_adj_600 (.A(n31278), .B(\tstate[2] ), .C(n31195), 
            .D(n7), .Z(clk_op_enable_270)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_600.init = 16'hc4c0;
    ORCALUT4 n33632_bdd_3_lut (.A(n33632), .B(Set_BusA_To_3__N_1230[0]), 
            .C(IR[2]), .Z(n33633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n33632_bdd_3_lut.init = 16'hcaca;
    FD1S3DX mcycle_i5 (.D(mcycle_6__N_779[5]), .CK(clk_op), .CD(n31309), 
            .Q(mcycle[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i5.GSR = "ENABLED";
    FD1S3DX mcycle_i4 (.D(mcycle_6__N_779[4]), .CK(clk_op), .CD(n31309), 
            .Q(mcycle[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i4.GSR = "ENABLED";
    FD1S3DX mcycle_i3 (.D(mcycle_6__N_779[3]), .CK(clk_op), .CD(n31309), 
            .Q(mcycle[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i3.GSR = "ENABLED";
    FD1S3DX mcycle_i2 (.D(mcycle_6__N_779[2]), .CK(clk_op), .CD(n31309), 
            .Q(mcycle[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i2.GSR = "ENABLED";
    FD1S3DX mcycle_i1 (.D(mcycle_6__N_779[1]), .CK(clk_op), .CD(n31309), 
            .Q(mcycle[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam mcycle_i1.GSR = "ENABLED";
    FD1P3DX Pre_XY_F_M_i0_i2 (.D(n2116[2]), .SP(clk_op_enable_181), .CK(clk_op), 
            .CD(n31309), .Q(Pre_XY_F_M[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i2.GSR = "ENABLED";
    FD1P3DX Pre_XY_F_M_i0_i1 (.D(n27071), .SP(clk_op_enable_181), .CK(clk_op), 
            .CD(n31309), .Q(Pre_XY_F_M[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1212[9] 1331[12])
    defparam Pre_XY_F_M_i0_i1.GSR = "ENABLED";
    FD1P3DX PC_i0_i15 (.D(PC_15__N_593[15]), .SP(clk_op_enable_189), .CK(clk_op), 
            .CD(n31309), .Q(PC[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i15.GSR = "ENABLED";
    ORCALUT4 RegAddrA_2__I_28_2_lut_rep_395_3_lut (.A(XY_State[0]), .B(XY_State[1]), 
            .C(RegAddrA_2__N_468), .Z(n30982)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(935[78:95])
    defparam RegAddrA_2__I_28_2_lut_rep_395_3_lut.init = 16'h1010;
    ORCALUT4 i403_3_lut_4_lut (.A(XY_State[0]), .B(XY_State[1]), .C(mcycle[5]), 
            .D(n23524), .Z(n1684)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(935[78:95])
    defparam i403_3_lut_4_lut.init = 16'hf0fe;
    ORCALUT4 i1_2_lut_rep_601_3_lut (.A(XY_State[0]), .B(XY_State[1]), .C(XY_Ind), 
            .Z(n31188)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(935[78:95])
    defparam i1_2_lut_rep_601_3_lut.init = 16'h0e0e;
    ORCALUT4 i8862_4_lut (.A(SP16[9]), .B(di_reg[1]), .C(n5067), .D(n31194), 
            .Z(n10711)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8862_4_lut.init = 16'hcac0;
    PFUMX i8807 (.BLUT(n525[15]), .ALUT(n559[15]), .C0(n27764), .Z(PC_15__N_593[15]));
    ORCALUT4 mux_502_Mux_0_i8_3_lut (.A(SP[0]), .B(SP[8]), .C(Set_BusB_To[0]), 
            .Z(n8_adj_2101)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam mux_502_Mux_0_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i2_3_lut_rep_708 (.A(sram_addr_0_3), .B(sram_addr_0_5), .C(sram_addr_0_4), 
            .Z(n31295)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i2_3_lut_rep_708.init = 16'hfefe;
    ORCALUT4 i14496_3_lut (.A(SP[15]), .B(PC[15]), .C(n30985), .Z(n16290)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(177[18:29])
    defparam i14496_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_4_lut_adj_601 (.A(sram_addr_0_3), .B(sram_addr_0_5), 
            .C(sram_addr_0_4), .D(sram_addr_0_2), .Z(n9385)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_4_lut_adj_601.init = 16'hfffe;
    ORCALUT4 i3_4_lut_4_lut (.A(IR[4]), .B(IR[6]), .C(n26017), .D(n31296), 
            .Z(n26946)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    ORCALUT4 i1_4_lut_4_lut_4_lut (.A(IR[6]), .B(n31075), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n31257), .Z(n23_adj_2102)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0151;
    ORCALUT4 i2_4_lut_4_lut (.A(IR[6]), .B(n12), .C(n31307), .D(IR[5]), 
            .Z(n27164)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i2_4_lut_4_lut.init = 16'h5040;
    PFUMX i8809 (.BLUT(n525[14]), .ALUT(n559[14]), .C0(n27764), .Z(PC_15__N_593[14]));
    PFUMX i8811 (.BLUT(n525[13]), .ALUT(n559[13]), .C0(n27764), .Z(PC_15__N_593[13]));
    ORCALUT4 i1_2_lut_rep_711 (.A(sram_addr_0_6), .B(sram_addr_0_1), .Z(n31298)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_711.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_457_3_lut (.A(sram_addr_0_6), .B(sram_addr_0_1), 
            .C(n9435), .Z(n31044)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_457_3_lut.init = 16'hfefe;
    ORCALUT4 i1_2_lut_rep_425_3_lut_4_lut (.A(sram_addr_0_6), .B(sram_addr_0_1), 
            .C(sram_addr_0_2), .D(n9435), .Z(n31012)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_rep_425_3_lut_4_lut.init = 16'hfffe;
    PFUMX i8813 (.BLUT(n525[12]), .ALUT(n559[12]), .C0(n27764), .Z(PC_15__N_593[12]));
    FD1P3DX PC_i0_i14 (.D(PC_15__N_593[14]), .SP(clk_op_enable_189), .CK(clk_op), 
            .CD(n31309), .Q(PC[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i14.GSR = "ENABLED";
    FD1P3DX PC_i0_i13 (.D(PC_15__N_593[13]), .SP(clk_op_enable_189), .CK(clk_op), 
            .CD(n31309), .Q(PC[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i13.GSR = "ENABLED";
    FD1P3DX PC_i0_i12 (.D(PC_15__N_593[12]), .SP(clk_op_enable_189), .CK(clk_op), 
            .CD(n31309), .Q(PC[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i12.GSR = "ENABLED";
    FD1P3DX PC_i0_i11 (.D(PC_15__N_593[11]), .SP(clk_op_enable_189), .CK(clk_op), 
            .CD(n31309), .Q(PC[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i11.GSR = "ENABLED";
    FD1P3DX PC_i0_i10 (.D(PC_15__N_593[10]), .SP(clk_op_enable_189), .CK(clk_op), 
            .CD(n31309), .Q(PC[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i10.GSR = "ENABLED";
    FD1P3DX PC_i0_i9 (.D(PC_15__N_593[9]), .SP(clk_op_enable_189), .CK(clk_op), 
            .CD(n31309), .Q(PC[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i9.GSR = "ENABLED";
    FD1P3DX PC_i0_i8 (.D(PC_15__N_593[8]), .SP(clk_op_enable_189), .CK(clk_op), 
            .CD(n31309), .Q(PC[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i8.GSR = "ENABLED";
    FD1P3DX PC_i0_i7 (.D(PC_15__N_593[7]), .SP(clk_op_enable_196), .CK(clk_op), 
            .CD(n31309), .Q(PC[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i7.GSR = "ENABLED";
    FD1P3DX PC_i0_i6 (.D(PC_15__N_593[6]), .SP(clk_op_enable_196), .CK(clk_op), 
            .CD(n31309), .Q(PC[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i6.GSR = "ENABLED";
    FD1P3DX PC_i0_i5 (.D(PC_15__N_593[5]), .SP(clk_op_enable_196), .CK(clk_op), 
            .CD(n31309), .Q(PC[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i5.GSR = "ENABLED";
    FD1P3DX PC_i0_i4 (.D(PC_15__N_593[4]), .SP(clk_op_enable_196), .CK(clk_op), 
            .CD(n31309), .Q(PC[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i4.GSR = "ENABLED";
    FD1P3DX PC_i0_i3 (.D(PC_15__N_593[3]), .SP(clk_op_enable_196), .CK(clk_op), 
            .CD(n31309), .Q(PC[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i3.GSR = "ENABLED";
    FD1P3DX PC_i0_i2 (.D(PC_15__N_593[2]), .SP(clk_op_enable_196), .CK(clk_op), 
            .CD(n31309), .Q(PC[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i2.GSR = "ENABLED";
    FD1P3DX PC_i0_i1 (.D(PC_15__N_593[1]), .SP(clk_op_enable_196), .CK(clk_op), 
            .CD(n31309), .Q(PC[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam PC_i0_i1.GSR = "ENABLED";
    FD1S3AX BusA_i0_i7 (.D(BusA_7__N_768[7]), .CK(clk_op), .Q(BusA[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i0_i7.GSR = "ENABLED";
    FD1S3AX BusA_i0_i6 (.D(BusA_7__N_768[6]), .CK(clk_op), .Q(\BusA[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i0_i6.GSR = "ENABLED";
    FD1S3AX BusA_i0_i5 (.D(BusA_7__N_768[5]), .CK(clk_op), .Q(\BusA[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i0_i5.GSR = "ENABLED";
    FD1S3AX BusA_i0_i4 (.D(BusA_7__N_768[4]), .CK(clk_op), .Q(BusA[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i0_i4.GSR = "ENABLED";
    FD1S3AX BusA_i0_i3 (.D(BusA_7__N_768[3]), .CK(clk_op), .Q(BusA[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i0_i3.GSR = "ENABLED";
    FD1S3AX BusA_i0_i2 (.D(BusA_7__N_768[2]), .CK(clk_op), .Q(BusA[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i0_i2.GSR = "ENABLED";
    FD1S3AX BusA_i0_i1 (.D(BusA_7__N_768[1]), .CK(clk_op), .Q(BusA[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusA_i0_i1.GSR = "ENABLED";
    FD1S3AX BusB_i0_i7 (.D(BusB_7__N_760[7]), .CK(clk_op), .Q(BusB[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i0_i7.GSR = "ENABLED";
    FD1S3AX BusB_i0_i6 (.D(BusB_7__N_760[6]), .CK(clk_op), .Q(BusB[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i0_i6.GSR = "ENABLED";
    FD1S3AX BusB_i0_i5 (.D(BusB_7__N_760[5]), .CK(clk_op), .Q(BusB[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i0_i5.GSR = "ENABLED";
    FD1S3AX BusB_i0_i4 (.D(BusB_7__N_760[4]), .CK(clk_op), .Q(BusB[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i0_i4.GSR = "ENABLED";
    FD1S3AX BusB_i0_i3 (.D(BusB_7__N_760[3]), .CK(clk_op), .Q(BusB[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i0_i3.GSR = "ENABLED";
    FD1S3AX BusB_i0_i2 (.D(BusB_7__N_760[2]), .CK(clk_op), .Q(BusB[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i0_i2.GSR = "ENABLED";
    FD1S3AX BusB_i0_i1 (.D(BusB_7__N_760[1]), .CK(clk_op), .Q(BusB[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1042[10] 1106[8])
    defparam BusB_i0_i1.GSR = "ENABLED";
    FD1S3AX RegAddrC_i0_i2 (.D(RegAddrC_2__N_732[2]), .CK(clk_op), .Q(RegAddrC[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i0_i2.GSR = "ENABLED";
    FD1S3JX RegAddrC_i0_i1 (.D(Set_Addr_To_2__N_1441[1]), .CK(clk_op), .PD(n27035), 
            .Q(RegAddrC[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrC_i0_i1.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i15 (.D(RegBusA[15]), .CK(clk_op), .Q(RegBusA_r[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i15.GSR = "ENABLED";
    ORCALUT4 i8860_4_lut (.A(SP16[10]), .B(di_reg[2]), .C(n5067), .D(n31194), 
            .Z(n10709)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8860_4_lut.init = 16'hcac0;
    FD1S3AX RegBusA_r_i0_i14 (.D(RegBusA[14]), .CK(clk_op), .Q(RegBusA_r[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i14.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i13 (.D(RegBusA[13]), .CK(clk_op), .Q(RegBusA_r[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i13.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i12 (.D(RegBusA[12]), .CK(clk_op), .Q(RegBusA_r[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i12.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i11 (.D(RegBusA[11]), .CK(clk_op), .Q(RegBusA_r[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i11.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i10 (.D(RegBusA[10]), .CK(clk_op), .Q(RegBusA_r[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i10.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i9 (.D(RegBusA[9]), .CK(clk_op), .Q(RegBusA_r[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i9.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i8 (.D(RegBusA[8]), .CK(clk_op), .Q(RegBusA_r[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i8.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i7 (.D(RegBusA[7]), .CK(clk_op), .Q(RegBusA_r[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i7.GSR = "ENABLED";
    PFUMX i8815 (.BLUT(n525[11]), .ALUT(n559[11]), .C0(n27764), .Z(PC_15__N_593[11]));
    FD1S3AX RegBusA_r_i0_i6 (.D(RegBusA[6]), .CK(clk_op), .Q(RegBusA_r[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i6.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i5 (.D(RegBusA[5]), .CK(clk_op), .Q(RegBusA_r[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i5.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i4 (.D(RegBusA[4]), .CK(clk_op), .Q(RegBusA_r[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i4.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i3 (.D(RegBusA[3]), .CK(clk_op), .Q(RegBusA_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i3.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i2 (.D(RegBusA[2]), .CK(clk_op), .Q(RegBusA_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i2.GSR = "ENABLED";
    FD1S3AX RegBusA_r_i0_i1 (.D(RegBusA[1]), .CK(clk_op), .Q(RegBusA_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegBusA_r_i0_i1.GSR = "ENABLED";
    FD1S3DX ALU_Op_r_i3 (.D(ALU_Op_r_3__N_722[3]), .CK(clk_op), .CD(n31309), 
            .Q(ALU_Op_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r_i3.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_4_lut_adj_602 (.A(IR[0]), .B(n31288), .C(n31291), 
            .D(n31101), .Z(n6_adj_2103)) /* synthesis lut_function=(!(A (D)+!A (B (C (D))+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i1_4_lut_4_lut_adj_602.init = 16'h04ff;
    FD1S3DX ALU_Op_r_i2 (.D(ALU_Op_r_3__N_722[2]), .CK(clk_op), .CD(n31309), 
            .Q(ALU_Op_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r_i2.GSR = "ENABLED";
    FD1S3DX ALU_Op_r_i1 (.D(ALU_Op_r_3__N_722[1]), .CK(clk_op), .CD(n31309), 
            .Q(ALU_Op_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ALU_Op_r_i1.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r_i4 (.D(Read_To_Reg_r_4__N_717[4]), .CK(clk_op), 
            .CD(n31309), .Q(Read_To_Reg_r[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r_i4.GSR = "ENABLED";
    FD1S3DX Read_To_Reg_r_i3 (.D(Read_To_Reg_r_4__N_717[3]), .CK(clk_op), 
            .CD(n31309), .Q(Read_To_Reg_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r_i3.GSR = "ENABLED";
    ORCALUT4 i103_4_lut_3_lut (.A(IR[0]), .B(n31345), .C(IR[1]), .Z(n61)) /* synthesis lut_function=(A (B (C))+!A !(C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i103_4_lut_3_lut.init = 16'h8585;
    FD1S3DX Read_To_Reg_r_i2 (.D(Read_To_Reg_r_4__N_717[2]), .CK(clk_op), 
            .CD(n31309), .Q(Read_To_Reg_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r_i2.GSR = "ENABLED";
    PFUMX i8817 (.BLUT(n525[10]), .ALUT(n559[10]), .C0(n27764), .Z(PC_15__N_593[10]));
    ORCALUT4 i8016_2_lut_rep_473_3_lut_4_lut_4_lut (.A(IR[0]), .B(mcycle[2]), 
            .C(mcycle[1]), .D(\ALU_Op_3__N_1297[3] ), .Z(n31060)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1224[25] 1226[58])
    defparam i8016_2_lut_rep_473_3_lut_4_lut_4_lut.init = 16'h0004;
    FD1S3DX Read_To_Reg_r_i1 (.D(Read_To_Reg_r_4__N_717[1]), .CK(clk_op), 
            .CD(n31309), .Q(Read_To_Reg_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Read_To_Reg_r_i1.GSR = "ENABLED";
    FD1S3AX RegAddrB_r_i0_i2 (.D(RegAddrB_r_2__N_729[2]), .CK(clk_op), .Q(RegAddrB_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i0_i2.GSR = "ENABLED";
    FD1S3AX RegAddrB_r_i0_i1 (.D(n30985), .CK(clk_op), .Q(RegAddrB_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrB_r_i0_i1.GSR = "ENABLED";
    FD1S3BX SP_i0_i15 (.D(SP_15__N_669[15]), .CK(clk_op), .PD(n31309), 
            .Q(SP[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i15.GSR = "ENABLED";
    FD1S3BX SP_i0_i14 (.D(SP_15__N_669[14]), .CK(clk_op), .PD(n31309), 
            .Q(SP[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i14.GSR = "ENABLED";
    FD1S3BX SP_i0_i13 (.D(SP_15__N_669[13]), .CK(clk_op), .PD(n31309), 
            .Q(SP[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i13.GSR = "ENABLED";
    FD1S3BX SP_i0_i12 (.D(SP_15__N_669[12]), .CK(clk_op), .PD(n31309), 
            .Q(SP[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i12.GSR = "ENABLED";
    FD1S3BX SP_i0_i11 (.D(SP_15__N_669[11]), .CK(clk_op), .PD(n31309), 
            .Q(SP[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i11.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_603 (.A(ISet[1]), .B(n31024), .C(n26594), .D(n25907), 
            .Z(n2730)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i1_4_lut_adj_603.init = 16'h8a88;
    FD1S3BX SP_i0_i10 (.D(SP_15__N_669[10]), .CK(clk_op), .PD(n31309), 
            .Q(SP[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i10.GSR = "ENABLED";
    FD1S3BX SP_i0_i9 (.D(SP_15__N_669[9]), .CK(clk_op), .PD(n31309), .Q(SP[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i9.GSR = "ENABLED";
    FD1S3BX SP_i0_i8 (.D(SP_15__N_669[8]), .CK(clk_op), .PD(n31309), .Q(SP[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i8.GSR = "ENABLED";
    FD1S3BX SP_i0_i7 (.D(SP_15__N_669[7]), .CK(clk_op), .PD(n31309), .Q(SP[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i7.GSR = "ENABLED";
    FD1S3BX SP_i0_i6 (.D(SP_15__N_669[6]), .CK(clk_op), .PD(n31309), .Q(SP[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i6.GSR = "ENABLED";
    FD1S3BX SP_i0_i5 (.D(SP_15__N_669[5]), .CK(clk_op), .PD(n31309), .Q(SP[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i5.GSR = "ENABLED";
    FD1S3BX SP_i0_i4 (.D(SP_15__N_669[4]), .CK(clk_op), .PD(n31309), .Q(SP[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i4.GSR = "ENABLED";
    FD1S3BX SP_i0_i3 (.D(SP_15__N_669[3]), .CK(clk_op), .PD(n31309), .Q(SP[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i3.GSR = "ENABLED";
    FD1S3BX SP_i0_i2 (.D(SP_15__N_669[2]), .CK(clk_op), .PD(n31309), .Q(SP[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i2.GSR = "ENABLED";
    FD1S3BX SP_i0_i1 (.D(SP_15__N_669[1]), .CK(clk_op), .PD(n31309), .Q(SP[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam SP_i0_i1.GSR = "ENABLED";
    FD1P3DX I_i0_i7 (.D(ACC[7]), .SP(clk_op_enable_203), .CK(clk_op), 
            .CD(n31309), .Q(I[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i7.GSR = "ENABLED";
    FD1P3DX I_i0_i6 (.D(ACC[6]), .SP(clk_op_enable_203), .CK(clk_op), 
            .CD(n31309), .Q(I[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i6.GSR = "ENABLED";
    FD1P3DX I_i0_i5 (.D(ACC[5]), .SP(clk_op_enable_203), .CK(clk_op), 
            .CD(n31309), .Q(I[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i5.GSR = "ENABLED";
    FD1P3DX I_i0_i4 (.D(ACC[4]), .SP(clk_op_enable_203), .CK(clk_op), 
            .CD(n31309), .Q(I[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i4.GSR = "ENABLED";
    FD1P3DX I_i0_i3 (.D(ACC[3]), .SP(clk_op_enable_203), .CK(clk_op), 
            .CD(n31309), .Q(I[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i3.GSR = "ENABLED";
    FD1P3DX I_i0_i2 (.D(ACC[2]), .SP(clk_op_enable_203), .CK(clk_op), 
            .CD(n31309), .Q(I[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i2.GSR = "ENABLED";
    FD1P3DX I_i0_i1 (.D(ACC[1]), .SP(clk_op_enable_203), .CK(clk_op), 
            .CD(n31309), .Q(I[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam I_i0_i1.GSR = "ENABLED";
    FD1P3BX Fp_i0_i7 (.D(F[7]), .SP(clk_op_enable_217), .CK(clk_op), .PD(n31309), 
            .Q(Fp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i7.GSR = "ENABLED";
    FD1P3BX Fp_i0_i6 (.D(F[6]), .SP(clk_op_enable_217), .CK(clk_op), .PD(n31309), 
            .Q(Fp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i6.GSR = "ENABLED";
    PFUMX i8819 (.BLUT(n525[9]), .ALUT(n559[9]), .C0(n27764), .Z(PC_15__N_593[9]));
    FD1P3BX Fp_i0_i5 (.D(F[5]), .SP(clk_op_enable_217), .CK(clk_op), .PD(n31309), 
            .Q(Fp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i5.GSR = "ENABLED";
    FD1P3BX Fp_i0_i4 (.D(F[4]), .SP(clk_op_enable_217), .CK(clk_op), .PD(n31309), 
            .Q(Fp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i4.GSR = "ENABLED";
    FD1P3BX Fp_i0_i3 (.D(F[3]), .SP(clk_op_enable_217), .CK(clk_op), .PD(n31309), 
            .Q(Fp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i3.GSR = "ENABLED";
    FD1P3BX Fp_i0_i2 (.D(F[2]), .SP(clk_op_enable_217), .CK(clk_op), .PD(n31309), 
            .Q(Fp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i2.GSR = "ENABLED";
    FD1P3BX Fp_i0_i1 (.D(F[1]), .SP(clk_op_enable_217), .CK(clk_op), .PD(n31309), 
            .Q(Fp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Fp_i0_i1.GSR = "ENABLED";
    FD1P3BX Ap_i0_i7 (.D(ACC[7]), .SP(clk_op_enable_217), .CK(clk_op), 
            .PD(n31309), .Q(Ap[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i7.GSR = "ENABLED";
    FD1P3BX Ap_i0_i6 (.D(ACC[6]), .SP(clk_op_enable_217), .CK(clk_op), 
            .PD(n31309), .Q(Ap[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i6.GSR = "ENABLED";
    FD1P3BX Ap_i0_i5 (.D(ACC[5]), .SP(clk_op_enable_217), .CK(clk_op), 
            .PD(n31309), .Q(Ap[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i5.GSR = "ENABLED";
    FD1P3BX Ap_i0_i4 (.D(ACC[4]), .SP(clk_op_enable_217), .CK(clk_op), 
            .PD(n31309), .Q(Ap[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i4.GSR = "ENABLED";
    FD1P3BX Ap_i0_i3 (.D(ACC[3]), .SP(clk_op_enable_217), .CK(clk_op), 
            .PD(n31309), .Q(Ap[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i3.GSR = "ENABLED";
    FD1P3BX Ap_i0_i2 (.D(ACC[2]), .SP(clk_op_enable_217), .CK(clk_op), 
            .PD(n31309), .Q(Ap[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i2.GSR = "ENABLED";
    FD1P3BX Ap_i0_i1 (.D(ACC[1]), .SP(clk_op_enable_217), .CK(clk_op), 
            .PD(n31309), .Q(Ap[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam Ap_i0_i1.GSR = "ENABLED";
    FD1S3BX F_i0_i7 (.D(F_7__N_661[7]), .CK(clk_op), .PD(n31309), .Q(F[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i0_i7.GSR = "ENABLED";
    FD1S3BX F_i0_i6 (.D(F_7__N_661[6]), .CK(clk_op), .PD(n31309), .Q(F[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i0_i6.GSR = "ENABLED";
    FD1S3BX F_i0_i5 (.D(F_7__N_661[5]), .CK(clk_op), .PD(n31309), .Q(F[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i0_i5.GSR = "ENABLED";
    FD1S3BX F_i0_i4 (.D(F_7__N_661[4]), .CK(clk_op), .PD(n31309), .Q(F[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i0_i4.GSR = "ENABLED";
    FD1S3BX F_i0_i3 (.D(F_7__N_661[3]), .CK(clk_op), .PD(n31309), .Q(F[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i0_i3.GSR = "ENABLED";
    FD1S3BX F_i0_i2 (.D(F_7__N_661[2]), .CK(clk_op), .PD(n31309), .Q(F[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i0_i2.GSR = "ENABLED";
    FD1S3BX F_i0_i1 (.D(F_7__N_661[1]), .CK(clk_op), .PD(n31309), .Q(F[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam F_i0_i1.GSR = "ENABLED";
    FD1S3DX dout_i0_i7 (.D(dout_7__N_709[7]), .CK(clk_op), .CD(n31309), 
            .Q(cpu_dout[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i0_i7.GSR = "ENABLED";
    FD1S3DX dout_i0_i6 (.D(dout_7__N_709[6]), .CK(clk_op), .CD(n31309), 
            .Q(cpu_dout[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i0_i6.GSR = "ENABLED";
    FD1S3DX dout_i0_i5 (.D(dout_7__N_709[5]), .CK(clk_op), .CD(n31309), 
            .Q(cpu_dout[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i0_i5.GSR = "ENABLED";
    FD1S3DX dout_i0_i4 (.D(dout_7__N_709[4]), .CK(clk_op), .CD(n31309), 
            .Q(cpu_dout[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i0_i4.GSR = "ENABLED";
    FD1S3DX dout_i0_i3 (.D(dout_7__N_709[3]), .CK(clk_op), .CD(n31309), 
            .Q(cpu_dout[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i0_i3.GSR = "ENABLED";
    FD1S3DX dout_i0_i2 (.D(dout_7__N_709[2]), .CK(clk_op), .CD(n31309), 
            .Q(cpu_dout[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i0_i2.GSR = "ENABLED";
    FD1S3DX dout_i0_i1 (.D(dout_7__N_709[1]), .CK(clk_op), .CD(n31309), 
            .Q(cpu_dout[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam dout_i0_i1.GSR = "ENABLED";
    FD1S3DX mcycles_i0_i2 (.D(mcycles_d[2]), .CK(clk_op), .CD(n31309), 
            .Q(mcycles[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i0_i2.GSR = "ENABLED";
    FD1S3DX mcycles_i0_i1 (.D(mcycles_d[1]), .CK(clk_op), .CD(n31309), 
            .Q(mcycles[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam mcycles_i0_i1.GSR = "ENABLED";
    FD1P3DX XY_State_i0_i1 (.D(n25923), .SP(clk_op_enable_218), .CK(clk_op), 
            .CD(n31309), .Q(XY_State[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_State_i0_i1.GSR = "ENABLED";
    FD1P3DX ISet_i0_i1 (.D(ISet_1__N_633[1]), .SP(clk_op_enable_228), .CK(clk_op), 
            .CD(n31309), .Q(ISet[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ISet_i0_i1.GSR = "ENABLED";
    FD1P3DX IR_i0_i7 (.D(n10617), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(IR[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i7.GSR = "ENABLED";
    FD1P3DX IR_i0_i6 (.D(n10644), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(IR[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i6.GSR = "ENABLED";
    FD1P3DX IR_i0_i5 (.D(n10646), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(IR[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i5.GSR = "ENABLED";
    FD1P3DX IR_i0_i4 (.D(n10648), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(IR[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i4.GSR = "ENABLED";
    FD1P3DX IR_i0_i3 (.D(n10650), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(Set_BusA_To_3__N_1230[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i3.GSR = "ENABLED";
    FD1P3DX IR_i0_i2 (.D(n10652), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(IR[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i2.GSR = "ENABLED";
    FD1P3DX IR_i0_i1 (.D(n10654), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(IR[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i1.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), 
            .C(n12185), .D(n7), .Z(n25950)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(141[17:27])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf090;
    ORCALUT4 mux_139_i10_4_lut (.A(TmpAddr[9]), .B(RegBusC[9]), .C(n31058), 
            .D(n294), .Z(n525[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i10_4_lut.init = 16'hcac0;
    ORCALUT4 i879_2_lut_rep_599_3_lut (.A(Pre_XY_F_M[1]), .B(Pre_XY_F_M[0]), 
            .C(n7), .Z(n31186)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(141[17:27])
    defparam i879_2_lut_rep_599_3_lut.init = 16'h0606;
    ORCALUT4 i805_3_lut_rep_719 (.A(Pre_XY_F_M[2]), .B(Pre_XY_F_M[0]), .C(Pre_XY_F_M[1]), 
            .Z(n31306)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i805_3_lut_rep_719.init = 16'h6a6a;
    ORCALUT4 i878_2_lut_rep_600_4_lut (.A(Pre_XY_F_M[2]), .B(Pre_XY_F_M[0]), 
            .C(Pre_XY_F_M[1]), .D(n7), .Z(n31187)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam i878_2_lut_rep_600_4_lut.init = 16'h006a;
    ORCALUT4 n2908_bdd_3_lut_3_lut (.A(Pre_XY_F_M[2]), .B(Pre_XY_F_M[0]), 
            .C(n7), .Z(n30658)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam n2908_bdd_3_lut_3_lut.init = 16'h0202;
    PFUMX i8821 (.BLUT(n525[8]), .ALUT(n559[8]), .C0(n27764), .Z(PC_15__N_593[8]));
    ORCALUT4 mux_139_i11_4_lut (.A(TmpAddr[10]), .B(RegBusC[10]), .C(n31058), 
            .D(n294), .Z(n525[10])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i11_4_lut.init = 16'hcac0;
    ORCALUT4 n2884_bdd_2_lut_3_lut_4_lut (.A(Pre_XY_F_M[2]), .B(Pre_XY_F_M[0]), 
            .C(Pre_XY_F_M[1]), .D(n7), .Z(n30661)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1289[58:72])
    defparam n2884_bdd_2_lut_3_lut_4_lut.init = 16'h0048;
    ORCALUT4 i27265_2_lut_rep_720 (.A(n33958), .B(n33942), .Z(n31307)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i27265_2_lut_rep_720.init = 16'h1111;
    ORCALUT4 mux_139_i12_4_lut (.A(TmpAddr[11]), .B(RegBusC[11]), .C(n31058), 
            .D(n294), .Z(n525[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i12_4_lut.init = 16'hcac0;
    ORCALUT4 mux_139_i13_4_lut (.A(TmpAddr[12]), .B(RegBusC[12]), .C(n31058), 
            .D(n294), .Z(n525[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i13_4_lut.init = 16'hcac0;
    ORCALUT4 mux_139_i14_4_lut (.A(TmpAddr[13]), .B(RegBusC[13]), .C(n31058), 
            .D(n294), .Z(n525[13])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i14_4_lut.init = 16'hcac0;
    ORCALUT4 i5_4_lut (.A(I[0]), .B(I[1]), .C(I[3]), .D(I[2]), .Z(n13_adj_2060)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(742[21:29])
    defparam i5_4_lut.init = 16'hfffe;
    ORCALUT4 mux_139_i15_4_lut (.A(TmpAddr[14]), .B(RegBusC[14]), .C(n31058), 
            .D(n294), .Z(n525[14])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i15_4_lut.init = 16'hcac0;
    ORCALUT4 i6_4_lut (.A(I[7]), .B(I[4]), .C(I[5]), .D(I[6]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(742[21:29])
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_604 (.A(di_reg[7]), .B(di_reg[4]), .C(di_reg[5]), 
            .D(di_reg[6]), .Z(n14_adj_2061)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(802[23:49])
    defparam i6_4_lut_adj_604.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_605 (.A(ID16[0]), .B(ID16[10]), .Z(n17)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i1_2_lut_adj_605.init = 16'heeee;
    ORCALUT4 i14_4_lut (.A(n27), .B(n23_adj_2104), .C(ID16[4]), .D(ID16[6]), 
            .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i14_4_lut.init = 16'hfffe;
    L6MUX21 mux_502_Mux_0_i15 (.D0(n27485), .D1(n14_adj_2105), .SD(Set_BusB_To[3]), 
            .Z(BusB_7__N_760[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    CCU2B add_883_add_4_5 (.A0(TmpAddr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n23217), .COUT(n23218), .S0(n87[3]), .S1(n87[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_883_add_4_5.INIT0 = 16'haaaa;
    defparam add_883_add_4_5.INIT1 = 16'haaaa;
    defparam add_883_add_4_5.INJECT1_0 = "NO";
    defparam add_883_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i11_4_lut (.A(ID16[15]), .B(ID16[7]), .C(ID16[14]), .D(ID16[12]), 
            .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i11_4_lut.init = 16'hfffe;
    ORCALUT4 i7_2_lut (.A(ID16[5]), .B(ID16[13]), .Z(n23_adj_2104)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i7_2_lut.init = 16'heeee;
    ORCALUT4 i10_4_lut (.A(ID16[9]), .B(ID16[3]), .C(ID16[2]), .D(ID16[1]), 
            .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i10_4_lut.init = 16'hfffe;
    ORCALUT4 i2_2_lut (.A(ID16[11]), .B(ID16[8]), .Z(n18_adj_2106)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i2_2_lut.init = 16'heeee;
    ORCALUT4 i3_4_lut_adj_606 (.A(\tstate[2] ), .B(n6_adj_2107), .C(IncDec_16[0]), 
            .D(n31202), .Z(IncDecZ_N_990)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_606.init = 16'h0c08;
    ORCALUT4 i2_2_lut_adj_607 (.A(IncDec_16[1]), .B(IncDec_16[2]), .Z(n6_adj_2107)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut_adj_607.init = 16'h4444;
    ORCALUT4 i27176_4_lut (.A(n10481), .B(n30968), .C(n10348), .D(n27863), 
            .Z(n27835)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam i27176_4_lut.init = 16'hfbff;
    ORCALUT4 i8626_4_lut (.A(n30968), .B(Jump), .C(n10348), .D(n10326), 
            .Z(n10481)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i8626_4_lut.init = 16'hcecc;
    ORCALUT4 i27006_3_lut_4_lut (.A(PC[0]), .B(n30970), .C(n30974), .D(n27454), 
            .Z(n27455)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i27006_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i27190_4_lut (.A(n10481), .B(n30968), .C(n10348), .D(n27765), 
            .Z(n27774)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam i27190_4_lut.init = 16'hfffb;
    L6MUX21 i89 (.D0(n52), .D1(n41), .SD(n27689), .Z(n50));
    ORCALUT4 mux_139_i16_4_lut (.A(TmpAddr[15]), .B(RegBusC[15]), .C(n31058), 
            .D(n294), .Z(n525[15])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_139_i16_4_lut.init = 16'hcac0;
    ORCALUT4 i2_4_lut_4_lut_adj_608 (.A(\ALU_Op_3__N_1297[3] ), .B(n27113), 
            .C(n26754), .D(n38), .Z(n25706)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i2_4_lut_4_lut_adj_608.init = 16'hfff4;
    ORCALUT4 mux_131_Mux_8_i7_3_lut (.A(TmpAddr[8]), .B(RegBusC[8]), .C(n30968), 
            .Z(n389[8])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(547[29] 628[36])
    defparam mux_131_Mux_8_i7_3_lut.init = 16'hacac;
    CCU2B add_883_add_4_3 (.A0(TmpAddr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(TmpAddr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n23216), .COUT(n23217), .S0(n87[1]), .S1(n87[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_883_add_4_3.INIT0 = 16'haaaa;
    defparam add_883_add_4_3.INIT1 = 16'haaaa;
    defparam add_883_add_4_3.INJECT1_0 = "NO";
    defparam add_883_add_4_3.INJECT1_1 = "NO";
    L6MUX21 mux_502_Mux_7_i15 (.D0(n27464), .D1(n14_adj_2108), .SD(Set_BusB_To[3]), 
            .Z(BusB_7__N_760[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    L6MUX21 mux_502_Mux_6_i15 (.D0(n27467), .D1(n14_adj_2109), .SD(Set_BusB_To[3]), 
            .Z(BusB_7__N_760[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    CCU2B add_883_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(TmpAddr[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n23216), .S1(n87[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(615[44:55])
    defparam add_883_add_4_1.INIT0 = 16'h0000;
    defparam add_883_add_4_1.INIT1 = 16'h555a;
    defparam add_883_add_4_1.INJECT1_0 = "NO";
    defparam add_883_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 mux_330_i4_4_lut (.A(n1223), .B(n4_adj_2110), .C(RegWEH_N_872), 
            .D(n13), .Z(F_7__N_661[3])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_330_i4_4_lut.init = 16'heaca;
    ORCALUT4 mux_330_i3_4_lut (.A(n1228), .B(n4_adj_2037), .C(RegWEH_N_872), 
            .D(n13), .Z(F_7__N_661[2])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_330_i3_4_lut.init = 16'heaca;
    L6MUX21 mux_502_Mux_5_i15 (.D0(n27470), .D1(n14_adj_2111), .SD(Set_BusB_To[3]), 
            .Z(BusB_7__N_760[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    L6MUX21 mux_502_Mux_4_i15 (.D0(n27473), .D1(n14_adj_2112), .SD(Set_BusB_To[3]), 
            .Z(BusB_7__N_760[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    L6MUX21 mux_502_Mux_3_i15 (.D0(n27476), .D1(n14_adj_2113), .SD(Set_BusB_To[3]), 
            .Z(BusB_7__N_760[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 i27238_2_lut_rep_640 (.A(\tstate[1] ), .B(Auto_Wait_t1), .Z(n31227)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[19:52])
    defparam i27238_2_lut_rep_640.init = 16'hdddd;
    ORCALUT4 i25873_3_lut (.A(n1165), .B(n31027), .C(ALU_Op_r[3]), .Z(n27609)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(798[15] 812[20])
    defparam i25873_3_lut.init = 16'h4040;
    L6MUX21 mux_502_Mux_2_i15 (.D0(n27479), .D1(n14_adj_2114), .SD(Set_BusB_To[3]), 
            .Z(BusB_7__N_760[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    L6MUX21 mux_502_Mux_1_i15 (.D0(n27482), .D1(n14_adj_2115), .SD(Set_BusB_To[3]), 
            .Z(BusB_7__N_760[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 mux_330_i2_4_lut (.A(n1224), .B(n4_adj_2116), .C(RegWEH_N_872), 
            .D(n13), .Z(F_7__N_661[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_330_i2_4_lut.init = 16'heaca;
    PFUMX i14500 (.BLUT(n16290), .ALUT(n16293), .C0(n27661), .Z(n14_adj_2108));
    ORCALUT4 mux_293_i1_3_lut_4_lut (.A(\tstate[1] ), .B(Auto_Wait_t1), 
            .C(cpu_dout[0]), .D(BusB[4]), .Z(n1187[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[19:52])
    defparam mux_293_i1_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i8870 (.BLUT(n798[5]), .ALUT(n938[5]), .C0(n27727), .Z(n10719));
    ORCALUT4 i8858_4_lut (.A(SP16[11]), .B(di_reg[3]), .C(n5067), .D(n31194), 
            .Z(n10707)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8858_4_lut.init = 16'hcac0;
    PFUMX mux_502_Mux_0_i14 (.BLUT(n8_adj_2101), .ALUT(n10_adj_2117), .C0(n27722), 
          .Z(n14_adj_2105)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 mux_293_i8_3_lut_4_lut (.A(\tstate[1] ), .B(Auto_Wait_t1), 
            .C(cpu_dout[7]), .D(BusA[3]), .Z(n1187[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(815[19:52])
    defparam mux_293_i8_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i91 (.BLUT(n55), .ALUT(n26854), .C0(n31282), .Z(n52));
    PFUMX i29855 (.BLUT(n33635), .ALUT(n33629), .C0(IR[6]), .Z(ALU_Op_3__N_1068[0]));
    ORCALUT4 i8856_4_lut (.A(SP16[12]), .B(di_reg[4]), .C(n5067), .D(n31194), 
            .Z(n10705)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8856_4_lut.init = 16'hcac0;
    PFUMX i29852 (.BLUT(n33631), .ALUT(n33630), .C0(IR[1]), .Z(n33632));
    ORCALUT4 i8854_4_lut (.A(SP16[13]), .B(di_reg[5]), .C(n5067), .D(n31194), 
            .Z(n10703)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8854_4_lut.init = 16'hcac0;
    ORCALUT4 i8852_4_lut (.A(SP16[14]), .B(di_reg[6]), .C(n5067), .D(n31194), 
            .Z(n10701)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8852_4_lut.init = 16'hcac0;
    PFUMX mux_502_Mux_6_i14 (.BLUT(n8_adj_2100), .ALUT(n10_adj_2048), .C0(n27722), 
          .Z(n14_adj_2109)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 mux_131_Mux_9_i7_3_lut (.A(TmpAddr[9]), .B(RegBusC[9]), .C(n30968), 
            .Z(n389[9])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(547[29] 628[36])
    defparam mux_131_Mux_9_i7_3_lut.init = 16'hacac;
    ORCALUT4 mux_131_Mux_10_i7_3_lut (.A(TmpAddr[10]), .B(RegBusC[10]), 
            .C(n30968), .Z(n389[10])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(547[29] 628[36])
    defparam mux_131_Mux_10_i7_3_lut.init = 16'hacac;
    ORCALUT4 mux_131_Mux_11_i7_3_lut (.A(TmpAddr[11]), .B(RegBusC[11]), 
            .C(n30968), .Z(n389[11])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(547[29] 628[36])
    defparam mux_131_Mux_11_i7_3_lut.init = 16'hacac;
    CCU2B PC_15__I_0_792_add_4_17 (.A0(PC[15]), .B0(JumpE), .C0(di_reg[7]), 
          .D0(BTR_r), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n23215), .S0(PC16[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_15__I_0_792_add_4_17.INIT0 = 16'h596a;
    defparam PC_15__I_0_792_add_4_17.INIT1 = 16'h0000;
    defparam PC_15__I_0_792_add_4_17.INJECT1_0 = "NO";
    defparam PC_15__I_0_792_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 mux_131_Mux_12_i7_3_lut (.A(TmpAddr[12]), .B(RegBusC[12]), 
            .C(n30968), .Z(n389[12])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(547[29] 628[36])
    defparam mux_131_Mux_12_i7_3_lut.init = 16'hacac;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_609 (.A(mcycle[5]), .B(n31230), .C(n31111), 
            .D(n7), .Z(n2116[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_2_lut_3_lut_4_lut_adj_609.init = 16'hf0e0;
    ORCALUT4 i2_3_lut_4_lut_adj_610 (.A(mcycle[5]), .B(n31230), .C(mcycle[2]), 
            .D(n31231), .Z(n27040)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i2_3_lut_4_lut_adj_610.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_643 (.A(mcycle[3]), .B(mcycle[4]), .Z(n31230)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_2_lut_rep_643.init = 16'heeee;
    PFUMX i29789 (.BLUT(n27528), .ALUT(n33530), .C0(ALU_Op_r[2]), .Z(n33531));
    ORCALUT4 mux_131_Mux_13_i7_3_lut (.A(TmpAddr[13]), .B(RegBusC[13]), 
            .C(n30968), .Z(n389[13])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(547[29] 628[36])
    defparam mux_131_Mux_13_i7_3_lut.init = 16'hacac;
    PFUMX mux_502_Mux_5_i14 (.BLUT(n8_adj_2099), .ALUT(n10_adj_2050), .C0(n27722), 
          .Z(n14_adj_2111)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_502_Mux_4_i14 (.BLUT(n8_adj_2098), .ALUT(n10_adj_2052), .C0(n27722), 
          .Z(n14_adj_2112)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_502_Mux_3_i14 (.BLUT(n8_adj_2097), .ALUT(n10_adj_2054), .C0(n27722), 
          .Z(n14_adj_2113)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_502_Mux_2_i14 (.BLUT(n8_adj_2096), .ALUT(n10_adj_2056), .C0(n27722), 
          .Z(n14_adj_2114)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    PFUMX mux_502_Mux_1_i14 (.BLUT(n8_adj_2095), .ALUT(n10_adj_2058), .C0(n27722), 
          .Z(n14_adj_2115)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;
    ORCALUT4 mux_131_Mux_14_i7_3_lut (.A(TmpAddr[14]), .B(RegBusC[14]), 
            .C(n30968), .Z(n389[14])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(547[29] 628[36])
    defparam mux_131_Mux_14_i7_3_lut.init = 16'hacac;
    ORCALUT4 i27213_3_lut_3_lut (.A(\ALU_Op_3__N_1297[3] ), .B(ISet[0]), 
            .C(ISet[1]), .Z(n27689)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i27213_3_lut_3_lut.init = 16'hf4f4;
    ORCALUT4 i15139_2_lut_3_lut (.A(last_tstate), .B(n31195), .C(ALU_Op_adj_2160[3]), 
            .Z(ALU_Op_r_3__N_722[3])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i15139_2_lut_3_lut.init = 16'h2020;
    ORCALUT4 mux_330_i1_4_lut (.A(n30132), .B(n4_adj_2039), .C(RegWEH_N_872), 
            .D(n13), .Z(F_7__N_661[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_330_i1_4_lut.init = 16'heaca;
    ORCALUT4 i14797_4_lut (.A(n1146), .B(n2730), .C(F_Out[1]), .D(n31027), 
            .Z(n1224)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(841[15] 847[20])
    defparam i14797_4_lut.init = 16'h3022;
    FD1P3DX ISet_i0_i1_rep_758 (.D(ISet_1__N_633[1]), .SP(clk_op_enable_228), 
            .CK(clk_op), .CD(n31309), .Q(n33956)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam ISet_i0_i1_rep_758.GSR = "ENABLED";
    ORCALUT4 i6_3_lut (.A(TmpAddr[15]), .B(RegBusC[15]), .C(n30968), .Z(n389[15])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(183[18:29])
    defparam i6_3_lut.init = 16'hacac;
    ORCALUT4 i2_3_lut_4_lut_adj_611 (.A(n31255), .B(IR[1]), .C(IR[7]), 
            .D(IR[5]), .Z(n19)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i2_3_lut_4_lut_adj_611.init = 16'h2000;
    PFUMX i8874 (.BLUT(n798[3]), .ALUT(n938[3]), .C0(n27727), .Z(n10723));
    FD1S3AX RegAddrA_r_i0_i2 (.D(RegAddrA_r_2__N_726[2]), .CK(clk_op), .Q(RegAddrA_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i0_i2.GSR = "ENABLED";
    FD1S3AX RegAddrA_r_i0_i1 (.D(Set_BusA_To[2]), .CK(clk_op), .Q(RegAddrA_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam RegAddrA_r_i0_i1.GSR = "ENABLED";
    FD1P3DX A__i16 (.D(n542[15]), .SP(clk_op_enable_246), .CK(clk_op), 
            .CD(n31309), .Q(sram_addr_0_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i16.GSR = "ENABLED";
    PFUMX i8872 (.BLUT(n798[4]), .ALUT(n938[4]), .C0(n27727), .Z(n10721));
    FD1P3DX A__i15 (.D(n542[14]), .SP(clk_op_enable_246), .CK(clk_op), 
            .CD(n31309), .Q(sram_addr_0_14)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i15.GSR = "ENABLED";
    FD1P3DX A__i14 (.D(n542[13]), .SP(clk_op_enable_246), .CK(clk_op), 
            .CD(n31309), .Q(sram_addr_0_13)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i14.GSR = "ENABLED";
    FD1P3DX A__i13 (.D(n542[12]), .SP(clk_op_enable_246), .CK(clk_op), 
            .CD(n31309), .Q(sram_addr_0_12)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i13.GSR = "ENABLED";
    FD1P3DX A__i12 (.D(n542[11]), .SP(clk_op_enable_246), .CK(clk_op), 
            .CD(n31309), .Q(sram_addr_0_11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i12.GSR = "ENABLED";
    FD1P3DX A__i11 (.D(n542[10]), .SP(clk_op_enable_246), .CK(clk_op), 
            .CD(n31309), .Q(sram_addr_0_10)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i11.GSR = "ENABLED";
    FD1P3DX A__i10 (.D(n542[9]), .SP(clk_op_enable_246), .CK(clk_op), 
            .CD(n31309), .Q(sram_addr_0_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i10.GSR = "ENABLED";
    FD1P3DX A__i9 (.D(n542[8]), .SP(clk_op_enable_246), .CK(clk_op), .CD(n31309), 
            .Q(sram_addr_0_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i9.GSR = "ENABLED";
    FD1P3DX A__i8 (.D(n542[7]), .SP(clk_op_enable_246), .CK(clk_op), .CD(n31309), 
            .Q(sram_addr_0_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i8.GSR = "ENABLED";
    FD1P3DX A__i7 (.D(n542[6]), .SP(clk_op_enable_246), .CK(clk_op), .CD(n31309), 
            .Q(sram_addr_0_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i7.GSR = "ENABLED";
    FD1P3DX A__i6 (.D(n542[5]), .SP(clk_op_enable_246), .CK(clk_op), .CD(n31309), 
            .Q(sram_addr_0_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i6.GSR = "ENABLED";
    FD1P3DX A__i5 (.D(n542[4]), .SP(clk_op_enable_246), .CK(clk_op), .CD(n31309), 
            .Q(sram_addr_0_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i5.GSR = "ENABLED";
    FD1P3DX A__i4 (.D(n542[3]), .SP(clk_op_enable_246), .CK(clk_op), .CD(n31309), 
            .Q(sram_addr_0_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i4.GSR = "ENABLED";
    FD1P3DX A__i3 (.D(n542[2]), .SP(clk_op_enable_246), .CK(clk_op), .CD(n31309), 
            .Q(sram_addr_0_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i3.GSR = "ENABLED";
    FD1P3DX A__i2 (.D(n542[1]), .SP(clk_op_enable_246), .CK(clk_op), .CD(n31309), 
            .Q(sram_addr_0_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam A__i2.GSR = "ENABLED";
    ORCALUT4 i15011_2_lut (.A(tstate[6]), .B(tstates[0]), .Z(n5_adj_2087)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam i15011_2_lut.init = 16'h2222;
    ORCALUT4 tstates_2__I_0_i4_3_lut (.A(tstate[4]), .B(tstate[5]), .C(tstates[0]), 
            .Z(n4_adj_2086)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam tstates_2__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 tstates_2__I_0_i2_3_lut (.A(\tstate[2] ), .B(tstate[3]), .C(tstates[0]), 
            .Z(n2_adj_2085)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam tstates_2__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 tstates_2__I_0_i1_3_lut (.A(tstate[0]), .B(\tstate[1] ), .C(tstates[0]), 
            .Z(n1_adj_2084)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(335[7] 344[14])
    defparam tstates_2__I_0_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i27172_3_lut_4_lut (.A(n10348), .B(n31058), .C(n30969), .D(n10481), 
            .Z(n27861)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i27172_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i3_2_lut (.A(Read_To_Reg_r[0]), .B(Save_Mux[0]), .Z(n9_adj_2118)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i3_2_lut.init = 16'h8888;
    ORCALUT4 i25774_3_lut (.A(RegBusA[9]), .B(RegBusA[1]), .C(Set_BusA_To[0]), 
            .Z(n27510)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25774_3_lut.init = 16'hcaca;
    ORCALUT4 i25765_3_lut (.A(RegBusA[10]), .B(RegBusA[2]), .C(Set_BusA_To[0]), 
            .Z(n27501)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25765_3_lut.init = 16'hcaca;
    ORCALUT4 i25750_3_lut (.A(RegBusA[11]), .B(RegBusA[3]), .C(Set_BusA_To[0]), 
            .Z(n27486)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25750_3_lut.init = 16'hcaca;
    ORCALUT4 i25684_3_lut (.A(RegBusA[12]), .B(RegBusA[4]), .C(Set_BusA_To[0]), 
            .Z(n27420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25684_3_lut.init = 16'hcaca;
    CCU2B PC_15__I_0_792_add_4_15 (.A0(PC[13]), .B0(JumpE), .C0(di_reg[7]), 
          .D0(BTR_r), .A1(PC[14]), .B1(JumpE), .C1(di_reg[7]), .D1(BTR_r), 
          .CIN(n23214), .COUT(n23215), .S0(PC16[13]), .S1(PC16[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_15__I_0_792_add_4_15.INIT0 = 16'h596a;
    defparam PC_15__I_0_792_add_4_15.INIT1 = 16'h596a;
    defparam PC_15__I_0_792_add_4_15.INJECT1_0 = "NO";
    defparam PC_15__I_0_792_add_4_15.INJECT1_1 = "NO";
    CCU2B PC_15__I_0_792_add_4_13 (.A0(PC[11]), .B0(JumpE), .C0(di_reg[7]), 
          .D0(BTR_r), .A1(PC[12]), .B1(JumpE), .C1(di_reg[7]), .D1(BTR_r), 
          .CIN(n23213), .COUT(n23214), .S0(PC16[11]), .S1(PC16[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_15__I_0_792_add_4_13.INIT0 = 16'h596a;
    defparam PC_15__I_0_792_add_4_13.INIT1 = 16'h596a;
    defparam PC_15__I_0_792_add_4_13.INJECT1_0 = "NO";
    defparam PC_15__I_0_792_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 i25681_3_lut (.A(RegBusA[13]), .B(RegBusA[5]), .C(Set_BusA_To[0]), 
            .Z(n27417)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25681_3_lut.init = 16'hcaca;
    ORCALUT4 i25804_3_lut (.A(RegBusA[14]), .B(RegBusA[6]), .C(Set_BusA_To[0]), 
            .Z(n27540)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25804_3_lut.init = 16'hcaca;
    ORCALUT4 i25801_3_lut (.A(RegBusA[15]), .B(RegBusA[7]), .C(Set_BusA_To[0]), 
            .Z(n27537)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25801_3_lut.init = 16'hcaca;
    ORCALUT4 i25798_3_lut (.A(RegBusA[8]), .B(RegBusA[0]), .C(Set_BusA_To[0]), 
            .Z(n27534)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25798_3_lut.init = 16'hcaca;
    ORCALUT4 mux_494_i1_3_lut (.A(Save_Mux[0]), .B(ID16[0]), .C(RegWEH_N_894), 
            .Z(RegDIL_7__N_752[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i86_1_lut (.A(BTR_r), .Z(PC16_B_15__N_557[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1346[9] 1348[12])
    defparam i86_1_lut.init = 16'h5555;
    ORCALUT4 mux_494_i3_3_lut (.A(n33921), .B(ID16[2]), .C(RegWEH_N_894), 
            .Z(RegDIL_7__N_752[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_494_i2_3_lut (.A(n30984), .B(ID16[1]), .C(RegWEH_N_894), 
            .Z(RegDIL_7__N_752[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_206_i2_4_lut (.A(n26000), .B(Fp[1]), .C(n31097), .D(n31023), 
            .Z(n900[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_206_i2_4_lut.init = 16'hcac0;
    ORCALUT4 mux_221_i5_4_lut (.A(n900[4]), .B(F[4]), .C(n10231), .D(n31195), 
            .Z(n995[4])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_221_i5_4_lut.init = 16'hccca;
    ORCALUT4 mux_206_i5_4_lut (.A(n31065), .B(Fp[4]), .C(n31097), .D(n4_adj_2119), 
            .Z(n900[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_206_i5_4_lut.init = 16'hcac0;
    ORCALUT4 mux_328_i8_4_lut (.A(n1196[7]), .B(n9147), .C(RegWEH_N_872), 
            .D(n13_adj_2120), .Z(dout_7__N_709[7])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_328_i8_4_lut.init = 16'heaca;
    ORCALUT4 mux_328_i7_4_lut (.A(n1196[6]), .B(n9148), .C(RegWEH_N_872), 
            .D(n13_adj_2120), .Z(dout_7__N_709[6])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_328_i7_4_lut.init = 16'heaca;
    ORCALUT4 i1_4_lut_adj_612 (.A(n17380), .B(F[0]), .C(n31067), .D(n31066), 
            .Z(n4_adj_2119)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(514[19] 663[24])
    defparam i1_4_lut_adj_612.init = 16'h0a88;
    ORCALUT4 SP16_B_15__I_0_i16_3_lut (.A(ID16_B[15]), .B(di_reg[7]), .C(tstate[3]), 
            .Z(SP16_B[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1356[9] 1364[12])
    defparam SP16_B_15__I_0_i16_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_613 (.A(n31293), .B(n26000), .C(n31127), .D(n4_adj_2121), 
            .Z(n17380)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_613.init = 16'h0c4c;
    ORCALUT4 mux_494_i5_3_lut (.A(Save_Mux[4]), .B(ID16[4]), .C(RegWEH_N_894), 
            .Z(RegDIL_7__N_752[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_494_i4_3_lut (.A(n30977), .B(ID16[3]), .C(RegWEH_N_894), 
            .Z(RegDIL_7__N_752[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_220_i1_4_lut (.A(ACC[0]), .B(I[0]), .C(n31072), .D(Special_LD[0]), 
            .Z(n986[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_220_i1_4_lut.init = 16'hca0a;
    ORCALUT4 mux_204_i1_4_lut (.A(n23577), .B(Ap[0]), .C(n31097), .D(last_tstate), 
            .Z(n882[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_204_i1_4_lut.init = 16'hc5c0;
    ORCALUT4 mux_494_i6_3_lut (.A(Save_Mux[5]), .B(ID16[5]), .C(RegWEH_N_894), 
            .Z(RegDIL_7__N_752[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i6_3_lut.init = 16'hcaca;
    PFUMX i25728 (.BLUT(n27462), .ALUT(n27463), .C0(n3693), .Z(n27464));
    ORCALUT4 i27148_3_lut (.A(n31068), .B(Save_ALU_r), .C(ALU_Op_r[3]), 
            .Z(n27893)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam i27148_3_lut.init = 16'hbfbf;
    ORCALUT4 mux_220_i8_4_lut (.A(ACC[7]), .B(I[7]), .C(n31072), .D(Special_LD[0]), 
            .Z(n986[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_220_i8_4_lut.init = 16'hca0a;
    PFUMX i25731 (.BLUT(n27465), .ALUT(n27466), .C0(n3693), .Z(n27467));
    ORCALUT4 mux_204_i8_4_lut (.A(n23583), .B(Ap[7]), .C(n31097), .D(last_tstate), 
            .Z(n882[7])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_204_i8_4_lut.init = 16'hc5c0;
    PFUMX i25734 (.BLUT(n27468), .ALUT(n27469), .C0(n3693), .Z(n27470));
    ORCALUT4 mux_220_i7_4_lut (.A(ACC[6]), .B(I[6]), .C(n31072), .D(Special_LD[0]), 
            .Z(n986[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_220_i7_4_lut.init = 16'hca0a;
    ORCALUT4 mux_204_i7_4_lut (.A(n23585), .B(Ap[6]), .C(n31097), .D(last_tstate), 
            .Z(n882[6])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_204_i7_4_lut.init = 16'hc5c0;
    ORCALUT4 mux_220_i6_4_lut (.A(ACC[5]), .B(I[5]), .C(n31072), .D(Special_LD[0]), 
            .Z(n986[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_220_i6_4_lut.init = 16'hca0a;
    ORCALUT4 mux_204_i6_4_lut (.A(n23587), .B(Ap[5]), .C(n31097), .D(last_tstate), 
            .Z(n882[5])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_204_i6_4_lut.init = 16'hc5c0;
    CCU2B PC_15__I_0_792_add_4_11 (.A0(PC[9]), .B0(JumpE), .C0(di_reg[7]), 
          .D0(BTR_r), .A1(PC[10]), .B1(JumpE), .C1(di_reg[7]), .D1(BTR_r), 
          .CIN(n23212), .COUT(n23213), .S0(PC16[9]), .S1(PC16[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_15__I_0_792_add_4_11.INIT0 = 16'h596a;
    defparam PC_15__I_0_792_add_4_11.INIT1 = 16'h596a;
    defparam PC_15__I_0_792_add_4_11.INJECT1_0 = "NO";
    defparam PC_15__I_0_792_add_4_11.INJECT1_1 = "NO";
    PFUMX i25737 (.BLUT(n27471), .ALUT(n27472), .C0(n3693), .Z(n27473));
    ORCALUT4 mux_220_i5_4_lut (.A(ACC[4]), .B(I[4]), .C(n31072), .D(Special_LD[0]), 
            .Z(n986[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_220_i5_4_lut.init = 16'hca0a;
    ORCALUT4 mux_204_i5_4_lut (.A(n23589), .B(Ap[4]), .C(n31097), .D(last_tstate), 
            .Z(n882[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_204_i5_4_lut.init = 16'hc5c0;
    PFUMX i25740 (.BLUT(n27474), .ALUT(n27475), .C0(n3693), .Z(n27476));
    ORCALUT4 mux_220_i4_4_lut (.A(ACC[3]), .B(I[3]), .C(n31072), .D(Special_LD[0]), 
            .Z(n986[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_220_i4_4_lut.init = 16'hca0a;
    ORCALUT4 mux_204_i4_4_lut (.A(n23591), .B(Ap[3]), .C(n31097), .D(last_tstate), 
            .Z(n882[3])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_204_i4_4_lut.init = 16'hc5c0;
    ORCALUT4 mux_220_i3_4_lut (.A(ACC[2]), .B(I[2]), .C(n31072), .D(Special_LD[0]), 
            .Z(n986[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_220_i3_4_lut.init = 16'hca0a;
    ORCALUT4 mux_204_i3_4_lut (.A(n23593), .B(Ap[2]), .C(n31097), .D(last_tstate), 
            .Z(n882[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_204_i3_4_lut.init = 16'hc5c0;
    ORCALUT4 mux_220_i2_4_lut (.A(ACC[1]), .B(I[1]), .C(n31072), .D(Special_LD[0]), 
            .Z(n986[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_220_i2_4_lut.init = 16'hca0a;
    ORCALUT4 mux_204_i2_4_lut (.A(n23595), .B(Ap[1]), .C(n31097), .D(last_tstate), 
            .Z(n882[1])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_204_i2_4_lut.init = 16'hc5c0;
    ORCALUT4 mux_493_i1_3_lut (.A(Save_Mux[0]), .B(ID16[8]), .C(RegWEH_N_894), 
            .Z(RegDIH_7__N_743[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i1_3_lut.init = 16'hcaca;
    PFUMX i25743 (.BLUT(n27477), .ALUT(n27478), .C0(n3693), .Z(n27479));
    ORCALUT4 i25724_3_lut (.A(SP[15]), .B(PC[15]), .C(n30981), .Z(n27460)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25724_3_lut.init = 16'hcaca;
    CCU2B PC_15__I_0_792_add_4_9 (.A0(PC[7]), .B0(JumpE), .C0(di_reg[7]), 
          .D0(BTR_r), .A1(PC[8]), .B1(JumpE), .C1(di_reg[7]), .D1(BTR_r), 
          .CIN(n23211), .COUT(n23212), .S0(PC16[7]), .S1(PC16[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_15__I_0_792_add_4_9.INIT0 = 16'h596a;
    defparam PC_15__I_0_792_add_4_9.INIT1 = 16'h596a;
    defparam PC_15__I_0_792_add_4_9.INJECT1_0 = "NO";
    defparam PC_15__I_0_792_add_4_9.INJECT1_1 = "NO";
    PFUMX i25746 (.BLUT(n27480), .ALUT(n27481), .C0(n3693), .Z(n27482));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_614 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Save_Mux[6]), .D(Read_To_Reg_r[0]), .Z(n9088)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_4_lut_adj_614.init = 16'h0040;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_615 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Save_Mux[7]), .D(Read_To_Reg_r[0]), .Z(n5_adj_2122)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_615.init = 16'h4000;
    ORCALUT4 i8383_4_lut (.A(n17316), .B(n31195), .C(n31097), .D(n26000), 
            .Z(n10230)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;
    defparam i8383_4_lut.init = 16'hcecf;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_616 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(n30977), .D(Read_To_Reg_r[0]), .Z(n5_adj_2123)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_616.init = 16'h4000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_617 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Save_Mux[5]), .D(Read_To_Reg_r[0]), .Z(n9089)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_4_lut_adj_617.init = 16'h0040;
    PFUMX i25749 (.BLUT(n27483), .ALUT(n27484), .C0(n3693), .Z(n27485));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_618 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(n33921), .D(Read_To_Reg_r[0]), .Z(n9086)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_4_lut_adj_618.init = 16'h0040;
    ORCALUT4 i25718_4_lut (.A(n87[0]), .B(PC[0]), .C(n30975), .D(Inc_WZ), 
            .Z(n27454)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25718_4_lut.init = 16'hcac0;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_619 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Save_Mux[4]), .D(Read_To_Reg_r[0]), .Z(n5_adj_2124)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_619.init = 16'h4000;
    ORCALUT4 RegAddrA_2__I_0_i3_4_lut (.A(RegAddrA_2__N_464[2]), .B(Alternate), 
            .C(n10176), .D(n30982), .Z(RegAddrA[2])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(937[12] 944[31])
    defparam RegAddrA_2__I_0_i3_4_lut.init = 16'hccca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_620 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Save_Mux[7]), .D(Read_To_Reg_r[0]), .Z(n9087)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_4_lut_adj_620.init = 16'h0040;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_621 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Save_Mux[0]), .D(Read_To_Reg_r[0]), .Z(n9093)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_4_lut_adj_621.init = 16'h0040;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_622 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Save_Mux[5]), .D(Read_To_Reg_r[0]), .Z(n5_adj_2125)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_622.init = 16'h4000;
    ORCALUT4 i25715_4_lut (.A(n87[14]), .B(PC[14]), .C(n30975), .D(Inc_WZ), 
            .Z(n27451)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25715_4_lut.init = 16'hcac0;
    PFUMX i90 (.BLUT(n58), .ALUT(n47), .C0(ISet[1]), .Z(n41));
    ORCALUT4 i25712_4_lut (.A(n87[13]), .B(PC[13]), .C(n30975), .D(Inc_WZ), 
            .Z(n27448)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25712_4_lut.init = 16'hcac0;
    ORCALUT4 RegAddrA_2__I_30_i3_4_lut (.A(RegAddrA_r[2]), .B(XY_State[1]), 
            .C(RegAddrA_2__N_738), .D(n31020), .Z(RegAddrA_2__N_464[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[12] 944[31])
    defparam RegAddrA_2__I_30_i3_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_623 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Save_Mux[4]), .D(Read_To_Reg_r[0]), .Z(n9090)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_4_lut_adj_623.init = 16'h0040;
    ORCALUT4 i25709_4_lut (.A(n87[12]), .B(PC[12]), .C(n30975), .D(Inc_WZ), 
            .Z(n27445)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25709_4_lut.init = 16'hcac0;
    ORCALUT4 i25706_4_lut (.A(n87[11]), .B(PC[11]), .C(n30975), .D(Inc_WZ), 
            .Z(n27442)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25706_4_lut.init = 16'hcac0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(IR[5]), 
            .C(n31234), .D(n31233), .Z(n26156)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i2_4_lut_adj_624 (.A(\tstate[2] ), .B(n2696), .C(n7_adj_2126), 
            .D(n5_adj_2127), .Z(clk_op_enable_273)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i2_4_lut_adj_624.init = 16'hffec;
    ORCALUT4 i25703_4_lut (.A(n87[10]), .B(PC[10]), .C(n30975), .D(Inc_WZ), 
            .Z(n27439)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25703_4_lut.init = 16'hcac0;
    ORCALUT4 ALU_Q_7__I_0_i4_3_lut (.A(di_reg[3]), .B(ALU_Q[3]), .C(Save_ALU_r), 
            .Z(Save_Mux_7__N_521[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_206_i1_4_lut (.A(n26233), .B(Fp[0]), .C(n31097), .D(last_tstate), 
            .Z(n900[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_206_i1_4_lut.init = 16'hc5c0;
    ORCALUT4 i1_2_lut_rep_509_3_lut (.A(Read_To_Reg_r[1]), .B(n31266), .C(Read_To_Reg_r[0]), 
            .Z(n31096)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_rep_509_3_lut.init = 16'h0404;
    ORCALUT4 i8535_2_lut_rep_378 (.A(n10326), .B(n10348), .Z(n30965)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8535_2_lut_rep_378.init = 16'heeee;
    ORCALUT4 i25700_4_lut (.A(n87[9]), .B(PC[9]), .C(n30975), .D(Inc_WZ), 
            .Z(n27436)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25700_4_lut.init = 16'hcac0;
    CCU2B PC_15__I_0_792_add_4_7 (.A0(PC[5]), .B0(JumpE), .C0(di_reg[5]), 
          .D0(BTR_r), .A1(PC[6]), .B1(JumpE), .C1(di_reg[6]), .D1(BTR_r), 
          .CIN(n23210), .COUT(n23211), .S0(PC16[5]), .S1(PC16[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_15__I_0_792_add_4_7.INIT0 = 16'h596a;
    defparam PC_15__I_0_792_add_4_7.INIT1 = 16'h596a;
    defparam PC_15__I_0_792_add_4_7.INJECT1_0 = "NO";
    defparam PC_15__I_0_792_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i25697_4_lut (.A(n87[8]), .B(PC[8]), .C(n30975), .D(Inc_WZ), 
            .Z(n27433)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25697_4_lut.init = 16'hcac0;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_625 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(n30984), .D(Read_To_Reg_r[0]), .Z(n5_adj_2128)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_625.init = 16'h4000;
    ORCALUT4 i5_4_lut_adj_626 (.A(di_reg[0]), .B(di_reg[1]), .C(di_reg[3]), 
            .D(di_reg[2]), .Z(n13_adj_2071)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(811[34:48])
    defparam i5_4_lut_adj_626.init = 16'h6996;
    ORCALUT4 i6_4_lut_adj_627 (.A(di_reg[7]), .B(di_reg[4]), .C(di_reg[5]), 
            .D(di_reg[6]), .Z(n14_adj_2072)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(811[34:48])
    defparam i6_4_lut_adj_627.init = 16'h6996;
    ORCALUT4 ALU_Q_7__I_0_i2_3_lut (.A(di_reg[1]), .B(ALU_Q[1]), .C(Save_ALU_r), 
            .Z(Save_Mux_7__N_521[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(371[9:26])
    defparam ALU_Q_7__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i25694_4_lut (.A(n87[7]), .B(PC[7]), .C(n30975), .D(Inc_WZ), 
            .Z(n27430)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25694_4_lut.init = 16'hcac0;
    ORCALUT4 i1809_3_lut (.A(I[7]), .B(di_reg[7]), .C(n1165), .Z(n1142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i1809_3_lut.init = 16'hcaca;
    ORCALUT4 i25691_4_lut (.A(n87[6]), .B(PC[6]), .C(n30975), .D(Inc_WZ), 
            .Z(n27427)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25691_4_lut.init = 16'hcac0;
    ORCALUT4 i25688_4_lut (.A(n87[5]), .B(PC[5]), .C(n30975), .D(Inc_WZ), 
            .Z(n27424)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25688_4_lut.init = 16'hcac0;
    ORCALUT4 i15537_3_lut_4_lut (.A(n10326), .B(n10348), .C(n30969), .D(n31058), 
            .Z(n17398)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i15537_3_lut_4_lut.init = 16'h00fe;
    ORCALUT4 i25679_4_lut (.A(n87[4]), .B(PC[4]), .C(n30975), .D(Inc_WZ), 
            .Z(n27415)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25679_4_lut.init = 16'hcac0;
    ORCALUT4 i25676_4_lut (.A(n87[3]), .B(PC[3]), .C(n30975), .D(Inc_WZ), 
            .Z(n27412)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25676_4_lut.init = 16'hcac0;
    ORCALUT4 i25673_4_lut (.A(n87[2]), .B(PC[2]), .C(n30975), .D(Inc_WZ), 
            .Z(n27409)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25673_4_lut.init = 16'hcac0;
    PFUMX i93 (.BLUT(n37), .ALUT(n26764), .C0(IR[7]), .Z(n94));
    ORCALUT4 i25670_4_lut (.A(n87[1]), .B(PC[1]), .C(n30975), .D(Inc_WZ), 
            .Z(n27406)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i25670_4_lut.init = 16'hcac0;
    ORCALUT4 i1_2_lut_3_lut_adj_628 (.A(Read_To_Reg_r[1]), .B(n31265), .C(Read_To_Reg_r[0]), 
            .Z(n13_adj_2044)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_adj_628.init = 16'hfefe;
    ORCALUT4 i1_2_lut_3_lut_adj_629 (.A(Read_To_Reg_r[1]), .B(n31265), .C(Read_To_Reg_r[0]), 
            .Z(n13_adj_2129)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_3_lut_adj_629.init = 16'hefef;
    ORCALUT4 i25609_2_lut_4_lut (.A(n7_adj_2130), .B(n31262), .C(n33944), 
            .D(IR[5]), .Z(n31172)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i25609_2_lut_4_lut.init = 16'h0080;
    ORCALUT4 i2_3_lut_adj_630 (.A(RegAddrA_2__N_468), .B(IncDec_16[0]), 
            .C(IncDec_16[1]), .Z(RegAddrA_2__N_738)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_adj_630.init = 16'h2020;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_631 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Save_Mux[7]), .D(Read_To_Reg_r[0]), .Z(n4_adj_2131)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_631.init = 16'h8000;
    PFUMX i29494 (.BLUT(n32820), .ALUT(n32817), .C0(n27883), .Z(Save_Mux[6]));
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_632 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Save_Mux[5]), .D(Read_To_Reg_r[0]), .Z(n4_adj_2132)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_632.init = 16'h8000;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_633 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(Save_Mux[4]), .D(Read_To_Reg_r[0]), .Z(n4_adj_2073)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_633.init = 16'h8000;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_634 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(n30977), .D(Read_To_Reg_r[0]), .Z(n4_adj_2110)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_634.init = 16'h8000;
    ORCALUT4 i5_2_lut_3_lut_4_lut_adj_635 (.A(Read_To_Reg_r[1]), .B(n31266), 
            .C(n30984), .D(Read_To_Reg_r[0]), .Z(n4_adj_2116)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_4_lut_adj_635.init = 16'h8000;
    ORCALUT4 mux_221_i1_3_lut (.A(n900[0]), .B(F[0]), .C(n30967), .Z(n995[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_221_i1_3_lut.init = 16'hcaca;
    ORCALUT4 mux_493_i3_3_lut (.A(n33921), .B(ID16[10]), .C(RegWEH_N_894), 
            .Z(RegDIH_7__N_743[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_493_i2_3_lut (.A(n30984), .B(ID16[9]), .C(RegWEH_N_894), 
            .Z(RegDIH_7__N_743[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i5_2_lut_3_lut_adj_636 (.A(Read_To_Reg_r[0]), .B(Save_Mux[5]), 
            .C(n31098), .Z(n4_adj_2133)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_adj_636.init = 16'h8080;
    ORCALUT4 i15540_3_lut_rep_381_4_lut (.A(n30974), .B(n30971), .C(n31058), 
            .D(n10348), .Z(n30968)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C))) */ ;
    defparam i15540_3_lut_rep_381_4_lut.init = 16'h0f0d;
    ORCALUT4 i27212_3_lut (.A(Set_BusA_To[3]), .B(Set_BusA_To[2]), .C(Set_BusA_To[1]), 
            .Z(n27692)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1080[11] 1104[18])
    defparam i27212_3_lut.init = 16'heaea;
    ORCALUT4 mux_328_i6_4_lut (.A(n1196[5]), .B(n9149), .C(RegWEH_N_872), 
            .D(n13_adj_2120), .Z(dout_7__N_709[5])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_328_i6_4_lut.init = 16'heaca;
    ORCALUT4 i26_4_lut (.A(n13_adj_2134), .B(Fp[3]), .C(n31097), .D(n26000), 
            .Z(n24338)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam i26_4_lut.init = 16'hcac0;
    ORCALUT4 i10110_3_lut (.A(n31040), .B(Halt_FF), .C(n31195), .Z(n7_adj_2126)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(114[17:26])
    defparam i10110_3_lut.init = 16'hcaca;
    ORCALUT4 mux_328_i5_4_lut (.A(n1196[4]), .B(n9150), .C(RegWEH_N_872), 
            .D(n13_adj_2120), .Z(dout_7__N_709[4])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_328_i5_4_lut.init = 16'heaca;
    ORCALUT4 mux_206_i6_4_lut (.A(n10_adj_2135), .B(Fp[5]), .C(n31097), 
            .D(n26000), .Z(n900[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(710[19] 716[24])
    defparam mux_206_i6_4_lut.init = 16'hcac0;
    ORCALUT4 i8878_3_lut (.A(n938[1]), .B(di_reg[1]), .C(n2696), .Z(n10727)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8878_3_lut.init = 16'hcaca;
    ORCALUT4 RegAddrA_2__I_0_i1_4_lut (.A(RegAddrA_2__N_735[0]), .B(IncDec_16[0]), 
            .C(n30982), .D(RegAddrA_2__N_738), .Z(RegAddrA[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(937[12] 944[31])
    defparam RegAddrA_2__I_0_i1_4_lut.init = 16'hcfca;
    ORCALUT4 mux_328_i4_4_lut (.A(n1196[3]), .B(n9151), .C(RegWEH_N_872), 
            .D(n13_adj_2120), .Z(dout_7__N_709[3])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_328_i4_4_lut.init = 16'heaca;
    ORCALUT4 mux_494_i7_3_lut (.A(Save_Mux[6]), .B(ID16[6]), .C(RegWEH_N_894), 
            .Z(RegDIL_7__N_752[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i2_4_lut (.A(SP16[1]), .B(bus_din[1]), .C(n31195), 
            .D(n31194), .Z(n938[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i2_4_lut.init = 16'hcac0;
    PFUMX i29408 (.BLUT(n32683), .ALUT(n32680), .C0(n1165), .Z(n32684));
    FD1P3DX IR_i0_i7_rep_756 (.D(n10617), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(n33954)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i7_rep_756.GSR = "ENABLED";
    ORCALUT4 mux_493_i5_3_lut (.A(Save_Mux[4]), .B(ID16[12]), .C(RegWEH_N_894), 
            .Z(RegDIH_7__N_743[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_493_i4_3_lut (.A(n30977), .B(ID16[11]), .C(RegWEH_N_894), 
            .Z(RegDIH_7__N_743[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_590 (.A(Read_To_Reg_r[4]), .B(Read_To_Reg_r[3]), 
            .Z(n31177)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_rep_590.init = 16'h2222;
    PFUMX i29406 (.BLUT(n995[2]), .ALUT(n32681), .C0(n31172), .Z(n32682));
    ORCALUT4 i2_3_lut_4_lut_adj_637 (.A(Read_To_Reg_r[4]), .B(Read_To_Reg_r[3]), 
            .C(n31180), .D(RegWEH_N_872), .Z(n25731)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i2_3_lut_4_lut_adj_637.init = 16'h0200;
    ORCALUT4 i2_3_lut_rep_511_4_lut (.A(Read_To_Reg_r[4]), .B(Read_To_Reg_r[3]), 
            .C(Read_To_Reg_r[1]), .D(Read_To_Reg_r[2]), .Z(n31098)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i2_3_lut_rep_511_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut_rep_591 (.A(mcycle[1]), .B(mcycle[2]), .Z(n31178)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_2_lut_rep_591.init = 16'hbbbb;
    ORCALUT4 i1_2_lut_3_lut_adj_638 (.A(mcycle[1]), .B(mcycle[2]), .C(\ALU_Op_3__N_1297[3] ), 
            .Z(n9_adj_2136)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_2_lut_3_lut_adj_638.init = 16'hb0b0;
    ORCALUT4 i14535_2_lut_rep_593 (.A(Read_To_Reg_r[2]), .B(Read_To_Reg_r[1]), 
            .Z(n31180)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14535_2_lut_rep_593.init = 16'h8888;
    ORCALUT4 i1_2_lut_rep_594 (.A(ALU_Op_r[1]), .B(ALU_Op_r[2]), .Z(n31181)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam i1_2_lut_rep_594.init = 16'h8888;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_639 (.A(ALU_Op_r[1]), .B(ALU_Op_r[2]), 
            .C(ALU_Op_r[3]), .D(ALU_Op_r[0]), .Z(RegWEH_N_890)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam i1_2_lut_3_lut_4_lut_adj_639.init = 16'hf7ff;
    ORCALUT4 i1_4_lut_adj_640 (.A(n7851), .B(n31059), .C(tstate[3]), .D(tstate[4]), 
            .Z(n26109)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i1_4_lut_adj_640.init = 16'hbbba;
    ORCALUT4 i6266_3_lut (.A(RegWEH_N_894), .B(IncDec_16[0]), .C(IncDec_16[1]), 
            .Z(n7851)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(980[7] 990[12])
    defparam i6266_3_lut.init = 16'h2a2a;
    ORCALUT4 i2_2_lut_3_lut (.A(ALU_Op_r[1]), .B(ALU_Op_r[2]), .C(Save_ALU_r), 
            .Z(n6_adj_2137)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    ORCALUT4 i493_4_lut (.A(IncDec_16[2]), .B(\tstate[2] ), .C(tstate[3]), 
            .D(\ALU_Op_3__N_1297[3] ), .Z(RegWEH_N_894)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[16:95])
    defparam i493_4_lut.init = 16'ha088;
    ORCALUT4 i2_4_lut_adj_641 (.A(n31019), .B(RegAddrA_2__N_738), .C(RegAddrA_r[1]), 
            .D(n31018), .Z(RegAddrA_2__N_464[1])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(939[12] 944[31])
    defparam i2_4_lut_adj_641.init = 16'heefe;
    ORCALUT4 mux_493_i7_3_lut (.A(Save_Mux[6]), .B(ID16[14]), .C(RegWEH_N_894), 
            .Z(RegDIH_7__N_743[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i7_3_lut.init = 16'hcaca;
    FD1P3DX TmpAddr_i0_i1 (.D(n10727), .SP(clk_op_enable_273), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i1.GSR = "ENABLED";
    FD1P3DX TmpAddr_i0_i2 (.D(n10725), .SP(clk_op_enable_273), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i2.GSR = "ENABLED";
    FD1P3DX TmpAddr_i0_i3 (.D(n10723), .SP(clk_op_enable_273), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i3.GSR = "ENABLED";
    FD1P3DX TmpAddr_i0_i4 (.D(n10721), .SP(clk_op_enable_273), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i4.GSR = "ENABLED";
    FD1P3DX TmpAddr_i0_i5 (.D(n10719), .SP(clk_op_enable_273), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i5.GSR = "ENABLED";
    ORCALUT4 mux_493_i6_3_lut (.A(Save_Mux[5]), .B(ID16[13]), .C(RegWEH_N_894), 
            .Z(RegDIH_7__N_743[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_328_i3_4_lut (.A(n1196[2]), .B(n9152), .C(RegWEH_N_872), 
            .D(n13_adj_2120), .Z(dout_7__N_709[2])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_328_i3_4_lut.init = 16'heaca;
    ORCALUT4 mux_328_i2_4_lut (.A(n1196[1]), .B(n9153), .C(RegWEH_N_872), 
            .D(n13_adj_2120), .Z(dout_7__N_709[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_328_i2_4_lut.init = 16'heaca;
    ORCALUT4 i8876_3_lut (.A(n938[2]), .B(di_reg[2]), .C(n2696), .Z(n10725)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i8876_3_lut.init = 16'hcaca;
    PFUMX i28322 (.BLUT(n30701), .ALUT(n30698), .C0(n27917), .Z(Save_Mux[0]));
    CCU2B PC_15__I_0_792_add_4_5 (.A0(PC[3]), .B0(JumpE), .C0(di_reg[3]), 
          .D0(BTR_r), .A1(PC[4]), .B1(JumpE), .C1(di_reg[4]), .D1(BTR_r), 
          .CIN(n23209), .COUT(n23210), .S0(PC16[3]), .S1(PC16[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_15__I_0_792_add_4_5.INIT0 = 16'h596a;
    defparam PC_15__I_0_792_add_4_5.INIT1 = 16'h596a;
    defparam PC_15__I_0_792_add_4_5.INJECT1_0 = "NO";
    defparam PC_15__I_0_792_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 mux_494_i8_3_lut (.A(Save_Mux[7]), .B(ID16[7]), .C(RegWEH_N_894), 
            .Z(RegDIL_7__N_752[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_494_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mcycles_2__I_0_i2_3_lut (.A(mcycle[1]), .B(mcycle[2]), .C(mcycles[0]), 
            .Z(n2_adj_2066)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i14533_2_lut (.A(\ALU_Op_3__N_1297[3] ), .B(mcycles[0]), .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam i14533_2_lut.init = 16'h8888;
    ORCALUT4 mux_493_i8_3_lut (.A(Save_Mux[7]), .B(ID16[15]), .C(RegWEH_N_894), 
            .Z(RegDIH_7__N_743[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1010[12] 1014[12])
    defparam mux_493_i8_3_lut.init = 16'hcaca;
    PFUMX i28320 (.BLUT(n27526), .ALUT(n30699), .C0(n31212), .Z(n30700));
    ORCALUT4 mcycles_2__I_0_i5_3_lut (.A(mcycle[5]), .B(n7), .C(mcycles[0]), 
            .Z(n5_adj_2065)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mcycles_2__I_0_i4_3_lut (.A(mcycle[3]), .B(mcycle[4]), .C(mcycles[0]), 
            .Z(n4_adj_2064)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(324[7] 333[14])
    defparam mcycles_2__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_136_i16_3_lut (.A(n389[15]), .B(di_reg[7]), .C(n10481), 
            .Z(n474[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(533[30] 630[30])
    defparam mux_136_i16_3_lut.init = 16'hcaca;
    ORCALUT4 i25723_4_lut (.A(ACC[7]), .B(n87[15]), .C(n30981), .D(Inc_WZ), 
            .Z(n27459)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i25723_4_lut.init = 16'hca0a;
    ORCALUT4 mux_136_i15_3_lut (.A(n389[14]), .B(di_reg[6]), .C(n10481), 
            .Z(n474[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(533[30] 630[30])
    defparam mux_136_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_140_i1_3_lut (.A(n508[0]), .B(TmpAddr[0]), .C(n10493), 
            .Z(n542[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_140_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i5_2_lut_3_lut_adj_642 (.A(Read_To_Reg_r[0]), .B(n30977), .C(n31098), 
            .Z(n4_adj_2139)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_adj_642.init = 16'h8080;
    ORCALUT4 mux_138_i1_4_lut (.A(n389[0]), .B(RegBusC[0]), .C(n17398), 
            .D(n30965), .Z(n508[0])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_138_i1_4_lut.init = 16'h0cac;
    ORCALUT4 mux_136_i14_3_lut (.A(n389[13]), .B(di_reg[5]), .C(n10481), 
            .Z(n474[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(533[30] 630[30])
    defparam mux_136_i14_3_lut.init = 16'hcaca;
    ORCALUT4 mux_136_i13_3_lut (.A(n389[12]), .B(di_reg[4]), .C(n10481), 
            .Z(n474[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(533[30] 630[30])
    defparam mux_136_i13_3_lut.init = 16'hcaca;
    ORCALUT4 i3_4_lut_adj_643 (.A(Inc_WZ), .B(n30981), .C(n30974), .D(n30975), 
            .Z(n10326)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_643.init = 16'h0004;
    PFUMX i28304 (.BLUT(n30662), .ALUT(n30661), .C0(n31186), .Z(n30663));
    ORCALUT4 mux_136_i12_3_lut (.A(n389[11]), .B(di_reg[3]), .C(n10481), 
            .Z(n474[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(533[30] 630[30])
    defparam mux_136_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i8534_4_lut (.A(n30974), .B(n294), .C(n8_adj_2140), .D(n30971), 
            .Z(n10348)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i8534_4_lut.init = 16'heccc;
    ORCALUT4 mux_136_i11_3_lut (.A(n389[10]), .B(di_reg[2]), .C(n10481), 
            .Z(n474[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(533[30] 630[30])
    defparam mux_136_i11_3_lut.init = 16'hcaca;
    ORCALUT4 mux_136_i10_3_lut (.A(n389[9]), .B(di_reg[1]), .C(n10481), 
            .Z(n474[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(533[30] 630[30])
    defparam mux_136_i10_3_lut.init = 16'hcaca;
    ORCALUT4 mux_136_i9_3_lut (.A(n389[8]), .B(di_reg[0]), .C(n10481), 
            .Z(n474[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(533[30] 630[30])
    defparam mux_136_i9_3_lut.init = 16'hcaca;
    ORCALUT4 n999_bdd_2_lut_27514_4_lut (.A(n31172), .B(n31260), .C(IR[4]), 
            .D(n995[4]), .Z(n29257)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam n999_bdd_2_lut_27514_4_lut.init = 16'h5d00;
    FD1P3DX TmpAddr_i0_i6 (.D(n10717), .SP(clk_op_enable_273), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i6.GSR = "ENABLED";
    FD1P3DX TmpAddr_i0_i7 (.D(n10715), .SP(clk_op_enable_273), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i7.GSR = "ENABLED";
    FD1P3DX TmpAddr_i0_i8 (.D(n10713), .SP(clk_op_enable_266), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i8.GSR = "ENABLED";
    ORCALUT4 i15_4_lut (.A(n17), .B(n30), .C(n26), .D(n18_adj_2106), 
            .Z(IncDecZ_N_988)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(916[19:28])
    defparam i15_4_lut.init = 16'hfffe;
    FD1P3DX TmpAddr_i0_i9 (.D(n10711), .SP(clk_op_enable_266), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i9.GSR = "ENABLED";
    ORCALUT4 i8732_4_lut (.A(IncDecZ), .B(F_Out[6]), .C(stop), .D(Save_ALU_r), 
            .Z(n10581)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(880[10] 929[8])
    defparam i8732_4_lut.init = 16'hcaaa;
    FD1P3DX TmpAddr_i0_i10 (.D(n10709), .SP(clk_op_enable_266), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i10.GSR = "ENABLED";
    FD1P3DX TmpAddr_i0_i11 (.D(n10707), .SP(clk_op_enable_266), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i11.GSR = "ENABLED";
    FD1P3DX TmpAddr_i0_i12 (.D(n10705), .SP(clk_op_enable_266), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i12.GSR = "ENABLED";
    ORCALUT4 i27134_4_lut (.A(n10158), .B(Save_ALU_r), .C(ALU_Op_r[3]), 
            .D(n27907), .Z(n27917)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(368[12] 371[26])
    defparam i27134_4_lut.init = 16'heaaa;
    FD1P3DX TmpAddr_i0_i13 (.D(n10703), .SP(clk_op_enable_266), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i13.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_644 (.A(n31188), .B(\ALU_Op_3__N_1297[3] ), .C(n23457), 
            .D(n17001), .Z(n12185)) /* synthesis lut_function=((B (C (D))+!B (C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(142[17:32])
    defparam i1_4_lut_adj_644.init = 16'hf575;
    ORCALUT4 i1_2_lut_adj_645 (.A(tstate[3]), .B(n15), .Z(n2696)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(724[15] 773[20])
    defparam i1_2_lut_adj_645.init = 16'h8888;
    ORCALUT4 i27218_2_lut (.A(n30985), .B(Set_BusB_To[1]), .Z(n27722)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam i27218_2_lut.init = 16'heeee;
    ORCALUT4 i1_4_lut_adj_646 (.A(IR[4]), .B(n33925), .C(n27310), .D(n8_adj_2141), 
            .Z(n62)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i1_4_lut_adj_646.init = 16'haa8a;
    ORCALUT4 i2_4_lut_adj_647 (.A(n31268), .B(n31254), .C(IR[4]), .D(n31152), 
            .Z(n26885)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam i2_4_lut_adj_647.init = 16'h1110;
    ORCALUT4 i2_4_lut_adj_648 (.A(n30981), .B(n31190), .C(Set_Addr_To_2__N_1072[2]), 
            .D(Set_Addr_To_2__N_1441[0]), .Z(n23457)) /* synthesis lut_function=(!(A (B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(359[12:32])
    defparam i2_4_lut_adj_648.init = 16'h7775;
    FD1P3DX TmpAddr_i0_i14 (.D(n10701), .SP(clk_op_enable_266), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i14.GSR = "ENABLED";
    ORCALUT4 i27277_4_lut (.A(n31257), .B(mcycle[1]), .C(n31192), .D(n31315), 
            .Z(n6_adj_2142)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C))) */ ;
    defparam i27277_4_lut.init = 16'hafab;
    PFUMX i28302 (.BLUT(n30659), .ALUT(n30658), .C0(n31186), .Z(n30660));
    CCU2B PC_15__I_0_792_add_4_3 (.A0(PC[1]), .B0(JumpE), .C0(di_reg[1]), 
          .D0(BTR_r), .A1(PC[2]), .B1(JumpE), .C1(di_reg[2]), .D1(BTR_r), 
          .CIN(n23208), .COUT(n23209), .S0(PC16[1]), .S1(PC16[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_15__I_0_792_add_4_3.INIT0 = 16'h596a;
    defparam PC_15__I_0_792_add_4_3.INIT1 = 16'h596a;
    defparam PC_15__I_0_792_add_4_3.INJECT1_0 = "NO";
    defparam PC_15__I_0_792_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 n2884_bdd_3_lut_4_lut (.A(n31306), .B(n7), .C(n25704), .D(mcycle[4]), 
            .Z(n30662)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam n2884_bdd_3_lut_4_lut.init = 16'h0d00;
    ORCALUT4 i1_2_lut_3_lut_adj_649 (.A(n31306), .B(n7), .C(n12185), .Z(n25959)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i1_2_lut_3_lut_adj_649.init = 16'hd0d0;
    ORCALUT4 i2_3_lut_4_lut_adj_650 (.A(n33932), .B(XY_Ind), .C(Set_BusB_To[1]), 
            .D(n30985), .Z(n1669)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(935[78:95])
    defparam i2_3_lut_4_lut_adj_650.init = 16'h0200;
    ORCALUT4 i1_3_lut_4_lut_adj_651 (.A(n10326), .B(n10348), .C(n31058), 
            .D(Jump), .Z(n10493)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_3_lut_4_lut_adj_651.init = 16'hff0e;
    ORCALUT4 i1656_2_lut_rep_379 (.A(last_tstate), .B(n31195), .Z(clk_op_enable_246)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1656_2_lut_rep_379.init = 16'h2222;
    CCU2B PC_15__I_0_792_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(PC[0]), .B1(JumpE), .C1(di_reg[0]), .D1(PC16_B_15__N_557[0]), 
          .COUT(n23208), .S1(PC16[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1372[14:25])
    defparam PC_15__I_0_792_add_4_1.INIT0 = 16'h0000;
    defparam PC_15__I_0_792_add_4_1.INIT1 = 16'h596a;
    defparam PC_15__I_0_792_add_4_1.INJECT1_0 = "NO";
    defparam PC_15__I_0_792_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 mux_385_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1660), 
            .Z(RegAddrA_r_2__N_726[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(886[11] 889[16])
    defparam mux_385_i3_3_lut.init = 16'hcaca;
    CCU2B SP16_A_15__I_0_add_4_17 (.A0(SP16_B[15]), .B0(tstate[3]), .C0(RegBusC[15]), 
          .D0(SP[15]), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n23207), .S0(SP16[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_17.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_17.INIT1 = 16'h0000;
    defparam SP16_A_15__I_0_add_4_17.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 mux_327_i8_4_lut (.A(n1133[7]), .B(n4_adj_2143), .C(RegWEH_N_872), 
            .D(n13_adj_2070), .Z(ACC_7__N_653[7])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_327_i8_4_lut.init = 16'heaca;
    ORCALUT4 mux_140_i8_3_lut (.A(n508[7]), .B(TmpAddr[7]), .C(n10493), 
            .Z(n542[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_140_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_212_i3_4_lut (.A(SP16[2]), .B(bus_din[2]), .C(n31195), 
            .D(n31194), .Z(n938[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_212_i3_4_lut.init = 16'hcac0;
    ORCALUT4 mux_138_i8_4_lut (.A(n389[7]), .B(RegBusC[7]), .C(n17398), 
            .D(n30965), .Z(n508[7])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_138_i8_4_lut.init = 16'h0cac;
    ORCALUT4 i1_2_lut_rep_605 (.A(\ALU_Op_3__N_1297[3] ), .B(n7), .Z(n31192)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(65[25:31])
    defparam i1_2_lut_rep_605.init = 16'heeee;
    ORCALUT4 i5187_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n7), .C(n25912), 
            .D(mcycle[1]), .Z(TStates_2__N_1435[2])) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(65[25:31])
    defparam i5187_4_lut_4_lut.init = 16'hbaaa;
    ORCALUT4 i1_2_lut_3_lut_adj_652 (.A(\ALU_Op_3__N_1297[3] ), .B(n7), 
            .C(mcycle[1]), .Z(n57)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(65[25:31])
    defparam i1_2_lut_3_lut_adj_652.init = 16'hefef;
    ORCALUT4 i1_2_lut_3_lut_3_lut_adj_653 (.A(\ALU_Op_3__N_1297[3] ), .B(n92), 
            .C(n56), .Z(n48_adj_2144)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_3_lut_adj_653.init = 16'hdcdc;
    CCU2B SP16_A_15__I_0_add_4_15 (.A0(SP16_B[15]), .B0(tstate[3]), .C0(RegBusC[13]), 
          .D0(SP[13]), .A1(SP16_B[15]), .B1(tstate[3]), .C1(RegBusC[14]), 
          .D1(SP[14]), .CIN(n23206), .COUT(n23207), .S0(SP16[13]), .S1(SP16[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_15.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_15.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_15.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 mux_327_i7_4_lut (.A(n1133[6]), .B(n4_adj_2145), .C(RegWEH_N_872), 
            .D(n13_adj_2070), .Z(ACC_7__N_653[6])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_327_i7_4_lut.init = 16'heaca;
    ORCALUT4 i192_2_lut_rep_607 (.A(tstate[3]), .B(mcycle[5]), .Z(n31194)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam i192_2_lut_rep_607.init = 16'h8888;
    ORCALUT4 mux_140_i7_3_lut (.A(n508[6]), .B(TmpAddr[6]), .C(n10493), 
            .Z(n542[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_140_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_138_i7_4_lut (.A(n389[6]), .B(RegBusC[6]), .C(n17398), 
            .D(n30965), .Z(n508[6])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_138_i7_4_lut.init = 16'h0cac;
    ORCALUT4 i1_2_lut_2_lut_3_lut (.A(tstate[3]), .B(mcycle[5]), .C(n31195), 
            .Z(n5_adj_2127)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h0808;
    PFUMX i30 (.BLUT(n10_adj_2146), .ALUT(n13_adj_2067), .C0(ISet[1]), 
          .Z(n15));
    ORCALUT4 mux_192_i4_3_lut_4_lut (.A(tstate[3]), .B(mcycle[5]), .C(SP16[3]), 
            .D(Set_BusA_To_3__N_1230[0]), .Z(n798[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i4_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_192_i6_3_lut_4_lut (.A(tstate[3]), .B(mcycle[5]), .C(SP16[5]), 
            .D(IR[5]), .Z(n798[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_192_i5_3_lut_4_lut (.A(tstate[3]), .B(mcycle[5]), .C(SP16[4]), 
            .D(IR[4]), .Z(n798[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(693[23:45])
    defparam mux_192_i5_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mcycle_0__keep_I_0_854_4_lut_rep_608 (.A(\ALU_Op_3__N_1297[3] ), 
            .B(\tstate[1] ), .C(tstate[3]), .D(\tstate[2] ), .Z(n31195)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[19:68])
    defparam mcycle_0__keep_I_0_854_4_lut_rep_608.init = 16'haaa8;
    ORCALUT4 i3_2_lut_adj_654 (.A(Read_To_Reg_r[0]), .B(Save_Mux[6]), .Z(n9_adj_2147)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i3_2_lut_adj_654.init = 16'h8888;
    ORCALUT4 i8682_1_lut_rep_544_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(\tstate[1] ), 
            .C(tstate[3]), .D(\tstate[2] ), .Z(clk_op_enable_162)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(436[19:68])
    defparam i8682_1_lut_rep_544_4_lut.init = 16'h5557;
    CCU2B SP16_A_15__I_0_add_4_13 (.A0(SP16_B[15]), .B0(tstate[3]), .C0(RegBusC[11]), 
          .D0(SP[11]), .A1(SP16_B[15]), .B1(tstate[3]), .C1(RegBusC[12]), 
          .D1(SP[12]), .CIN(n23205), .COUT(n23206), .S0(SP16[11]), .S1(SP16[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_13.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_13.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_13.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_13.INJECT1_1 = "NO";
    FD1P3DX IR_i0_i6_rep_754 (.D(n10644), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(n33952)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i6_rep_754.GSR = "ENABLED";
    ORCALUT4 mux_327_i6_4_lut (.A(n1133[5]), .B(n4_adj_2133), .C(RegWEH_N_872), 
            .D(n13_adj_2070), .Z(ACC_7__N_653[5])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_327_i6_4_lut.init = 16'heaca;
    ORCALUT4 i1_3_lut_4_lut_adj_655 (.A(last_tstate), .B(n31195), .C(n11943), 
            .D(Jump), .Z(clk_op_enable_189)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_3_lut_4_lut_adj_655.init = 16'hf2f0;
    ORCALUT4 mux_140_i6_3_lut (.A(n508[5]), .B(TmpAddr[5]), .C(n10493), 
            .Z(n542[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_140_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_138_i6_4_lut (.A(n389[5]), .B(RegBusC[5]), .C(n17398), 
            .D(n30965), .Z(n508[5])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_138_i6_4_lut.init = 16'h0cac;
    ORCALUT4 mux_140_i5_3_lut (.A(n508[4]), .B(TmpAddr[4]), .C(n10493), 
            .Z(n542[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_140_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_138_i5_4_lut (.A(n389[4]), .B(RegBusC[4]), .C(n17398), 
            .D(n30965), .Z(n508[4])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_138_i5_4_lut.init = 16'h0cac;
    ORCALUT4 mux_327_i5_4_lut (.A(n1133[4]), .B(n4_adj_2075), .C(RegWEH_N_872), 
            .D(n13_adj_2070), .Z(ACC_7__N_653[4])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_327_i5_4_lut.init = 16'heaca;
    CCU2B SP16_A_15__I_0_add_4_11 (.A0(SP16_B[15]), .B0(tstate[3]), .C0(RegBusC[9]), 
          .D0(SP[9]), .A1(SP16_B[15]), .B1(tstate[3]), .C1(RegBusC[10]), 
          .D1(SP[10]), .CIN(n23204), .COUT(n23205), .S0(SP16[9]), .S1(SP16[10]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_11.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_11.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_11.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 mux_140_i4_3_lut (.A(n508[3]), .B(TmpAddr[3]), .C(n10493), 
            .Z(n542[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_140_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_327_i4_4_lut (.A(n1133[3]), .B(n4_adj_2139), .C(RegWEH_N_872), 
            .D(n13_adj_2070), .Z(ACC_7__N_653[3])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_327_i4_4_lut.init = 16'heaca;
    ORCALUT4 mux_138_i4_4_lut (.A(n389[3]), .B(RegBusC[3]), .C(n17398), 
            .D(n30965), .Z(n508[3])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_138_i4_4_lut.init = 16'h0cac;
    ORCALUT4 mux_327_i3_4_lut (.A(n1133[2]), .B(n4_adj_2148), .C(RegWEH_N_872), 
            .D(n13_adj_2070), .Z(ACC_7__N_653[2])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_327_i3_4_lut.init = 16'heaca;
    ORCALUT4 mux_327_i2_4_lut (.A(n1133[1]), .B(n4_adj_2046), .C(RegWEH_N_872), 
            .D(n13_adj_2070), .Z(ACC_7__N_653[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_327_i2_4_lut.init = 16'heaca;
    ORCALUT4 mux_140_i3_3_lut (.A(n508[2]), .B(TmpAddr[2]), .C(n10493), 
            .Z(n542[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_140_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_138_i3_4_lut (.A(n389[2]), .B(RegBusC[2]), .C(n17398), 
            .D(n30965), .Z(n508[2])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_138_i3_4_lut.init = 16'h0cac;
    CCU2B SP16_A_15__I_0_add_4_9 (.A0(SP16_B[15]), .B0(tstate[3]), .C0(RegBusC[7]), 
          .D0(SP[7]), .A1(SP16_B[15]), .B1(tstate[3]), .C1(RegBusC[8]), 
          .D1(SP[8]), .CIN(n23203), .COUT(n23204), .S0(SP16[7]), .S1(SP16[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_9.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_9.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_9.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i14909_4_lut (.A(tstate[6]), .B(last_tstate), .C(tstate[5]), 
            .D(n2258), .Z(tstate_6__N_786[6])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam i14909_4_lut.init = 16'h2230;
    ORCALUT4 mux_140_i2_3_lut (.A(n508[1]), .B(TmpAddr[1]), .C(n10493), 
            .Z(n542[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_140_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_138_i2_4_lut (.A(n389[1]), .B(RegBusC[1]), .C(n17398), 
            .D(n30965), .Z(n508[1])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[34] 630[30])
    defparam mux_138_i2_4_lut.init = 16'h0cac;
    ORCALUT4 i14910_4_lut (.A(tstate[5]), .B(last_tstate), .C(tstate[4]), 
            .D(n2258), .Z(tstate_6__N_786[5])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam i14910_4_lut.init = 16'h2230;
    ORCALUT4 i14911_4_lut (.A(tstate[4]), .B(last_tstate), .C(tstate[3]), 
            .D(n2258), .Z(tstate_6__N_786[4])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam i14911_4_lut.init = 16'h2230;
    ORCALUT4 i14912_4_lut (.A(tstate[3]), .B(last_tstate), .C(\tstate[2] ), 
            .D(n2258), .Z(tstate_6__N_786[3])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam i14912_4_lut.init = 16'h2230;
    ORCALUT4 i14913_4_lut (.A(\tstate[2] ), .B(last_tstate), .C(\tstate[1] ), 
            .D(n2258), .Z(tstate_6__N_786[2])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam i14913_4_lut.init = 16'h2230;
    ORCALUT4 i14914_4_lut (.A(\tstate[1] ), .B(last_tstate), .C(tstate[0]), 
            .D(n2258), .Z(tstate_6__N_786[1])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam i14914_4_lut.init = 16'heefc;
    ORCALUT4 mux_668_i7_4_lut (.A(n7), .B(n12185), .C(last_tstate), .D(n30660), 
            .Z(mcycle_6__N_779[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam mux_668_i7_4_lut.init = 16'hca0a;
    ORCALUT4 mux_668_i6_4_lut (.A(mcycle[5]), .B(n30663), .C(last_tstate), 
            .D(n12185), .Z(mcycle_6__N_779[5])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1318[21] 1324[24])
    defparam mux_668_i6_4_lut.init = 16'hcafa;
    ORCALUT4 i25755_3_lut_3_lut (.A(Save_ALU_r), .B(di_reg[5]), .C(Q_7__N_1635[5]), 
            .Z(n27491)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i25755_3_lut_3_lut.init = 16'he4e4;
    ORCALUT4 i10359_4_lut (.A(mcycle[4]), .B(n3942), .C(last_tstate), 
            .D(n25950), .Z(mcycle_6__N_779[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(127[67:78])
    defparam i10359_4_lut.init = 16'hca0a;
    ORCALUT4 i2777_4_lut (.A(mcycle[3]), .B(Pre_XY_F_M[0]), .C(n31187), 
            .D(n25704), .Z(n3942)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(293[7] 302[14])
    defparam i2777_4_lut.init = 16'h303a;
    ORCALUT4 i8791_2_lut_3_lut (.A(n31195), .B(Halt_FF), .C(bus_din[0]), 
            .Z(IR_7__N_609[0])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i8791_2_lut_3_lut.init = 16'h7070;
    ORCALUT4 i8768_2_lut_3_lut (.A(n31195), .B(Halt_FF), .C(bus_din[7]), 
            .Z(n10617)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i8768_2_lut_3_lut.init = 16'h7070;
    ORCALUT4 i25785_3_lut_3_lut (.A(Save_ALU_r), .B(di_reg[4]), .C(n27520), 
            .Z(n27521)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i25785_3_lut_3_lut.init = 16'he4e4;
    ORCALUT4 i1_2_lut_3_lut_adj_656 (.A(n31195), .B(Halt_FF), .C(bus_din[6]), 
            .Z(n10644)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_3_lut_adj_656.init = 16'h7070;
    ORCALUT4 i20_4_lut (.A(mcycle[3]), .B(n7_adj_2149), .C(last_tstate), 
            .D(n25950), .Z(mcycle_6__N_779[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(127[67:78])
    defparam i20_4_lut.init = 16'hca0a;
    ORCALUT4 i21_4_lut (.A(n25704), .B(Pre_XY_F_M[0]), .C(n31187), .D(mcycle[2]), 
            .Z(n7_adj_2149)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(127[67:78])
    defparam i21_4_lut.init = 16'hc5c0;
    CCU2B SP16_A_15__I_0_add_4_7 (.A0(SP16_A[5]), .B0(tstate[3]), .C0(di_reg[5]), 
          .D0(ID16_B[15]), .A1(SP16_A[6]), .B1(tstate[3]), .C1(di_reg[6]), 
          .D1(ID16_B[15]), .CIN(n23202), .COUT(n23203), .S0(SP16[5]), 
          .S1(SP16[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_7.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_7.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_7.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i22_4_lut (.A(mcycle[2]), .B(n9_adj_2150), .C(last_tstate), 
            .D(n25959), .Z(mcycle_6__N_779[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(127[67:78])
    defparam i22_4_lut.init = 16'hca0a;
    ORCALUT4 i23_4_lut (.A(n25704), .B(Pre_XY_F_M[0]), .C(n31186), .D(mcycle[1]), 
            .Z(n9_adj_2150)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(127[67:78])
    defparam i23_4_lut.init = 16'h3530;
    ORCALUT4 i20_4_lut_adj_657 (.A(mcycle[1]), .B(n7_adj_2151), .C(last_tstate), 
            .D(n25959), .Z(mcycle_6__N_779[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i20_4_lut_adj_657.init = 16'hca0a;
    ORCALUT4 i21_4_lut_adj_658 (.A(\ALU_Op_3__N_1297[3] ), .B(Pre_XY_F_M[0]), 
            .C(n31186), .D(n25704), .Z(n7_adj_2151)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i21_4_lut_adj_658.init = 16'hc0ca;
    ORCALUT4 i27119_4_lut (.A(n7), .B(n26034), .C(mcycle[5]), .D(n31111), 
            .Z(n27071)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80n.v(56[29] 81[7])
    defparam i27119_4_lut.init = 16'hfbff;
    ORCALUT4 i1_2_lut_3_lut_adj_659 (.A(last_tstate), .B(n31195), .C(n50), 
            .Z(ALU_Op_r_3__N_722[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_2_lut_3_lut_adj_659.init = 16'h2020;
    ORCALUT4 mux_141_i8_4_lut (.A(RegBusC[7]), .B(TmpAddr[7]), .C(n10145), 
            .D(n31058), .Z(n559[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i8_4_lut.init = 16'hcac0;
    ORCALUT4 i1_4_lut_4_lut_adj_660 (.A(\ALU_Op_3__N_1297[3] ), .B(n31061), 
            .C(n31124), .D(IR[6]), .Z(n29)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_4_lut_4_lut_adj_660.init = 16'hf400;
    ORCALUT4 tstate_3__keep_I_0_827_2_lut_rep_615 (.A(tstate[3]), .B(\ALU_Op_3__N_1297[3] ), 
            .Z(n31202)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(937[31:53])
    defparam tstate_3__keep_I_0_827_2_lut_rep_615.init = 16'h8888;
    ORCALUT4 tstate_2__keep_I_0_796_3_lut_4_lut (.A(tstate[3]), .B(\ALU_Op_3__N_1297[3] ), 
            .C(IncDec_16[2]), .D(\tstate[2] ), .Z(RegAddrA_2__N_468)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(937[31:53])
    defparam tstate_2__keep_I_0_796_3_lut_4_lut.init = 16'hff80;
    CCU2B SP16_A_15__I_0_add_4_5 (.A0(SP16_A[3]), .B0(tstate[3]), .C0(di_reg[3]), 
          .D0(ID16_B[15]), .A1(SP16_A[4]), .B1(tstate[3]), .C1(di_reg[4]), 
          .D1(ID16_B[15]), .CIN(n23201), .COUT(n23202), .S0(SP16[3]), 
          .S1(SP16[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_5.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_5.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_5.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 mux_141_i7_4_lut (.A(RegBusC[6]), .B(TmpAddr[6]), .C(n10145), 
            .D(n31058), .Z(n559[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i7_4_lut.init = 16'hcac0;
    ORCALUT4 mux_141_i6_4_lut (.A(RegBusC[5]), .B(TmpAddr[5]), .C(n10145), 
            .D(n31058), .Z(n559[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i6_4_lut.init = 16'hcac0;
    ORCALUT4 i2634_2_lut (.A(Set_BusB_To[1]), .B(n30985), .Z(n3693)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1046[11] 1078[18])
    defparam i2634_2_lut.init = 16'h8888;
    ORCALUT4 mux_141_i5_4_lut (.A(RegBusC[4]), .B(TmpAddr[4]), .C(n10145), 
            .D(n31058), .Z(n559[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i5_4_lut.init = 16'hcac0;
    ORCALUT4 mux_141_i4_4_lut (.A(RegBusC[3]), .B(TmpAddr[3]), .C(n10145), 
            .D(n31058), .Z(n559[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i4_4_lut.init = 16'hcac0;
    ORCALUT4 mux_141_i3_4_lut (.A(RegBusC[2]), .B(TmpAddr[2]), .C(n10145), 
            .D(n31058), .Z(n559[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i3_4_lut.init = 16'hcac0;
    PFUMX i28928 (.BLUT(n31982), .ALUT(n31978), .C0(n1165), .Z(n31983));
    ORCALUT4 mux_141_i2_4_lut (.A(RegBusC[1]), .B(TmpAddr[1]), .C(n10145), 
            .D(n31058), .Z(n559[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(524[28] 630[30])
    defparam mux_141_i2_4_lut.init = 16'hcac0;
    ORCALUT4 mux_403_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1684), 
            .Z(RegAddrC_2__N_732[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(905[11] 908[16])
    defparam mux_403_i3_3_lut.init = 16'hcaca;
    PFUMX i28926 (.BLUT(n31980), .ALUT(n31979), .C0(n31072), .Z(n31981));
    ORCALUT4 i1_4_lut_adj_661 (.A(clk_op_enable_246), .B(n8_adj_2152), .C(n46), 
            .D(ISet[1]), .Z(ALU_Op_r_3__N_722[2])) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam i1_4_lut_adj_661.init = 16'h0a88;
    ORCALUT4 i14946_3_lut (.A(Read_To_Acc), .B(last_tstate), .C(n8_adj_2153), 
            .Z(Read_To_Reg_r_4__N_717[4])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(830[15] 839[20])
    defparam i14946_3_lut.init = 16'hc8c8;
    ORCALUT4 i2_3_lut_adj_662 (.A(Read_To_Acc), .B(last_tstate), .C(Set_BusA_To[3]), 
            .Z(Read_To_Reg_r_4__N_717[3])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_adj_662.init = 16'h4040;
    ORCALUT4 mux_391_i3_3_lut (.A(Alternate), .B(XY_State[1]), .C(n1669), 
            .Z(RegAddrB_r_2__N_729[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(893[11] 896[16])
    defparam mux_391_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_329_i16_4_lut (.A(n1004[15]), .B(n5_adj_2122), .C(RegWEH_N_872), 
            .D(n13_adj_2129), .Z(SP_15__N_669[15])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i16_4_lut.init = 16'heaca;
    ORCALUT4 i1_4_lut_adj_663 (.A(\tstate[2] ), .B(n31278), .C(n31195), 
            .D(n7), .Z(clk_op_enable_172)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_663.init = 16'ha2a0;
    ORCALUT4 mux_222_i16_3_lut (.A(n855[15]), .B(SP[15]), .C(n10174), 
            .Z(n1004[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i16_4_lut (.A(SP16[15]), .B(RegBusC[15]), .C(n31095), 
            .D(n16668), .Z(n855[15])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i16_4_lut.init = 16'hac0c;
    ORCALUT4 mux_329_i15_4_lut (.A(n1004[14]), .B(n5_adj_2042), .C(RegWEH_N_872), 
            .D(n13_adj_2129), .Z(SP_15__N_669[14])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i15_4_lut.init = 16'heaca;
    ORCALUT4 mux_222_i15_3_lut (.A(n855[14]), .B(SP[14]), .C(n10174), 
            .Z(n1004[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i15_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i15_4_lut (.A(SP16[14]), .B(RegBusC[14]), .C(n31095), 
            .D(n16668), .Z(n855[14])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i15_4_lut.init = 16'hac0c;
    ORCALUT4 mux_329_i14_4_lut (.A(n1004[13]), .B(n5_adj_2125), .C(RegWEH_N_872), 
            .D(n13_adj_2129), .Z(SP_15__N_669[13])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i14_4_lut.init = 16'heaca;
    ORCALUT4 n44_bdd_4_lut_28312_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(mcycle[1]), 
            .C(IR[0]), .Z(n30261)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam n44_bdd_4_lut_28312_4_lut_4_lut.init = 16'h0e0e;
    ORCALUT4 i4914_4_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n31257), 
            .C(n7), .D(mcycle[1]), .Z(TStates_2__N_1435[1])) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i4914_4_lut_4_lut_4_lut.init = 16'h5455;
    ORCALUT4 mux_222_i14_3_lut (.A(n855[13]), .B(SP[13]), .C(n10174), 
            .Z(n1004[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i14_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i14_4_lut (.A(SP16[13]), .B(RegBusC[13]), .C(n31095), 
            .D(n16668), .Z(n855[13])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i14_4_lut.init = 16'hac0c;
    ORCALUT4 select_846_Select_0_i38_2_lut_4_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n31167), .C(mcycle[1]), .Z(n38)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam select_846_Select_0_i38_2_lut_4_lut_4_lut_4_lut.init = 16'h0101;
    ORCALUT4 mux_329_i13_4_lut (.A(n1004[12]), .B(n5_adj_2124), .C(RegWEH_N_872), 
            .D(n13_adj_2129), .Z(SP_15__N_669[12])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i13_4_lut.init = 16'heaca;
    ORCALUT4 mux_222_i13_3_lut (.A(n855[12]), .B(SP[12]), .C(n10174), 
            .Z(n1004[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i13_4_lut (.A(SP16[12]), .B(RegBusC[12]), .C(n31095), 
            .D(n16668), .Z(n855[12])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i13_4_lut.init = 16'hac0c;
    FD1P3DX IR_i0_i5_rep_752 (.D(n10646), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(n33950)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i5_rep_752.GSR = "ENABLED";
    ORCALUT4 mux_329_i12_4_lut (.A(n1004[11]), .B(n5_adj_2123), .C(RegWEH_N_872), 
            .D(n13_adj_2129), .Z(SP_15__N_669[11])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i12_4_lut.init = 16'heaca;
    CCU2B SP16_A_15__I_0_add_4_3 (.A0(SP16_A[1]), .B0(tstate[3]), .C0(di_reg[1]), 
          .D0(ID16_B[15]), .A1(SP16_A[2]), .B1(tstate[3]), .C1(di_reg[2]), 
          .D1(ID16_B[15]), .CIN(n23200), .COUT(n23201), .S0(SP16[1]), 
          .S1(SP16[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_3.INIT0 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_3.INIT1 = 16'h596a;
    defparam SP16_A_15__I_0_add_4_3.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_3.INJECT1_1 = "NO";
    CCU2B SP16_A_15__I_0_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(di_reg[0]), .B1(tstate[3]), .C1(RegBusC[0]), 
          .D1(SP[0]), .COUT(n23200), .S1(SP16[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1373[14:29])
    defparam SP16_A_15__I_0_add_4_1.INIT0 = 16'h0000;
    defparam SP16_A_15__I_0_add_4_1.INIT1 = 16'h487b;
    defparam SP16_A_15__I_0_add_4_1.INJECT1_0 = "NO";
    defparam SP16_A_15__I_0_add_4_1.INJECT1_1 = "NO";
    CCU2B RegBusA_15__I_0_add_4_17 (.A0(RegBusA[15]), .B0(IncDec_16_3__N_1044[3]), 
          .C0(ISet[1]), .D0(n3), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n23199), .S0(ID16[15]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_17.INIT0 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_17.INIT1 = 16'h0000;
    defparam RegBusA_15__I_0_add_4_17.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_17.INJECT1_1 = "NO";
    PFUMX i28136 (.BLUT(n30310), .ALUT(n30309), .C0(n31195), .Z(n11943));
    ORCALUT4 i1_2_lut_3_lut_adj_664 (.A(n31195), .B(Halt_FF), .C(bus_din[5]), 
            .Z(n10646)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_3_lut_adj_664.init = 16'h7070;
    CCU2B RegBusA_15__I_0_add_4_15 (.A0(RegBusA[13]), .B0(IncDec_16_3__N_1044[3]), 
          .C0(ISet[1]), .D0(n3), .A1(RegBusA[14]), .B1(IncDec_16_3__N_1044[3]), 
          .C1(ISet[1]), .D1(n3), .CIN(n23198), .COUT(n23199), .S0(ID16[13]), 
          .S1(ID16[14]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_15.INIT0 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_15.INIT1 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_15.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 i14868_4_lut (.A(Call_N_1537), .B(n31290), .C(n33927), .D(n31107), 
            .Z(n294)) /* synthesis lut_function=(!(A (B)+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(528[38:66])
    defparam i14868_4_lut.init = 16'h3222;
    ORCALUT4 n14_bdd_4_lut (.A(di_reg[3]), .B(di_reg[2]), .C(di_reg[1]), 
            .D(di_reg[0]), .Z(n29946)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam n14_bdd_4_lut.init = 16'h0001;
    ORCALUT4 mux_222_i12_3_lut (.A(n855[11]), .B(SP[11]), .C(n10174), 
            .Z(n1004[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_456_4_lut (.A(Read_To_Reg_r[2]), .B(Read_To_Reg_r[1]), 
            .C(n31177), .D(Read_To_Reg_r[0]), .Z(n31043)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i1_2_lut_rep_456_4_lut.init = 16'h0080;
    ORCALUT4 i5_2_lut_4_lut (.A(Read_To_Reg_r[2]), .B(Read_To_Reg_r[1]), 
            .C(n31177), .D(n9), .Z(n4_adj_2148)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_4_lut.init = 16'h8000;
    FD1P3DX TmpAddr_i0_i15 (.D(n10699), .SP(clk_op_enable_266), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i15.GSR = "ENABLED";
    ORCALUT4 i5_2_lut_4_lut_adj_665 (.A(Read_To_Reg_r[2]), .B(Read_To_Reg_r[1]), 
            .C(n31177), .D(n9_adj_2118), .Z(n4_adj_2069)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_4_lut_adj_665.init = 16'h8000;
    ORCALUT4 n23_bdd_4_lut (.A(n23_adj_2154), .B(n27101), .C(IR[2]), .D(mcycle[1]), 
            .Z(n30962)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n23_bdd_4_lut.init = 16'hca00;
    ORCALUT4 mux_201_i12_4_lut (.A(SP16[11]), .B(RegBusC[11]), .C(n31095), 
            .D(n16668), .Z(n855[11])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i12_4_lut.init = 16'hac0c;
    ORCALUT4 i1217_1_lut_rep_633 (.A(ALU_Op_r[3]), .Z(n31220)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[61:80])
    defparam i1217_1_lut_rep_633.init = 16'h5555;
    ORCALUT4 Q_7__N_1635_0__bdd_4_lut_28330_4_lut (.A(ALU_Op_r[3]), .B(ALU_Op_r[1]), 
            .C(n11_adj_2155), .D(Q_7__N_1635[0]), .Z(n30699)) /* synthesis lut_function=(!(A (B+!(C))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(776[61:80])
    defparam Q_7__N_1635_0__bdd_4_lut_28330_4_lut.init = 16'h7520;
    ORCALUT4 i5_2_lut_4_lut_adj_666 (.A(Read_To_Reg_r[2]), .B(Read_To_Reg_r[1]), 
            .C(n31177), .D(n9_adj_2147), .Z(n4_adj_2145)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_4_lut_adj_666.init = 16'h8000;
    ORCALUT4 i5_2_lut_3_lut_adj_667 (.A(Read_To_Reg_r[0]), .B(Save_Mux[7]), 
            .C(n31098), .Z(n4_adj_2143)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(856[19] 868[26])
    defparam i5_2_lut_3_lut_adj_667.init = 16'h8080;
    ORCALUT4 mux_329_i11_4_lut (.A(n1004[10]), .B(n5_adj_2040), .C(RegWEH_N_872), 
            .D(n13_adj_2129), .Z(SP_15__N_669[10])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i11_4_lut.init = 16'heaca;
    ORCALUT4 Q_7__N_1635_3__I_0_3_lut_4_lut (.A(ALU_Op_r[0]), .B(n31181), 
            .C(BusB[3]), .D(Q_7__N_1635[3]), .Z(F_Out_7__N_1689)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Q_7__N_1635_3__I_0_3_lut_4_lut.init = 16'hf780;
    FD1P3DX IR_i0_i4_rep_750 (.D(n10648), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(n33948)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i4_rep_750.GSR = "ENABLED";
    ORCALUT4 Q_7__N_1635_5__I_0_3_lut_4_lut (.A(ALU_Op_r[0]), .B(n31181), 
            .C(BusB[5]), .D(Q_7__N_1635[5]), .Z(F_Out_7__N_1677)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam Q_7__N_1635_5__I_0_3_lut_4_lut.init = 16'hf780;
    FD1P3DX IR_i0_i3_rep_748 (.D(n10650), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(n33946)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i3_rep_748.GSR = "ENABLED";
    ORCALUT4 i26171_2_lut_2_lut (.A(ALU_Op_r[2]), .B(ALU_Op_r[1]), .Z(n27907)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(110[18:29])
    defparam i26171_2_lut_2_lut.init = 16'h1111;
    FD1P3DX IR_i0_i2_rep_746 (.D(n10652), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(n33944)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i2_rep_746.GSR = "ENABLED";
    FD1P3DX IR_i0_i1_rep_744 (.D(n10654), .SP(clk_op_enable_270), .CK(clk_op), 
            .CD(n31309), .Q(n33942)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam IR_i0_i1_rep_744.GSR = "ENABLED";
    ORCALUT4 mux_222_i11_3_lut (.A(n855[10]), .B(SP[10]), .C(n10174), 
            .Z(n1004[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i11_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i11_4_lut (.A(SP16[10]), .B(RegBusC[10]), .C(n31095), 
            .D(n16668), .Z(n855[10])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i11_4_lut.init = 16'hac0c;
    ORCALUT4 mux_329_i10_4_lut (.A(n1004[9]), .B(n5_adj_2128), .C(RegWEH_N_872), 
            .D(n13_adj_2129), .Z(SP_15__N_669[9])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i10_4_lut.init = 16'heaca;
    ORCALUT4 i1_2_lut_3_lut_adj_668 (.A(n31195), .B(Halt_FF), .C(bus_din[4]), 
            .Z(n10648)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_3_lut_adj_668.init = 16'h7070;
    FD1P3DX XY_Ind_763 (.D(clk_op_enable_162), .SP(clk_op_enable_271), .CK(clk_op), 
            .CD(n31309), .Q(XY_Ind)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam XY_Ind_763.GSR = "ENABLED";
    FD1P3DX TmpAddr_i0_i0 (.D(n10694), .SP(clk_op_enable_273), .CK(clk_op), 
            .CD(n31309), .Q(TmpAddr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=7, LSE_LLINE=56, LSE_RLINE=81 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(409[9] 871[12])
    defparam TmpAddr_i0_i0.GSR = "ENABLED";
    ORCALUT4 mux_222_i10_3_lut (.A(n855[9]), .B(SP[9]), .C(n10174), .Z(n1004[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i10_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i10_4_lut (.A(SP16[9]), .B(RegBusC[9]), .C(n31095), 
            .D(n16668), .Z(n855[9])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i10_4_lut.init = 16'hac0c;
    CCU2B RegBusA_15__I_0_add_4_13 (.A0(RegBusA[11]), .B0(IncDec_16_3__N_1044[3]), 
          .C0(ISet[1]), .D0(n3), .A1(RegBusA[12]), .B1(IncDec_16_3__N_1044[3]), 
          .C1(ISet[1]), .D1(n3), .CIN(n23197), .COUT(n23198), .S0(ID16[11]), 
          .S1(ID16[12]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1371[14:30])
    defparam RegBusA_15__I_0_add_4_13.INIT0 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_13.INIT1 = 16'h656a;
    defparam RegBusA_15__I_0_add_4_13.INJECT1_0 = "NO";
    defparam RegBusA_15__I_0_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 mux_329_i9_4_lut (.A(n1004[8]), .B(n5_adj_2041), .C(RegWEH_N_872), 
            .D(n13_adj_2129), .Z(SP_15__N_669[8])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i9_4_lut.init = 16'heaca;
    ORCALUT4 mux_222_i9_3_lut (.A(n855[8]), .B(SP[8]), .C(n10174), .Z(n1004[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i9_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i9_4_lut (.A(SP16[8]), .B(RegBusC[8]), .C(n31095), 
            .D(n16668), .Z(n855[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i9_4_lut.init = 16'hac0c;
    PFUMX i27498 (.BLUT(n29254), .ALUT(n29253), .C0(ALU_Op_r[1]), .Z(n29255));
    ORCALUT4 mux_329_i8_4_lut (.A(n1004[7]), .B(n9087), .C(RegWEH_N_872), 
            .D(n13_adj_2044), .Z(SP_15__N_669[7])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i8_4_lut.init = 16'heaca;
    ORCALUT4 mux_222_i8_3_lut (.A(n855[7]), .B(SP[7]), .C(n10174), .Z(n1004[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i8_4_lut (.A(SP16[7]), .B(RegBusC[7]), .C(n31095), 
            .D(n16668), .Z(n855[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i8_4_lut.init = 16'hac0c;
    ORCALUT4 mux_329_i7_4_lut (.A(n1004[6]), .B(n9088), .C(RegWEH_N_872), 
            .D(n13_adj_2044), .Z(SP_15__N_669[6])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i7_4_lut.init = 16'heaca;
    ORCALUT4 mux_328_i1_4_lut (.A(n1196[0]), .B(n9146), .C(RegWEH_N_872), 
            .D(n13_adj_2120), .Z(dout_7__N_709[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_328_i1_4_lut.init = 16'heaca;
    ORCALUT4 i1_2_lut_4_lut_adj_669 (.A(Read_To_Reg_r[4]), .B(Read_To_Reg_r[3]), 
            .C(n31180), .D(Read_To_Reg_r[0]), .Z(n13_adj_2120)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_2_lut_4_lut_adj_669.init = 16'hffdf;
    ORCALUT4 i1_2_lut_4_lut_adj_670 (.A(Read_To_Reg_r[4]), .B(Read_To_Reg_r[3]), 
            .C(n31180), .D(Read_To_Reg_r[0]), .Z(n13_adj_2070)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_2_lut_4_lut_adj_670.init = 16'hdfff;
    ORCALUT4 mux_222_i7_3_lut (.A(n855[6]), .B(SP[6]), .C(n10174), .Z(n1004[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i7_4_lut (.A(SP16[6]), .B(RegBusC[6]), .C(n31095), 
            .D(n16668), .Z(n855[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i7_4_lut.init = 16'hac0c;
    ORCALUT4 mux_329_i6_4_lut (.A(n1004[5]), .B(n9089), .C(RegWEH_N_872), 
            .D(n13_adj_2044), .Z(SP_15__N_669[5])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i6_4_lut.init = 16'heaca;
    ORCALUT4 i8278_4_lut (.A(\tstate[1] ), .B(RegWEH_N_890), .C(Save_ALU_r), 
            .D(Auto_Wait_t1), .Z(RegWEH_N_872)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[19] 854[62])
    defparam i8278_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_222_i6_3_lut (.A(n855[5]), .B(SP[5]), .C(n10174), .Z(n1004[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i6_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i6_4_lut (.A(SP16[5]), .B(RegBusC[5]), .C(n31095), 
            .D(n16668), .Z(n855[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i6_4_lut.init = 16'hac0c;
    ORCALUT4 mux_329_i5_4_lut (.A(n1004[4]), .B(n9090), .C(RegWEH_N_872), 
            .D(n13_adj_2044), .Z(SP_15__N_669[4])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i5_4_lut.init = 16'heaca;
    ORCALUT4 mux_222_i5_3_lut (.A(n855[4]), .B(SP[4]), .C(n10174), .Z(n1004[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i5_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i5_4_lut (.A(SP16[4]), .B(RegBusC[4]), .C(n31095), 
            .D(n16668), .Z(n855[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i5_4_lut.init = 16'hac0c;
    ORCALUT4 mux_329_i4_4_lut (.A(n1004[3]), .B(n9091), .C(RegWEH_N_872), 
            .D(n13_adj_2044), .Z(SP_15__N_669[3])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i4_4_lut.init = 16'heaca;
    ORCALUT4 i1_2_lut_3_lut_3_lut_adj_671 (.A(\ALU_Op_3__N_1297[3] ), .B(n76), 
            .C(n56), .Z(TStates_2__N_1438[1])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_3_lut_adj_671.init = 16'hdcdc;
    ORCALUT4 mux_222_i4_3_lut (.A(n855[3]), .B(SP[3]), .C(n10174), .Z(n1004[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i4_4_lut (.A(SP16[3]), .B(RegBusC[3]), .C(n31095), 
            .D(n16668), .Z(n855[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i4_4_lut.init = 16'hac0c;
    ORCALUT4 mux_329_i3_4_lut (.A(n1004[2]), .B(n9086), .C(RegWEH_N_872), 
            .D(n13_adj_2044), .Z(SP_15__N_669[2])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i3_4_lut.init = 16'heaca;
    ORCALUT4 i95_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n31370), .C(IR[6]), 
            .D(IR[1]), .Z(n50_adj_2156)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i95_4_lut_4_lut.init = 16'hc505;
    ORCALUT4 mux_222_i3_3_lut (.A(n855[2]), .B(SP[2]), .C(n10174), .Z(n1004[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i3_4_lut (.A(SP16[2]), .B(RegBusC[2]), .C(n31095), 
            .D(n16668), .Z(n855[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i3_4_lut.init = 16'hac0c;
    ORCALUT4 mux_329_i2_4_lut (.A(n1004[1]), .B(n9092), .C(RegWEH_N_872), 
            .D(n13_adj_2044), .Z(SP_15__N_669[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_329_i2_4_lut.init = 16'heaca;
    PFUMX i27500 (.BLUT(n29257), .ALUT(n29256), .C0(n31027), .Z(n29258));
    ORCALUT4 mux_222_i2_3_lut (.A(n855[1]), .B(SP[1]), .C(n10174), .Z(n1004[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(502[17] 721[20])
    defparam mux_222_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_201_i2_4_lut (.A(SP16[1]), .B(RegBusC[1]), .C(n31095), 
            .D(n16668), .Z(n855[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(706[19] 709[24])
    defparam mux_201_i2_4_lut.init = 16'hac0c;
    ORCALUT4 mux_330_i8_4_lut (.A(n1169), .B(n4_adj_2131), .C(RegWEH_N_872), 
            .D(n13), .Z(F_7__N_661[7])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_330_i8_4_lut.init = 16'heaca;
    ORCALUT4 i4_4_lut_adj_672 (.A(sram_addr_0_1), .B(n31280), .C(sram_addr_0_7), 
            .D(n6), .Z(n26750)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i4_4_lut_adj_672.init = 16'hffef;
    ORCALUT4 i2_4_lut_4_lut_adj_673 (.A(\ALU_Op_3__N_1297[3] ), .B(n27011), 
            .C(n31051), .D(n25706), .Z(TStates_2__N_1432[1])) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i2_4_lut_4_lut_adj_673.init = 16'hfff4;
    ORCALUT4 i284_4_lut (.A(n14_adj_2158), .B(n1154[7]), .C(n1165), .D(n30993), 
            .Z(n1169)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(798[15] 812[20])
    defparam i284_4_lut.init = 16'hcacc;
    PFUMX i28055 (.BLUT(n30129), .ALUT(n30128), .C0(ALU_Op_r[3]), .Z(n30130));
    ORCALUT4 mux_330_i7_4_lut (.A(n31983), .B(n4_adj_2038), .C(RegWEH_N_872), 
            .D(n13), .Z(F_7__N_661[6])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_330_i7_4_lut.init = 16'heaca;
    PFUMX i28499 (.BLUT(n31358), .ALUT(n31359), .C0(n25704), .Z(n31360));
    ORCALUT4 mux_330_i6_4_lut (.A(n1221), .B(n4_adj_2132), .C(RegWEH_N_872), 
            .D(n13), .Z(F_7__N_661[5])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(853[15] 869[20])
    defparam mux_330_i6_4_lut.init = 16'heaca;
    PFUMX i28057 (.BLUT(n995[0]), .ALUT(n30131), .C0(n31027), .Z(n30132));
    PFUMX i28497 (.BLUT(n31355), .ALUT(n31356), .C0(IR[1]), .Z(n31357));
    ORCALUT4 i1_2_lut_3_lut_adj_674 (.A(n31195), .B(Halt_FF), .C(bus_din[3]), 
            .Z(n10650)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i1_2_lut_3_lut_adj_674.init = 16'h7070;
    tv80_reg i_reg (.RegsH_3_4(RegsH_3_4), .clk_op(clk_op), .RegDIH({RegDIH}), 
            .RegsH_1_5(RegsH_1_5), .RegsH_3_6(RegsH_3_6), .RegsH_2_6(RegsH_2_6), 
            .RegsH_2_2(RegsH_2_2), .RegsH_2_1(RegsH_2_1), .RegsH_1_4(RegsH_1_4), 
            .RegsH_1_7(RegsH_1_7), .RegsH_1_6(RegsH_1_6), .RegsH_1_2(RegsH_1_2), 
            .RegsH_3_5(RegsH_3_5), .RegsH_2_0(RegsH_2_0), .RegsH_3_3(RegsH_3_3), 
            .RegsH_4_1(RegsH_4_1), .RegsH_3_7(RegsH_3_7), .RegsH_3_0(RegsH_3_0), 
            .RegAddrC({RegAddrC}), .RegsH_1_1(RegsH_1_1), .n28048(n28048), 
            .n28049(n28049), .\RegAddrB[1] (RegAddrB[1]), .RegsH_2_7(RegsH_2_7), 
            .n28050(n28050), .n28051(n28051), .n28055(n28055), .n28056(n28056), 
            .RegsH_1_0(RegsH_1_0), .RegsH_0_7(RegsH_0_7), .n28057(n28057), 
            .n28058(n28058), .RegsH_0_6(RegsH_0_6), .n27999(n27999), .n28000(n28000), 
            .RegsH_0_5(RegsH_0_5), .RegsH_0_4(RegsH_0_4), .RegsH_0_3(RegsH_0_3), 
            .RegsH_0_2(RegsH_0_2), .n28062(n28062), .n28063(n28063), .n28064(n28064), 
            .n28065(n28065), .RegsH_0_1(RegsH_0_1), .RegsH_0_0(RegsH_0_0), 
            .n28001(n28001), .n28002(n28002), .n28069(n28069), .n28070(n28070), 
            .n28071(n28071), .n28072(n28072), .RegsH_2_4(RegsH_2_4), .RegsH_2_3(RegsH_2_3), 
            .RegsH_2_5(RegsH_2_5), .\RegAddrB[2] (RegAddrB[2]), .RegBusB({RegBusB}), 
            .n28076(n28076), .n28077(n28077), .RegsH_4_0(RegsH_4_0), .RegsH_3_2(RegsH_3_2), 
            .RegsH_3_1(RegsH_3_1), .RegsH_1_3(RegsH_1_3), .n28078(n28078), 
            .n28079(n28079), .n28006(n28006), .n28007(n28007), .n28008(n28008), 
            .n28009(n28009), .n28020(n28020), .n28021(n28021), .n28013(n28013), 
            .n28014(n28014), .n28015(n28015), .n28016(n28016), .RegsL_7_7(RegsL_7_7), 
            .RegDIL({RegDIL}), .RegsL_7_6(RegsL_7_6), .RegsL_7_5(RegsL_7_5), 
            .RegsL_7_4(RegsL_7_4), .RegsL_7_3(RegsL_7_3), .RegsL_7_2(RegsL_7_2), 
            .RegsL_7_1(RegsL_7_1), .RegsL_7_0(RegsL_7_0), .RegsL_6_7(RegsL_6_7), 
            .RegsL_6_6(RegsL_6_6), .RegsL_6_5(RegsL_6_5), .RegsL_6_4(RegsL_6_4), 
            .RegsL_6_3(RegsL_6_3), .RegsL_6_2(RegsL_6_2), .RegsL_6_1(RegsL_6_1), 
            .RegsL_6_0(RegsL_6_0), .n30976(n30976), .RegAddrA({RegAddrA}), 
            .RegsL_5_7(RegsL_5_7), .RegsL_5_6(RegsL_5_6), .RegsL_5_5(RegsL_5_5), 
            .n30979(n30979), .RegsL_5_4(RegsL_5_4), .RegsL_5_3(RegsL_5_3), 
            .RegsL_5_2(RegsL_5_2), .RegsL_5_1(RegsL_5_1), .RegsL_5_0(RegsL_5_0), 
            .RegsL_4_7(RegsL_4_7), .RegsL_4_6(RegsL_4_6), .RegsL_4_5(RegsL_4_5), 
            .RegsL_4_4(RegsL_4_4), .RegsL_4_3(RegsL_4_3), .RegsL_4_2(RegsL_4_2), 
            .RegsL_4_1(RegsL_4_1), .RegsL_4_0(RegsL_4_0), .RegsL_3_7(RegsL_3_7), 
            .RegsL_3_6(RegsL_3_6), .RegsL_3_5(RegsL_3_5), .RegsL_3_4(RegsL_3_4), 
            .RegsL_3_3(RegsL_3_3), .RegsL_3_2(RegsL_3_2), .RegsL_3_1(RegsL_3_1), 
            .RegsL_3_0(RegsL_3_0), .RegsL_2_7(RegsL_2_7), .RegsL_2_6(RegsL_2_6), 
            .RegsL_2_5(RegsL_2_5), .RegsL_2_4(RegsL_2_4), .RegsL_2_3(RegsL_2_3), 
            .RegsL_2_2(RegsL_2_2), .RegsL_2_1(RegsL_2_1), .RegsL_2_0(RegsL_2_0), 
            .RegsL_1_7(RegsL_1_7), .RegsL_1_6(RegsL_1_6), .RegsL_1_5(RegsL_1_5), 
            .RegsL_1_4(RegsL_1_4), .RegsL_1_3(RegsL_1_3), .RegsL_1_2(RegsL_1_2), 
            .RegsL_1_1(RegsL_1_1), .RegsL_1_0(RegsL_1_0), .RegsL_0_7(RegsL_0_7), 
            .RegsL_0_6(RegsL_0_6), .RegsL_0_5(RegsL_0_5), .RegsL_0_4(RegsL_0_4), 
            .RegsL_0_3(RegsL_0_3), .RegsL_0_2(RegsL_0_2), .RegsL_0_1(RegsL_0_1), 
            .RegsL_0_0(RegsL_0_0), .RegsH_7_7(RegsH_7_7), .RegsH_7_6(RegsH_7_6), 
            .RegsH_7_5(RegsH_7_5), .RegsH_7_4(RegsH_7_4), .RegsH_7_3(RegsH_7_3), 
            .RegsH_7_2(RegsH_7_2), .RegsH_7_1(RegsH_7_1), .RegsH_7_0(RegsH_7_0), 
            .RegsH_6_7(RegsH_6_7), .RegsH_6_6(RegsH_6_6), .RegsH_6_5(RegsH_6_5), 
            .RegsH_6_4(RegsH_6_4), .RegsH_6_3(RegsH_6_3), .RegsH_6_2(RegsH_6_2), 
            .RegsH_6_1(RegsH_6_1), .RegsH_6_0(RegsH_6_0), .RegsH_5_7(RegsH_5_7), 
            .RegsH_5_6(RegsH_5_6), .RegsH_5_5(RegsH_5_5), .RegsH_5_4(RegsH_5_4), 
            .RegsH_5_3(RegsH_5_3), .RegsH_5_2(RegsH_5_2), .RegsH_5_1(RegsH_5_1), 
            .RegsH_5_0(RegsH_5_0), .RegsH_4_7(RegsH_4_7), .RegsH_4_6(RegsH_4_6), 
            .RegsH_4_5(RegsH_4_5), .RegsH_4_4(RegsH_4_4), .RegsH_4_3(RegsH_4_3), 
            .RegsH_4_2(RegsH_4_2), .RegBusC({RegBusC}), .n28022(n28022), 
            .n28023(n28023), .n28027(n28027), .n28028(n28028), .n28029(n28029), 
            .n28030(n28030), .n28034(n28034), .n28035(n28035), .n28036(n28036), 
            .n28037(n28037), .n27971(n27971), .n27972(n27972), .n27973(n27973), 
            .n27974(n27974), .n27978(n27978), .n27979(n27979), .n27980(n27980), 
            .n27981(n27981), .n27985(n27985), .n27986(n27986), .RegBusA({RegBusA}), 
            .n27987(n27987), .n27988(n27988), .n28041(n28041), .n28042(n28042), 
            .n28043(n28043), .n28044(n28044), .n27992(n27992), .n27993(n27993), 
            .n27994(n27994), .n27995(n27995)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(1017[12] 1034[7])
    tv80_mcode i_mcode (.\IR[0] (IR[0]), .ISet({ISet}), .\Set_BusA_To_3__N_1230[0] (Set_BusA_To_3__N_1230[0]), 
            .\IR[7] (IR[7]), .\IR[6] (IR[6]), .n31244(n31244), .n31345(n31345), 
            .n31255(n31255), .n31234(n31234), .\Prefix[0] (Prefix[0]), 
            .n1(n1_adj_2074), .\IR[5] (IR[5]), .n25924(n25924), .\ALU_Op[3] (ALU_Op_adj_2160[3]), 
            .\IR[4] (IR[4]), .n31233(n31233), .n31288(n31288), .n33927(n33927), 
            .n31163(n31163), .n6(n6_adj_2103), .n31167(n31167), .n2(mcycle[1]), 
            .n3(mcycle[2]), .n31190(n31190), .SP({SP}), .di_reg({di_reg}), 
            .n27408(n27408), .n33948(n33948), .n33950(n33950), .\IR[1] (IR[1]), 
            .n25923(n25923), .\ALU_Op_3__N_1297[3] (\ALU_Op_3__N_1297[3] ), 
            .n4(mcycle[3]), .n31293(n31293), .n33946(n33946), .n33958(n33958), 
            .n31051(n31051), .Set_Addr_To_2__N_1441({Open_0, Set_Addr_To_2__N_1441[1], 
            Open_1}), .n27863(n27863), .\IR[2] (IR[2]), .n7(n7), .n33923(n33923), 
            .n26017(n26017), .n31226(n31226), .n25978(n25978), .n31247(n31247), 
            .n31289(n31289), .n31276(n31276), .n33942(n33942), .\Set_BusB_To[1] (Set_BusB_To[1]), 
            .n31272(n31272), .n31123(n31123), .n33954(n33954), .n33952(n33952), 
            .n31246(n31246), .n33944(n33944), .n31088(n31088), .n31257(n31257), 
            .n31268(n31268), .\Set_BusB_To[0] (Set_BusB_To[0]), .\PC[8] (PC[8]), 
            .\PC[0] (PC[0]), .\PC[9] (PC[9]), .\PC[1] (PC[1]), .n13(n13_adj_2057), 
            .\PC[10] (PC[10]), .\PC[2] (PC[2]), .n13_adj_5(n13_adj_2055), 
            .\PC[11] (PC[11]), .\PC[3] (PC[3]), .n13_adj_6(n13_adj_2053), 
            .\PC[12] (PC[12]), .\PC[4] (PC[4]), .n13_adj_7(n13_adj_2051), 
            .\PC[13] (PC[13]), .\PC[5] (PC[5]), .n13_adj_8(n13_adj_2049), 
            .\PC[14] (PC[14]), .\PC[6] (PC[6]), .n13_adj_9(n13_adj_2047), 
            .n30985(n30985), .\PC[7] (PC[7]), .n31127(n31127), .\F[0] (F[0]), 
            .n10(n10_adj_2117), .\F[7] (F[7]), .n16293(n16293), .\F[2] (F[2]), 
            .\F[6] (F[6]), .n3_adj_10(n3_adj_2059), .n4_adj_11(n4_adj_2121), 
            .last_tstate_keep(last_tstate), .Set_BusA_To({Set_BusA_To}), 
            .Read_To_Acc(Read_To_Acc), .\Read_To_Reg_r_4__N_717[0] (Read_To_Reg_r_4__N_717[0]), 
            .n33956(n33956), .n19(n19), .n61(n61), .n37(n37), .n27164(n27164), 
            .n26946(n26946), .n31150(n31150), .n31290(n31290), .n31250(n31250), 
            .BusB({BusB}), .n8(ALU_Op_r[0]), .n31299(n31299), .n27529(n27529), 
            .n90(n90), .n31024(n31024), .n31027(n31027), .n27603(n27603), 
            .\ALU_Q[3] (ALU_Q[3]), .\F[3] (F[3]), .n1000(n995[3]), .\ALU_Q[1] (ALU_Q[1]), 
            .\F[5] (F[5]), .n998(n995[5]), .n31149(n31149), .\BusA[6] (\BusA[6] ), 
            .\BusA[7] (BusA[7]), .n30081(n30081), .n33929(n33929), .n27332(n27332), 
            .n31213(n31213), .n33930(n33930), .PreserveC(PreserveC), .n31153(n31153), 
            .n31173(n31173), .n31315(n31315), .n3284(n3284), .n31291(n31291), 
            .n100(n100), .n25907(n25907), .n31060(n31060), .n23(n23), 
            .n31152(n31152), .n31061(n31061), .n25904(n25904), .n31075(n31075), 
            .n55(n55), .\tstate[2] (\tstate[2] ), .n6_adj_12(mcycle[5]), 
            .n2670(n2670), .n33924(n33924), .JumpE(JumpE), .\PC16_B_15__N_557[15] (BTR_r), 
            .n31172(n31172), .n31072(n31072), .n31081(n31081), .n5(mcycle[4]), 
            .\IncDec_16_3__N_1044[3] (IncDec_16_3__N_1044[3]), .n31097(n31097), 
            .n31217(n31217), .n31111(n31111), .n27040(n27040), .n25070(n25070), 
            .n23_adj_13(n23_adj_2102), .n29(n29), .iorq(iorq), .n10_adj_14(n10), 
            .n45(n45), .n31218(n31218), .n31136(n31136), .n31307(n31307), 
            .\tstate[1] (\tstate[1] ), .n30999(n30999), .n31278(n31278), 
            .\Set_Addr_To_2__N_1072[2] (Set_Addr_To_2__N_1072[2]), .n30974(n30974), 
            .n30975(n30975), .n31282(n31282), .n33925(n33925), .n31078(n31078), 
            .n1177({n1177}), .n29902(n29902), .\BusA[0] (BusA[0]), .\BusA[3] (BusA[3]), 
            .\BusA[2] (BusA[2]), .\BusA[1] (BusA[1]), .n30962(n30962), 
            .n10_adj_15(n10_adj_2146), .n12250(n12250), .n14(n14_adj_2081), 
            .n14_adj_16(n14_adj_2088), .n14_adj_17(n14_adj_2089), .n14_adj_18(n14_adj_2090), 
            .n14_adj_19(n14_adj_2091), .n31107(n31107), .n25853(n25853), 
            .n14_adj_20(n14_adj_2093), .\tstate[3]_keep (tstate[3]), .n7_adj_21(n7_adj_2130), 
            .n6_adj_22(n6_adj_2142), .n31322(n31322), .Call_N_1537(Call_N_1537), 
            .n26594(n26594), .n26156(n26156), .n27160(n27160), .write(write), 
            .n31228(n31228), .n31019(n31019), .\tstate[4]_keep (tstate[4]), 
            .n31018(n31018), .n3_adj_23(ALU_Op_r[1]), .n10142(n10142), 
            .n8_adj_24(n8_adj_2062), .n26000(n26000), .n26532(n26532), 
            .n31254(n31254), .ACC({ACC}), .n23595(n23595), .n25706(n25706), 
            .n100_adj_25(n100_adj_2078), .n23577(n23577), .n23583(n23583), 
            .n23585(n23585), .n23589(n23589), .n23587(n23587), .n23591(n23591), 
            .n23593(n23593), .n31296(n31296), .n31137(n31137), .\Set_BusB_To[3] (Set_BusB_To[3]), 
            .n31068(n31068), .Alternate(Alternate), .Alternate_N_907(Alternate_N_907), 
            .n9117(n9117), .n31222(n31222), .n27101(n27101), .n31195(n31195), 
            .\ISet_1__N_633[0] (ISet_1__N_633[0]), .clk_op_enable_218(clk_op_enable_218), 
            .n26764(n26764), .n12(n12), .n31231(n31231), .n31262(n31262), 
            .n31124(n31124), .n25912(n25912), .n31260(n31260), .n31048(n31048), 
            .n31317(n31317), .n31132(n31132), .n26668(n26668), .n31079(n31079), 
            .n17001(n17001), .stop(stop), .n294(n294), .Jump(Jump), 
            .n10145(n10145), .TStates_2__N_1435({TStates_2__N_1435}), .n25995(n25995), 
            .n26754(n26754), .\Set_Addr_To_2__N_1441[0] (Set_Addr_To_2__N_1441[0]), 
            .n23524(n23524), .n27113(n27113), .n31020(n31020), .\RegAddrB_r[1] (RegAddrB_r[1]), 
            .\RegAddrB[1] (RegAddrB[1]), .n31023(n31023), .n17316(n17316), 
            .\ALU_Op_3__N_1064[2] (ALU_Op_3__N_1064[2]), .n8_adj_26(n8_adj_2152), 
            .\TStates_2__N_1432[1] (TStates_2__N_1432[1]), .n58(n58), .n25883(n25883), 
            .n3_adj_27(n3), .\ID16_B[15] (ID16_B[15]), .n26034(n26034), 
            .\IncDec_16[0] (IncDec_16[0]), .\Special_LD[0] (Special_LD[0]), 
            .clk_op_enable_217(clk_op_enable_217), .n17380(n17380), .n10231(n10231), 
            .n48(n48_adj_2144), .tstates({tstates}), .n56(n56), .\TStates_2__N_1438[1] (TStates_2__N_1438[1]), 
            .n26233(n26233), .n13_adj_28(n13_adj_2134), .mcycles_d({mcycles_d}), 
            .n50(n50_adj_2156), .n92(n92), .n10_adj_29(n10_adj_2135), 
            .n8_adj_30(n8_adj_2153), .n27915(n27915), .n27883(n27883), 
            .n31120(n31120), .n27905(n27905), .Inc_WZ(Inc_WZ), .n33932(n33932), 
            .n12185(n12185), .n30972(n30972), .n27414(n27414), .n25910(n25910), 
            .n27310(n27310), .n8_adj_31(n8_adj_2141), .n27423(n27423), 
            .n27426(n27426), .n9(n9_adj_2136), .XY_Ind(XY_Ind), .n1660(n1660), 
            .n27429(n27429), .n27453(n27453), .n31065(n31065), .n27450(n27450), 
            .n27447(n27447), .n27444(n27444), .Halt_FF(Halt_FF), .n27543(n27543), 
            .n31066(n31066), .n23_adj_32(n23_adj_2154), .n27441(n27441), 
            .n36(n36), .n76(n76), .n27110(n27110), .n27035(n27035), 
            .n27765(n27765), .n30981(n30981), .n27438(n27438), .n27435(n27435), 
            .n31193(n31193), .Save_ALU(Save_ALU), .n46(n46), .\IncDec_16[1] (IncDec_16[1]), 
            .n34(n34), .\IncDec_16[2] (IncDec_16[2]), .n31101(n31101), 
            .n31095(n31095), .n31058(n31058), .NoRead_N_1567(NoRead_N_1567), 
            .n27405(n27405), .n31059(n31059), .n31178(n31178), .n27011(n27011), 
            .n4_adj_33(n4_adj_2079), .n27432(n27432), .n27411(n27411), 
            .n28(n28), .\Read_To_Reg_r_4__N_717[2] (Read_To_Reg_r_4__N_717[2]), 
            .\Read_To_Reg_r_4__N_717[1] (Read_To_Reg_r_4__N_717[1]), .n31067(n31067), 
            .n16668(n16668), .n10174(n10174), .clk_op_enable_228(clk_op_enable_228), 
            .n8_adj_34(n8_adj_2140), .n30967(n30967), .n30261(n30261), 
            .n30260(n30260), .n31040(n31040), .n5_adj_35(n5_adj_2076), 
            .n31370(n31370), .n31362(n31362)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(220[86] 274[7])
    tv80_alu i_alu (.n30081(n30081), .n26017(n26017), .ALU_Op({ALU_Op_r}), 
            .n31348(n31348), .BusA({BusA[7], \BusA[6] , \BusA[5] , BusA[4:0]}), 
            .\Set_BusA_To_3__N_1230[0] (Set_BusA_To_3__N_1230[0]), .n31220(n31220), 
            .n29902(n29902), .n29904(n29904), .\F_Out[1] (F_Out[1]), .n27519(n27519), 
            .n27495(n27495), .n27489(n27489), .n31138(n31138), .BusB({BusB}), 
            .n31213(n31213), .n27528(n27528), .n952(n952), .n251(n251), 
            .\IR[4] (IR[4]), .n14(n14_adj_2158), .n1172(n1172), .n178(n178), 
            .n29060(n29060), .Q_7__N_1635({Open_2, Open_3, Open_4, Open_5, 
            Open_6, Open_7, Open_8, Q_7__N_1635[0]}), .n951(n951), 
            .\IR[5] (IR[5]), .n31299(n31299), .\Q_7__N_1635[3] (Q_7__N_1635[3]), 
            .\ALU_Q[3] (ALU_Q[3]), .n30989(n30989), .\Q_7__N_1635[6] (Q_7__N_1635[6]), 
            .F_Out_7__N_1677(F_Out_7__N_1677), .n27500(n27500), .n31290(n31290), 
            .\Q_7__N_1635[5] (Q_7__N_1635[5]), .F({F}), .n10142(n10142), 
            .n943(n943), .n1698(n1698), .n6(n6_adj_36), .n33948(n33948), 
            .n33950(n33950), .n31289(n31289), .n31133(n31133), .n31132(n31132), 
            .n31137(n31137), .n31218(n31218), .n31222(n31222), .F_Out_7__N_1689(F_Out_7__N_1689), 
            .n27524(n27524), .n14_adj_2(n14_adj_2063), .n30999(n30999), 
            .n10230(n10230), .n998(n995[5]), .n903(n900[5]), .\F_Out[5] (F_Out[5]), 
            .n31068(n31068), .\ALU_Q[4] (ALU_Q[4]), .n27491(n27491), .\ALU_Q[5] (ALU_Q[5]), 
            .n1165(n1165), .n31072(n31072), .n1142(n1142), .n996(n995[7]), 
            .\F_Out[7] (F_Out[7]), .\Q_7__N_1635[2] (Q_7__N_1635[2]), .\di_reg[7] (di_reg[7]), 
            .Save_ALU_r_keep(Save_ALU_r), .n31257(n31257), .n31212(n31212), 
            .\ALU_Q[1] (ALU_Q[1]), .n3996(n3996), .n31136(n31136), .n10(n10_adj_2068), 
            .Arith16_r_keep(Arith16_r), .n27498(n27498), .n27522(n27522), 
            .\ALU_Q[7] (ALU_Q[7]), .\Q_7__N_1595[6] (Q_7__N_1595[6]), .F_Out_7__N_1690(F_Out_7__N_1690), 
            .\Q_7__N_1746[8] (\Q_7__N_1746[8] ), .\Q_7__N_1737[8] (\Q_7__N_1737[8] ), 
            .\Q_7__N_1595[2] (Q_7__N_1595[2]), .n33946(n33946), .n1000(n995[3]), 
            .n24338(n24338), .\F_Out[3] (F_Out[3]), .n11(n11_adj_2155), 
            .n31120(n31120), .n30973(n30973), .n27496(n27496), .n31217(n31217), 
            .n27490(n27490), .n27915(n27915), .\F_Out[6] (F_Out[6]), .n31317(n31317), 
            .n27526(n27526), .Z16_r(Z16_r), .n31276(n31276), .n27520(n27520), 
            .n11_adj_3(n11), .n6_adj_4(n6_adj_2137), .n10158(n10158), 
            .n27004(n27004), .n27456(n27456)) /* synthesis syn_module_defined=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(276[84] 288[7])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module tv80_reg
//

module tv80_reg (RegsH_3_4, clk_op, RegDIH, RegsH_1_5, RegsH_3_6, 
            RegsH_2_6, RegsH_2_2, RegsH_2_1, RegsH_1_4, RegsH_1_7, 
            RegsH_1_6, RegsH_1_2, RegsH_3_5, RegsH_2_0, RegsH_3_3, 
            RegsH_4_1, RegsH_3_7, RegsH_3_0, RegAddrC, RegsH_1_1, 
            n28048, n28049, \RegAddrB[1] , RegsH_2_7, n28050, n28051, 
            n28055, n28056, RegsH_1_0, RegsH_0_7, n28057, n28058, 
            RegsH_0_6, n27999, n28000, RegsH_0_5, RegsH_0_4, RegsH_0_3, 
            RegsH_0_2, n28062, n28063, n28064, n28065, RegsH_0_1, 
            RegsH_0_0, n28001, n28002, n28069, n28070, n28071, n28072, 
            RegsH_2_4, RegsH_2_3, RegsH_2_5, \RegAddrB[2] , RegBusB, 
            n28076, n28077, RegsH_4_0, RegsH_3_2, RegsH_3_1, RegsH_1_3, 
            n28078, n28079, n28006, n28007, n28008, n28009, n28020, 
            n28021, n28013, n28014, n28015, n28016, RegsL_7_7, RegDIL, 
            RegsL_7_6, RegsL_7_5, RegsL_7_4, RegsL_7_3, RegsL_7_2, 
            RegsL_7_1, RegsL_7_0, RegsL_6_7, RegsL_6_6, RegsL_6_5, 
            RegsL_6_4, RegsL_6_3, RegsL_6_2, RegsL_6_1, RegsL_6_0, 
            n30976, RegAddrA, RegsL_5_7, RegsL_5_6, RegsL_5_5, n30979, 
            RegsL_5_4, RegsL_5_3, RegsL_5_2, RegsL_5_1, RegsL_5_0, 
            RegsL_4_7, RegsL_4_6, RegsL_4_5, RegsL_4_4, RegsL_4_3, 
            RegsL_4_2, RegsL_4_1, RegsL_4_0, RegsL_3_7, RegsL_3_6, 
            RegsL_3_5, RegsL_3_4, RegsL_3_3, RegsL_3_2, RegsL_3_1, 
            RegsL_3_0, RegsL_2_7, RegsL_2_6, RegsL_2_5, RegsL_2_4, 
            RegsL_2_3, RegsL_2_2, RegsL_2_1, RegsL_2_0, RegsL_1_7, 
            RegsL_1_6, RegsL_1_5, RegsL_1_4, RegsL_1_3, RegsL_1_2, 
            RegsL_1_1, RegsL_1_0, RegsL_0_7, RegsL_0_6, RegsL_0_5, 
            RegsL_0_4, RegsL_0_3, RegsL_0_2, RegsL_0_1, RegsL_0_0, 
            RegsH_7_7, RegsH_7_6, RegsH_7_5, RegsH_7_4, RegsH_7_3, 
            RegsH_7_2, RegsH_7_1, RegsH_7_0, RegsH_6_7, RegsH_6_6, 
            RegsH_6_5, RegsH_6_4, RegsH_6_3, RegsH_6_2, RegsH_6_1, 
            RegsH_6_0, RegsH_5_7, RegsH_5_6, RegsH_5_5, RegsH_5_4, 
            RegsH_5_3, RegsH_5_2, RegsH_5_1, RegsH_5_0, RegsH_4_7, 
            RegsH_4_6, RegsH_4_5, RegsH_4_4, RegsH_4_3, RegsH_4_2, 
            RegBusC, n28022, n28023, n28027, n28028, n28029, n28030, 
            n28034, n28035, n28036, n28037, n27971, n27972, n27973, 
            n27974, n27978, n27979, n27980, n27981, n27985, n27986, 
            RegBusA, n27987, n27988, n28041, n28042, n28043, n28044, 
            n27992, n27993, n27994, n27995) /* synthesis syn_module_defined=1 */ ;
    output RegsH_3_4;
    input clk_op;
    input [7:0]RegDIH;
    output RegsH_1_5;
    output RegsH_3_6;
    output RegsH_2_6;
    output RegsH_2_2;
    output RegsH_2_1;
    output RegsH_1_4;
    output RegsH_1_7;
    output RegsH_1_6;
    output RegsH_1_2;
    output RegsH_3_5;
    output RegsH_2_0;
    output RegsH_3_3;
    output RegsH_4_1;
    output RegsH_3_7;
    output RegsH_3_0;
    input [2:0]RegAddrC;
    output RegsH_1_1;
    input n28048;
    input n28049;
    input \RegAddrB[1] ;
    output RegsH_2_7;
    input n28050;
    input n28051;
    input n28055;
    input n28056;
    output RegsH_1_0;
    output RegsH_0_7;
    input n28057;
    input n28058;
    output RegsH_0_6;
    input n27999;
    input n28000;
    output RegsH_0_5;
    output RegsH_0_4;
    output RegsH_0_3;
    output RegsH_0_2;
    input n28062;
    input n28063;
    input n28064;
    input n28065;
    output RegsH_0_1;
    output RegsH_0_0;
    input n28001;
    input n28002;
    input n28069;
    input n28070;
    input n28071;
    input n28072;
    output RegsH_2_4;
    output RegsH_2_3;
    output RegsH_2_5;
    input \RegAddrB[2] ;
    output [15:0]RegBusB;
    input n28076;
    input n28077;
    output RegsH_4_0;
    output RegsH_3_2;
    output RegsH_3_1;
    output RegsH_1_3;
    input n28078;
    input n28079;
    input n28006;
    input n28007;
    input n28008;
    input n28009;
    input n28020;
    input n28021;
    input n28013;
    input n28014;
    input n28015;
    input n28016;
    output RegsL_7_7;
    input [7:0]RegDIL;
    output RegsL_7_6;
    output RegsL_7_5;
    output RegsL_7_4;
    output RegsL_7_3;
    output RegsL_7_2;
    output RegsL_7_1;
    output RegsL_7_0;
    output RegsL_6_7;
    output RegsL_6_6;
    output RegsL_6_5;
    output RegsL_6_4;
    output RegsL_6_3;
    output RegsL_6_2;
    output RegsL_6_1;
    output RegsL_6_0;
    input n30976;
    input [2:0]RegAddrA;
    output RegsL_5_7;
    output RegsL_5_6;
    output RegsL_5_5;
    input n30979;
    output RegsL_5_4;
    output RegsL_5_3;
    output RegsL_5_2;
    output RegsL_5_1;
    output RegsL_5_0;
    output RegsL_4_7;
    output RegsL_4_6;
    output RegsL_4_5;
    output RegsL_4_4;
    output RegsL_4_3;
    output RegsL_4_2;
    output RegsL_4_1;
    output RegsL_4_0;
    output RegsL_3_7;
    output RegsL_3_6;
    output RegsL_3_5;
    output RegsL_3_4;
    output RegsL_3_3;
    output RegsL_3_2;
    output RegsL_3_1;
    output RegsL_3_0;
    output RegsL_2_7;
    output RegsL_2_6;
    output RegsL_2_5;
    output RegsL_2_4;
    output RegsL_2_3;
    output RegsL_2_2;
    output RegsL_2_1;
    output RegsL_2_0;
    output RegsL_1_7;
    output RegsL_1_6;
    output RegsL_1_5;
    output RegsL_1_4;
    output RegsL_1_3;
    output RegsL_1_2;
    output RegsL_1_1;
    output RegsL_1_0;
    output RegsL_0_7;
    output RegsL_0_6;
    output RegsL_0_5;
    output RegsL_0_4;
    output RegsL_0_3;
    output RegsL_0_2;
    output RegsL_0_1;
    output RegsL_0_0;
    output RegsH_7_7;
    output RegsH_7_6;
    output RegsH_7_5;
    output RegsH_7_4;
    output RegsH_7_3;
    output RegsH_7_2;
    output RegsH_7_1;
    output RegsH_7_0;
    output RegsH_6_7;
    output RegsH_6_6;
    output RegsH_6_5;
    output RegsH_6_4;
    output RegsH_6_3;
    output RegsH_6_2;
    output RegsH_6_1;
    output RegsH_6_0;
    output RegsH_5_7;
    output RegsH_5_6;
    output RegsH_5_5;
    output RegsH_5_4;
    output RegsH_5_3;
    output RegsH_5_2;
    output RegsH_5_1;
    output RegsH_5_0;
    output RegsH_4_7;
    output RegsH_4_6;
    output RegsH_4_5;
    output RegsH_4_4;
    output RegsH_4_3;
    output RegsH_4_2;
    output [15:0]RegBusC;
    input n28022;
    input n28023;
    input n28027;
    input n28028;
    input n28029;
    input n28030;
    input n28034;
    input n28035;
    input n28036;
    input n28037;
    input n27971;
    input n27972;
    input n27973;
    input n27974;
    input n27978;
    input n27979;
    input n27980;
    input n27981;
    input n27985;
    input n27986;
    output [15:0]RegBusA;
    input n27987;
    input n27988;
    input n28041;
    input n28042;
    input n28043;
    input n28044;
    input n27992;
    input n27993;
    input n27994;
    input n27995;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    wire [7:0]n1;
    
    wire n28097, n28098, n28101, n28052, n28053, n28059, n28060, 
        n28003, n28066, n28067, n28004, n28073, n28074, n28080, 
        n27996, n27997, n28081, n28010, n28011, n28017, n28018, 
        n28024;
    wire [7:0]n1_adj_2030;
    
    wire n28093, n28102, n28108, n28109, n28115, n28116, n28122, 
        n28123, n28129, n28130, n28136, n28137, n28143, n28144, 
        n28150, n28151, n28157, n28158, n28164, n28165, n28171, 
        n28172, n28178, n28179, n28185, n28186, n28192, n28193, 
        n28087, n28088, n28094, n28095, n28099, n28100, n28104, 
        n28105, n28106, n28107, n28111, n28112, n28113, n28114, 
        n28118, n28119, n28120, n28121, n28125, n28126, n28127, 
        n28128, n28132, n28133, n28134, n28135, n28139, n28140, 
        n28141, n28142, n28146, n28147, n28148, n28149, n28025, 
        n28153, n28154, n28092, n28155, n28156, n28160, n28161, 
        n28162, n28163, n28167, n28168, n28169, n28170, n28174, 
        n28175, n28176, n28177, n28181, n28182, n28183, n28184, 
        n28031, n28032, n28038, n28039, n28188, n28189, n28190, 
        n28191, n28083, n28084, n28091, n27975, n28085, n28086, 
        n27976, n27982, n27983, n27989, n28199, n28200, n28206, 
        n28207, n28213, n28214, n28220, n28221, n28227, n28228, 
        n28234, n28235, n28241, n28242, n28248, n28249, n28255, 
        n28256, n28262, n28263, n28269, n28270, n28276, n28277, 
        n28283, n28284, n28290, n28291, n27961, n27962, n27968, 
        n27969, n28195, n28196, n28197, n28198, n28202, n28203, 
        n28204, n28205, n28090, n28209, n28210, n28211, n28212, 
        n28216, n28217, n28218, n28219, n28223, n28224, n28225, 
        n28226, n28230, n28231, n28232, n28233, n28237, n28238, 
        n28239, n28240, n28244, n28245, n28246, n28247, n28251, 
        n28252, n28253, n28254, n28258, n28259, n28260, n28261, 
        n28265, n28266, n28267, n28268, n28272, n28273, n28274, 
        n28275, n28279, n28280, n28281, n28282, n28286, n28287, 
        n28288, n28289, n27957, n27958, n27959, n27960, n27964, 
        n27965, n27966, n27967, n27990, n28045, n28046;
    
    FD1P3AX i116_117 (.D(RegDIH[4]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i116_117.GSR = "ENABLED";
    FD1P3AX i71_72 (.D(RegDIH[5]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i71_72.GSR = "ENABLED";
    FD1P3AX i122_123 (.D(RegDIH[6]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i122_123.GSR = "ENABLED";
    FD1P3AX i98_99 (.D(RegDIH[6]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i98_99.GSR = "ENABLED";
    FD1P3AX i86_87 (.D(RegDIH[2]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i86_87.GSR = "ENABLED";
    FD1P3AX i83_84 (.D(RegDIH[1]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i83_84.GSR = "ENABLED";
    FD1P3AX i68_69 (.D(RegDIH[4]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i68_69.GSR = "ENABLED";
    FD1P3AX i77_78 (.D(RegDIH[7]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i77_78.GSR = "ENABLED";
    FD1P3AX i74_75 (.D(RegDIH[6]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i74_75.GSR = "ENABLED";
    FD1P3AX i62_63 (.D(RegDIH[2]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i62_63.GSR = "ENABLED";
    FD1P3AX i119_120 (.D(RegDIH[5]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i119_120.GSR = "ENABLED";
    FD1P3AX i80_81 (.D(RegDIH[0]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i80_81.GSR = "ENABLED";
    FD1P3AX i113_114 (.D(RegDIH[3]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i113_114.GSR = "ENABLED";
    FD1P3AX i131_132 (.D(RegDIH[1]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i131_132.GSR = "ENABLED";
    FD1P3AX i125_126 (.D(RegDIH[7]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i125_126.GSR = "ENABLED";
    FD1P3AX i104_105 (.D(RegDIH[0]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i104_105.GSR = "ENABLED";
    PFUMX i26365 (.BLUT(n28097), .ALUT(n28098), .C0(RegAddrC[1]), .Z(n28101));
    FD1P3AX i59_60 (.D(RegDIH[1]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i59_60.GSR = "ENABLED";
    PFUMX i26316 (.BLUT(n28048), .ALUT(n28049), .C0(\RegAddrB[1] ), .Z(n28052));
    FD1P3AX i101_102 (.D(RegDIH[7]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i101_102.GSR = "ENABLED";
    PFUMX i26317 (.BLUT(n28050), .ALUT(n28051), .C0(\RegAddrB[1] ), .Z(n28053));
    PFUMX i26323 (.BLUT(n28055), .ALUT(n28056), .C0(\RegAddrB[1] ), .Z(n28059));
    FD1P3AX i56_57 (.D(RegDIH[0]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i56_57.GSR = "ENABLED";
    FD1P3AX i53_54 (.D(RegDIH[7]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i53_54.GSR = "ENABLED";
    PFUMX i26324 (.BLUT(n28057), .ALUT(n28058), .C0(\RegAddrB[1] ), .Z(n28060));
    FD1P3AX i50_51 (.D(RegDIH[6]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i50_51.GSR = "ENABLED";
    PFUMX i26267 (.BLUT(n27999), .ALUT(n28000), .C0(\RegAddrB[1] ), .Z(n28003));
    FD1P3AX i47_48 (.D(RegDIH[5]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i47_48.GSR = "ENABLED";
    FD1P3AX i44_45 (.D(RegDIH[4]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i44_45.GSR = "ENABLED";
    FD1P3AX i41_42 (.D(RegDIH[3]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i41_42.GSR = "ENABLED";
    FD1P3AX i38_39 (.D(RegDIH[2]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i38_39.GSR = "ENABLED";
    PFUMX i26330 (.BLUT(n28062), .ALUT(n28063), .C0(\RegAddrB[1] ), .Z(n28066));
    PFUMX i26331 (.BLUT(n28064), .ALUT(n28065), .C0(\RegAddrB[1] ), .Z(n28067));
    FD1P3AX i35_36 (.D(RegDIH[1]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i35_36.GSR = "ENABLED";
    FD1P3AX i32_33 (.D(RegDIH[0]), .SP(n1[0]), .CK(clk_op), .Q(RegsH_0_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i32_33.GSR = "ENABLED";
    PFUMX i26268 (.BLUT(n28001), .ALUT(n28002), .C0(\RegAddrB[1] ), .Z(n28004));
    PFUMX i26337 (.BLUT(n28069), .ALUT(n28070), .C0(\RegAddrB[1] ), .Z(n28073));
    PFUMX i26338 (.BLUT(n28071), .ALUT(n28072), .C0(\RegAddrB[1] ), .Z(n28074));
    FD1P3AX i92_93 (.D(RegDIH[4]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i92_93.GSR = "ENABLED";
    FD1P3AX i89_90 (.D(RegDIH[3]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i89_90.GSR = "ENABLED";
    FD1P3AX i95_96 (.D(RegDIH[5]), .SP(n1[2]), .CK(clk_op), .Q(RegsH_2_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i95_96.GSR = "ENABLED";
    L6MUX21 i26318 (.D0(n28052), .D1(n28053), .SD(\RegAddrB[2] ), .Z(RegBusB[13]));
    PFUMX i26344 (.BLUT(n28076), .ALUT(n28077), .C0(\RegAddrB[1] ), .Z(n28080));
    L6MUX21 i26262 (.D0(n27996), .D1(n27997), .SD(\RegAddrB[2] ), .Z(RegBusB[5]));
    FD1P3AX i128_129 (.D(RegDIH[0]), .SP(n1[4]), .CK(clk_op), .Q(RegsH_4_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i128_129.GSR = "ENABLED";
    L6MUX21 i26325 (.D0(n28059), .D1(n28060), .SD(\RegAddrB[2] ), .Z(RegBusB[12]));
    FD1P3AX i110_111 (.D(RegDIH[2]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i110_111.GSR = "ENABLED";
    L6MUX21 i26332 (.D0(n28066), .D1(n28067), .SD(\RegAddrB[2] ), .Z(RegBusB[15]));
    L6MUX21 i26269 (.D0(n28003), .D1(n28004), .SD(\RegAddrB[2] ), .Z(RegBusB[4]));
    FD1P3AX i107_108 (.D(RegDIH[1]), .SP(n1[3]), .CK(clk_op), .Q(RegsH_3_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i107_108.GSR = "ENABLED";
    L6MUX21 i26339 (.D0(n28073), .D1(n28074), .SD(\RegAddrB[2] ), .Z(RegBusB[14]));
    FD1P3AX i65_66 (.D(RegDIH[3]), .SP(n1[1]), .CK(clk_op), .Q(RegsH_1_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i65_66.GSR = "ENABLED";
    PFUMX i26345 (.BLUT(n28078), .ALUT(n28079), .C0(\RegAddrB[1] ), .Z(n28081));
    L6MUX21 i26346 (.D0(n28080), .D1(n28081), .SD(\RegAddrB[2] ), .Z(RegBusB[10]));
    L6MUX21 i26276 (.D0(n28010), .D1(n28011), .SD(\RegAddrB[2] ), .Z(RegBusB[3]));
    L6MUX21 i26283 (.D0(n28017), .D1(n28018), .SD(\RegAddrB[2] ), .Z(RegBusB[2]));
    PFUMX i26274 (.BLUT(n28006), .ALUT(n28007), .C0(\RegAddrB[1] ), .Z(n28010));
    PFUMX i26275 (.BLUT(n28008), .ALUT(n28009), .C0(\RegAddrB[1] ), .Z(n28011));
    PFUMX i26288 (.BLUT(n28020), .ALUT(n28021), .C0(\RegAddrB[1] ), .Z(n28024));
    PFUMX i26281 (.BLUT(n28013), .ALUT(n28014), .C0(\RegAddrB[1] ), .Z(n28017));
    PFUMX i26282 (.BLUT(n28015), .ALUT(n28016), .C0(\RegAddrB[1] ), .Z(n28018));
    FD1P3AX i221_222 (.D(RegDIL[7]), .SP(n1_adj_2030[7]), .CK(clk_op), 
            .Q(RegsL_7_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i221_222.GSR = "ENABLED";
    FD1P3AX i218_219 (.D(RegDIL[6]), .SP(n1_adj_2030[7]), .CK(clk_op), 
            .Q(RegsL_7_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i218_219.GSR = "ENABLED";
    FD1P3AX i215_216 (.D(RegDIL[5]), .SP(n1_adj_2030[7]), .CK(clk_op), 
            .Q(RegsL_7_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i215_216.GSR = "ENABLED";
    FD1P3AX i212_213 (.D(RegDIL[4]), .SP(n1_adj_2030[7]), .CK(clk_op), 
            .Q(RegsL_7_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i212_213.GSR = "ENABLED";
    FD1P3AX i209_210 (.D(RegDIL[3]), .SP(n1_adj_2030[7]), .CK(clk_op), 
            .Q(RegsL_7_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i209_210.GSR = "ENABLED";
    FD1P3AX i206_207 (.D(RegDIL[2]), .SP(n1_adj_2030[7]), .CK(clk_op), 
            .Q(RegsL_7_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i206_207.GSR = "ENABLED";
    FD1P3AX i203_204 (.D(RegDIL[1]), .SP(n1_adj_2030[7]), .CK(clk_op), 
            .Q(RegsL_7_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i203_204.GSR = "ENABLED";
    FD1P3AX i200_201 (.D(RegDIL[0]), .SP(n1_adj_2030[7]), .CK(clk_op), 
            .Q(RegsL_7_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i200_201.GSR = "ENABLED";
    FD1P3AX i197_198 (.D(RegDIL[7]), .SP(n1_adj_2030[6]), .CK(clk_op), 
            .Q(RegsL_6_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i197_198.GSR = "ENABLED";
    FD1P3AX i194_195 (.D(RegDIL[6]), .SP(n1_adj_2030[6]), .CK(clk_op), 
            .Q(RegsL_6_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i194_195.GSR = "ENABLED";
    FD1P3AX i191_192 (.D(RegDIL[5]), .SP(n1_adj_2030[6]), .CK(clk_op), 
            .Q(RegsL_6_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i191_192.GSR = "ENABLED";
    FD1P3AX i188_189 (.D(RegDIL[4]), .SP(n1_adj_2030[6]), .CK(clk_op), 
            .Q(RegsL_6_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i188_189.GSR = "ENABLED";
    FD1P3AX i185_186 (.D(RegDIL[3]), .SP(n1_adj_2030[6]), .CK(clk_op), 
            .Q(RegsL_6_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i185_186.GSR = "ENABLED";
    FD1P3AX i182_183 (.D(RegDIL[2]), .SP(n1_adj_2030[6]), .CK(clk_op), 
            .Q(RegsL_6_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i182_183.GSR = "ENABLED";
    FD1P3AX i179_180 (.D(RegDIL[1]), .SP(n1_adj_2030[6]), .CK(clk_op), 
            .Q(RegsL_6_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i179_180.GSR = "ENABLED";
    FD1P3AX i176_177 (.D(RegDIL[0]), .SP(n1_adj_2030[6]), .CK(clk_op), 
            .Q(RegsL_6_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i176_177.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(n30976), .B(RegAddrA[0]), .C(RegAddrA[1]), 
            .D(RegAddrA[2]), .Z(n1[1])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0008;
    FD1P3AX i173_174 (.D(RegDIL[7]), .SP(n1_adj_2030[5]), .CK(clk_op), 
            .Q(RegsL_5_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i173_174.GSR = "ENABLED";
    FD1P3AX i170_171 (.D(RegDIL[6]), .SP(n1_adj_2030[5]), .CK(clk_op), 
            .Q(RegsL_5_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i170_171.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_484 (.A(n30976), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_484.init = 16'h0800;
    FD1P3AX i167_168 (.D(RegDIL[5]), .SP(n1_adj_2030[5]), .CK(clk_op), 
            .Q(RegsL_5_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i167_168.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_485 (.A(n30979), .B(RegAddrA[0]), 
            .C(RegAddrA[1]), .D(RegAddrA[2]), .Z(n1_adj_2030[0])) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_485.init = 16'h0002;
    FD1P3AX i164_165 (.D(RegDIL[4]), .SP(n1_adj_2030[5]), .CK(clk_op), 
            .Q(RegsL_5_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i164_165.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_486 (.A(n30979), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_2030[2])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_486.init = 16'h0200;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_487 (.A(RegAddrA[1]), .B(RegAddrA[2]), 
            .C(RegAddrA[0]), .D(n30976), .Z(n1[7])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_487.init = 16'h8000;
    FD1P3AX i161_162 (.D(RegDIL[3]), .SP(n1_adj_2030[5]), .CK(clk_op), 
            .Q(RegsL_5_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i161_162.GSR = "ENABLED";
    FD1P3AX i158_159 (.D(RegDIL[2]), .SP(n1_adj_2030[5]), .CK(clk_op), 
            .Q(RegsL_5_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i158_159.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_488 (.A(RegAddrA[1]), .B(RegAddrA[2]), 
            .C(RegAddrA[0]), .D(n30979), .Z(n1_adj_2030[6])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_488.init = 16'h0800;
    FD1P3AX i155_156 (.D(RegDIL[1]), .SP(n1_adj_2030[5]), .CK(clk_op), 
            .Q(RegsL_5_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i155_156.GSR = "ENABLED";
    FD1P3AX i152_153 (.D(RegDIL[0]), .SP(n1_adj_2030[5]), .CK(clk_op), 
            .Q(RegsL_5_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i152_153.GSR = "ENABLED";
    FD1P3AX i149_150 (.D(RegDIL[7]), .SP(n1_adj_2030[4]), .CK(clk_op), 
            .Q(RegsL_4_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i149_150.GSR = "ENABLED";
    FD1P3AX i146_147 (.D(RegDIL[6]), .SP(n1_adj_2030[4]), .CK(clk_op), 
            .Q(RegsL_4_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i146_147.GSR = "ENABLED";
    FD1P3AX i143_144 (.D(RegDIL[5]), .SP(n1_adj_2030[4]), .CK(clk_op), 
            .Q(RegsL_4_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i143_144.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_489 (.A(n30979), .B(RegAddrA[0]), 
            .C(RegAddrA[1]), .D(RegAddrA[2]), .Z(n1_adj_2030[1])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_489.init = 16'h0008;
    FD1P3AX i140_141 (.D(RegDIL[4]), .SP(n1_adj_2030[4]), .CK(clk_op), 
            .Q(RegsL_4_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i140_141.GSR = "ENABLED";
    FD1P3AX i137_138 (.D(RegDIL[3]), .SP(n1_adj_2030[4]), .CK(clk_op), 
            .Q(RegsL_4_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i137_138.GSR = "ENABLED";
    FD1P3AX i134_135 (.D(RegDIL[2]), .SP(n1_adj_2030[4]), .CK(clk_op), 
            .Q(RegsL_4_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i134_135.GSR = "ENABLED";
    FD1P3AX i131_132_adj_490 (.D(RegDIL[1]), .SP(n1_adj_2030[4]), .CK(clk_op), 
            .Q(RegsL_4_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i131_132_adj_490.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_491 (.A(n30979), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_2030[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_491.init = 16'h0800;
    FD1P3AX i128_129_adj_492 (.D(RegDIL[0]), .SP(n1_adj_2030[4]), .CK(clk_op), 
            .Q(RegsL_4_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i128_129_adj_492.GSR = "ENABLED";
    FD1P3AX i125_126_adj_493 (.D(RegDIL[7]), .SP(n1_adj_2030[3]), .CK(clk_op), 
            .Q(RegsL_3_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i125_126_adj_493.GSR = "ENABLED";
    FD1P3AX i122_123_adj_494 (.D(RegDIL[6]), .SP(n1_adj_2030[3]), .CK(clk_op), 
            .Q(RegsL_3_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i122_123_adj_494.GSR = "ENABLED";
    FD1P3AX i119_120_adj_495 (.D(RegDIL[5]), .SP(n1_adj_2030[3]), .CK(clk_op), 
            .Q(RegsL_3_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i119_120_adj_495.GSR = "ENABLED";
    FD1P3AX i116_117_adj_496 (.D(RegDIL[4]), .SP(n1_adj_2030[3]), .CK(clk_op), 
            .Q(RegsL_3_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i116_117_adj_496.GSR = "ENABLED";
    FD1P3AX i113_114_adj_497 (.D(RegDIL[3]), .SP(n1_adj_2030[3]), .CK(clk_op), 
            .Q(RegsL_3_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i113_114_adj_497.GSR = "ENABLED";
    FD1P3AX i110_111_adj_498 (.D(RegDIL[2]), .SP(n1_adj_2030[3]), .CK(clk_op), 
            .Q(RegsL_3_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i110_111_adj_498.GSR = "ENABLED";
    FD1P3AX i107_108_adj_499 (.D(RegDIL[1]), .SP(n1_adj_2030[3]), .CK(clk_op), 
            .Q(RegsL_3_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i107_108_adj_499.GSR = "ENABLED";
    FD1P3AX i104_105_adj_500 (.D(RegDIL[0]), .SP(n1_adj_2030[3]), .CK(clk_op), 
            .Q(RegsL_3_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i104_105_adj_500.GSR = "ENABLED";
    FD1P3AX i101_102_adj_501 (.D(RegDIL[7]), .SP(n1_adj_2030[2]), .CK(clk_op), 
            .Q(RegsL_2_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i101_102_adj_501.GSR = "ENABLED";
    FD1P3AX i98_99_adj_502 (.D(RegDIL[6]), .SP(n1_adj_2030[2]), .CK(clk_op), 
            .Q(RegsL_2_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i98_99_adj_502.GSR = "ENABLED";
    FD1P3AX i95_96_adj_503 (.D(RegDIL[5]), .SP(n1_adj_2030[2]), .CK(clk_op), 
            .Q(RegsL_2_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i95_96_adj_503.GSR = "ENABLED";
    FD1P3AX i92_93_adj_504 (.D(RegDIL[4]), .SP(n1_adj_2030[2]), .CK(clk_op), 
            .Q(RegsL_2_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i92_93_adj_504.GSR = "ENABLED";
    FD1P3AX i89_90_adj_505 (.D(RegDIL[3]), .SP(n1_adj_2030[2]), .CK(clk_op), 
            .Q(RegsL_2_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i89_90_adj_505.GSR = "ENABLED";
    FD1P3AX i86_87_adj_506 (.D(RegDIL[2]), .SP(n1_adj_2030[2]), .CK(clk_op), 
            .Q(RegsL_2_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i86_87_adj_506.GSR = "ENABLED";
    FD1P3AX i83_84_adj_507 (.D(RegDIL[1]), .SP(n1_adj_2030[2]), .CK(clk_op), 
            .Q(RegsL_2_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i83_84_adj_507.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_508 (.A(n30979), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1_adj_2030[7])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(53[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_508.init = 16'h8000;
    FD1P3AX i80_81_adj_509 (.D(RegDIL[0]), .SP(n1_adj_2030[2]), .CK(clk_op), 
            .Q(RegsL_2_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i80_81_adj_509.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_510 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(n30976), .Z(n1[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_510.init = 16'h2000;
    FD1P3AX i77_78_adj_511 (.D(RegDIL[7]), .SP(n1_adj_2030[1]), .CK(clk_op), 
            .Q(RegsL_1_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i77_78_adj_511.GSR = "ENABLED";
    FD1P3AX i74_75_adj_512 (.D(RegDIL[6]), .SP(n1_adj_2030[1]), .CK(clk_op), 
            .Q(RegsL_1_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i74_75_adj_512.GSR = "ENABLED";
    FD1P3AX i71_72_adj_513 (.D(RegDIL[5]), .SP(n1_adj_2030[1]), .CK(clk_op), 
            .Q(RegsL_1_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i71_72_adj_513.GSR = "ENABLED";
    FD1P3AX i68_69_adj_514 (.D(RegDIL[4]), .SP(n1_adj_2030[1]), .CK(clk_op), 
            .Q(RegsL_1_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i68_69_adj_514.GSR = "ENABLED";
    FD1P3AX i65_66_adj_515 (.D(RegDIL[3]), .SP(n1_adj_2030[1]), .CK(clk_op), 
            .Q(RegsL_1_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i65_66_adj_515.GSR = "ENABLED";
    FD1P3AX i62_63_adj_516 (.D(RegDIL[2]), .SP(n1_adj_2030[1]), .CK(clk_op), 
            .Q(RegsL_1_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i62_63_adj_516.GSR = "ENABLED";
    FD1P3AX i59_60_adj_517 (.D(RegDIL[1]), .SP(n1_adj_2030[1]), .CK(clk_op), 
            .Q(RegsL_1_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i59_60_adj_517.GSR = "ENABLED";
    FD1P3AX i56_57_adj_518 (.D(RegDIL[0]), .SP(n1_adj_2030[1]), .CK(clk_op), 
            .Q(RegsL_1_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i56_57_adj_518.GSR = "ENABLED";
    FD1P3AX i53_54_adj_519 (.D(RegDIL[7]), .SP(n1_adj_2030[0]), .CK(clk_op), 
            .Q(RegsL_0_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i53_54_adj_519.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_520 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(n30979), .Z(n1_adj_2030[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_520.init = 16'h2000;
    FD1P3AX i50_51_adj_521 (.D(RegDIL[6]), .SP(n1_adj_2030[0]), .CK(clk_op), 
            .Q(RegsL_0_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i50_51_adj_521.GSR = "ENABLED";
    FD1P3AX i47_48_adj_522 (.D(RegDIL[5]), .SP(n1_adj_2030[0]), .CK(clk_op), 
            .Q(RegsL_0_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i47_48_adj_522.GSR = "ENABLED";
    FD1P3AX i44_45_adj_523 (.D(RegDIL[4]), .SP(n1_adj_2030[0]), .CK(clk_op), 
            .Q(RegsL_0_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i44_45_adj_523.GSR = "ENABLED";
    FD1P3AX i41_42_adj_524 (.D(RegDIL[3]), .SP(n1_adj_2030[0]), .CK(clk_op), 
            .Q(RegsL_0_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i41_42_adj_524.GSR = "ENABLED";
    FD1P3AX i38_39_adj_525 (.D(RegDIL[2]), .SP(n1_adj_2030[0]), .CK(clk_op), 
            .Q(RegsL_0_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i38_39_adj_525.GSR = "ENABLED";
    FD1P3AX i35_36_adj_526 (.D(RegDIL[1]), .SP(n1_adj_2030[0]), .CK(clk_op), 
            .Q(RegsL_0_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i35_36_adj_526.GSR = "ENABLED";
    FD1P3AX i32_33_adj_527 (.D(RegDIL[0]), .SP(n1_adj_2030[0]), .CK(clk_op), 
            .Q(RegsL_0_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(46[46:51])
    defparam i32_33_adj_527.GSR = "ENABLED";
    FD1P3AX i221_222_adj_528 (.D(RegDIH[7]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsH_7_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i221_222_adj_528.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_529 (.A(RegAddrA[2]), .B(RegAddrA[1]), 
            .C(RegAddrA[0]), .D(n30979), .Z(n1_adj_2030[4])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_529.init = 16'h0200;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_530 (.A(n30976), .B(RegAddrA[0]), 
            .C(RegAddrA[1]), .D(RegAddrA[2]), .Z(n1[0])) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_530.init = 16'h0002;
    FD1P3AX i218_219_adj_531 (.D(RegDIH[6]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsH_7_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i218_219_adj_531.GSR = "ENABLED";
    FD1P3AX i215_216_adj_532 (.D(RegDIH[5]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsH_7_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i215_216_adj_532.GSR = "ENABLED";
    FD1P3AX i212_213_adj_533 (.D(RegDIH[4]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsH_7_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i212_213_adj_533.GSR = "ENABLED";
    FD1P3AX i209_210_adj_534 (.D(RegDIH[3]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsH_7_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i209_210_adj_534.GSR = "ENABLED";
    FD1P3AX i206_207_adj_535 (.D(RegDIH[2]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsH_7_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i206_207_adj_535.GSR = "ENABLED";
    FD1P3AX i203_204_adj_536 (.D(RegDIH[1]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsH_7_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i203_204_adj_536.GSR = "ENABLED";
    FD1P3AX i200_201_adj_537 (.D(RegDIH[0]), .SP(n1[7]), .CK(clk_op), 
            .Q(RegsH_7_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i200_201_adj_537.GSR = "ENABLED";
    FD1P3AX i197_198_adj_538 (.D(RegDIH[7]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsH_6_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i197_198_adj_538.GSR = "ENABLED";
    FD1P3AX i194_195_adj_539 (.D(RegDIH[6]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsH_6_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i194_195_adj_539.GSR = "ENABLED";
    FD1P3AX i191_192_adj_540 (.D(RegDIH[5]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsH_6_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i191_192_adj_540.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_541 (.A(n30976), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1[2])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_541.init = 16'h0200;
    FD1P3AX i188_189_adj_542 (.D(RegDIH[4]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsH_6_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i188_189_adj_542.GSR = "ENABLED";
    FD1P3AX i185_186_adj_543 (.D(RegDIH[3]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsH_6_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i185_186_adj_543.GSR = "ENABLED";
    FD1P3AX i182_183_adj_544 (.D(RegDIH[2]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsH_6_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i182_183_adj_544.GSR = "ENABLED";
    FD1P3AX i179_180_adj_545 (.D(RegDIH[1]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsH_6_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i179_180_adj_545.GSR = "ENABLED";
    FD1P3AX i176_177_adj_546 (.D(RegDIH[0]), .SP(n1[6]), .CK(clk_op), 
            .Q(RegsH_6_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i176_177_adj_546.GSR = "ENABLED";
    FD1P3AX i173_174_adj_547 (.D(RegDIH[7]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsH_5_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i173_174_adj_547.GSR = "ENABLED";
    FD1P3AX i170_171_adj_548 (.D(RegDIH[6]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsH_5_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i170_171_adj_548.GSR = "ENABLED";
    FD1P3AX i167_168_adj_549 (.D(RegDIH[5]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsH_5_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i167_168_adj_549.GSR = "ENABLED";
    FD1P3AX i164_165_adj_550 (.D(RegDIH[4]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsH_5_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i164_165_adj_550.GSR = "ENABLED";
    FD1P3AX i161_162_adj_551 (.D(RegDIH[3]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsH_5_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i161_162_adj_551.GSR = "ENABLED";
    FD1P3AX i158_159_adj_552 (.D(RegDIH[2]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsH_5_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i158_159_adj_552.GSR = "ENABLED";
    FD1P3AX i155_156_adj_553 (.D(RegDIH[1]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsH_5_1));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i155_156_adj_553.GSR = "ENABLED";
    FD1P3AX i152_153_adj_554 (.D(RegDIH[0]), .SP(n1[5]), .CK(clk_op), 
            .Q(RegsH_5_0));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i152_153_adj_554.GSR = "ENABLED";
    FD1P3AX i149_150_adj_555 (.D(RegDIH[7]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsH_4_7));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i149_150_adj_555.GSR = "ENABLED";
    FD1P3AX i146_147_adj_556 (.D(RegDIH[6]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsH_4_6));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i146_147_adj_556.GSR = "ENABLED";
    FD1P3AX i143_144_adj_557 (.D(RegDIH[5]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsH_4_5));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i143_144_adj_557.GSR = "ENABLED";
    FD1P3AX i140_141_adj_558 (.D(RegDIH[4]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsH_4_4));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i140_141_adj_558.GSR = "ENABLED";
    FD1P3AX i137_138_adj_559 (.D(RegDIH[3]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsH_4_3));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i137_138_adj_559.GSR = "ENABLED";
    FD1P3AX i134_135_adj_560 (.D(RegDIH[2]), .SP(n1[4]), .CK(clk_op), 
            .Q(RegsH_4_2));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(45[46:51])
    defparam i134_135_adj_560.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_561 (.A(n30976), .B(RegAddrA[0]), 
            .C(RegAddrA[1]), .D(RegAddrA[2]), .Z(n1[4])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_561.init = 16'h0200;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_562 (.A(n30976), .B(RegAddrA[0]), 
            .C(RegAddrA[2]), .D(RegAddrA[1]), .Z(n1[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_reg.v(52[20:32])
    defparam i1_2_lut_3_lut_4_lut_adj_562.init = 16'h2000;
    ORCALUT4 i26357_3_lut (.A(RegsL_6_6), .B(RegsL_7_6), .C(RegAddrC[0]), 
            .Z(n28093)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26357_3_lut.init = 16'hcaca;
    L6MUX21 i26367 (.D0(n28101), .D1(n28102), .SD(RegAddrC[2]), .Z(RegBusC[5]));
    L6MUX21 i26374 (.D0(n28108), .D1(n28109), .SD(RegAddrC[2]), .Z(RegBusC[4]));
    L6MUX21 i26381 (.D0(n28115), .D1(n28116), .SD(RegAddrC[2]), .Z(RegBusC[3]));
    L6MUX21 i26388 (.D0(n28122), .D1(n28123), .SD(RegAddrC[2]), .Z(RegBusC[2]));
    L6MUX21 i26395 (.D0(n28129), .D1(n28130), .SD(RegAddrC[2]), .Z(RegBusC[1]));
    L6MUX21 i26402 (.D0(n28136), .D1(n28137), .SD(RegAddrC[2]), .Z(RegBusC[0]));
    L6MUX21 i26409 (.D0(n28143), .D1(n28144), .SD(RegAddrC[2]), .Z(RegBusC[15]));
    L6MUX21 i26416 (.D0(n28150), .D1(n28151), .SD(RegAddrC[2]), .Z(RegBusC[14]));
    L6MUX21 i26423 (.D0(n28157), .D1(n28158), .SD(RegAddrC[2]), .Z(RegBusC[13]));
    L6MUX21 i26430 (.D0(n28164), .D1(n28165), .SD(RegAddrC[2]), .Z(RegBusC[12]));
    L6MUX21 i26437 (.D0(n28171), .D1(n28172), .SD(RegAddrC[2]), .Z(RegBusC[11]));
    L6MUX21 i26444 (.D0(n28178), .D1(n28179), .SD(RegAddrC[2]), .Z(RegBusC[10]));
    L6MUX21 i26451 (.D0(n28185), .D1(n28186), .SD(RegAddrC[2]), .Z(RegBusC[9]));
    L6MUX21 i26458 (.D0(n28192), .D1(n28193), .SD(RegAddrC[2]), .Z(RegBusC[8]));
    L6MUX21 i26353 (.D0(n28087), .D1(n28088), .SD(RegAddrC[2]), .Z(RegBusC[7]));
    L6MUX21 i26360 (.D0(n28094), .D1(n28095), .SD(RegAddrC[2]), .Z(RegBusC[6]));
    PFUMX i26366 (.BLUT(n28099), .ALUT(n28100), .C0(RegAddrC[1]), .Z(n28102));
    PFUMX i26372 (.BLUT(n28104), .ALUT(n28105), .C0(RegAddrC[1]), .Z(n28108));
    PFUMX i26373 (.BLUT(n28106), .ALUT(n28107), .C0(RegAddrC[1]), .Z(n28109));
    PFUMX i26379 (.BLUT(n28111), .ALUT(n28112), .C0(RegAddrC[1]), .Z(n28115));
    PFUMX i26380 (.BLUT(n28113), .ALUT(n28114), .C0(RegAddrC[1]), .Z(n28116));
    PFUMX i26386 (.BLUT(n28118), .ALUT(n28119), .C0(RegAddrC[1]), .Z(n28122));
    PFUMX i26387 (.BLUT(n28120), .ALUT(n28121), .C0(RegAddrC[1]), .Z(n28123));
    PFUMX i26393 (.BLUT(n28125), .ALUT(n28126), .C0(RegAddrC[1]), .Z(n28129));
    PFUMX i26394 (.BLUT(n28127), .ALUT(n28128), .C0(RegAddrC[1]), .Z(n28130));
    PFUMX i26400 (.BLUT(n28132), .ALUT(n28133), .C0(RegAddrC[1]), .Z(n28136));
    PFUMX i26401 (.BLUT(n28134), .ALUT(n28135), .C0(RegAddrC[1]), .Z(n28137));
    PFUMX i26407 (.BLUT(n28139), .ALUT(n28140), .C0(RegAddrC[1]), .Z(n28143));
    PFUMX i26408 (.BLUT(n28141), .ALUT(n28142), .C0(RegAddrC[1]), .Z(n28144));
    PFUMX i26414 (.BLUT(n28146), .ALUT(n28147), .C0(RegAddrC[1]), .Z(n28150));
    PFUMX i26415 (.BLUT(n28148), .ALUT(n28149), .C0(RegAddrC[1]), .Z(n28151));
    PFUMX i26289 (.BLUT(n28022), .ALUT(n28023), .C0(\RegAddrB[1] ), .Z(n28025));
    PFUMX i26421 (.BLUT(n28153), .ALUT(n28154), .C0(RegAddrC[1]), .Z(n28157));
    ORCALUT4 i26356_3_lut (.A(RegsL_4_6), .B(RegsL_5_6), .C(RegAddrC[0]), 
            .Z(n28092)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26356_3_lut.init = 16'hcaca;
    PFUMX i26422 (.BLUT(n28155), .ALUT(n28156), .C0(RegAddrC[1]), .Z(n28158));
    PFUMX i26428 (.BLUT(n28160), .ALUT(n28161), .C0(RegAddrC[1]), .Z(n28164));
    PFUMX i26429 (.BLUT(n28162), .ALUT(n28163), .C0(RegAddrC[1]), .Z(n28165));
    PFUMX i26435 (.BLUT(n28167), .ALUT(n28168), .C0(RegAddrC[1]), .Z(n28171));
    PFUMX i26436 (.BLUT(n28169), .ALUT(n28170), .C0(RegAddrC[1]), .Z(n28172));
    PFUMX i26442 (.BLUT(n28174), .ALUT(n28175), .C0(RegAddrC[1]), .Z(n28178));
    PFUMX i26443 (.BLUT(n28176), .ALUT(n28177), .C0(RegAddrC[1]), .Z(n28179));
    PFUMX i26449 (.BLUT(n28181), .ALUT(n28182), .C0(RegAddrC[1]), .Z(n28185));
    PFUMX i26450 (.BLUT(n28183), .ALUT(n28184), .C0(RegAddrC[1]), .Z(n28186));
    PFUMX i26295 (.BLUT(n28027), .ALUT(n28028), .C0(\RegAddrB[1] ), .Z(n28031));
    PFUMX i26296 (.BLUT(n28029), .ALUT(n28030), .C0(\RegAddrB[1] ), .Z(n28032));
    PFUMX i26302 (.BLUT(n28034), .ALUT(n28035), .C0(\RegAddrB[1] ), .Z(n28038));
    PFUMX i26303 (.BLUT(n28036), .ALUT(n28037), .C0(\RegAddrB[1] ), .Z(n28039));
    PFUMX i26456 (.BLUT(n28188), .ALUT(n28189), .C0(RegAddrC[1]), .Z(n28192));
    PFUMX i26457 (.BLUT(n28190), .ALUT(n28191), .C0(RegAddrC[1]), .Z(n28193));
    PFUMX i26351 (.BLUT(n28083), .ALUT(n28084), .C0(RegAddrC[1]), .Z(n28087));
    ORCALUT4 i26355_3_lut (.A(RegsL_2_6), .B(RegsL_3_6), .C(RegAddrC[0]), 
            .Z(n28091)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26355_3_lut.init = 16'hcaca;
    PFUMX i26239 (.BLUT(n27971), .ALUT(n27972), .C0(\RegAddrB[1] ), .Z(n27975));
    PFUMX i26352 (.BLUT(n28085), .ALUT(n28086), .C0(RegAddrC[1]), .Z(n28088));
    PFUMX i26240 (.BLUT(n27973), .ALUT(n27974), .C0(\RegAddrB[1] ), .Z(n27976));
    PFUMX i26246 (.BLUT(n27978), .ALUT(n27979), .C0(\RegAddrB[1] ), .Z(n27982));
    PFUMX i26247 (.BLUT(n27980), .ALUT(n27981), .C0(\RegAddrB[1] ), .Z(n27983));
    PFUMX i26253 (.BLUT(n27985), .ALUT(n27986), .C0(\RegAddrB[1] ), .Z(n27989));
    L6MUX21 i26465 (.D0(n28199), .D1(n28200), .SD(RegAddrA[2]), .Z(RegBusA[5]));
    L6MUX21 i26472 (.D0(n28206), .D1(n28207), .SD(RegAddrA[2]), .Z(RegBusA[4]));
    L6MUX21 i26479 (.D0(n28213), .D1(n28214), .SD(RegAddrA[2]), .Z(RegBusA[3]));
    L6MUX21 i26486 (.D0(n28220), .D1(n28221), .SD(RegAddrA[2]), .Z(RegBusA[2]));
    L6MUX21 i26493 (.D0(n28227), .D1(n28228), .SD(RegAddrA[2]), .Z(RegBusA[1]));
    L6MUX21 i26500 (.D0(n28234), .D1(n28235), .SD(RegAddrA[2]), .Z(RegBusA[0]));
    L6MUX21 i26507 (.D0(n28241), .D1(n28242), .SD(RegAddrA[2]), .Z(RegBusA[8]));
    L6MUX21 i26514 (.D0(n28248), .D1(n28249), .SD(RegAddrA[2]), .Z(RegBusA[7]));
    L6MUX21 i26521 (.D0(n28255), .D1(n28256), .SD(RegAddrA[2]), .Z(RegBusA[15]));
    L6MUX21 i26528 (.D0(n28262), .D1(n28263), .SD(RegAddrA[2]), .Z(RegBusA[6]));
    L6MUX21 i26535 (.D0(n28269), .D1(n28270), .SD(RegAddrA[2]), .Z(RegBusA[14]));
    L6MUX21 i26542 (.D0(n28276), .D1(n28277), .SD(RegAddrA[2]), .Z(RegBusA[13]));
    L6MUX21 i26549 (.D0(n28283), .D1(n28284), .SD(RegAddrA[2]), .Z(RegBusA[12]));
    L6MUX21 i26556 (.D0(n28290), .D1(n28291), .SD(RegAddrA[2]), .Z(RegBusA[11]));
    L6MUX21 i26227 (.D0(n27961), .D1(n27962), .SD(RegAddrA[2]), .Z(RegBusA[10]));
    L6MUX21 i26234 (.D0(n27968), .D1(n27969), .SD(RegAddrA[2]), .Z(RegBusA[9]));
    PFUMX i26463 (.BLUT(n28195), .ALUT(n28196), .C0(RegAddrA[1]), .Z(n28199));
    PFUMX i26464 (.BLUT(n28197), .ALUT(n28198), .C0(RegAddrA[1]), .Z(n28200));
    PFUMX i26470 (.BLUT(n28202), .ALUT(n28203), .C0(RegAddrA[1]), .Z(n28206));
    PFUMX i26471 (.BLUT(n28204), .ALUT(n28205), .C0(RegAddrA[1]), .Z(n28207));
    ORCALUT4 i26354_3_lut (.A(RegsL_0_6), .B(RegsL_1_6), .C(RegAddrC[0]), 
            .Z(n28090)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26354_3_lut.init = 16'hcaca;
    PFUMX i26477 (.BLUT(n28209), .ALUT(n28210), .C0(RegAddrA[1]), .Z(n28213));
    PFUMX i26478 (.BLUT(n28211), .ALUT(n28212), .C0(RegAddrA[1]), .Z(n28214));
    PFUMX i26484 (.BLUT(n28216), .ALUT(n28217), .C0(RegAddrA[1]), .Z(n28220));
    PFUMX i26485 (.BLUT(n28218), .ALUT(n28219), .C0(RegAddrA[1]), .Z(n28221));
    PFUMX i26491 (.BLUT(n28223), .ALUT(n28224), .C0(RegAddrA[1]), .Z(n28227));
    PFUMX i26492 (.BLUT(n28225), .ALUT(n28226), .C0(RegAddrA[1]), .Z(n28228));
    PFUMX i26498 (.BLUT(n28230), .ALUT(n28231), .C0(RegAddrA[1]), .Z(n28234));
    PFUMX i26499 (.BLUT(n28232), .ALUT(n28233), .C0(RegAddrA[1]), .Z(n28235));
    PFUMX i26505 (.BLUT(n28237), .ALUT(n28238), .C0(RegAddrA[1]), .Z(n28241));
    PFUMX i26506 (.BLUT(n28239), .ALUT(n28240), .C0(RegAddrA[1]), .Z(n28242));
    PFUMX i26512 (.BLUT(n28244), .ALUT(n28245), .C0(RegAddrA[1]), .Z(n28248));
    PFUMX i26513 (.BLUT(n28246), .ALUT(n28247), .C0(RegAddrA[1]), .Z(n28249));
    PFUMX i26519 (.BLUT(n28251), .ALUT(n28252), .C0(RegAddrA[1]), .Z(n28255));
    PFUMX i26520 (.BLUT(n28253), .ALUT(n28254), .C0(RegAddrA[1]), .Z(n28256));
    PFUMX i26526 (.BLUT(n28258), .ALUT(n28259), .C0(RegAddrA[1]), .Z(n28262));
    PFUMX i26527 (.BLUT(n28260), .ALUT(n28261), .C0(RegAddrA[1]), .Z(n28263));
    PFUMX i26533 (.BLUT(n28265), .ALUT(n28266), .C0(RegAddrA[1]), .Z(n28269));
    PFUMX i26534 (.BLUT(n28267), .ALUT(n28268), .C0(RegAddrA[1]), .Z(n28270));
    PFUMX i26540 (.BLUT(n28272), .ALUT(n28273), .C0(RegAddrA[1]), .Z(n28276));
    PFUMX i26541 (.BLUT(n28274), .ALUT(n28275), .C0(RegAddrA[1]), .Z(n28277));
    PFUMX i26547 (.BLUT(n28279), .ALUT(n28280), .C0(RegAddrA[1]), .Z(n28283));
    PFUMX i26358 (.BLUT(n28090), .ALUT(n28091), .C0(RegAddrC[1]), .Z(n28094));
    PFUMX i26548 (.BLUT(n28281), .ALUT(n28282), .C0(RegAddrA[1]), .Z(n28284));
    PFUMX i26554 (.BLUT(n28286), .ALUT(n28287), .C0(RegAddrA[1]), .Z(n28290));
    PFUMX i26555 (.BLUT(n28288), .ALUT(n28289), .C0(RegAddrA[1]), .Z(n28291));
    PFUMX i26225 (.BLUT(n27957), .ALUT(n27958), .C0(RegAddrA[1]), .Z(n27961));
    PFUMX i26226 (.BLUT(n27959), .ALUT(n27960), .C0(RegAddrA[1]), .Z(n27962));
    PFUMX i26232 (.BLUT(n27964), .ALUT(n27965), .C0(RegAddrA[1]), .Z(n27968));
    PFUMX i26233 (.BLUT(n27966), .ALUT(n27967), .C0(RegAddrA[1]), .Z(n27969));
    PFUMX i26254 (.BLUT(n27987), .ALUT(n27988), .C0(\RegAddrB[1] ), .Z(n27990));
    PFUMX i26309 (.BLUT(n28041), .ALUT(n28042), .C0(\RegAddrB[1] ), .Z(n28045));
    ORCALUT4 i26362_3_lut (.A(RegsL_2_5), .B(RegsL_3_5), .C(RegAddrC[0]), 
            .Z(n28098)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26362_3_lut.init = 16'hcaca;
    ORCALUT4 i26361_3_lut (.A(RegsL_0_5), .B(RegsL_1_5), .C(RegAddrC[0]), 
            .Z(n28097)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26361_3_lut.init = 16'hcaca;
    ORCALUT4 i26231_3_lut (.A(RegsH_6_1), .B(RegsH_7_1), .C(RegAddrA[0]), 
            .Z(n27967)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26231_3_lut.init = 16'hcaca;
    ORCALUT4 i26230_3_lut (.A(RegsH_4_1), .B(RegsH_5_1), .C(RegAddrA[0]), 
            .Z(n27966)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26230_3_lut.init = 16'hcaca;
    PFUMX i26310 (.BLUT(n28043), .ALUT(n28044), .C0(\RegAddrB[1] ), .Z(n28046));
    ORCALUT4 i26229_3_lut (.A(RegsH_2_1), .B(RegsH_3_1), .C(RegAddrA[0]), 
            .Z(n27965)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26229_3_lut.init = 16'hcaca;
    ORCALUT4 i26228_3_lut (.A(RegsH_0_1), .B(RegsH_1_1), .C(RegAddrA[0]), 
            .Z(n27964)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26228_3_lut.init = 16'hcaca;
    ORCALUT4 i26224_3_lut (.A(RegsH_6_2), .B(RegsH_7_2), .C(RegAddrA[0]), 
            .Z(n27960)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26224_3_lut.init = 16'hcaca;
    ORCALUT4 i26223_3_lut (.A(RegsH_4_2), .B(RegsH_5_2), .C(RegAddrA[0]), 
            .Z(n27959)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26223_3_lut.init = 16'hcaca;
    ORCALUT4 i26222_3_lut (.A(RegsH_2_2), .B(RegsH_3_2), .C(RegAddrA[0]), 
            .Z(n27958)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26222_3_lut.init = 16'hcaca;
    ORCALUT4 i26221_3_lut (.A(RegsH_0_2), .B(RegsH_1_2), .C(RegAddrA[0]), 
            .Z(n27957)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26221_3_lut.init = 16'hcaca;
    ORCALUT4 i26553_3_lut (.A(RegsH_6_3), .B(RegsH_7_3), .C(RegAddrA[0]), 
            .Z(n28289)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26553_3_lut.init = 16'hcaca;
    ORCALUT4 i26552_3_lut (.A(RegsH_4_3), .B(RegsH_5_3), .C(RegAddrA[0]), 
            .Z(n28288)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26552_3_lut.init = 16'hcaca;
    ORCALUT4 i26551_3_lut (.A(RegsH_2_3), .B(RegsH_3_3), .C(RegAddrA[0]), 
            .Z(n28287)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26551_3_lut.init = 16'hcaca;
    ORCALUT4 i26550_3_lut (.A(RegsH_0_3), .B(RegsH_1_3), .C(RegAddrA[0]), 
            .Z(n28286)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26550_3_lut.init = 16'hcaca;
    ORCALUT4 i26546_3_lut (.A(RegsH_6_4), .B(RegsH_7_4), .C(RegAddrA[0]), 
            .Z(n28282)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26546_3_lut.init = 16'hcaca;
    ORCALUT4 i26545_3_lut (.A(RegsH_4_4), .B(RegsH_5_4), .C(RegAddrA[0]), 
            .Z(n28281)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26545_3_lut.init = 16'hcaca;
    ORCALUT4 i26544_3_lut (.A(RegsH_2_4), .B(RegsH_3_4), .C(RegAddrA[0]), 
            .Z(n28280)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26544_3_lut.init = 16'hcaca;
    ORCALUT4 i26543_3_lut (.A(RegsH_0_4), .B(RegsH_1_4), .C(RegAddrA[0]), 
            .Z(n28279)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26543_3_lut.init = 16'hcaca;
    ORCALUT4 i26539_3_lut (.A(RegsH_6_5), .B(RegsH_7_5), .C(RegAddrA[0]), 
            .Z(n28275)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26539_3_lut.init = 16'hcaca;
    ORCALUT4 i26538_3_lut (.A(RegsH_4_5), .B(RegsH_5_5), .C(RegAddrA[0]), 
            .Z(n28274)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26538_3_lut.init = 16'hcaca;
    ORCALUT4 i26537_3_lut (.A(RegsH_2_5), .B(RegsH_3_5), .C(RegAddrA[0]), 
            .Z(n28273)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26537_3_lut.init = 16'hcaca;
    ORCALUT4 i26536_3_lut (.A(RegsH_0_5), .B(RegsH_1_5), .C(RegAddrA[0]), 
            .Z(n28272)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26536_3_lut.init = 16'hcaca;
    ORCALUT4 i26532_3_lut (.A(RegsH_6_6), .B(RegsH_7_6), .C(RegAddrA[0]), 
            .Z(n28268)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26532_3_lut.init = 16'hcaca;
    ORCALUT4 i26531_3_lut (.A(RegsH_4_6), .B(RegsH_5_6), .C(RegAddrA[0]), 
            .Z(n28267)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26531_3_lut.init = 16'hcaca;
    ORCALUT4 i26530_3_lut (.A(RegsH_2_6), .B(RegsH_3_6), .C(RegAddrA[0]), 
            .Z(n28266)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26530_3_lut.init = 16'hcaca;
    ORCALUT4 i26529_3_lut (.A(RegsH_0_6), .B(RegsH_1_6), .C(RegAddrA[0]), 
            .Z(n28265)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26529_3_lut.init = 16'hcaca;
    ORCALUT4 i26525_3_lut (.A(RegsL_6_6), .B(RegsL_7_6), .C(RegAddrA[0]), 
            .Z(n28261)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26525_3_lut.init = 16'hcaca;
    ORCALUT4 i26524_3_lut (.A(RegsL_4_6), .B(RegsL_5_6), .C(RegAddrA[0]), 
            .Z(n28260)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26524_3_lut.init = 16'hcaca;
    ORCALUT4 i26523_3_lut (.A(RegsL_2_6), .B(RegsL_3_6), .C(RegAddrA[0]), 
            .Z(n28259)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26523_3_lut.init = 16'hcaca;
    ORCALUT4 i26522_3_lut (.A(RegsL_0_6), .B(RegsL_1_6), .C(RegAddrA[0]), 
            .Z(n28258)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26522_3_lut.init = 16'hcaca;
    ORCALUT4 i26518_3_lut (.A(RegsH_6_7), .B(RegsH_7_7), .C(RegAddrA[0]), 
            .Z(n28254)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26518_3_lut.init = 16'hcaca;
    ORCALUT4 i26517_3_lut (.A(RegsH_4_7), .B(RegsH_5_7), .C(RegAddrA[0]), 
            .Z(n28253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26517_3_lut.init = 16'hcaca;
    ORCALUT4 i26516_3_lut (.A(RegsH_2_7), .B(RegsH_3_7), .C(RegAddrA[0]), 
            .Z(n28252)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26516_3_lut.init = 16'hcaca;
    ORCALUT4 i26515_3_lut (.A(RegsH_0_7), .B(RegsH_1_7), .C(RegAddrA[0]), 
            .Z(n28251)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26515_3_lut.init = 16'hcaca;
    ORCALUT4 i26511_3_lut (.A(RegsL_6_7), .B(RegsL_7_7), .C(RegAddrA[0]), 
            .Z(n28247)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26511_3_lut.init = 16'hcaca;
    ORCALUT4 i26510_3_lut (.A(RegsL_4_7), .B(RegsL_5_7), .C(RegAddrA[0]), 
            .Z(n28246)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26510_3_lut.init = 16'hcaca;
    ORCALUT4 i26509_3_lut (.A(RegsL_2_7), .B(RegsL_3_7), .C(RegAddrA[0]), 
            .Z(n28245)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26509_3_lut.init = 16'hcaca;
    ORCALUT4 i26508_3_lut (.A(RegsL_0_7), .B(RegsL_1_7), .C(RegAddrA[0]), 
            .Z(n28244)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26508_3_lut.init = 16'hcaca;
    ORCALUT4 i26504_3_lut (.A(RegsH_6_0), .B(RegsH_7_0), .C(RegAddrA[0]), 
            .Z(n28240)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26504_3_lut.init = 16'hcaca;
    ORCALUT4 i26503_3_lut (.A(RegsH_4_0), .B(RegsH_5_0), .C(RegAddrA[0]), 
            .Z(n28239)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26503_3_lut.init = 16'hcaca;
    ORCALUT4 i26502_3_lut (.A(RegsH_2_0), .B(RegsH_3_0), .C(RegAddrA[0]), 
            .Z(n28238)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26502_3_lut.init = 16'hcaca;
    ORCALUT4 i26501_3_lut (.A(RegsH_0_0), .B(RegsH_1_0), .C(RegAddrA[0]), 
            .Z(n28237)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26501_3_lut.init = 16'hcaca;
    ORCALUT4 i26497_3_lut (.A(RegsL_6_0), .B(RegsL_7_0), .C(RegAddrA[0]), 
            .Z(n28233)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26497_3_lut.init = 16'hcaca;
    ORCALUT4 i26496_3_lut (.A(RegsL_4_0), .B(RegsL_5_0), .C(RegAddrA[0]), 
            .Z(n28232)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26496_3_lut.init = 16'hcaca;
    ORCALUT4 i26495_3_lut (.A(RegsL_2_0), .B(RegsL_3_0), .C(RegAddrA[0]), 
            .Z(n28231)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26495_3_lut.init = 16'hcaca;
    ORCALUT4 i26494_3_lut (.A(RegsL_0_0), .B(RegsL_1_0), .C(RegAddrA[0]), 
            .Z(n28230)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26494_3_lut.init = 16'hcaca;
    ORCALUT4 i26490_3_lut (.A(RegsL_6_1), .B(RegsL_7_1), .C(RegAddrA[0]), 
            .Z(n28226)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26490_3_lut.init = 16'hcaca;
    ORCALUT4 i26489_3_lut (.A(RegsL_4_1), .B(RegsL_5_1), .C(RegAddrA[0]), 
            .Z(n28225)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26489_3_lut.init = 16'hcaca;
    ORCALUT4 i26488_3_lut (.A(RegsL_2_1), .B(RegsL_3_1), .C(RegAddrA[0]), 
            .Z(n28224)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26488_3_lut.init = 16'hcaca;
    ORCALUT4 i26487_3_lut (.A(RegsL_0_1), .B(RegsL_1_1), .C(RegAddrA[0]), 
            .Z(n28223)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26487_3_lut.init = 16'hcaca;
    ORCALUT4 i26483_3_lut (.A(RegsL_6_2), .B(RegsL_7_2), .C(RegAddrA[0]), 
            .Z(n28219)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26483_3_lut.init = 16'hcaca;
    ORCALUT4 i26482_3_lut (.A(RegsL_4_2), .B(RegsL_5_2), .C(RegAddrA[0]), 
            .Z(n28218)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26482_3_lut.init = 16'hcaca;
    ORCALUT4 i26481_3_lut (.A(RegsL_2_2), .B(RegsL_3_2), .C(RegAddrA[0]), 
            .Z(n28217)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26481_3_lut.init = 16'hcaca;
    ORCALUT4 i26480_3_lut (.A(RegsL_0_2), .B(RegsL_1_2), .C(RegAddrA[0]), 
            .Z(n28216)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26480_3_lut.init = 16'hcaca;
    ORCALUT4 i26476_3_lut (.A(RegsL_6_3), .B(RegsL_7_3), .C(RegAddrA[0]), 
            .Z(n28212)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26476_3_lut.init = 16'hcaca;
    ORCALUT4 i26475_3_lut (.A(RegsL_4_3), .B(RegsL_5_3), .C(RegAddrA[0]), 
            .Z(n28211)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26475_3_lut.init = 16'hcaca;
    ORCALUT4 i26474_3_lut (.A(RegsL_2_3), .B(RegsL_3_3), .C(RegAddrA[0]), 
            .Z(n28210)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26474_3_lut.init = 16'hcaca;
    ORCALUT4 i26473_3_lut (.A(RegsL_0_3), .B(RegsL_1_3), .C(RegAddrA[0]), 
            .Z(n28209)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26473_3_lut.init = 16'hcaca;
    ORCALUT4 i26469_3_lut (.A(RegsL_6_4), .B(RegsL_7_4), .C(RegAddrA[0]), 
            .Z(n28205)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26469_3_lut.init = 16'hcaca;
    ORCALUT4 i26468_3_lut (.A(RegsL_4_4), .B(RegsL_5_4), .C(RegAddrA[0]), 
            .Z(n28204)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26468_3_lut.init = 16'hcaca;
    ORCALUT4 i26467_3_lut (.A(RegsL_2_4), .B(RegsL_3_4), .C(RegAddrA[0]), 
            .Z(n28203)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26467_3_lut.init = 16'hcaca;
    ORCALUT4 i26466_3_lut (.A(RegsL_0_4), .B(RegsL_1_4), .C(RegAddrA[0]), 
            .Z(n28202)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26466_3_lut.init = 16'hcaca;
    ORCALUT4 i26462_3_lut (.A(RegsL_6_5), .B(RegsL_7_5), .C(RegAddrA[0]), 
            .Z(n28198)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26462_3_lut.init = 16'hcaca;
    ORCALUT4 i26461_3_lut (.A(RegsL_4_5), .B(RegsL_5_5), .C(RegAddrA[0]), 
            .Z(n28197)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26461_3_lut.init = 16'hcaca;
    ORCALUT4 i26460_3_lut (.A(RegsL_2_5), .B(RegsL_3_5), .C(RegAddrA[0]), 
            .Z(n28196)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26460_3_lut.init = 16'hcaca;
    ORCALUT4 i26459_3_lut (.A(RegsL_0_5), .B(RegsL_1_5), .C(RegAddrA[0]), 
            .Z(n28195)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26459_3_lut.init = 16'hcaca;
    ORCALUT4 i26350_3_lut (.A(RegsL_6_7), .B(RegsL_7_7), .C(RegAddrC[0]), 
            .Z(n28086)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26350_3_lut.init = 16'hcaca;
    ORCALUT4 i26349_3_lut (.A(RegsL_4_7), .B(RegsL_5_7), .C(RegAddrC[0]), 
            .Z(n28085)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26349_3_lut.init = 16'hcaca;
    ORCALUT4 i26348_3_lut (.A(RegsL_2_7), .B(RegsL_3_7), .C(RegAddrC[0]), 
            .Z(n28084)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26348_3_lut.init = 16'hcaca;
    ORCALUT4 i26347_3_lut (.A(RegsL_0_7), .B(RegsL_1_7), .C(RegAddrC[0]), 
            .Z(n28083)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26347_3_lut.init = 16'hcaca;
    ORCALUT4 i26455_3_lut (.A(RegsH_6_0), .B(RegsH_7_0), .C(RegAddrC[0]), 
            .Z(n28191)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26455_3_lut.init = 16'hcaca;
    ORCALUT4 i26454_3_lut (.A(RegsH_4_0), .B(RegsH_5_0), .C(RegAddrC[0]), 
            .Z(n28190)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26454_3_lut.init = 16'hcaca;
    ORCALUT4 i26453_3_lut (.A(RegsH_2_0), .B(RegsH_3_0), .C(RegAddrC[0]), 
            .Z(n28189)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26453_3_lut.init = 16'hcaca;
    ORCALUT4 i26452_3_lut (.A(RegsH_0_0), .B(RegsH_1_0), .C(RegAddrC[0]), 
            .Z(n28188)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26452_3_lut.init = 16'hcaca;
    ORCALUT4 i26448_3_lut (.A(RegsH_6_1), .B(RegsH_7_1), .C(RegAddrC[0]), 
            .Z(n28184)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26448_3_lut.init = 16'hcaca;
    ORCALUT4 i26447_3_lut (.A(RegsH_4_1), .B(RegsH_5_1), .C(RegAddrC[0]), 
            .Z(n28183)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26447_3_lut.init = 16'hcaca;
    ORCALUT4 i26446_3_lut (.A(RegsH_2_1), .B(RegsH_3_1), .C(RegAddrC[0]), 
            .Z(n28182)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26446_3_lut.init = 16'hcaca;
    ORCALUT4 i26445_3_lut (.A(RegsH_0_1), .B(RegsH_1_1), .C(RegAddrC[0]), 
            .Z(n28181)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26445_3_lut.init = 16'hcaca;
    ORCALUT4 i26441_3_lut (.A(RegsH_6_2), .B(RegsH_7_2), .C(RegAddrC[0]), 
            .Z(n28177)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26441_3_lut.init = 16'hcaca;
    ORCALUT4 i26440_3_lut (.A(RegsH_4_2), .B(RegsH_5_2), .C(RegAddrC[0]), 
            .Z(n28176)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26440_3_lut.init = 16'hcaca;
    ORCALUT4 i26439_3_lut (.A(RegsH_2_2), .B(RegsH_3_2), .C(RegAddrC[0]), 
            .Z(n28175)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26439_3_lut.init = 16'hcaca;
    ORCALUT4 i26438_3_lut (.A(RegsH_0_2), .B(RegsH_1_2), .C(RegAddrC[0]), 
            .Z(n28174)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26438_3_lut.init = 16'hcaca;
    ORCALUT4 i26434_3_lut (.A(RegsH_6_3), .B(RegsH_7_3), .C(RegAddrC[0]), 
            .Z(n28170)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26434_3_lut.init = 16'hcaca;
    ORCALUT4 i26433_3_lut (.A(RegsH_4_3), .B(RegsH_5_3), .C(RegAddrC[0]), 
            .Z(n28169)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26433_3_lut.init = 16'hcaca;
    ORCALUT4 i26432_3_lut (.A(RegsH_2_3), .B(RegsH_3_3), .C(RegAddrC[0]), 
            .Z(n28168)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26432_3_lut.init = 16'hcaca;
    ORCALUT4 i26431_3_lut (.A(RegsH_0_3), .B(RegsH_1_3), .C(RegAddrC[0]), 
            .Z(n28167)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26431_3_lut.init = 16'hcaca;
    ORCALUT4 i26427_3_lut (.A(RegsH_6_4), .B(RegsH_7_4), .C(RegAddrC[0]), 
            .Z(n28163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26427_3_lut.init = 16'hcaca;
    ORCALUT4 i26426_3_lut (.A(RegsH_4_4), .B(RegsH_5_4), .C(RegAddrC[0]), 
            .Z(n28162)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26426_3_lut.init = 16'hcaca;
    ORCALUT4 i26425_3_lut (.A(RegsH_2_4), .B(RegsH_3_4), .C(RegAddrC[0]), 
            .Z(n28161)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26425_3_lut.init = 16'hcaca;
    ORCALUT4 i26424_3_lut (.A(RegsH_0_4), .B(RegsH_1_4), .C(RegAddrC[0]), 
            .Z(n28160)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26424_3_lut.init = 16'hcaca;
    ORCALUT4 i26420_3_lut (.A(RegsH_6_5), .B(RegsH_7_5), .C(RegAddrC[0]), 
            .Z(n28156)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26420_3_lut.init = 16'hcaca;
    ORCALUT4 i26419_3_lut (.A(RegsH_4_5), .B(RegsH_5_5), .C(RegAddrC[0]), 
            .Z(n28155)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26419_3_lut.init = 16'hcaca;
    ORCALUT4 i26418_3_lut (.A(RegsH_2_5), .B(RegsH_3_5), .C(RegAddrC[0]), 
            .Z(n28154)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26418_3_lut.init = 16'hcaca;
    ORCALUT4 i26417_3_lut (.A(RegsH_0_5), .B(RegsH_1_5), .C(RegAddrC[0]), 
            .Z(n28153)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26417_3_lut.init = 16'hcaca;
    ORCALUT4 i26413_3_lut (.A(RegsH_6_6), .B(RegsH_7_6), .C(RegAddrC[0]), 
            .Z(n28149)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26413_3_lut.init = 16'hcaca;
    ORCALUT4 i26412_3_lut (.A(RegsH_4_6), .B(RegsH_5_6), .C(RegAddrC[0]), 
            .Z(n28148)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26412_3_lut.init = 16'hcaca;
    ORCALUT4 i26411_3_lut (.A(RegsH_2_6), .B(RegsH_3_6), .C(RegAddrC[0]), 
            .Z(n28147)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26411_3_lut.init = 16'hcaca;
    ORCALUT4 i26410_3_lut (.A(RegsH_0_6), .B(RegsH_1_6), .C(RegAddrC[0]), 
            .Z(n28146)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26410_3_lut.init = 16'hcaca;
    ORCALUT4 i26406_3_lut (.A(RegsH_6_7), .B(RegsH_7_7), .C(RegAddrC[0]), 
            .Z(n28142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26406_3_lut.init = 16'hcaca;
    ORCALUT4 i26405_3_lut (.A(RegsH_4_7), .B(RegsH_5_7), .C(RegAddrC[0]), 
            .Z(n28141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26405_3_lut.init = 16'hcaca;
    ORCALUT4 i26404_3_lut (.A(RegsH_2_7), .B(RegsH_3_7), .C(RegAddrC[0]), 
            .Z(n28140)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26404_3_lut.init = 16'hcaca;
    PFUMX i26359 (.BLUT(n28092), .ALUT(n28093), .C0(RegAddrC[1]), .Z(n28095));
    ORCALUT4 i26403_3_lut (.A(RegsH_0_7), .B(RegsH_1_7), .C(RegAddrC[0]), 
            .Z(n28139)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26403_3_lut.init = 16'hcaca;
    ORCALUT4 i26399_3_lut (.A(RegsL_6_0), .B(RegsL_7_0), .C(RegAddrC[0]), 
            .Z(n28135)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26399_3_lut.init = 16'hcaca;
    ORCALUT4 i26398_3_lut (.A(RegsL_4_0), .B(RegsL_5_0), .C(RegAddrC[0]), 
            .Z(n28134)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26398_3_lut.init = 16'hcaca;
    ORCALUT4 i26397_3_lut (.A(RegsL_2_0), .B(RegsL_3_0), .C(RegAddrC[0]), 
            .Z(n28133)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26397_3_lut.init = 16'hcaca;
    ORCALUT4 i26396_3_lut (.A(RegsL_0_0), .B(RegsL_1_0), .C(RegAddrC[0]), 
            .Z(n28132)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26396_3_lut.init = 16'hcaca;
    ORCALUT4 i26392_3_lut (.A(RegsL_6_1), .B(RegsL_7_1), .C(RegAddrC[0]), 
            .Z(n28128)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26392_3_lut.init = 16'hcaca;
    ORCALUT4 i26391_3_lut (.A(RegsL_4_1), .B(RegsL_5_1), .C(RegAddrC[0]), 
            .Z(n28127)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26391_3_lut.init = 16'hcaca;
    ORCALUT4 i26390_3_lut (.A(RegsL_2_1), .B(RegsL_3_1), .C(RegAddrC[0]), 
            .Z(n28126)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26390_3_lut.init = 16'hcaca;
    ORCALUT4 i26389_3_lut (.A(RegsL_0_1), .B(RegsL_1_1), .C(RegAddrC[0]), 
            .Z(n28125)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26389_3_lut.init = 16'hcaca;
    ORCALUT4 i26385_3_lut (.A(RegsL_6_2), .B(RegsL_7_2), .C(RegAddrC[0]), 
            .Z(n28121)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26385_3_lut.init = 16'hcaca;
    ORCALUT4 i26384_3_lut (.A(RegsL_4_2), .B(RegsL_5_2), .C(RegAddrC[0]), 
            .Z(n28120)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26384_3_lut.init = 16'hcaca;
    ORCALUT4 i26383_3_lut (.A(RegsL_2_2), .B(RegsL_3_2), .C(RegAddrC[0]), 
            .Z(n28119)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26383_3_lut.init = 16'hcaca;
    ORCALUT4 i26382_3_lut (.A(RegsL_0_2), .B(RegsL_1_2), .C(RegAddrC[0]), 
            .Z(n28118)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26382_3_lut.init = 16'hcaca;
    ORCALUT4 i26378_3_lut (.A(RegsL_6_3), .B(RegsL_7_3), .C(RegAddrC[0]), 
            .Z(n28114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26378_3_lut.init = 16'hcaca;
    ORCALUT4 i26377_3_lut (.A(RegsL_4_3), .B(RegsL_5_3), .C(RegAddrC[0]), 
            .Z(n28113)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26377_3_lut.init = 16'hcaca;
    ORCALUT4 i26376_3_lut (.A(RegsL_2_3), .B(RegsL_3_3), .C(RegAddrC[0]), 
            .Z(n28112)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26376_3_lut.init = 16'hcaca;
    ORCALUT4 i26375_3_lut (.A(RegsL_0_3), .B(RegsL_1_3), .C(RegAddrC[0]), 
            .Z(n28111)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26375_3_lut.init = 16'hcaca;
    ORCALUT4 i26371_3_lut (.A(RegsL_6_4), .B(RegsL_7_4), .C(RegAddrC[0]), 
            .Z(n28107)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26371_3_lut.init = 16'hcaca;
    ORCALUT4 i26370_3_lut (.A(RegsL_4_4), .B(RegsL_5_4), .C(RegAddrC[0]), 
            .Z(n28106)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26370_3_lut.init = 16'hcaca;
    ORCALUT4 i26369_3_lut (.A(RegsL_2_4), .B(RegsL_3_4), .C(RegAddrC[0]), 
            .Z(n28105)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26369_3_lut.init = 16'hcaca;
    ORCALUT4 i26368_3_lut (.A(RegsL_0_4), .B(RegsL_1_4), .C(RegAddrC[0]), 
            .Z(n28104)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26368_3_lut.init = 16'hcaca;
    ORCALUT4 i26364_3_lut (.A(RegsL_6_5), .B(RegsL_7_5), .C(RegAddrC[0]), 
            .Z(n28100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26364_3_lut.init = 16'hcaca;
    ORCALUT4 i26363_3_lut (.A(RegsL_4_5), .B(RegsL_5_5), .C(RegAddrC[0]), 
            .Z(n28099)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26363_3_lut.init = 16'hcaca;
    PFUMX i26260 (.BLUT(n27992), .ALUT(n27993), .C0(\RegAddrB[1] ), .Z(n27996));
    L6MUX21 i26290 (.D0(n28024), .D1(n28025), .SD(\RegAddrB[2] ), .Z(RegBusB[1]));
    L6MUX21 i26297 (.D0(n28031), .D1(n28032), .SD(\RegAddrB[2] ), .Z(RegBusB[0]));
    L6MUX21 i26304 (.D0(n28038), .D1(n28039), .SD(\RegAddrB[2] ), .Z(RegBusB[8]));
    L6MUX21 i26241 (.D0(n27975), .D1(n27976), .SD(\RegAddrB[2] ), .Z(RegBusB[9]));
    L6MUX21 i26248 (.D0(n27982), .D1(n27983), .SD(\RegAddrB[2] ), .Z(RegBusB[7]));
    L6MUX21 i26255 (.D0(n27989), .D1(n27990), .SD(\RegAddrB[2] ), .Z(RegBusB[6]));
    L6MUX21 i26311 (.D0(n28045), .D1(n28046), .SD(\RegAddrB[2] ), .Z(RegBusB[11]));
    PFUMX i26261 (.BLUT(n27994), .ALUT(n27995), .C0(\RegAddrB[1] ), .Z(n27997));
    
endmodule
//
// Verilog Description of module tv80_mcode
//

module tv80_mcode (\IR[0] , ISet, \Set_BusA_To_3__N_1230[0] , \IR[7] , 
            \IR[6] , n31244, n31345, n31255, n31234, \Prefix[0] , 
            n1, \IR[5] , n25924, \ALU_Op[3] , \IR[4] , n31233, n31288, 
            n33927, n31163, n6, n31167, n2, n3, n31190, SP, 
            di_reg, n27408, n33948, n33950, \IR[1] , n25923, \ALU_Op_3__N_1297[3] , 
            n4, n31293, n33946, n33958, n31051, Set_Addr_To_2__N_1441, 
            n27863, \IR[2] , n7, n33923, n26017, n31226, n25978, 
            n31247, n31289, n31276, n33942, \Set_BusB_To[1] , n31272, 
            n31123, n33954, n33952, n31246, n33944, n31088, n31257, 
            n31268, \Set_BusB_To[0] , \PC[8] , \PC[0] , \PC[9] , \PC[1] , 
            n13, \PC[10] , \PC[2] , n13_adj_5, \PC[11] , \PC[3] , 
            n13_adj_6, \PC[12] , \PC[4] , n13_adj_7, \PC[13] , \PC[5] , 
            n13_adj_8, \PC[14] , \PC[6] , n13_adj_9, n30985, \PC[7] , 
            n31127, \F[0] , n10, \F[7] , n16293, \F[2] , \F[6] , 
            n3_adj_10, n4_adj_11, last_tstate_keep, Set_BusA_To, Read_To_Acc, 
            \Read_To_Reg_r_4__N_717[0] , n33956, n19, n61, n37, n27164, 
            n26946, n31150, n31290, n31250, BusB, n8, n31299, 
            n27529, n90, n31024, n31027, n27603, \ALU_Q[3] , \F[3] , 
            n1000, \ALU_Q[1] , \F[5] , n998, n31149, \BusA[6] , 
            \BusA[7] , n30081, n33929, n27332, n31213, n33930, PreserveC, 
            n31153, n31173, n31315, n3284, n31291, n100, n25907, 
            n31060, n23, n31152, n31061, n25904, n31075, n55, 
            \tstate[2] , n6_adj_12, n2670, n33924, JumpE, \PC16_B_15__N_557[15] , 
            n31172, n31072, n31081, n5, \IncDec_16_3__N_1044[3] , 
            n31097, n31217, n31111, n27040, n25070, n23_adj_13, 
            n29, iorq, n10_adj_14, n45, n31218, n31136, n31307, 
            \tstate[1] , n30999, n31278, \Set_Addr_To_2__N_1072[2] , 
            n30974, n30975, n31282, n33925, n31078, n1177, n29902, 
            \BusA[0] , \BusA[3] , \BusA[2] , \BusA[1] , n30962, n10_adj_15, 
            n12250, n14, n14_adj_16, n14_adj_17, n14_adj_18, n14_adj_19, 
            n31107, n25853, n14_adj_20, \tstate[3]_keep , n7_adj_21, 
            n6_adj_22, n31322, Call_N_1537, n26594, n26156, n27160, 
            write, n31228, n31019, \tstate[4]_keep , n31018, n3_adj_23, 
            n10142, n8_adj_24, n26000, n26532, n31254, ACC, n23595, 
            n25706, n100_adj_25, n23577, n23583, n23585, n23589, 
            n23587, n23591, n23593, n31296, n31137, \Set_BusB_To[3] , 
            n31068, Alternate, Alternate_N_907, n9117, n31222, n27101, 
            n31195, \ISet_1__N_633[0] , clk_op_enable_218, n26764, n12, 
            n31231, n31262, n31124, n25912, n31260, n31048, n31317, 
            n31132, n26668, n31079, n17001, stop, n294, Jump, 
            n10145, TStates_2__N_1435, n25995, n26754, \Set_Addr_To_2__N_1441[0] , 
            n23524, n27113, n31020, \RegAddrB_r[1] , \RegAddrB[1] , 
            n31023, n17316, \ALU_Op_3__N_1064[2] , n8_adj_26, \TStates_2__N_1432[1] , 
            n58, n25883, n3_adj_27, \ID16_B[15] , n26034, \IncDec_16[0] , 
            \Special_LD[0] , clk_op_enable_217, n17380, n10231, n48, 
            tstates, n56, \TStates_2__N_1438[1] , n26233, n13_adj_28, 
            mcycles_d, n50, n92, n10_adj_29, n8_adj_30, n27915, 
            n27883, n31120, n27905, Inc_WZ, n33932, n12185, n30972, 
            n27414, n25910, n27310, n8_adj_31, n27423, n27426, n9, 
            XY_Ind, n1660, n27429, n27453, n31065, n27450, n27447, 
            n27444, Halt_FF, n27543, n31066, n23_adj_32, n27441, 
            n36, n76, n27110, n27035, n27765, n30981, n27438, 
            n27435, n31193, Save_ALU, n46, \IncDec_16[1] , n34, 
            \IncDec_16[2] , n31101, n31095, n31058, NoRead_N_1567, 
            n27405, n31059, n31178, n27011, n4_adj_33, n27432, n27411, 
            n28, \Read_To_Reg_r_4__N_717[2] , \Read_To_Reg_r_4__N_717[1] , 
            n31067, n16668, n10174, clk_op_enable_228, n8_adj_34, 
            n30967, n30261, n30260, n31040, n5_adj_35, n31370, n31362) /* synthesis syn_module_defined=1 */ ;
    input \IR[0] ;
    input [1:0]ISet;
    input \Set_BusA_To_3__N_1230[0] ;
    input \IR[7] ;
    input \IR[6] ;
    output n31244;
    output n31345;
    output n31255;
    output n31234;
    output \Prefix[0] ;
    output n1;
    input \IR[5] ;
    output n25924;
    output \ALU_Op[3] ;
    input \IR[4] ;
    output n31233;
    output n31288;
    output n33927;
    input n31163;
    input n6;
    output n31167;
    input n2;
    input n3;
    output n31190;
    input [15:0]SP;
    input [7:0]di_reg;
    output n27408;
    input n33948;
    input n33950;
    input \IR[1] ;
    output n25923;
    input \ALU_Op_3__N_1297[3] ;
    input n4;
    output n31293;
    input n33946;
    input n33958;
    output n31051;
    output [2:0]Set_Addr_To_2__N_1441;
    output n27863;
    input \IR[2] ;
    input n7;
    input n33923;
    output n26017;
    output n31226;
    output n25978;
    output n31247;
    input n31289;
    output n31276;
    input n33942;
    output \Set_BusB_To[1] ;
    output n31272;
    output n31123;
    input n33954;
    input n33952;
    input n31246;
    input n33944;
    input n31088;
    output n31257;
    output n31268;
    output \Set_BusB_To[0] ;
    input \PC[8] ;
    input \PC[0] ;
    input \PC[9] ;
    input \PC[1] ;
    output n13;
    input \PC[10] ;
    input \PC[2] ;
    output n13_adj_5;
    input \PC[11] ;
    input \PC[3] ;
    output n13_adj_6;
    input \PC[12] ;
    input \PC[4] ;
    output n13_adj_7;
    input \PC[13] ;
    input \PC[5] ;
    output n13_adj_8;
    input \PC[14] ;
    input \PC[6] ;
    output n13_adj_9;
    output n30985;
    input \PC[7] ;
    output n31127;
    input \F[0] ;
    output n10;
    input \F[7] ;
    output n16293;
    input \F[2] ;
    input \F[6] ;
    output n3_adj_10;
    output n4_adj_11;
    input last_tstate_keep;
    output [3:0]Set_BusA_To;
    output Read_To_Acc;
    output \Read_To_Reg_r_4__N_717[0] ;
    input n33956;
    input n19;
    input n61;
    output n37;
    input n27164;
    input n26946;
    output n31150;
    output n31290;
    output n31250;
    input [7:0]BusB;
    input n8;
    output n31299;
    output n27529;
    output n90;
    output n31024;
    input n31027;
    output n27603;
    input \ALU_Q[3] ;
    input \F[3] ;
    output n1000;
    input \ALU_Q[1] ;
    input \F[5] ;
    output n998;
    output n31149;
    input \BusA[6] ;
    input \BusA[7] ;
    output n30081;
    output n33929;
    output n27332;
    output n31213;
    output n33930;
    output PreserveC;
    output n31153;
    output n31173;
    output n31315;
    output n3284;
    output n31291;
    input n100;
    output n25907;
    input n31060;
    output n23;
    output n31152;
    output n31061;
    output n25904;
    output n31075;
    output n55;
    input \tstate[2] ;
    input n6_adj_12;
    output n2670;
    output n33924;
    output JumpE;
    input \PC16_B_15__N_557[15] ;
    input n31172;
    output n31072;
    output n31081;
    input n5;
    output \IncDec_16_3__N_1044[3] ;
    output n31097;
    output n31217;
    output n31111;
    input n27040;
    output n25070;
    input n23_adj_13;
    input n29;
    output iorq;
    input n10_adj_14;
    output n45;
    output n31218;
    output n31136;
    input n31307;
    input \tstate[1] ;
    output n30999;
    output n31278;
    output \Set_Addr_To_2__N_1072[2] ;
    output n30974;
    output n30975;
    output n31282;
    output n33925;
    output n31078;
    output [7:0]n1177;
    output n29902;
    input \BusA[0] ;
    input \BusA[3] ;
    input \BusA[2] ;
    input \BusA[1] ;
    input n30962;
    output n10_adj_15;
    output n12250;
    output n14;
    output n14_adj_16;
    output n14_adj_17;
    output n14_adj_18;
    output n14_adj_19;
    output n31107;
    output n25853;
    output n14_adj_20;
    input \tstate[3]_keep ;
    output n7_adj_21;
    input n6_adj_22;
    output n31322;
    output Call_N_1537;
    output n26594;
    input n26156;
    output n27160;
    output write;
    output n31228;
    output n31019;
    input \tstate[4]_keep ;
    output n31018;
    input n3_adj_23;
    output n10142;
    output n8_adj_24;
    output n26000;
    output n26532;
    output n31254;
    input [7:0]ACC;
    output n23595;
    input n25706;
    output n100_adj_25;
    output n23577;
    output n23583;
    output n23585;
    output n23589;
    output n23587;
    output n23591;
    output n23593;
    output n31296;
    output n31137;
    output \Set_BusB_To[3] ;
    output n31068;
    input Alternate;
    output Alternate_N_907;
    input n9117;
    output n31222;
    output n27101;
    input n31195;
    output \ISet_1__N_633[0] ;
    output clk_op_enable_218;
    output n26764;
    output n12;
    output n31231;
    output n31262;
    output n31124;
    output n25912;
    output n31260;
    output n31048;
    output n31317;
    output n31132;
    output n26668;
    output n31079;
    output n17001;
    output stop;
    input n294;
    output Jump;
    output n10145;
    input [2:0]TStates_2__N_1435;
    input n25995;
    output n26754;
    output \Set_Addr_To_2__N_1441[0] ;
    output n23524;
    output n27113;
    output n31020;
    input \RegAddrB_r[1] ;
    output \RegAddrB[1] ;
    output n31023;
    output n17316;
    input \ALU_Op_3__N_1064[2] ;
    output n8_adj_26;
    input \TStates_2__N_1432[1] ;
    output n58;
    output n25883;
    output n3_adj_27;
    output \ID16_B[15] ;
    output n26034;
    output \IncDec_16[0] ;
    output \Special_LD[0] ;
    output clk_op_enable_217;
    input n17380;
    output n10231;
    input n48;
    output [2:0]tstates;
    input n56;
    input \TStates_2__N_1438[1] ;
    output n26233;
    output n13_adj_28;
    output [2:0]mcycles_d;
    input n50;
    output n92;
    output n10_adj_29;
    output n8_adj_30;
    input n27915;
    output n27883;
    input n31120;
    output n27905;
    output Inc_WZ;
    input n33932;
    input n12185;
    output n30972;
    output n27414;
    output n25910;
    output n27310;
    output n8_adj_31;
    output n27423;
    output n27426;
    input n9;
    input XY_Ind;
    output n1660;
    output n27429;
    output n27453;
    output n31065;
    output n27450;
    output n27447;
    output n27444;
    input Halt_FF;
    output n27543;
    output n31066;
    output n23_adj_32;
    output n27441;
    input n36;
    output n76;
    output n27110;
    output n27035;
    output n27765;
    output n30981;
    output n27438;
    output n27435;
    output n31193;
    output Save_ALU;
    output n46;
    output \IncDec_16[1] ;
    input n34;
    output \IncDec_16[2] ;
    output n31101;
    output n31095;
    output n31058;
    output NoRead_N_1567;
    output n27405;
    output n31059;
    input n31178;
    output n27011;
    output n4_adj_33;
    output n27432;
    output n27411;
    input n28;
    output \Read_To_Reg_r_4__N_717[2] ;
    output \Read_To_Reg_r_4__N_717[1] ;
    output n31067;
    input n16668;
    output n10174;
    output clk_op_enable_228;
    output n8_adj_34;
    output n30967;
    input n30261;
    input n30260;
    output n31040;
    output n5_adj_35;
    output n31370;
    input n31362;
    
    
    wire n9399, n8959, n30485, n4_c, n31270, n31313, n31245, n31036, 
        n31343, n31344, n41, n9377, n31176, n26536, n8_c, n9_c, 
        n31238, n30995, n31047, n13_c, n12_c, n8_adj_1830;
    wire [3:0]ALU_Op_3__N_1068;
    
    wire n31340, n31341, n31342, n31175, n27279, n26128, n31109, 
        n33935, n31113, n4_adj_1831, n38;
    wire [2:0]Set_Addr_To_2__N_1072;
    
    wire n31201, n33933, n26838, n33934, n3_adj_1832, n25945, n17, 
        n31033, n9713, n26618, n8936, n31237, n31055, n31125, 
        n26404, n31087, n31116, n31171, n28974, n9114, n617, n30960, 
        n9113, n633, n9134, n9133, n21, n4213;
    wire [2:0]Set_Addr_To_2__N_1441_c;
    
    wire n31447, n31353, n31352, n31449, n31450, n31361, n31364, 
        n26904, n15, n20, n31366, n31365, n31240, n31369, n31368, 
        n15_adj_1834, n33427, n33919, n31312, n31311, n17039, n4_adj_1835, 
        n31258, n35, n31056, n31196, n30140, n2_adj_1836, n17035, 
        n30141, n31106, n31105, n31375, n31374, n31292, n31284, 
        n15_adj_1837, n31285, n15_adj_1838, n31263, n23512, MCycles_2__N_1093;
    wire [3:0]Set_BusB_To_3__N_1056;
    
    wire n10164, n9164, n18, n30;
    wire [3:0]Set_BusB_To_3__N_1428;
    wire [3:0]Set_BusB_To_3__N_1424;
    
    wire n26892, n16, n26906, n23950, n31310, n25984, n12_adj_1839, 
        n8_adj_1840, n15_adj_1841, n9_adj_1842, n55_c, n26769, n3_adj_1843, 
        n31256, n23347, n31286, n31121, n31130, n31161, n16657, 
        n13_adj_1844, n31277, n31155, n4_adj_1851, n4_adj_1852, n31267, 
        n31128, n31126, n31089, n31162, n31164, n9_adj_1853, n6_adj_1854, 
        n31144, n12_adj_1857, n6_adj_1858, n8_adj_1859, n8_adj_1860, 
        n9166, n28_c, n11, n12_adj_1861, n6_adj_1862, n31236, n3_adj_1863, 
        n25;
    wire [3:0]Set_BusA_To_3__N_1199;
    
    wire n31086, n31085, n9416, n9_adj_1864, n54, n27001, n31042, 
        n31122;
    wire [3:0]Set_BusA_To_3__N_1388;
    
    wire n4_adj_1865, n59, n26870, n29_c, n31053, n17444, n31157, 
        n17134, n27299, n8032, n25726;
    wire [2:0]n894;
    
    wire n26788, n8207, n26759, n11_adj_1866, Read_To_Acc_N_1492, 
        n4_adj_1867, n31007, n8948, n26786, n27225, n31006, n26890, 
        n8_adj_1868, n31239, Inc_PC_N_1453, n31273, n17_adj_1869, 
        n24, n9414, n31303, n31014, n26261, n31168, n31094, n33931, 
        n31084, n68, n26681, n31004, n31166, n26088, n4_adj_1871, 
        n9279, n31002, n8384, n31076, n31274, n33928, n17_adj_1872, 
        n31090, n9576, n8385, n5_c, n1_adj_1873, n31251, n25943, 
        n4_adj_1874, n26792, n31160, n31269, n15_adj_1875, n31448, 
        n16_adj_1876, n10_adj_1877, n5_adj_1878, NoRead_N_1570, n31032, 
        n31082, n4_adj_1879, n13844, n21_adj_1880, n30487, n26925, 
        n13_adj_1881, n30490, n30491, n25940, n9128, n23_c, n26;
    wire [3:0]Set_BusA_To_3__N_1052;
    
    wire n31041, n31451, n31203, n30494, n30495, n12_adj_1882, n4_adj_1883, 
        Save_ALU_N_1498, n31092, n31140, n28972, n31091, Read_To_Reg_N_1480, 
        n4_adj_1884, n8_adj_1885, n6_adj_1886, n13_adj_1887, n30504, 
        n55_adj_1888, n9734, n30959, n28973, Read_To_Reg_N_1472, n31038, 
        n26758, n23361, n4928, n4_adj_1890, n27157, n30262, n50_c, 
        n7_adj_1891, n8_adj_1894, n6370, n31100, n31147, n31146, 
        n31308, n61_adj_1895, n31334, n31335, n8968, n13_adj_1896, 
        n11_adj_1897, n4_adj_1899, n24_adj_1900, n50_adj_1901, n31264, 
        n15_adj_1902, n30996, n15_adj_1903, n31151, n31174, n31037, 
        n30990, n31158, n26564, n27322, n4_adj_1904, n31179, n31156, 
        n4_adj_1905, n31261;
    wire [2:0]MCycles_2__N_1032;
    
    wire n31093, n26708, n4_adj_1906, n8_adj_1907, n31363, n6_adj_1908, 
        n4_adj_1909, n6_adj_1910, n26119, Read_To_Reg_N_1484, n14_c, 
        n6_adj_1911, n4_adj_1912, n17354, n30997, n16514, n25925, 
        n27111, n31354, n53, n31184, n31367, n30484, n31275, n31, 
        n26779, IORQ_N_1507, n3276, n30192, n20_adj_1916, n8_adj_1917, 
        n8975, n31169, n9_adj_1918, n10_adj_1919, n8_adj_1920, n31083, 
        n29641, n29638, n29642, n1_adj_1921, n6_adj_1922, n9537, 
        n57, n30492, n9_adj_1923, n14_adj_1924, n10_adj_1925, n30533, 
        n3_adj_1926, n31010, n26665, n31015, n18_adj_1927, n14_adj_1928, 
        n31118;
    wire [2:0]MCycles_2__N_1026;
    
    wire n25_adj_1929, n26030, n17_adj_1930, n33036, n23349, n8_adj_1931, 
        n26169, n8_adj_1932, n3_adj_1933, n4_adj_1934, n31031, n3_adj_1935, 
        n27295, n8_adj_1937, n31283, n33035, n29455, n27354, n31080, 
        n12_adj_1939, n4_adj_1946, n31198, n27356, n6_adj_1948, n8_adj_1949, 
        n27252, n31102, n26154, n22;
    wire [3:0]ALU_Op_3__N_1060;
    
    wire n5_adj_1950, n31129, n30994, n31241, n31183, n30508, n33432, 
        n26389, n31197, n31199, n33922, n33433, n11_adj_1951, n27390, 
        n8_adj_1952, n33920, n9528, n16_adj_1953, n12_adj_1954;
    wire [2:0]TStates_2__N_1432;
    
    wire n21_adj_1955, n30193, n30531, n27, n9127, n20_adj_1956, 
        n33936, n31185;
    wire [3:0]ALU_Op_3__N_1064;
    
    wire n8977, n31003, n31170, n31114, n26457, n53_adj_1959, n31242, 
        n31154, n31204, n33040, n31249, n23627, n26883, n8_adj_1960, 
        n22_adj_1962, n29_adj_1963, n29639, n30489;
    wire [3:0]IncDec_16_3__N_1044;
    
    wire n31046, n8_adj_1964, n27_adj_1965, n6_adj_1966, n9551, n31013, 
        n25720, n31253, n31243, n10_adj_1968, n26427, n31028, n30532;
    wire [2:0]MCycles_2__N_1029;
    
    wire n6_adj_1969;
    wire [2:0]n408;
    
    wire n31017, n26124, n31141, n30987, n6_adj_1970, n5_adj_1971, 
        n10_adj_1972, n30992, n15_adj_1973, n31117, n17130, n17430, 
        n27359, n14_adj_1974, n15_adj_1975, n8_adj_1976, n7_adj_1977, 
        n31232, Write_N_1574, n26903, n37_adj_1978, n31119, n31009, 
        n31052, n4051, n4734, n9_adj_1979, n26372, n8_adj_1981, 
        n31005, n30958, n17350, n7_adj_1982, n33041, n11_adj_1984, 
        n12_adj_1985, n8_adj_1986, n25953, n59_adj_1987, n48_adj_1988, 
        n92_c, n11_adj_1989, n27394, n9_adj_1990, n17358, n27328, 
        n31054, n26443, n17263, n31064, n17286, n9_adj_1996, n16452, 
        n23237, n9563, n25926, n26496, n15_adj_1997, n8_adj_1999, 
        n56_adj_2000, n6_adj_2001, n60, n14_adj_2002, n24_adj_2003, 
        n26065, n17066, n27305, n11_adj_2005, n10_adj_2006, n26818, 
        n9490, n12_adj_2007, n27285;
    wire [2:0]MCycles_2__N_1185;
    
    wire n3_adj_2009, Jump_N_1533, n31035, n44, n9081, n8_adj_2010, 
        n17270, n23_adj_2011, n28_adj_2012, n27400, n23_adj_2013, 
        n24_adj_2014, n27388, n27190, n22_adj_2016, n27301, n6_adj_2017, 
        n16_adj_2018, n26753, n11_adj_2020, n10_adj_2021, n26178, 
        n25894, n18_adj_2022, n4_adj_2023, n26657, n27398, n20_adj_2025, 
        n27378;
    wire [3:0]Set_BusA_To_3__N_1210;
    
    wire n25718, n24_adj_2026, n12_adj_2027, n12_adj_2028;
    
    ORCALUT4 n21_bdd_3_lut_28345_3_lut_4_lut (.A(\IR[0] ), .B(n9399), .C(n8959), 
            .D(ISet[0]), .Z(n30485)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1091[15:26])
    defparam n21_bdd_3_lut_28345_3_lut_4_lut.init = 16'h00f2;
    ORCALUT4 i1_2_lut_3_lut_3_lut (.A(\Set_BusA_To_3__N_1230[0] ), .B(\IR[7] ), 
            .C(\IR[6] ), .Z(n4_c)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4040;
    ORCALUT4 i1_2_lut_rep_449_3_lut_4_lut (.A(n31270), .B(n31313), .C(n31245), 
            .D(n31244), .Z(n31036)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i1_2_lut_rep_449_3_lut_4_lut.init = 16'hf1ff;
    PFUMX i28489 (.BLUT(n31343), .ALUT(n31344), .C0(\Set_BusA_To_3__N_1230[0] ), 
          .Z(n31345));
    ORCALUT4 i3_4_lut (.A(n41), .B(n9377), .C(n31176), .D(n26536), .Z(n8_c)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hbbbf;
    ORCALUT4 i5_4_lut (.A(n9_c), .B(n31238), .C(n30995), .D(n31047), 
            .Z(n13_c)) /* synthesis lut_function=(A+(B (C)+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i5_4_lut.init = 16'hfafb;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(n31270), .B(n31313), .C(n31255), 
            .D(n31234), .Z(n12_c)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_3_lut (.A(\Prefix[0] ), .B(n1), .C(\IR[5] ), .Z(n25924)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_3_lut.init = 16'h0808;
    PFUMX i21 (.BLUT(n8_adj_1830), .ALUT(ALU_Op_3__N_1068[3]), .C0(ISet[1]), 
          .Z(\ALU_Op[3] ));
    PFUMX i28487 (.BLUT(n31340), .ALUT(n31341), .C0(\Set_BusA_To_3__N_1230[0] ), 
          .Z(n31342));
    ORCALUT4 i25546_3_lut_4_lut_4_lut_3_lut (.A(\IR[4] ), .B(\IR[5] ), .C(n31175), 
            .Z(n27279)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i25546_3_lut_4_lut_4_lut_3_lut.init = 16'hf4f4;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(n31233), 
            .D(n31288), .Z(n26128)) /* synthesis lut_function=(A (B+(C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hf9ff;
    ORCALUT4 i1_4_lut_then_4_lut (.A(n31109), .B(n31233), .C(\IR[7] ), 
            .D(\IR[6] ), .Z(n33935)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_then_4_lut.init = 16'h0200;
    ORCALUT4 i1_4_lut (.A(n31113), .B(n33927), .C(n31163), .D(n6), .Z(n4_adj_1831)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut.init = 16'hdc50;
    ORCALUT4 MCycles_2__N_1083_I_0_1677_Select_0_i38_4_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), 
            .B(n31167), .C(n2), .D(n3), .Z(n38)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam MCycles_2__N_1083_I_0_1677_Select_0_i38_4_lut_4_lut.init = 16'h0302;
    ORCALUT4 i25672_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[2]), .D(di_reg[2]), .Z(n27408)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25672_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i2_4_lut_4_lut (.A(n33948), .B(n33950), .C(n31201), .D(n33933), 
            .Z(n26838)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;
    defparam i2_4_lut_4_lut.init = 16'hfff6;
    ORCALUT4 i1_4_lut_else_4_lut (.A(n31109), .B(\IR[7] ), .C(\IR[6] ), 
            .Z(n33934)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_else_4_lut.init = 16'h2020;
    PFUMX i39 (.BLUT(n3_adj_1832), .ALUT(n25945), .C0(\IR[1] ), .Z(n17));
    ORCALUT4 i1_2_lut_3_lut_adj_197 (.A(\Prefix[0] ), .B(n1), .C(\IR[5] ), 
            .Z(n25923)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_3_lut_adj_197.init = 16'h8080;
    ORCALUT4 Set_BusA_To_3__I_121_2_lut_rep_446_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n3), .D(n4), .Z(n31033)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam Set_BusA_To_3__I_121_2_lut_rep_446_3_lut_4_lut_4_lut.init = 16'h4544;
    PFUMX i7202 (.BLUT(n9713), .ALUT(n26618), .C0(\IR[0] ), .Z(n8936));
    ORCALUT4 i1_2_lut_rep_468_3_lut_4_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(n31237), .D(n31293), .Z(n31055)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_468_3_lut_4_lut_4_lut.init = 16'hfff1;
    ORCALUT4 i24691_2_lut_3_lut_4_lut_4_lut (.A(n4), .B(n3), .C(n2), .D(n31125), 
            .Z(n26404)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i24691_2_lut_3_lut_4_lut_4_lut.init = 16'hff0e;
    ORCALUT4 i1_3_lut_rep_500_4_lut_4_lut (.A(n4), .B(n3), .C(n2), .D(n33946), 
            .Z(n31087)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_3_lut_rep_500_4_lut_4_lut.init = 16'h000e;
    ORCALUT4 i1_2_lut_rep_529_3_lut_4_lut_3_lut_4_lut (.A(n33948), .B(\IR[5] ), 
            .C(\IR[6] ), .D(\IR[7] ), .Z(n31116)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i1_2_lut_rep_529_3_lut_4_lut_3_lut_4_lut.init = 16'h9fff;
    ORCALUT4 i27254_2_lut_rep_464_4_lut_4_lut (.A(n9399), .B(n33958), .C(n31171), 
            .Z(n31051)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;
    defparam i27254_2_lut_rep_464_4_lut_4_lut.init = 16'h4f4f;
    ORCALUT4 i26821_3_lut_4_lut (.A(\IR[6] ), .B(n28974), .C(n9114), .D(\IR[7] ), 
            .Z(n617)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i26821_3_lut_4_lut.init = 16'h0f77;
    ORCALUT4 i26803_3_lut_4_lut (.A(\IR[6] ), .B(n30960), .C(n9113), .D(\IR[7] ), 
            .Z(n633)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i26803_3_lut_4_lut.init = 16'h0f77;
    ORCALUT4 i2_4_lut_4_lut_4_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n3), .D(n4), .Z(n26618)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i2_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hfeff;
    PFUMX i11943 (.BLUT(n9134), .ALUT(n9133), .C0(\IR[1] ), .Z(n21));
    ORCALUT4 i27174_2_lut_3_lut_4_lut_4_lut (.A(n4213), .B(n31190), .C(Set_Addr_To_2__N_1441[1]), 
            .D(Set_Addr_To_2__N_1441_c[2]), .Z(n27863)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i27174_2_lut_3_lut_4_lut_4_lut.init = 16'hfeff;
    ORCALUT4 MCycle_2__I_0_1838_2_lut_rep_737 (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n3), .Z(n33927)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam MCycle_2__I_0_1838_2_lut_rep_737.init = 16'h1010;
    ORCALUT4 n3_bdd_4_lut_28553 (.A(n3), .B(n2), .C(\IR[4] ), .D(\IR[5] ), 
            .Z(n31447)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;
    defparam n3_bdd_4_lut_28553.init = 16'h000d;
    ORCALUT4 i22268_4_lut_4_lut_then_4_lut (.A(\IR[5] ), .B(n2), .C(n3), 
            .D(\IR[0] ), .Z(n31353)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;
    defparam i22268_4_lut_4_lut_then_4_lut.init = 16'h0054;
    ORCALUT4 i22268_4_lut_4_lut_else_4_lut (.A(\IR[0] ), .B(\ALU_Op_3__N_1297[3] ), 
            .Z(n31352)) /* synthesis lut_function=(A (B)) */ ;
    defparam i22268_4_lut_4_lut_else_4_lut.init = 16'h8888;
    ORCALUT4 n3_bdd_4_lut_28935 (.A(n3), .B(n2), .C(\IR[2] ), .D(\IR[5] ), 
            .Z(n31449)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;
    defparam n3_bdd_4_lut_28935.init = 16'h0e0f;
    ORCALUT4 IR_2__bdd_3_lut (.A(\IR[2] ), .B(n31449), .C(\IR[1] ), .Z(n31450)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam IR_2__bdd_3_lut.init = 16'hcaca;
    ORCALUT4 i2_4_lut_else_2_lut (.A(n7), .B(n33923), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n2), .Z(n31361)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_4_lut_else_2_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut (.A(n33946), .B(n33950), .Z(n26017)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut.init = 16'h2222;
    ORCALUT4 ALU_Op_3__N_1297_3__bdd_4_lut_28587 (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n3), .D(n4), .Z(n31364)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam ALU_Op_3__N_1297_3__bdd_4_lut_28587.init = 16'h5455;
    PFUMX i38 (.BLUT(n26904), .ALUT(n15), .C0(\IR[7] ), .Z(n20));
    ORCALUT4 n21_bdd_4_lut_28344_then_3_lut (.A(n2), .B(\ALU_Op_3__N_1297[3] ), 
            .C(n31226), .Z(n31366)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam n21_bdd_4_lut_28344_then_3_lut.init = 16'he0e0;
    ORCALUT4 n21_bdd_4_lut_28344_else_3_lut (.A(n2), .B(\ALU_Op_3__N_1297[3] ), 
            .C(n25978), .D(n3), .Z(n31365)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C (D))))) */ ;
    defparam n21_bdd_4_lut_28344_else_3_lut.init = 16'h3020;
    ORCALUT4 i97_then_4_lut (.A(n2), .B(n31240), .C(n3), .D(\ALU_Op_3__N_1297[3] ), 
            .Z(n31369)) /* synthesis lut_function=(!(A ((D)+!B)+!A ((C+(D))+!B))) */ ;
    defparam i97_then_4_lut.init = 16'h008c;
    ORCALUT4 i97_else_4_lut (.A(n2), .B(\IR[0] ), .C(\ALU_Op_3__N_1297[3] ), 
            .Z(n31368)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i97_else_4_lut.init = 16'h0101;
    ORCALUT4 n15_bdd_4_lut (.A(n15_adj_1834), .B(n3), .C(n33427), .D(n2), 
            .Z(n33919)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n15_bdd_4_lut.init = 16'hf088;
    ORCALUT4 i1_2_lut_4_lut (.A(n31288), .B(n31312), .C(n31311), .D(n17039), 
            .Z(n4_adj_1835)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1091[15:26])
    defparam i1_2_lut_4_lut.init = 16'hfd00;
    ORCALUT4 n17068_bdd_4_lut (.A(n31258), .B(n35), .C(n31056), .D(n31196), 
            .Z(n30140)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(C)) */ ;
    defparam n17068_bdd_4_lut.init = 16'h8faf;
    ORCALUT4 i1_2_lut_4_lut_adj_198 (.A(n31288), .B(n31312), .C(n31311), 
            .D(n31255), .Z(n2_adj_1836)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1091[15:26])
    defparam i1_2_lut_4_lut_adj_198.init = 16'h0200;
    ORCALUT4 pwr_bdd_2_lut_28062 (.A(n30140), .B(n17035), .Z(n30141)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam pwr_bdd_2_lut_28062.init = 16'hbbbb;
    ORCALUT4 i1_4_lut_then_4_lut_adj_199 (.A(n31106), .B(n2), .C(n31247), 
            .D(n31105), .Z(n31375)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_then_4_lut_adj_199.init = 16'h1131;
    ORCALUT4 i1_4_lut_else_4_lut_adj_200 (.A(n31106), .B(n2), .C(n31105), 
            .D(n4), .Z(n31374)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_else_4_lut_adj_200.init = 16'h1300;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_201 (.A(n31292), .B(n31284), .C(n31293), 
            .D(n31289), .Z(n15_adj_1837)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1190[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_201.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1600_i15_2_lut_3_lut_4_lut (.A(n31292), .B(n31284), 
            .C(n31293), .D(n31285), .Z(n15_adj_1838)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1190[15:26])
    defparam IR_7__I_0_1600_i15_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i2_3_lut_4_lut (.A(n31292), .B(n31284), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n31263), .Z(n23512)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1190[15:26])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i27202_2_lut_3_lut_4_lut (.A(n31292), .B(n31284), .C(n31293), 
            .D(n31276), .Z(MCycles_2__N_1093)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1190[15:26])
    defparam i27202_2_lut_3_lut_4_lut.init = 16'h0100;
    ORCALUT4 Set_BusB_To_3__I_0_i2_3_lut (.A(Set_BusB_To_3__N_1056[1]), .B(n33942), 
            .C(n10164), .Z(\Set_BusB_To[1] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam Set_BusB_To_3__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(\IR[0] ), .B(n31272), .C(n31123), 
            .D(\ALU_Op_3__N_1297[3] ), .Z(n9164)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i8317_3_lut (.A(ISet[0]), .B(n7), .C(ISet[1]), .Z(n10164)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i8317_3_lut.init = 16'hcece;
    ORCALUT4 i48_4_lut (.A(n18), .B(n33954), .C(n33952), .D(n30), .Z(Set_BusB_To_3__N_1428[2])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i48_4_lut.init = 16'h3a0a;
    ORCALUT4 i21_4_lut (.A(Set_BusB_To_3__N_1424[2]), .B(\IR[2] ), .C(n10164), 
            .D(ISet[0]), .Z(Set_BusB_To_3__N_1056[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i21_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_4_lut_adj_202 (.A(n26892), .B(n16), .C(n26906), .D(n33942), 
            .Z(n30)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_adj_202.init = 16'hfaee;
    ORCALUT4 i2_4_lut (.A(n23950), .B(n31310), .C(n25984), .D(\IR[1] ), 
            .Z(n26892)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_4_lut.init = 16'hc088;
    ORCALUT4 i2_4_lut_adj_203 (.A(n31087), .B(n31240), .C(n31246), .D(n33944), 
            .Z(n26906)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_4_lut_adj_203.init = 16'hc088;
    ORCALUT4 i6_4_lut (.A(n31088), .B(n12_adj_1839), .C(n8_adj_1840), 
            .D(n15_adj_1841), .Z(Set_BusB_To_3__N_1424[2])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i6_4_lut.init = 16'hfcfe;
    ORCALUT4 i5_4_lut_adj_204 (.A(n9_adj_1842), .B(n55_c), .C(\IR[2] ), 
            .D(n26769), .Z(n12_adj_1839)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i5_4_lut_adj_204.init = 16'hfeee;
    ORCALUT4 select_825_Select_2_i55_4_lut (.A(n3_adj_1843), .B(n9377), 
            .C(\IR[5] ), .D(\ALU_Op_3__N_1297[3] ), .Z(n55_c)) /* synthesis lut_function=(!(A (B)+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam select_825_Select_2_i55_4_lut.init = 16'h3222;
    ORCALUT4 i2_4_lut_adj_205 (.A(n31257), .B(n33933), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n31256), .Z(n23347)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(280[24] 311[24])
    defparam i2_4_lut_adj_205.init = 16'h2022;
    ORCALUT4 i1_2_lut_rep_534_3_lut_4_lut (.A(n31285), .B(n31288), .C(n31286), 
            .D(n33944), .Z(n31121)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i1_2_lut_rep_534_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 IR_7__I_0_1615_i15_2_lut_rep_543_3_lut_4_lut (.A(n31285), .B(n31288), 
            .C(n31284), .D(n31268), .Z(n31130)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam IR_7__I_0_1615_i15_2_lut_rep_543_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 IR_7__I_0_1610_i15_2_lut_3_lut_4_lut (.A(n31292), .B(n31313), 
            .C(n31293), .D(n31289), .Z(n15_adj_1841)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(567[15:26])
    defparam IR_7__I_0_1610_i15_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1604_i15_2_lut_rep_574_3_lut_4_lut (.A(n31292), .B(n31313), 
            .C(n31293), .D(n31276), .Z(n31161)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(567[15:26])
    defparam IR_7__I_0_1604_i15_2_lut_rep_574_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_206 (.A(n31292), .B(n31313), .C(n31293), 
            .D(n33950), .Z(n16657)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(567[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_206.init = 16'hfffe;
    ORCALUT4 i14915_4_lut_4_lut (.A(\Set_BusB_To[1] ), .B(\Set_BusB_To[0] ), 
            .C(\PC[8] ), .D(\PC[0] ), .Z(n13_adj_1844)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i14915_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i14791_4_lut_4_lut (.A(\Set_BusB_To[1] ), .B(\Set_BusB_To[0] ), 
            .C(\PC[9] ), .D(\PC[1] ), .Z(n13)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i14791_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i14794_4_lut_4_lut (.A(\Set_BusB_To[1] ), .B(\Set_BusB_To[0] ), 
            .C(\PC[10] ), .D(\PC[2] ), .Z(n13_adj_5)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i14794_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i1_2_lut_rep_568_3_lut_4_lut (.A(n31286), .B(n31277), .C(n31293), 
            .D(n31289), .Z(n31155)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_568_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i14799_4_lut_4_lut (.A(\Set_BusB_To[1] ), .B(\Set_BusB_To[0] ), 
            .C(\PC[11] ), .D(\PC[3] ), .Z(n13_adj_6)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i14799_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i14801_4_lut_4_lut (.A(\Set_BusB_To[1] ), .B(\Set_BusB_To[0] ), 
            .C(\PC[12] ), .D(\PC[4] ), .Z(n13_adj_7)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i14801_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i14804_4_lut_4_lut (.A(\Set_BusB_To[1] ), .B(\Set_BusB_To[0] ), 
            .C(\PC[13] ), .D(\PC[5] ), .Z(n13_adj_8)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i14804_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i14808_4_lut_4_lut (.A(\Set_BusB_To[1] ), .B(\Set_BusB_To[0] ), 
            .C(\PC[14] ), .D(\PC[6] ), .Z(n13_adj_9)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i14808_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i1_4_lut_4_lut (.A(\Set_BusB_To[1] ), .B(n30985), .C(\PC[7] ), 
            .D(SP[7]), .Z(n4_adj_1851)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(n3), .D(n31247), .Z(n4_adj_1852)) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'hfe54;
    ORCALUT4 IR_7__I_0_1624_i15_2_lut_rep_540_3_lut_4_lut (.A(n31286), .B(n31277), 
            .C(n31293), .D(n31276), .Z(n31127)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam IR_7__I_0_1624_i15_2_lut_rep_540_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 IR_7__I_0_1623_i15_2_lut_rep_541_3_lut_4_lut (.A(n31286), .B(n31267), 
            .C(n31293), .D(n31276), .Z(n31128)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1623_i15_2_lut_rep_541_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 IR_7__I_0_1622_i15_2_lut_rep_539_3_lut_4_lut (.A(n31286), .B(n31267), 
            .C(n31293), .D(n31289), .Z(n31126)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1622_i15_2_lut_rep_539_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_4_lut_adj_207 (.A(n31089), .B(n31288), .C(n31162), .D(n31164), 
            .Z(n9_adj_1853)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_207.init = 16'haaa2;
    ORCALUT4 i26837_3_lut_4_lut_4_lut (.A(\Set_BusB_To[0] ), .B(n13_adj_1844), 
            .C(n30985), .D(\F[0] ), .Z(n10)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i26837_3_lut_4_lut_4_lut.init = 16'hcfc5;
    ORCALUT4 i26844_3_lut_4_lut_4_lut_4_lut (.A(\Set_BusB_To[0] ), .B(\F[7] ), 
            .C(n4_adj_1851), .D(n30985), .Z(n16293)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i26844_3_lut_4_lut_4_lut_4_lut.init = 16'h50d8;
    ORCALUT4 IR_5__I_0_i6_4_lut (.A(\F[2] ), .B(\F[7] ), .C(n33948), .D(n33946), 
            .Z(n6_adj_1854)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam IR_5__I_0_i6_4_lut.init = 16'hca35;
    ORCALUT4 IR_5__I_0_i3_4_lut (.A(\F[6] ), .B(\F[0] ), .C(n33948), .D(n33946), 
            .Z(n3_adj_10)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam IR_5__I_0_i3_4_lut.init = 16'hca35;
    ORCALUT4 i1_3_lut_3_lut_4_lut (.A(n31286), .B(n31267), .C(n31289), 
            .D(n31276), .Z(n4_adj_11)) /* synthesis lut_function=(!(A (B ((D)+!C)))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'h77f7;
    ORCALUT4 IR_7__I_0_1725_i15_2_lut_rep_557_3_lut_4_lut (.A(n31286), .B(n31267), 
            .C(n33933), .D(n31289), .Z(n31144)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1725_i15_2_lut_rep_557_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_2_lut_adj_208 (.A(\ALU_Op_3__N_1297[3] ), .B(\IR[0] ), .Z(n23950)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_adj_208.init = 16'h8888;
    ORCALUT4 i1_2_lut_adj_209 (.A(\IR[0] ), .B(n33944), .Z(n16)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_adj_209.init = 16'h4444;
    ORCALUT4 i1_3_lut (.A(last_tstate_keep), .B(Set_BusA_To[0]), .C(Read_To_Acc), 
            .Z(\Read_To_Reg_r_4__N_717[0] )) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha8a8;
    ORCALUT4 i1_4_lut_adj_210 (.A(n12_adj_1857), .B(n31277), .C(n6_adj_1858), 
            .D(n31270), .Z(n8_adj_1859)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_210.init = 16'haaab;
    ORCALUT4 i21_4_lut_adj_211 (.A(n8_adj_1860), .B(n9166), .C(n33956), 
            .D(n28_c), .Z(Set_BusA_To[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i21_4_lut_adj_211.init = 16'hfaca;
    ORCALUT4 i22_4_lut (.A(n11), .B(\IR[0] ), .C(ISet[0]), .D(n12_adj_1861), 
            .Z(n8_adj_1860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut.init = 16'hcfca;
    ORCALUT4 i1_4_lut_adj_212 (.A(n6_adj_1862), .B(n31236), .C(n3_adj_1863), 
            .D(n33944), .Z(n9166)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_adj_212.init = 16'hc088;
    ORCALUT4 i1_4_lut_adj_213 (.A(\IR[2] ), .B(n19), .C(n25), .D(\IR[6] ), 
            .Z(n28_c)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_adj_213.init = 16'h5044;
    ORCALUT4 i4_4_lut (.A(Set_BusA_To_3__N_1199[0]), .B(n31086), .C(n31085), 
            .D(n9416), .Z(n11)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut.init = 16'hffce;
    ORCALUT4 i5_4_lut_adj_214 (.A(n9_adj_1864), .B(\Set_BusA_To_3__N_1230[0] ), 
            .C(n54), .D(n27001), .Z(n12_adj_1861)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i5_4_lut_adj_214.init = 16'hfefa;
    ORCALUT4 Set_BusB_To_3__I_0_i3_4_lut_rep_398 (.A(Set_BusB_To_3__N_1428[2]), 
            .B(Set_BusB_To_3__N_1056[2]), .C(n10164), .D(n33956), .Z(n30985)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam Set_BusB_To_3__I_0_i3_4_lut_rep_398.init = 16'hcacc;
    ORCALUT4 i1_4_lut_adj_215 (.A(\Set_BusA_To_3__N_1230[0] ), .B(n31042), 
            .C(n31122), .D(n31276), .Z(n6_adj_1862)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_adj_215.init = 16'h88a0;
    ORCALUT4 i2_4_lut_adj_216 (.A(Set_BusA_To_3__N_1388[0]), .B(n4_adj_1865), 
            .C(n2), .D(\IR[1] ), .Z(n25)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_4_lut_adj_216.init = 16'hc088;
    ORCALUT4 i1_2_lut_4_lut_adj_217 (.A(n59), .B(n61), .C(\IR[2] ), .D(\IR[6] ), 
            .Z(n37)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_217.init = 16'hca00;
    ORCALUT4 i2_4_lut_adj_218 (.A(n31122), .B(n2), .C(n15_adj_1837), .D(n31167), 
            .Z(n9_adj_1864)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_218.init = 16'h0ace;
    PFUMX i46 (.BLUT(n27164), .ALUT(n26870), .C0(\IR[7] ), .Z(n29_c));
    ORCALUT4 i25566_2_lut_4_lut (.A(n31053), .B(n17444), .C(n31157), .D(n17134), 
            .Z(n27299)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i25566_2_lut_4_lut.init = 16'h8000;
    ORCALUT4 i2287_3_lut_4_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(n3), .D(n31286), .Z(n8032)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B+(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i2287_3_lut_4_lut_4_lut_4_lut.init = 16'h54cc;
    ORCALUT4 IR_5__I_0_i7_3_lut_rep_660 (.A(n3_adj_10), .B(n6_adj_1854), 
            .C(\IR[5] ), .Z(n31247)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam IR_5__I_0_i7_3_lut_rep_660.init = 16'hcaca;
    ORCALUT4 i2_4_lut_adj_219 (.A(n31176), .B(n25726), .C(n31233), .D(n17035), 
            .Z(n17039)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_219.init = 16'hc800;
    ORCALUT4 MCycles_2__N_1083_I_0_1668_Select_0_i54_4_lut (.A(n31276), .B(n31238), 
            .C(n31255), .D(n33927), .Z(n54)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam MCycles_2__N_1083_I_0_1668_Select_0_i54_4_lut.init = 16'h3230;
    ORCALUT4 i14577_2_lut_4_lut (.A(n3_adj_10), .B(n6_adj_1854), .C(\IR[5] ), 
            .D(\ALU_Op_3__N_1297[3] ), .Z(n894[2])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(184[11] 193[18])
    defparam i14577_2_lut_4_lut.init = 16'hffca;
    ORCALUT4 i2_4_lut_adj_220 (.A(n31157), .B(n26788), .C(n8207), .D(n33933), 
            .Z(n27001)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_220.init = 16'hddfd;
    PFUMX i22 (.BLUT(n26759), .ALUT(n26946), .C0(n33954), .Z(n11_adj_1866));
    ORCALUT4 i2_3_lut_rep_563_4_lut (.A(n31293), .B(n31312), .C(\IR[0] ), 
            .D(n33950), .Z(n31150)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1322[15:26])
    defparam i2_3_lut_rep_563_4_lut.init = 16'hfeff;
    ORCALUT4 i1_4_lut_adj_221 (.A(\IR[0] ), .B(Read_To_Acc_N_1492), .C(n4_adj_1867), 
            .D(n31290), .Z(Read_To_Acc)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_221.init = 16'h50dc;
    ORCALUT4 i7999_2_lut_4_lut (.A(n2), .B(n31042), .C(n31007), .D(\ALU_Op_3__N_1297[3] ), 
            .Z(n8948)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i7999_2_lut_4_lut.init = 16'hfe00;
    ORCALUT4 i2_4_lut_adj_222 (.A(n26786), .B(n4), .C(n27225), .D(MCycles_2__N_1093), 
            .Z(Read_To_Acc_N_1492)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_222.init = 16'hfefa;
    ORCALUT4 i2_3_lut_4_lut_adj_223 (.A(n31006), .B(n31007), .C(n31106), 
            .D(n26890), .Z(n8_adj_1868)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_223.init = 16'h0eff;
    ORCALUT4 i3_4_lut_adj_224 (.A(n2), .B(n31239), .C(n31293), .D(n33950), 
            .Z(n27225)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_224.init = 16'h0002;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_225 (.A(n31293), .B(n31312), .C(Inc_PC_N_1453), 
            .D(n31273), .Z(n17_adj_1869)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1322[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_225.init = 16'hf1f0;
    ORCALUT4 MCycles_2__I_117_Select_2_i24_3_lut_4_lut (.A(n31006), .B(n31007), 
            .C(n31105), .D(n31163), .Z(n24)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam MCycles_2__I_117_Select_2_i24_3_lut_4_lut.init = 16'h0f0e;
    ORCALUT4 MCycle_0__I_0_2_lut_rep_663 (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .Z(n31250)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam MCycle_0__I_0_2_lut_rep_663.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut_3_lut_adj_226 (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(n3), .Z(n9414)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_2_lut_3_lut_3_lut_adj_226.init = 16'hbaba;
    ORCALUT4 i3_4_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), .B(\IR[4] ), 
            .C(n31303), .D(n16), .Z(n26759)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    ORCALUT4 i46_3_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), .B(n31014), 
            .C(\IR[2] ), .D(n31246), .Z(n26261)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i46_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i2_4_lut_adj_227 (.A(n31168), .B(n31094), .C(n33931), .D(n31084), 
            .Z(n9416)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_227.init = 16'hffce;
    ORCALUT4 i27153_2_lut (.A(\IR[7] ), .B(\IR[0] ), .Z(n4_adj_1865)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i27153_2_lut.init = 16'h1111;
    ORCALUT4 i25793_3_lut_4_lut_4_lut (.A(n33946), .B(BusB[2]), .C(n8), 
            .D(n31299), .Z(n27529)) /* synthesis lut_function=(A (B)+!A !(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i25793_3_lut_4_lut_4_lut.init = 16'h8dcc;
    PFUMX i90 (.BLUT(n68), .ALUT(n26681), .C0(n33952), .Z(n90));
    ORCALUT4 i1_4_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), .C(n31226), 
            .D(\IR[1] ), .Z(n9114)) /* synthesis lut_function=(A (C)+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_4_lut_4_lut_4_lut.init = 16'he0a0;
    ORCALUT4 i1_2_lut_4_lut_adj_228 (.A(n31004), .B(n31166), .C(n33927), 
            .D(n26088), .Z(n4_adj_1871)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_4_lut_adj_228.init = 16'hffc8;
    ORCALUT4 i27235_2_lut_3_lut (.A(ISet[1]), .B(n31024), .C(n31027), 
            .Z(n27603)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;
    defparam i27235_2_lut_3_lut.init = 16'h8f8f;
    ORCALUT4 i1_3_lut_rep_415_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(n9_adj_1853), .D(n9279), .Z(n31002)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_3_lut_rep_415_4_lut.init = 16'hff0e;
    ORCALUT4 mux_221_i4_3_lut_4_lut (.A(ISet[1]), .B(n31024), .C(\ALU_Q[3] ), 
            .D(\F[3] ), .Z(n1000)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_221_i4_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_221_i6_3_lut_4_lut (.A(ISet[1]), .B(n31024), .C(\ALU_Q[1] ), 
            .D(\F[5] ), .Z(n998)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_221_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i2_3_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), .C(n31149), 
            .D(n3), .Z(n8384)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hc0d0;
    ORCALUT4 Set_BusA_To_3__N_1220_I_0_2_lut_rep_489_3_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n4), .D(n3), .Z(n31076)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam Set_BusA_To_3__N_1220_I_0_2_lut_rep_489_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 n26017_bdd_4_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), .B(\BusA[6] ), 
            .C(\BusA[7] ), .D(\IR[4] ), .Z(n30081)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam n26017_bdd_4_lut_4_lut.init = 16'h44e4;
    ORCALUT4 i1_4_lut_4_lut_4_lut_adj_229 (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(n31226), .D(n31274), .Z(n9113)) /* synthesis lut_function=(A (C)+!A !(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_4_lut_4_lut_4_lut_adj_229.init = 16'ha0e0;
    ORCALUT4 i1_2_lut_3_lut_1_lut_2_lut_rep_738 (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .Z(n33928)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_2_lut_3_lut_1_lut_2_lut_rep_738.init = 16'h1111;
    ORCALUT4 i1_4_lut_4_lut_adj_230 (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(n31247), .D(n17039), .Z(n17_adj_1872)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_4_lut_4_lut_adj_230.init = 16'h001b;
    ORCALUT4 MCycle_0__I_0_1791_2_lut_rep_460_3_lut_3_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n3), .Z(n31047)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam MCycle_0__I_0_1791_2_lut_rep_460_3_lut_3_lut.init = 16'habab;
    ORCALUT4 i27211_2_lut_rep_503_3_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n4), .D(n3), .Z(n31090)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i27211_2_lut_rep_503_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i1_4_lut_4_lut_adj_231 (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(n9576), .D(n8385), .Z(n5_c)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i1_4_lut_4_lut_adj_231.init = 16'hffd0;
    ORCALUT4 reduce_or_169_i1_2_lut_3_lut_1_lut_2_lut_3_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n3), .Z(n1_adj_1873)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam reduce_or_169_i1_2_lut_3_lut_1_lut_2_lut_3_lut.init = 16'h0101;
    ORCALUT4 Set_BusA_To_3__I_123_2_lut_rep_664 (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n3), .Z(n31251)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam Set_BusA_To_3__I_123_2_lut_rep_664.init = 16'hfefe;
    ORCALUT4 i3_2_lut_rep_739 (.A(\IR[2] ), .B(n33942), .Z(n33929)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_2_lut_rep_739.init = 16'h8888;
    ORCALUT4 i7930_3_lut_4_lut_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(n3), .D(n4), .Z(n9713)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1044[23] 1078[30])
    defparam i7930_3_lut_4_lut_4_lut_4_lut.init = 16'h4445;
    ORCALUT4 i25598_2_lut_3_lut_4_lut (.A(n31286), .B(n31313), .C(n31290), 
            .D(n31258), .Z(n27332)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1172[15:26])
    defparam i25598_2_lut_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i27133_2_lut_rep_579_3_lut_4_lut (.A(n31286), .B(n31313), .C(n31288), 
            .D(n31289), .Z(n31166)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1172[15:26])
    defparam i27133_2_lut_rep_579_3_lut_4_lut.init = 16'h0020;
    ORCALUT4 i2_4_lut_adj_232 (.A(n25943), .B(n4_adj_1874), .C(n3_adj_1863), 
            .D(\IR[2] ), .Z(n26792)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_4_lut_adj_232.init = 16'hc088;
    ORCALUT4 IR_7__I_0_1661_i15_2_lut_rep_573_3_lut_4_lut (.A(n31286), .B(n31313), 
            .C(n31288), .D(n31285), .Z(n31160)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1172[15:26])
    defparam IR_7__I_0_1661_i15_2_lut_rep_573_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 i15167_2_lut_rep_626_3_lut_3_lut (.A(\Set_BusA_To_3__N_1230[0] ), 
            .B(n33950), .C(n33948), .Z(n31213)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i15167_2_lut_rep_626_3_lut_3_lut.init = 16'h1010;
    ORCALUT4 IR_7__I_0_1636_i15_2_lut_3_lut_4_lut (.A(n31286), .B(n31313), 
            .C(n31288), .D(n31269), .Z(n15_adj_1875)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1172[15:26])
    defparam IR_7__I_0_1636_i15_2_lut_3_lut_4_lut.init = 16'hffdf;
    ORCALUT4 sram_addr_c_bdd_2_lut_28740_3_lut (.A(\IR[2] ), .B(\IR[1] ), 
            .C(n31447), .Z(n31448)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam sram_addr_c_bdd_2_lut_28740_3_lut.init = 16'h8080;
    ORCALUT4 i3_2_lut_rep_740 (.A(n33952), .B(n33954), .C(n33958), .Z(n33930)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i3_2_lut_rep_740.init = 16'h2020;
    ORCALUT4 i3_4_lut_adj_233 (.A(n12_adj_1857), .B(n16_adj_1876), .C(n10_adj_1877), 
            .D(n5_adj_1878), .Z(NoRead_N_1570)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i3_4_lut_adj_233.init = 16'hfffe;
    ORCALUT4 select_594_Select_1_i5_2_lut_rep_668 (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .Z(n31255)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam select_594_Select_1_i5_2_lut_rep_668.init = 16'h4444;
    ORCALUT4 i19002_4_lut (.A(ISet[0]), .B(n31032), .C(ISet[1]), .D(n31082), 
            .Z(PreserveC)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i19002_4_lut.init = 16'hc5c0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_234 (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(n31293), .D(n31285), .Z(n4_adj_1879)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_2_lut_3_lut_4_lut_adj_234.init = 16'h0004;
    ORCALUT4 i11_3_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), .C(\IR[0] ), 
            .D(\IR[4] ), .Z(n13844)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i11_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i37_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), .C(\IR[1] ), 
            .D(\IR[0] ), .Z(n21_adj_1880)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C (D)+!C !(D))+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i37_4_lut_4_lut.init = 16'h50b5;
    ORCALUT4 i1_2_lut_rep_566_3_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(\IR[1] ), .Z(n31153)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_2_lut_rep_566_3_lut.init = 16'h0404;
    ORCALUT4 IORQ_N_1512_bdd_4_lut_28215 (.A(n33927), .B(\IR[0] ), .C(n31173), 
            .D(n31255), .Z(n30487)) /* synthesis lut_function=(A (C)+!A (B (C (D)))) */ ;
    defparam IORQ_N_1512_bdd_4_lut_28215.init = 16'he0a0;
    ORCALUT4 i1_4_lut_adj_235 (.A(n31315), .B(n16), .C(n26925), .D(\IR[1] ), 
            .Z(n13_adj_1881)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_235.init = 16'ha088;
    ORCALUT4 i2349_3_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), .C(\IR[0] ), 
            .D(\IR[5] ), .Z(n3284)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i2349_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 n30490_bdd_3_lut (.A(n30490), .B(n30487), .C(\IR[1] ), .Z(n30491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n30490_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 n15_bdd_2_lut_29748_4_lut (.A(n33952), .B(n33954), .C(\IR[0] ), 
            .D(n31291), .Z(n33427)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam n15_bdd_2_lut_29748_4_lut.init = 16'h0020;
    ORCALUT4 i1_4_lut_adj_236 (.A(n25940), .B(n33930), .C(n3_adj_1863), 
            .D(\IR[2] ), .Z(n9128)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_adj_236.init = 16'hc088;
    ORCALUT4 i42_4_lut (.A(n18), .B(n23_c), .C(\IR[6] ), .D(n4_adj_1865), 
            .Z(n26)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i42_4_lut.init = 16'hca0a;
    ORCALUT4 i26759_3_lut (.A(n26), .B(n9128), .C(\IR[1] ), .Z(Set_BusA_To_3__N_1052[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i26759_3_lut.init = 16'hcaca;
    ORCALUT4 select_1058_Select_3_i4_2_lut_3_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n33946), .Z(Set_BusA_To_3__N_1388[0])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam select_1058_Select_3_i4_2_lut_3_lut.init = 16'h4040;
    ORCALUT4 select_1312_Select_1_i8_2_lut_rep_454_3_lut_4_lut_3_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n3), .Z(n31041)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam select_1312_Select_1_i8_2_lut_rep_454_3_lut_4_lut_3_lut.init = 16'h5454;
    ORCALUT4 IR_5__bdd_4_lut_28218 (.A(\IR[5] ), .B(n31451), .C(n31203), 
            .D(\IR[7] ), .Z(n30494)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B+(C+(D))))) */ ;
    defparam IR_5__bdd_4_lut_28218.init = 16'h55dc;
    ORCALUT4 IR_5__bdd_4_lut_28408 (.A(\IR[5] ), .B(n100), .C(\IR[7] ), 
            .D(\IR[2] ), .Z(n30495)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam IR_5__bdd_4_lut_28408.init = 16'h5575;
    ORCALUT4 i6_4_lut_adj_237 (.A(n31277), .B(n12_adj_1882), .C(n8_adj_1859), 
            .D(n4_adj_1883), .Z(Save_ALU_N_1498)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+!(D)))) */ ;
    defparam i6_4_lut_adj_237.init = 16'hfcfd;
    ORCALUT4 i1_2_lut_rep_505_3_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(n33931), .D(n31257), .Z(n31092)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_2_lut_rep_505_3_lut_4_lut.init = 16'h0f04;
    ORCALUT4 IncDec_16_3__N_1248_0__bdd_4_lut_27874 (.A(n31088), .B(n31140), 
            .C(\IR[0] ), .D(\IR[2] ), .Z(n28972)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam IncDec_16_3__N_1248_0__bdd_4_lut_27874.init = 16'hc0a0;
    ORCALUT4 i22_4_lut_adj_238 (.A(n31091), .B(Read_To_Reg_N_1480), .C(ISet[0]), 
            .D(n4_adj_1884), .Z(n8_adj_1885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut_adj_238.init = 16'hcfca;
    ORCALUT4 n6_bdd_4_lut (.A(n6_adj_1886), .B(n13_adj_1887), .C(n31315), 
            .D(n31286), .Z(n30504)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam n6_bdd_4_lut.init = 16'heccc;
    ORCALUT4 select_825_Select_0_i55_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n2), .C(n31276), .D(n9377), .Z(n55_adj_1888)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam select_825_Select_0_i55_4_lut_4_lut.init = 16'h00e4;
    ORCALUT4 i1_2_lut_3_lut_adj_239 (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(last_tstate_keep), .Z(n25907)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_2_lut_3_lut_adj_239.init = 16'h4040;
    ORCALUT4 IR_7__I_0_1751_i13_2_lut_rep_741 (.A(\IR[6] ), .B(n33954), 
            .Z(n33931)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1751_i13_2_lut_rep_741.init = 16'hbbbb;
    ORCALUT4 i7941_4_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(n2), .C(n31060), 
            .D(\Set_BusA_To_3__N_1230[0] ), .Z(n9734)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i7941_4_lut_4_lut.init = 16'hfeaa;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_240 (.A(\ALU_Op_3__N_1297[3] ), .B(n2), 
            .C(n31303), .D(\IR[2] ), .Z(n23)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_2_lut_3_lut_4_lut_adj_240.init = 16'h0040;
    ORCALUT4 n4_bdd_2_lut_3_lut_4_lut_2_lut (.A(\ALU_Op_3__N_1297[3] ), .B(\IR[1] ), 
            .Z(n30959)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam n4_bdd_2_lut_3_lut_4_lut_2_lut.init = 16'h2222;
    ORCALUT4 IncDec_16_3__N_1248_0__bdd_2_lut_27873_3_lut_4_lut_2_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(\IR[2] ), .Z(n28973)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam IncDec_16_3__N_1248_0__bdd_2_lut_27873_3_lut_4_lut_2_lut.init = 16'h2222;
    ORCALUT4 i1_2_lut_rep_522_3_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), 
            .B(n31276), .C(n2), .D(\ALU_Op_3__N_1297[3] ), .Z(n31109)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i1_2_lut_rep_522_3_lut_4_lut.init = 16'h00b0;
    ORCALUT4 Read_To_Reg_I_130_3_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), 
            .B(n31276), .C(n2), .D(n31257), .Z(Read_To_Reg_N_1472)) /* synthesis lut_function=(A (C+(D))+!A !(B ((D)+!C)+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam Read_To_Reg_I_130_3_lut_3_lut_4_lut.init = 16'hbbf0;
    ORCALUT4 i1_2_lut_rep_451_3_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), 
            .B(n31276), .C(n33933), .D(n31257), .Z(n31038)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i1_2_lut_rep_451_3_lut_4_lut.init = 16'h0f0b;
    ORCALUT4 i2_3_lut_4_lut_3_lut_4_lut (.A(n33946), .B(n31276), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n31257), .Z(n26758)) /* synthesis lut_function=(A ((D)+!C)+!A !(B (C (D))+!B !((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i2_3_lut_4_lut_3_lut_4_lut.init = 16'hbf4f;
    ORCALUT4 i1_2_lut_3_lut_4_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), 
            .B(n31276), .C(n33933), .D(n31257), .Z(n23361)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i1_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h040b;
    ORCALUT4 i3606_3_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), .B(n31276), 
            .C(n31257), .D(n2), .Z(n4928)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i3606_3_lut_4_lut.init = 16'hbfb0;
    ORCALUT4 i6513_2_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), .B(n31276), 
            .C(n31257), .D(n2), .Z(n8207)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i6513_2_lut_3_lut_4_lut.init = 16'hfbf0;
    ORCALUT4 i2_4_lut_adj_241 (.A(n31364), .B(n4_adj_1890), .C(n8936), 
            .D(\IR[1] ), .Z(n27157)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D))+!B))) */ ;
    defparam i2_4_lut_adj_241.init = 16'h0c44;
    ORCALUT4 i95_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(\IR[1] ), .C(\IR[6] ), 
            .D(n30262), .Z(n50_c)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i95_4_lut.init = 16'hca0a;
    ORCALUT4 i14593_2_lut_rep_565_3_lut_4_lut (.A(n33946), .B(n31276), .C(n2), 
            .D(\ALU_Op_3__N_1297[3] ), .Z(n31152)) /* synthesis lut_function=(A+!(B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(292[28:45])
    defparam i14593_2_lut_rep_565_3_lut_4_lut.init = 16'hbbfb;
    ORCALUT4 i1_2_lut_rep_474_3_lut_4_lut (.A(\IR[0] ), .B(n33929), .C(n2), 
            .D(n7), .Z(n31061)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_rep_474_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i13_4_lut_3_lut_4_lut (.A(\IR[0] ), .B(n33929), .C(n25904), 
            .D(\ALU_Op_3__N_1297[3] ), .Z(n7_adj_1891)) /* synthesis lut_function=(A (D)+!A !(B ((D)+!C)+!B !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i13_4_lut_3_lut_4_lut.init = 16'hbb40;
    ORCALUT4 i1_2_lut_rep_488_3_lut_4_lut (.A(\IR[0] ), .B(n33929), .C(n2), 
            .D(n7), .Z(n31075)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_rep_488_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 i97_4_lut_3_lut_4_lut (.A(\IR[0] ), .B(n33929), .C(\IR[7] ), 
            .D(\IR[4] ), .Z(n55)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i97_4_lut_3_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i1_4_lut_adj_242 (.A(\tstate[2] ), .B(n6_adj_12), .C(n8_adj_1894), 
            .D(n6370), .Z(n2670)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_242.init = 16'haaa8;
    ORCALUT4 i15396_2_lut_rep_513_3_lut_4_lut (.A(\IR[0] ), .B(n33929), 
            .C(n31276), .D(\Set_BusA_To_3__N_1230[0] ), .Z(n31100)) /* synthesis lut_function=(A ((D)+!C)+!A !(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i15396_2_lut_rep_513_3_lut_4_lut.init = 16'hbb0b;
    ORCALUT4 i14655_2_lut_rep_581_3_lut_4_lut (.A(n33958), .B(n33929), .C(n2), 
            .D(\ALU_Op_3__N_1297[3] ), .Z(n31168)) /* synthesis lut_function=(A+!(B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i14655_2_lut_rep_581_3_lut_4_lut.init = 16'hbbfb;
    ORCALUT4 IR_5__I_0_1793_i11_2_lut_rep_560_3_lut_4_lut (.A(n33958), .B(n33929), 
            .C(n31276), .D(n33946), .Z(n31147)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam IR_5__I_0_1793_i11_2_lut_rep_560_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 IR_7__I_0_1611_i15_2_lut_rep_584_3_lut_4_lut (.A(n31276), .B(n31288), 
            .C(n31284), .D(n31268), .Z(n31171)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1611_i15_2_lut_rep_584_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 IR_7__I_0_1627_i15_2_lut_rep_559_3_lut_4_lut (.A(n31276), .B(n31288), 
            .C(n31286), .D(n31284), .Z(n31146)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam IR_7__I_0_1627_i15_2_lut_rep_559_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i2_4_lut_4_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), .B(n31308), 
            .C(\IR[4] ), .D(n33924), .Z(n59)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_4_lut_4_lut_4_lut.init = 16'h44c0;
    ORCALUT4 i3_3_lut (.A(JumpE), .B(\PC16_B_15__N_557[15] ), .C(n61_adj_1895), 
            .Z(n8_adj_1894)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i3_3_lut.init = 16'hfefe;
    PFUMX i28483 (.BLUT(n31334), .ALUT(n31335), .C0(n2), .Z(n8968));
    ORCALUT4 i1_3_lut_rep_485_4_lut (.A(n33958), .B(n33929), .C(n33948), 
            .D(n31172), .Z(n31072)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_rep_485_4_lut.init = 16'hf700;
    ORCALUT4 i2_2_lut_4_lut (.A(n9279), .B(n31250), .C(n9_adj_1853), .D(n8968), 
            .Z(n9_adj_1842)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_2_lut_4_lut.init = 16'hffae;
    ORCALUT4 i26_4_lut_4_lut (.A(\IR[7] ), .B(n31310), .C(n13_adj_1896), 
            .D(\IR[6] ), .Z(n11_adj_1897)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i26_4_lut_4_lut.init = 16'h5088;
    ORCALUT4 i1_3_lut_4_lut (.A(n31033), .B(n31166), .C(n31272), .D(n31091), 
            .Z(n8_adj_1840)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut.init = 16'hf888;
    ORCALUT4 i5_2_lut_rep_494_3_lut_4_lut (.A(\IR[7] ), .B(n31310), .C(n31274), 
            .D(\IR[6] ), .Z(n31081)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i5_2_lut_rep_494_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_243 (.A(\IR[7] ), .B(n31310), .C(n2), 
            .D(\ALU_Op_3__N_1297[3] ), .Z(n18)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_4_lut_adj_243.init = 16'h0080;
    ORCALUT4 i1_3_lut_4_lut_adj_244 (.A(n5), .B(n31076), .C(n31166), .D(n26088), 
            .Z(n4_adj_1899)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam i1_3_lut_4_lut_adj_244.init = 16'hff20;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_245 (.A(\IR[7] ), .B(n31310), .C(n24_adj_1900), 
            .D(\IR[6] ), .Z(\IncDec_16_3__N_1044[3] )) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_4_lut_adj_245.init = 16'h0080;
    ORCALUT4 select_846_Select_2_i50_3_lut_4_lut (.A(n5), .B(n31076), .C(n9414), 
            .D(n31166), .Z(n50_adj_1901)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam select_846_Select_2_i50_3_lut_4_lut.init = 16'hf200;
    ORCALUT4 i27110_2_lut_rep_510_3_lut_4_lut (.A(n31269), .B(n31293), .C(n31290), 
            .D(n31264), .Z(n31097)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1155[15:26])
    defparam i27110_2_lut_rep_510_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 IR_7__I_0_1602_i15_2_lut_3_lut_4_lut (.A(n31269), .B(n31293), 
            .C(n31313), .D(n31292), .Z(n15_adj_1902)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1155[15:26])
    defparam IR_7__I_0_1602_i15_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 MCycles_2__N_1083_I_0_1670_Select_1_i50_3_lut_rep_409_4_lut (.A(n5), 
            .B(n31076), .C(n33927), .D(n31166), .Z(n30996)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam MCycles_2__N_1083_I_0_1670_Select_1_i50_3_lut_rep_409_4_lut.init = 16'hf200;
    ORCALUT4 IR_7__I_0_1605_i15_2_lut_3_lut_4_lut (.A(n31269), .B(n31293), 
            .C(n31313), .D(n31268), .Z(n15_adj_1903)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1155[15:26])
    defparam IR_7__I_0_1605_i15_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1637_i15_2_lut_rep_564_3_lut_4_lut (.A(n31270), .B(n31284), 
            .C(n31293), .D(n31285), .Z(n31151)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam IR_7__I_0_1637_i15_2_lut_rep_564_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1614_i15_2_lut_rep_587_3_lut_4_lut (.A(n31270), .B(n31284), 
            .C(n31293), .D(n31269), .Z(n31174)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam IR_7__I_0_1614_i15_2_lut_rep_587_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_3_lut_rep_403_4_lut (.A(n31122), .B(n31037), .C(n31042), 
            .D(n2), .Z(n30990)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_3_lut_rep_403_4_lut.init = 16'hfffb;
    ORCALUT4 i14537_2_lut_rep_680 (.A(n33944), .B(n33946), .Z(n31267)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14537_2_lut_rep_680.init = 16'h8888;
    ORCALUT4 IR_7__I_0_1643_i9_2_lut_rep_681 (.A(n33958), .B(n33942), .Z(n31268)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam IR_7__I_0_1643_i9_2_lut_rep_681.init = 16'hdddd;
    ORCALUT4 i15174_2_lut_rep_630_3_lut_3_lut (.A(\Set_BusA_To_3__N_1230[0] ), 
            .B(\IR[5] ), .C(\IR[4] ), .Z(n31217)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i15174_2_lut_rep_630_3_lut_3_lut.init = 16'h4040;
    ORCALUT4 i25588_2_lut_3_lut_4_lut (.A(n31158), .B(n31055), .C(n26564), 
            .D(n9377), .Z(n27322)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i25588_2_lut_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i1_3_lut_4_lut_adj_246 (.A(n33924), .B(n31085), .C(n9416), 
            .D(n31299), .Z(n4_adj_1904)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_3_lut_4_lut_adj_246.init = 16'hf2f0;
    ORCALUT4 IR_7__I_0_1642_i11_2_lut_rep_592_3_lut_4_lut (.A(\IR[0] ), .B(n33942), 
            .C(n33946), .D(\IR[2] ), .Z(n31179)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam IR_7__I_0_1642_i11_2_lut_rep_592_3_lut_4_lut.init = 16'hdfff;
    ORCALUT4 i1_2_lut_rep_569_3_lut_4_lut (.A(n33958), .B(n33942), .C(n31293), 
            .D(n31313), .Z(n31156)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i1_2_lut_rep_569_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i1_2_lut_2_lut (.A(\IR[7] ), .B(\IR[0] ), .Z(n4_adj_1874)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1751[15:26])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    ORCALUT4 i23_4_lut_4_lut (.A(\IR[7] ), .B(n4_adj_1905), .C(\IR[6] ), 
            .D(n31261), .Z(MCycles_2__N_1032[2])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1751[15:26])
    defparam i23_4_lut_4_lut.init = 16'h4f40;
    ORCALUT4 IR_7__I_0_1742_i9_2_lut_rep_683 (.A(n33958), .B(n33942), .Z(n31270)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2428[15:26])
    defparam IR_7__I_0_1742_i9_2_lut_rep_683.init = 16'heeee;
    ORCALUT4 i3_3_lut_4_lut (.A(n31092), .B(n31094), .C(n23347), .D(n31093), 
            .Z(n26708)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_247 (.A(\IR[0] ), .B(n33942), .C(n33933), 
            .D(n31284), .Z(n4_adj_1906)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2428[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_247.init = 16'hfffe;
    ORCALUT4 i2_2_lut_3_lut_4_lut (.A(n31042), .B(n31122), .C(n9416), 
            .D(n15_adj_1837), .Z(n8_adj_1907)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2027[19] 2072[26])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hf0fe;
    ORCALUT4 Set_BusB_To_3__I_0_i1_3_lut (.A(Set_BusB_To_3__N_1056[0]), .B(n33958), 
            .C(n10164), .Z(\Set_BusB_To[0] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam Set_BusB_To_3__I_0_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_248 (.A(n31111), .B(n31363), .C(n27040), .D(n6_adj_1908), 
            .Z(n25070)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_248.init = 16'haa8a;
    ORCALUT4 i1_2_lut_rep_518_3_lut_4_lut (.A(\IR[0] ), .B(n33942), .C(n31288), 
            .D(\IR[2] ), .Z(n31105)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2428[15:26])
    defparam i1_2_lut_rep_518_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_249 (.A(n31042), .B(n31122), .C(n31299), 
            .D(\Set_BusA_To_3__N_1230[0] ), .Z(n25940)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2027[19] 2072[26])
    defparam i1_2_lut_3_lut_4_lut_adj_249.init = 16'he000;
    ORCALUT4 i1_2_lut_rep_685 (.A(n33950), .B(n33948), .Z(n31272)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_685.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_250 (.A(\IR[5] ), .B(\IR[4] ), .C(n31286), 
            .D(n31315), .Z(n4_adj_1909)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_4_lut_adj_250.init = 16'h2000;
    ORCALUT4 i1_3_lut_adj_251 (.A(n7), .B(n6_adj_12), .C(n5), .Z(n6_adj_1908)) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i1_3_lut_adj_251.init = 16'hbaba;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_252 (.A(n33950), .B(n33948), .C(n3), 
            .D(n2), .Z(n3_adj_1863)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_2_lut_3_lut_4_lut_adj_252.init = 16'h0020;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_253 (.A(n33950), .B(\IR[4] ), .C(n2), 
            .D(\ALU_Op_3__N_1297[3] ), .Z(n3_adj_1843)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_4_lut_adj_253.init = 16'h0020;
    ORCALUT4 i3_4_lut_adj_254 (.A(n33924), .B(n6_adj_1910), .C(n26119), 
            .D(n31342), .Z(Read_To_Reg_N_1484)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i3_4_lut_adj_254.init = 16'hfefc;
    ORCALUT4 i11937_4_lut (.A(n13_c), .B(Read_To_Reg_N_1480), .C(ISet[0]), 
            .D(n14_c), .Z(n6_adj_1911)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i11937_4_lut.init = 16'hcfca;
    ORCALUT4 i2_2_lut_rep_553_3_lut_4_lut (.A(\IR[5] ), .B(\IR[4] ), .C(n2), 
            .D(n3), .Z(n31140)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_2_lut_rep_553_3_lut_4_lut.init = 16'h2220;
    ORCALUT4 i1_2_lut_rep_653_3_lut (.A(\IR[5] ), .B(n33948), .C(\IR[0] ), 
            .Z(n31240)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_653_3_lut.init = 16'h2020;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_255 (.A(\IR[7] ), .B(\IR[6] ), .C(n33929), 
            .D(\IR[0] ), .Z(n4_adj_1912)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_255.init = 16'h1000;
    ORCALUT4 i1_2_lut_rep_410_4_lut (.A(n31166), .B(n31053), .C(n31158), 
            .D(n17354), .Z(n30997)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_rep_410_4_lut.init = 16'h4000;
    ORCALUT4 i2_3_lut_4_lut_adj_256 (.A(n33954), .B(n33952), .C(n16514), 
            .D(n31274), .Z(Inc_PC_N_1453)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_256.init = 16'h0100;
    ORCALUT4 i1_2_lut_rep_686 (.A(\Set_BusA_To_3__N_1230[0] ), .B(n33958), 
            .Z(n31273)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_rep_686.init = 16'h8888;
    ORCALUT4 i1_2_lut_rep_580_3_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), 
            .B(n33958), .C(n31312), .D(n31293), .Z(n31167)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_rep_580_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i2_4_lut_adj_257 (.A(n31090), .B(n33927), .C(n25925), .D(n31286), 
            .Z(n27111)) /* synthesis lut_function=(A (B (C (D))+!B (C))) */ ;
    defparam i2_4_lut_adj_257.init = 16'ha020;
    ORCALUT4 i3_2_lut_rep_687 (.A(n33942), .B(n33958), .Z(n31274)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_2_lut_rep_687.init = 16'h4444;
    ORCALUT4 i1_4_lut_adj_258 (.A(n31354), .B(n53), .C(\IR[4] ), .D(n31184), 
            .Z(Set_BusB_To_3__N_1428[1])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_adj_258.init = 16'heccc;
    ORCALUT4 n21_bdd_3_lut_28209_4_lut (.A(\IR[1] ), .B(\IR[0] ), .C(n31367), 
            .D(n21), .Z(n30484)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam n21_bdd_3_lut_28209_4_lut.init = 16'hfb40;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_259 (.A(n31289), .B(n33933), .C(n2), 
            .D(n31245), .Z(n5_adj_1878)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_259.init = 16'h1000;
    ORCALUT4 i2_2_lut_rep_688 (.A(\IR[2] ), .B(\IR[1] ), .Z(n31275)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_2_lut_rep_688.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_260 (.A(\IR[2] ), .B(n33942), .C(ISet[1]), 
            .D(n31315), .Z(n4_adj_1867)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_3_lut_4_lut_adj_260.init = 16'h2000;
    ORCALUT4 i24659_2_lut_rep_689 (.A(n33948), .B(\IR[5] ), .Z(n31276)) /* synthesis lut_function=(A (B)) */ ;
    defparam i24659_2_lut_rep_689.init = 16'h8888;
    PFUMX i52 (.BLUT(n23_adj_13), .ALUT(n29), .C0(\IR[7] ), .Z(n31));
    PFUMX i12 (.BLUT(n26779), .ALUT(IORQ_N_1507), .C0(ISet[1]), .Z(iorq));
    PFUMX i39_adj_261 (.BLUT(n9734), .ALUT(n3276), .C0(\IR[1] ), .Z(n24_adj_1900));
    ORCALUT4 n3_bdd_4_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), .B(n31276), 
            .C(n31246), .D(n31122), .Z(n30192)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam n3_bdd_4_lut_4_lut.init = 16'h5410;
    PFUMX i81 (.BLUT(n10_adj_14), .ALUT(n9164), .C0(\IR[2] ), .Z(n45));
    ORCALUT4 i39_4_lut (.A(n20_adj_1916), .B(\IR[1] ), .C(ISet[0]), .D(n4_adj_1904), 
            .Z(n8_adj_1917)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i39_4_lut.init = 16'hcfca;
    ORCALUT4 i27168_2_lut_rep_669_3_lut (.A(\IR[4] ), .B(\IR[5] ), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n31256)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i27168_2_lut_rep_669_3_lut.init = 16'h0808;
    ORCALUT4 i3_4_lut_4_lut_4_lut (.A(n33952), .B(n33954), .C(n31203), 
            .D(n33950), .Z(n8975)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i3_4_lut_4_lut_4_lut.init = 16'h0400;
    ORCALUT4 i15175_2_lut_rep_631_3_lut (.A(\IR[4] ), .B(\IR[5] ), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n31218)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i15175_2_lut_rep_631_3_lut.init = 16'h8080;
    ORCALUT4 BusB_7__I_0_129_i8_2_lut_rep_549_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(BusB[7]), .D(\Set_BusA_To_3__N_1230[0] ), .Z(n31136)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam BusB_7__I_0_129_i8_2_lut_rep_549_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i8279_3_lut_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), .C(n3), 
            .D(n2), .Z(Set_BusA_To_3__N_1199[0])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i8279_3_lut_3_lut_4_lut.init = 16'h7780;
    ORCALUT4 i55_2_lut_rep_582_3_lut_4_lut (.A(\IR[4] ), .B(n33950), .C(n2), 
            .D(\Set_BusA_To_3__N_1230[0] ), .Z(n31169)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i55_2_lut_rep_582_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 select_1256_Select_3_i3_2_lut_3_lut_4_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .C(\ALU_Op_3__N_1297[3] ), .D(\Set_BusA_To_3__N_1230[0] ), .Z(n3_adj_1832)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam select_1256_Select_3_i3_2_lut_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 IR_7__I_0_1656_i10_2_lut_rep_690 (.A(n33944), .B(n33946), .Z(n31277)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam IR_7__I_0_1656_i10_2_lut_rep_690.init = 16'hdddd;
    ORCALUT4 i22_4_lut_adj_262 (.A(n9_adj_1918), .B(\IR[2] ), .C(ISet[0]), 
            .D(n10_adj_1919), .Z(n8_adj_1920)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut_adj_262.init = 16'hcfca;
    ORCALUT4 i1_2_lut_rep_412_4_lut (.A(n31307), .B(n31083), .C(\tstate[1] ), 
            .D(ISet[1]), .Z(n30999)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_412_4_lut.init = 16'h8000;
    PFUMX i27754 (.BLUT(n29641), .ALUT(n29638), .C0(\IR[7] ), .Z(n29642));
    ORCALUT4 ISet_1__I_0_i3_2_lut_rep_691 (.A(ISet[0]), .B(n33956), .Z(n31278)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[19:32])
    defparam ISet_1__I_0_i3_2_lut_rep_691.init = 16'hdddd;
    ORCALUT4 i5009_2_lut_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(n7), 
            .D(n31111), .Z(n6370)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[19:32])
    defparam i5009_2_lut_3_lut_4_lut.init = 16'h20f0;
    ORCALUT4 i27224_2_lut_rep_387_3_lut_4_lut (.A(ISet[0]), .B(n33956), 
            .C(\Set_Addr_To_2__N_1072[2] ), .D(n7), .Z(n30974)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A ((D)+!C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[19:32])
    defparam i27224_2_lut_rep_387_3_lut_4_lut.init = 16'hdf0f;
    ORCALUT4 i2923_2_lut_rep_603_3_lut (.A(ISet[0]), .B(n33956), .C(n7), 
            .Z(n31190)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[19:32])
    defparam i2923_2_lut_rep_603_3_lut.init = 16'hd0d0;
    ORCALUT4 i15065_2_lut_rep_388_3_lut_4_lut (.A(ISet[0]), .B(n33956), 
            .C(Set_Addr_To_2__N_1072[0]), .D(n7), .Z(n30975)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[19:32])
    defparam i15065_2_lut_rep_388_3_lut_4_lut.init = 16'h20f0;
    ORCALUT4 i2_1_lut_rep_695 (.A(ISet[0]), .Z(n31282)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i2_1_lut_rep_695.init = 16'h5555;
    ORCALUT4 i65_4_lut_4_lut (.A(ISet[0]), .B(n1_adj_1921), .C(n6_adj_1922), 
            .D(n9537), .Z(n57)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i65_4_lut_4_lut.init = 16'h5554;
    ORCALUT4 IORQ_N_1512_bdd_4_lut_4_lut (.A(ISet[0]), .B(\IR[5] ), .C(n33925), 
            .D(n8959), .Z(n30492)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam IORQ_N_1512_bdd_4_lut_4_lut.init = 16'h5540;
    ORCALUT4 n10_bdd_4_lut_28319_4_lut (.A(ISet[0]), .B(n9_adj_1923), .C(n14_adj_1924), 
            .D(n10_adj_1925), .Z(n30533)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam n10_bdd_4_lut_28319_4_lut.init = 16'h5554;
    ORCALUT4 i1_4_lut_4_lut_adj_263 (.A(ISet[0]), .B(n15_adj_1875), .C(n4_adj_1831), 
            .D(n3), .Z(n3_adj_1926)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_4_lut_adj_263.init = 16'h5150;
    ORCALUT4 mux_291_i8_3_lut_4_lut (.A(n31144), .B(n31078), .C(BusB[3]), 
            .D(BusB[7]), .Z(n1177[7])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_291_i8_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 n1_bdd_3_lut_27931_4_lut_4_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), 
            .B(n31276), .C(BusB[6]), .D(n8), .Z(n29902)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam n1_bdd_3_lut_27931_4_lut_4_lut_4_lut.init = 16'hb0f4;
    ORCALUT4 mux_291_i7_3_lut_4_lut (.A(n31144), .B(n31078), .C(BusB[2]), 
            .D(BusB[6]), .Z(n1177[6])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_291_i7_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i2_4_lut_4_lut_adj_264 (.A(ISet[0]), .B(n31010), .C(n2_adj_1836), 
            .D(n31276), .Z(n26665)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i2_4_lut_4_lut_adj_264.init = 16'h5400;
    ORCALUT4 mux_291_i1_3_lut_4_lut (.A(n31144), .B(n31078), .C(\BusA[0] ), 
            .D(BusB[0]), .Z(n1177[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_291_i1_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i9_4_lut (.A(n31015), .B(n18_adj_1927), .C(n14_adj_1928), 
            .D(n31118), .Z(MCycles_2__N_1026[0])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i9_4_lut.init = 16'hfdff;
    ORCALUT4 i1_4_lut_4_lut_adj_265 (.A(ISet[0]), .B(n25_adj_1929), .C(n31002), 
            .D(n26030), .Z(n17_adj_1930)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_4_lut_adj_265.init = 16'h5554;
    ORCALUT4 n31080_bdd_3_lut_29606 (.A(n2), .B(\ALU_Op_3__N_1297[3] ), 
            .C(n3), .Z(n33036)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;
    defparam n31080_bdd_3_lut_29606.init = 16'h7373;
    ORCALUT4 i14714_4_lut_4_lut (.A(ISet[0]), .B(n23349), .C(n8_adj_1931), 
            .D(n26169), .Z(n8_adj_1932)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i14714_4_lut_4_lut.init = 16'h5554;
    ORCALUT4 mux_291_i6_3_lut_4_lut (.A(n31144), .B(n31078), .C(BusB[1]), 
            .D(BusB[5]), .Z(n1177[5])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_291_i6_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_291_i5_3_lut_4_lut (.A(n31144), .B(n31078), .C(BusB[0]), 
            .D(BusB[4]), .Z(n1177[4])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_291_i5_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_291_i4_3_lut_4_lut (.A(n31144), .B(n31078), .C(\BusA[3] ), 
            .D(BusB[3]), .Z(n1177[3])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_291_i4_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i1_4_lut_4_lut_adj_266 (.A(ISet[0]), .B(n33925), .C(n8959), 
            .D(\IR[4] ), .Z(n3_adj_1933)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_4_lut_adj_266.init = 16'h5450;
    ORCALUT4 i1_4_lut_4_lut_adj_267 (.A(ISet[0]), .B(n4_adj_1934), .C(n31091), 
            .D(n31031), .Z(n3_adj_1935)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_4_lut_adj_267.init = 16'h5554;
    ORCALUT4 mux_291_i3_3_lut_4_lut (.A(n31144), .B(n31078), .C(\BusA[2] ), 
            .D(BusB[2]), .Z(n1177[2])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_291_i3_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 mux_291_i2_3_lut_4_lut (.A(n31144), .B(n31078), .C(\BusA[1] ), 
            .D(BusB[1]), .Z(n1177[1])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_291_i2_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i1_4_lut_4_lut_adj_268 (.A(ISet[0]), .B(n6), .C(n30962), 
            .D(n31255), .Z(n10_adj_15)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_4_lut_adj_268.init = 16'h5450;
    ORCALUT4 i14712_4_lut_4_lut (.A(ISet[0]), .B(MCycles_2__N_1093), .C(n27295), 
            .D(n24), .Z(n8_adj_1937)) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i14712_4_lut_4_lut.init = 16'h5545;
    ORCALUT4 i1538_2_lut_rep_696 (.A(\IR[6] ), .B(\IR[7] ), .Z(n31283)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1538_2_lut_rep_696.init = 16'h6666;
    ORCALUT4 n31080_bdd_4_lut_29605 (.A(n31166), .B(n2), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n3), .Z(n33035)) /* synthesis lut_function=(!((B (C)+!B (C+(D)))+!A)) */ ;
    defparam n31080_bdd_4_lut_29605.init = 16'h080a;
    ORCALUT4 IR_1__bdd_4_lut_28894 (.A(n33942), .B(n33950), .C(n33948), 
            .D(n33944), .Z(n29455)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(C (D)))) */ ;
    defparam IR_1__bdd_4_lut_28894.init = 16'h5002;
    ORCALUT4 IR_7__I_0_1649_i10_2_lut_rep_697 (.A(n33944), .B(n33946), .Z(n31284)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam IR_7__I_0_1649_i10_2_lut_rep_697.init = 16'hbbbb;
    ORCALUT4 i1_4_lut_adj_269 (.A(n12250), .B(SP[3]), .C(SP[11]), .D(Set_BusA_To[0]), 
            .Z(n14)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_269.init = 16'ha088;
    ORCALUT4 IR_7__I_0_1643_i11_2_lut_rep_609_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1230[0] ), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n31196)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam IR_7__I_0_1643_i11_2_lut_rep_609_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 IR_7__I_0_1649_i11_2_lut_rep_677_3_lut_4_lut (.A(n33944), .B(n33946), 
            .C(n33942), .D(n33958), .Z(n31264)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam IR_7__I_0_1649_i11_2_lut_rep_677_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 IR_7__I_0_1654_i12_2_lut_rep_698 (.A(\IR[4] ), .B(n33950), 
            .Z(n31285)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam IR_7__I_0_1654_i12_2_lut_rep_698.init = 16'hdddd;
    ORCALUT4 i25619_2_lut_3_lut_4_lut (.A(n31270), .B(n31313), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n31234), .Z(n27354)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i25619_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i2_3_lut_4_lut_adj_270 (.A(n31288), .B(n31203), .C(n15_adj_1875), 
            .D(n31151), .Z(n17134)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1190[15:26])
    defparam i2_3_lut_4_lut_adj_270.init = 16'hd000;
    ORCALUT4 i14636_3_lut_4_lut (.A(n31246), .B(n31080), .C(n31290), .D(n4_adj_1934), 
            .Z(JumpE)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i14636_3_lut_4_lut.init = 16'h0f02;
    ORCALUT4 i3_3_lut_4_lut_adj_271 (.A(n31093), .B(n31092), .C(n23347), 
            .D(n31094), .Z(n26769)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_3_lut_4_lut_adj_271.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1597_i1_2_lut_rep_743 (.A(\IR[6] ), .B(\IR[7] ), 
            .Z(n33933)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(276[15:26])
    defparam IR_7__I_0_1597_i1_2_lut_rep_743.init = 16'hdddd;
    ORCALUT4 i2297_2_lut_rep_699 (.A(\IR[0] ), .B(\IR[1] ), .Z(n31286)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2297_2_lut_rep_699.init = 16'h8888;
    ORCALUT4 i27104_2_lut_rep_562_3_lut_4_lut (.A(n31285), .B(n31293), .C(n31313), 
            .D(n31270), .Z(n31149)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam i27104_2_lut_rep_562_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 i4_3_lut_4_lut (.A(n33933), .B(n31147), .C(n26788), .D(Read_To_Reg_N_1472), 
            .Z(n12_adj_1939)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_3_lut_4_lut.init = 16'hf4f0;
    ORCALUT4 i1_4_lut_adj_272 (.A(n12250), .B(SP[6]), .C(SP[14]), .D(Set_BusA_To[0]), 
            .Z(n14_adj_16)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_272.init = 16'ha088;
    ORCALUT4 i1_4_lut_adj_273 (.A(n12250), .B(SP[7]), .C(SP[15]), .D(Set_BusA_To[0]), 
            .Z(n14_adj_17)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_273.init = 16'ha088;
    ORCALUT4 i1_4_lut_adj_274 (.A(n12250), .B(SP[0]), .C(SP[8]), .D(Set_BusA_To[0]), 
            .Z(n14_adj_18)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_274.init = 16'ha088;
    ORCALUT4 i1_2_lut_rep_658_3_lut_4_lut (.A(n33958), .B(n33942), .C(n33946), 
            .D(n33944), .Z(n31245)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_658_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i1_4_lut_adj_275 (.A(n12250), .B(SP[1]), .C(SP[9]), .D(Set_BusA_To[0]), 
            .Z(n14_adj_19)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_275.init = 16'ha088;
    ORCALUT4 i2_3_lut_4_lut_adj_276 (.A(\IR[0] ), .B(\IR[1] ), .C(n31299), 
            .D(\IR[6] ), .Z(n26870)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_4_lut_adj_276.init = 16'h8000;
    ORCALUT4 i1_2_lut_rep_614_3_lut (.A(n33958), .B(n33942), .C(n33944), 
            .Z(n31201)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_614_3_lut.init = 16'hf7f7;
    ORCALUT4 i1_2_lut_4_lut_adj_277 (.A(n31107), .B(n31290), .C(n33927), 
            .D(\tstate[2] ), .Z(n25853)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_4_lut_adj_277.init = 16'h2000;
    ORCALUT4 i1_4_lut_adj_278 (.A(n12250), .B(SP[4]), .C(SP[12]), .D(Set_BusA_To[0]), 
            .Z(n14_adj_20)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i1_4_lut_adj_278.init = 16'ha088;
    ORCALUT4 i27_4_lut_4_lut (.A(\IR[0] ), .B(\IR[1] ), .C(\IR[2] ), .D(n31272), 
            .Z(n13_adj_1896)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i27_4_lut_4_lut.init = 16'h8303;
    ORCALUT4 i2_2_lut_3_lut (.A(n33958), .B(\IR[1] ), .C(\tstate[3]_keep ), 
            .Z(n7_adj_21)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    ORCALUT4 i1_3_lut_4_lut_adj_279 (.A(n31203), .B(n31293), .C(n31276), 
            .D(n31130), .Z(n4_adj_1946)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_279.init = 16'hfe00;
    ORCALUT4 i1_2_lut_rep_611_3_lut_4_lut (.A(n33958), .B(n33942), .C(n33946), 
            .D(n33944), .Z(n31198)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_611_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i22_4_lut_adj_280 (.A(n27356), .B(n6_adj_22), .C(ISet[0]), 
            .D(n6_adj_1948), .Z(n8_adj_1949)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut_adj_280.init = 16'hcfc5;
    ORCALUT4 i14931_2_lut_rep_575_3_lut_3_lut_4_lut_2_lut_3_lut (.A(n33958), 
            .B(\IR[1] ), .C(\IR[2] ), .Z(n31162)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i14931_2_lut_rep_575_3_lut_3_lut_4_lut_2_lut_3_lut.init = 16'h7f7f;
    ORCALUT4 i1_2_lut_rep_657_3_lut_4_lut (.A(n33958), .B(\IR[1] ), .C(n33946), 
            .D(\IR[2] ), .Z(n31244)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_657_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i1_2_lut_3_lut_3_lut_4_lut_2_lut_3_lut (.A(\IR[0] ), .B(\IR[1] ), 
            .C(\IR[2] ), .Z(n35)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_2_lut_3_lut.init = 16'h8080;
    ORCALUT4 i2_3_lut_4_lut_adj_281 (.A(n31289), .B(n33933), .C(n31270), 
            .D(n31267), .Z(n27252)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2076[15:26])
    defparam i2_3_lut_4_lut_adj_281.init = 16'h0100;
    ORCALUT4 n31287_bdd_2_lut_3_lut (.A(\IR[6] ), .B(\IR[7] ), .C(n31264), 
            .Z(n31322)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(276[15:26])
    defparam n31287_bdd_2_lut_3_lut.init = 16'h0202;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_282 (.A(n5), .B(n31102), .C(n31105), 
            .D(n31106), .Z(Call_N_1537)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_2_lut_3_lut_4_lut_adj_282.init = 16'h0222;
    ORCALUT4 i24861_4_lut_2_lut_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(n4_adj_1906), 
            .D(n31233), .Z(n26594)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(276[15:26])
    defparam i24861_4_lut_2_lut_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i21_4_lut_adj_283 (.A(n31155), .B(n26154), .C(n22), .D(n26156), 
            .Z(ALU_Op_3__N_1060[2])) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i21_4_lut_adj_283.init = 16'h7fff;
    ORCALUT4 i2_4_lut_2_lut_3_lut (.A(n33952), .B(n33954), .C(n31233), 
            .Z(n27160)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(276[15:26])
    defparam i2_4_lut_2_lut_3_lut.init = 16'h0202;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_284 (.A(n5), .B(n31102), .C(n16514), 
            .D(n31122), .Z(n6_adj_1886)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i2_2_lut_3_lut_4_lut_adj_284.init = 16'h0f02;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_285 (.A(n33952), .B(n33954), .C(\IR[1] ), 
            .D(\IR[0] ), .Z(n5_adj_1950)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(276[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_285.init = 16'hdfff;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_286 (.A(\IR[6] ), .B(\IR[7] ), .C(\IR[5] ), 
            .D(\IR[4] ), .Z(n6_adj_1858)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(276[15:26])
    defparam i2_2_lut_3_lut_4_lut_adj_286.init = 16'hfffd;
    ORCALUT4 i1_2_lut_rep_408_3_lut_4_lut (.A(n5), .B(n31102), .C(n15_adj_1837), 
            .D(n31122), .Z(n30995)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_2_lut_rep_408_3_lut_4_lut.init = 16'h0f02;
    ORCALUT4 i1_2_lut_rep_542_3_lut_4_lut (.A(n33952), .B(\IR[7] ), .C(n33929), 
            .D(\IR[0] ), .Z(n31129)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(276[15:26])
    defparam i1_2_lut_rep_542_3_lut_4_lut.init = 16'h2202;
    ORCALUT4 i1_2_lut_rep_588_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(\IR[1] ), 
            .D(\IR[0] ), .Z(n31175)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(276[15:26])
    defparam i1_2_lut_rep_588_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i14530_2_lut_rep_701 (.A(\IR[6] ), .B(\IR[7] ), .Z(n31288)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14530_2_lut_rep_701.init = 16'h8888;
    ORCALUT4 IR_7__I_0_1652_i14_2_lut_rep_589_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(\IR[5] ), .D(n33948), .Z(n31176)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1652_i14_2_lut_rep_589_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_2_lut_rep_407_3_lut_4_lut (.A(n5), .B(n31102), .C(\Set_BusA_To_3__N_1230[0] ), 
            .D(n31122), .Z(n30994)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_2_lut_rep_407_3_lut_4_lut.init = 16'hf020;
    ORCALUT4 IR_7__I_0_1647_i14_2_lut_rep_654_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(n33950), .D(\IR[4] ), .Z(n31241)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam IR_7__I_0_1647_i14_2_lut_rep_654_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i1_2_lut_rep_520_3_lut_4_lut (.A(n33952), .B(n33954), .C(n33929), 
            .D(n33958), .Z(n31107)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_520_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i14923_2_lut_rep_596_3_lut (.A(n33952), .B(n33954), .C(\IR[2] ), 
            .Z(n31183)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i14923_2_lut_rep_596_3_lut.init = 16'h8080;
    ORCALUT4 i15256_2_lut_rep_671_3_lut_4_lut (.A(n33952), .B(n33954), .C(n33950), 
            .D(n33948), .Z(n31258)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15256_2_lut_rep_671_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 Write_N_1574_bdd_4_lut (.A(n30508), .B(\ALU_Op_3__N_1297[3] ), 
            .C(n2), .D(n31257), .Z(n33432)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam Write_N_1574_bdd_4_lut.init = 16'h0002;
    ORCALUT4 i2_3_lut_rep_651_4_lut (.A(n33952), .B(\IR[7] ), .C(n31311), 
            .D(n31312), .Z(n31238)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_rep_651_4_lut.init = 16'hfff7;
    ORCALUT4 i1_2_lut_rep_571_3_lut_4_lut (.A(n33952), .B(n33954), .C(n31292), 
            .D(\IR[2] ), .Z(n31158)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_571_3_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 i24677_2_lut_3_lut_4_lut (.A(n33952), .B(n33954), .C(n33950), 
            .D(\IR[4] ), .Z(n26389)) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i24677_2_lut_3_lut_4_lut.init = 16'hf777;
    ORCALUT4 i1_2_lut_rep_526_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(n33944), 
            .D(n31292), .Z(n31113)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_526_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_2_lut_rep_610_3_lut_2_lut (.A(\IR[4] ), .B(n33950), .Z(n31197)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i1_2_lut_rep_610_3_lut_2_lut.init = 16'h9999;
    ORCALUT4 i2_3_lut_4_lut_adj_287 (.A(n31196), .B(n31199), .C(n31150), 
            .D(n17134), .Z(n17354)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i2_3_lut_4_lut_adj_287.init = 16'he000;
    ORCALUT4 IR_7__I_0_1649_i14_2_lut_rep_612_3_lut_4_lut (.A(n33948), .B(n33950), 
            .C(n33954), .D(n33952), .Z(n31199)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam IR_7__I_0_1649_i14_2_lut_rep_612_3_lut_4_lut.init = 16'hbfff;
    ORCALUT4 i1_2_lut_rep_577_3_lut_4_lut_2_lut_2_lut (.A(\IR[4] ), .B(\IR[5] ), 
            .Z(n31164)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i1_2_lut_rep_577_3_lut_4_lut_2_lut_2_lut.init = 16'h1111;
    ORCALUT4 n33433_bdd_3_lut_4_lut (.A(n33922), .B(n30504), .C(ISet[1]), 
            .D(n33433), .Z(write)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam n33433_bdd_3_lut_4_lut.init = 16'hefe0;
    ORCALUT4 i22_4_lut_adj_288 (.A(n11_adj_1951), .B(n6_adj_22), .C(ISet[0]), 
            .D(n27390), .Z(n8_adj_1952)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i22_4_lut_adj_288.init = 16'hcacf;
    ORCALUT4 n33036_bdd_4_lut (.A(n33036), .B(n33035), .C(n31080), .D(n31149), 
            .Z(n33920)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n33036_bdd_4_lut.init = 16'hffca;
    ORCALUT4 i8_4_lut (.A(n9528), .B(n16_adj_1953), .C(n12_adj_1954), 
            .D(n50_adj_1901), .Z(TStates_2__N_1432[2])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i8_4_lut.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1691_i14_2_lut_rep_641_3_lut_4_lut (.A(n33948), .B(n33950), 
            .C(n33954), .D(n33952), .Z(n31228)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam IR_7__I_0_1691_i14_2_lut_rep_641_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i1_2_lut_3_lut_4_lut_2_lut_2_lut (.A(\IR[4] ), .B(n33950), 
            .Z(n31269)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i1_2_lut_3_lut_4_lut_2_lut_2_lut.init = 16'heeee;
    ORCALUT4 n30193_bdd_4_lut_28318_4_lut (.A(\IR[2] ), .B(\IR[0] ), .C(n21_adj_1955), 
            .D(n30193), .Z(n30531)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2374[15:26])
    defparam n30193_bdd_4_lut_28318_4_lut.init = 16'h7430;
    ORCALUT4 i3_4_lut_4_lut_adj_289 (.A(\IR[2] ), .B(n31014), .C(n31273), 
            .D(n31276), .Z(n26925)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2374[15:26])
    defparam i3_4_lut_4_lut_adj_289.init = 16'h4000;
    ORCALUT4 ExchangeDH_I_0_790_2_lut_rep_432_3_lut_4_lut (.A(n31199), .B(n31198), 
            .C(\tstate[3]_keep ), .D(n31290), .Z(n31019)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam ExchangeDH_I_0_790_2_lut_rep_432_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_3_lut_4_lut_4_lut (.A(\IR[2] ), .B(n31286), .C(\IR[4] ), 
            .D(\IR[5] ), .Z(n4_adj_1905)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2374[15:26])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h4c44;
    ORCALUT4 i1_4_lut_4_lut_adj_290 (.A(\IR[2] ), .B(n27), .C(n4_adj_1909), 
            .D(n26261), .Z(Set_BusA_To_3__N_1052[2])) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2374[15:26])
    defparam i1_4_lut_4_lut_adj_290.init = 16'hf444;
    ORCALUT4 i1_4_lut_4_lut_adj_291 (.A(\IR[2] ), .B(n20), .C(n9127), 
            .D(\IR[1] ), .Z(n20_adj_1956)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2374[15:26])
    defparam i1_4_lut_4_lut_adj_291.init = 16'h5450;
    ORCALUT4 i2_4_lut_4_lut_adj_292 (.A(\IR[2] ), .B(n30994), .C(n33936), 
            .D(n31236), .Z(n6_adj_1910)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2374[15:26])
    defparam i2_4_lut_4_lut_adj_292.init = 16'hf4f0;
    ORCALUT4 i441_2_lut_rep_431_3_lut_4_lut (.A(n31199), .B(n31198), .C(\tstate[4]_keep ), 
            .D(n31290), .Z(n31018)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i441_2_lut_rep_431_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 ISet_1__I_0_1590_i3_2_lut_rep_703 (.A(ISet[0]), .B(n33956), 
            .Z(n31290)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(265[9:14])
    defparam ISet_1__I_0_1590_i3_2_lut_rep_703.init = 16'heeee;
    ORCALUT4 i8295_3_lut_4_lut (.A(ISet[0]), .B(ISet[1]), .C(n8), .D(n3_adj_23), 
            .Z(n10142)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(265[9:14])
    defparam i8295_3_lut_4_lut.init = 16'hff01;
    ORCALUT4 i2_3_lut_4_lut_adj_293 (.A(n31241), .B(n31201), .C(ISet[0]), 
            .D(n31246), .Z(n26779)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_293.init = 16'h0100;
    ORCALUT4 i25621_2_lut_3_lut_4_lut (.A(n31241), .B(n31201), .C(n31203), 
            .D(n31185), .Z(n27356)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i25621_2_lut_3_lut_4_lut.init = 16'heee0;
    PFUMX i22_adj_294 (.BLUT(ALU_Op_3__N_1060[0]), .ALUT(ALU_Op_3__N_1064[0]), 
          .C0(ISet[0]), .Z(n8_adj_24));
    ORCALUT4 i1_2_lut_3_lut_adj_295 (.A(ISet[0]), .B(ISet[1]), .C(last_tstate_keep), 
            .Z(n26000)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(265[9:14])
    defparam i1_2_lut_3_lut_adj_295.init = 16'h1010;
    ORCALUT4 i14725_2_lut_rep_704 (.A(\IR[2] ), .B(n33942), .Z(n31291)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14725_2_lut_rep_704.init = 16'heeee;
    ORCALUT4 n33429_bdd_2_lut_rep_732 (.A(n33919), .B(\ALU_Op_3__N_1297[3] ), 
            .Z(n33922)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n33429_bdd_2_lut_rep_732.init = 16'h2222;
    ORCALUT4 i1_3_lut_4_lut_adj_296 (.A(\IR[2] ), .B(\IR[1] ), .C(n31315), 
            .D(n8975), .Z(n8977)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_296.init = 16'hff10;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_297 (.A(n4), .B(n33924), .C(n31162), 
            .D(n31228), .Z(n13_adj_1887)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i1_2_lut_3_lut_4_lut_adj_297.init = 16'h0002;
    ORCALUT4 IR_7__N_1106_I_0_1641_i1_2_lut_rep_705 (.A(n33958), .B(n33942), 
            .Z(n31292)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1190[15:26])
    defparam IR_7__N_1106_I_0_1641_i1_2_lut_rep_705.init = 16'hbbbb;
    ORCALUT4 i6_4_lut_adj_298 (.A(n31003), .B(n12_adj_1939), .C(n33924), 
            .D(n17_adj_1869), .Z(n14_c)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i6_4_lut_adj_298.init = 16'hfeee;
    ORCALUT4 IR_7__I_0_1598_i4_2_lut_rep_583_3_lut_4_lut (.A(\IR[0] ), .B(\IR[1] ), 
            .C(n31293), .D(n33944), .Z(n31170)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1190[15:26])
    defparam IR_7__I_0_1598_i4_2_lut_rep_583_3_lut_4_lut.init = 16'hfbff;
    ORCALUT4 i25615_2_lut_rep_616_3_lut (.A(n33958), .B(\IR[1] ), .C(\IR[2] ), 
            .Z(n31203)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1190[15:26])
    defparam i25615_2_lut_rep_616_3_lut.init = 16'hfbfb;
    ORCALUT4 i1_2_lut_rep_652_3_lut_4_lut (.A(n33958), .B(\IR[1] ), .C(n33946), 
            .D(n33944), .Z(n31239)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1190[15:26])
    defparam i1_2_lut_rep_652_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i1_2_lut_rep_527_3_lut_4_lut (.A(\IR[0] ), .B(n33942), .C(n31293), 
            .D(\IR[2] ), .Z(n31114)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1190[15:26])
    defparam i1_2_lut_rep_527_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i17_4_lut (.A(n26457), .B(n53_adj_1959), .C(ISet[1]), .D(ISet[0]), 
            .Z(n26532)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(119[17:21])
    defparam i17_4_lut.init = 16'hcfca;
    ORCALUT4 i27259_2_lut_rep_497_4_lut_4_lut (.A(\IR[2] ), .B(n31155), 
            .C(n31286), .D(n31242), .Z(n31084)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i27259_2_lut_rep_497_4_lut_4_lut.init = 16'h33b3;
    ORCALUT4 IR_7__I_0_1630_i3_2_lut_rep_706 (.A(n33952), .B(n33954), .Z(n31293)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1146[15:26])
    defparam IR_7__I_0_1630_i3_2_lut_rep_706.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_655_3_lut (.A(\IR[6] ), .B(n33954), .C(\IR[5] ), 
            .Z(n31242)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1146[15:26])
    defparam i1_2_lut_rep_655_3_lut.init = 16'hfefe;
    ORCALUT4 IR_7__I_0_1640_i14_2_lut_rep_647_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(\IR[5] ), .D(n33948), .Z(n31234)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1146[15:26])
    defparam IR_7__I_0_1640_i14_2_lut_rep_647_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 IR_7__I_0_1624_i14_2_lut_rep_598_3_lut_4_lut (.A(n33952), .B(n33954), 
            .C(n33950), .D(n33948), .Z(n31185)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1146[15:26])
    defparam IR_7__I_0_1624_i14_2_lut_rep_598_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 i2_3_lut_rep_567_4_lut_4_lut (.A(\IR[2] ), .B(n31286), .C(n31293), 
            .D(\IR[5] ), .Z(n31154)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i2_3_lut_rep_567_4_lut_4_lut.init = 16'hfff7;
    ORCALUT4 IR_7__I_0_1631_i14_2_lut_rep_676_3_lut_4_lut (.A(n33952), .B(n33954), 
            .C(n33950), .D(\IR[4] ), .Z(n31263)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1146[15:26])
    defparam IR_7__I_0_1631_i14_2_lut_rep_676_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1622_i14_2_lut_rep_617_3_lut_4_lut (.A(n33952), .B(n33954), 
            .C(n33950), .D(n33948), .Z(n31204)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1146[15:26])
    defparam IR_7__I_0_1622_i14_2_lut_rep_617_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 select_93_Select_2_i4_2_lut_rep_734 (.A(n3), .B(n2), .Z(n33924)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam select_93_Select_2_i4_2_lut_rep_734.init = 16'heeee;
    ORCALUT4 IR_7__I_0_1619_i3_2_lut_rep_667_3_lut (.A(\IR[6] ), .B(n33954), 
            .C(n33944), .Z(n31254)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1146[15:26])
    defparam IR_7__I_0_1619_i3_2_lut_rep_667_3_lut.init = 16'hefef;
    ORCALUT4 i15387_2_lut_rep_570_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(n33942), .D(\IR[2] ), .Z(n31157)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1146[15:26])
    defparam i15387_2_lut_rep_570_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i1_2_lut_rep_423_4_lut_4_lut_3_lut (.A(n3), .B(n2), .C(n31156), 
            .Z(n31010)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_rep_423_4_lut_4_lut_3_lut.init = 16'h0e0e;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_299 (.A(n31245), .B(n31204), .C(ACC[1]), 
            .D(n31290), .Z(n23595)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_299.init = 16'h0f2d;
    PFUMX i27295 (.BLUT(n28973), .ALUT(n28972), .C0(\IR[1] ), .Z(n28974));
    ORCALUT4 n33039_bdd_2_lut_3_lut (.A(n33920), .B(n9576), .C(n25706), 
            .Z(n33040)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n33039_bdd_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i2_2_lut_3_lut_4_lut_4_lut (.A(\IR[5] ), .B(n33924), .C(n31249), 
            .D(n31273), .Z(n23627)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    ORCALUT4 i1_4_lut_4_lut_adj_300 (.A(\IR[5] ), .B(n26883), .C(n8_adj_1960), 
            .D(n33925), .Z(n22)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_300.init = 16'h55d5;
    ORCALUT4 i98_3_lut_4_lut_4_lut (.A(\IR[5] ), .B(\IR[6] ), .C(\IR[1] ), 
            .D(\IR[0] ), .Z(n100_adj_25)) /* synthesis lut_function=(A (B ((D)+!C))+!A (((D)+!C)+!B)) */ ;
    defparam i98_3_lut_4_lut_4_lut.init = 16'hdd1d;
    ORCALUT4 i1_2_lut_2_lut_adj_301 (.A(\IR[5] ), .B(\IR[2] ), .Z(n68)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_2_lut_adj_301.init = 16'hdddd;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_302 (.A(n31245), .B(n31204), .C(ACC[0]), 
            .D(n31290), .Z(n23577)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_302.init = 16'h0f2d;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_303 (.A(n31245), .B(n31204), .C(ACC[7]), 
            .D(n31290), .Z(n23583)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_303.init = 16'h0f2d;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_304 (.A(n31245), .B(n31204), .C(ACC[6]), 
            .D(n31290), .Z(n23585)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_304.init = 16'h0f2d;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_305 (.A(n31245), .B(n31204), .C(ACC[4]), 
            .D(n31290), .Z(n23589)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_305.init = 16'h0f2d;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_306 (.A(n31245), .B(n31204), .C(ACC[5]), 
            .D(n31290), .Z(n23587)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_306.init = 16'h0f2d;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_307 (.A(n31245), .B(n31204), .C(ACC[3]), 
            .D(n31290), .Z(n23591)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_307.init = 16'h0f2d;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_308 (.A(n31245), .B(n31204), .C(ACC[2]), 
            .D(n31290), .Z(n23593)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_308.init = 16'h0f2d;
    ORCALUT4 i1_2_lut_rep_709 (.A(\IR[2] ), .B(\IR[0] ), .Z(n31296)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_709.init = 16'h4444;
    ORCALUT4 i14900_2_lut_rep_712 (.A(\IR[4] ), .B(n33950), .Z(n31299)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(506[27] 509[30])
    defparam i14900_2_lut_rep_712.init = 16'h2222;
    ORCALUT4 i27249_3_lut_rep_735 (.A(\IR[0] ), .B(n9399), .Z(n33925)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1091[15:26])
    defparam i27249_3_lut_rep_735.init = 16'h2222;
    ORCALUT4 BusB_7__I_0_129_i4_2_lut_rep_550_3_lut_4_lut (.A(n33948), .B(\IR[5] ), 
            .C(BusB[3]), .D(\Set_BusA_To_3__N_1230[0] ), .Z(n31137)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(506[27] 509[30])
    defparam BusB_7__I_0_129_i4_2_lut_rep_550_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut_adj_309 (.A(n7), .B(n22_adj_1962), .Z(\Set_BusB_To[3] )) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_2_lut_adj_309.init = 16'h4444;
    ORCALUT4 i2_3_lut_rep_481_4_lut (.A(n31257), .B(n33933), .C(n31256), 
            .D(n31290), .Z(n31068)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_rep_481_4_lut.init = 16'h0002;
    ORCALUT4 i1_3_lut_4_lut_adj_310 (.A(n31196), .B(n31241), .C(n31290), 
            .D(Alternate), .Z(Alternate_N_907)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(766[15:26])
    defparam i1_3_lut_4_lut_adj_310.init = 16'hfe01;
    ORCALUT4 i1_2_lut_rep_716 (.A(\IR[6] ), .B(\IR[5] ), .Z(n31303)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_716.init = 16'h4444;
    ORCALUT4 i1_2_lut_rep_639_3_lut (.A(n33952), .B(\IR[5] ), .C(n33944), 
            .Z(n31226)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_639_3_lut.init = 16'h0404;
    ORCALUT4 i2_2_lut_3_lut_adj_311 (.A(\IR[6] ), .B(\IR[5] ), .C(\ALU_Op_3__N_1297[3] ), 
            .Z(n15)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_2_lut_3_lut_adj_311.init = 16'h4040;
    ORCALUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(\IR[6] ), .B(\IR[5] ), .C(\ALU_Op_3__N_1297[3] ), 
            .D(\IR[2] ), .Z(n25925)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'h0004;
    ORCALUT4 i1_4_lut_4_lut_adj_312 (.A(\IR[6] ), .B(\IR[5] ), .C(\IR[7] ), 
            .D(\IR[0] ), .Z(n29_adj_1963)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_4_lut_adj_312.init = 16'h00a4;
    ORCALUT4 i40_4_lut_3_lut (.A(\IR[1] ), .B(Set_BusA_To_3__N_1199[0]), 
            .C(\IR[2] ), .Z(n21_adj_1955)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i40_4_lut_3_lut.init = 16'h5858;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_313 (.A(\IR[1] ), .B(\IR[2] ), .C(n33954), 
            .D(n33952), .Z(n9399)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_4_lut_4_lut_adj_313.init = 16'hfffd;
    ORCALUT4 pwr_bdd_2_lut_27757_3_lut_4_lut_4_lut (.A(\IR[1] ), .B(n29639), 
            .C(n2), .D(\ALU_Op_3__N_1297[3] ), .Z(n29641)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam pwr_bdd_2_lut_27757_3_lut_4_lut_4_lut.init = 16'heeef;
    ORCALUT4 i1_4_lut_4_lut_adj_314 (.A(\IR[1] ), .B(\IR[7] ), .C(n9117), 
            .D(n30489), .Z(IncDec_16_3__N_1044[0])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_4_lut_adj_314.init = 16'h5140;
    ORCALUT4 i2_3_lut_4_lut_4_lut_adj_315 (.A(\IR[1] ), .B(\IR[7] ), .C(\IR[0] ), 
            .D(\IR[2] ), .Z(n26681)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_4_lut_4_lut_adj_315.init = 16'hddfd;
    ORCALUT4 i2_4_lut_4_lut_4_lut_adj_316 (.A(\IR[1] ), .B(n31288), .C(n31222), 
            .D(\IR[0] ), .Z(n27101)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_4_lut_4_lut_4_lut_adj_316.init = 16'h4044;
    ORCALUT4 i1_2_lut_rep_459 (.A(\Prefix[0] ), .B(n1), .Z(n31046)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_rep_459.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_adj_317 (.A(\Prefix[0] ), .B(n1), .C(n31195), 
            .Z(\ISet_1__N_633[0] )) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_3_lut_adj_317.init = 16'h2f2f;
    ORCALUT4 i2_3_lut_4_lut_adj_318 (.A(\Prefix[0] ), .B(n1), .C(\tstate[2] ), 
            .D(n31195), .Z(clk_op_enable_218)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_3_lut_4_lut_adj_318.init = 16'hd000;
    ORCALUT4 i3_3_lut_4_lut_adj_319 (.A(n31125), .B(n31106), .C(Inc_PC_N_1453), 
            .D(n31105), .Z(n8_adj_1964)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i3_3_lut_4_lut_adj_319.init = 16'hf7ff;
    ORCALUT4 i25562_2_lut_3_lut_4_lut (.A(n31125), .B(n31106), .C(n31161), 
            .D(n31166), .Z(n27295)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i25562_2_lut_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i1_2_lut_rep_721 (.A(n33958), .B(\IR[1] ), .Z(n31308)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_721.init = 16'h4444;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_320 (.A(\IR[0] ), .B(\IR[1] ), .C(\IR[7] ), 
            .D(\IR[6] ), .Z(n27_adj_1965)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_2_lut_3_lut_4_lut_adj_320.init = 16'h4004;
    ORCALUT4 IR_0__bdd_2_lut_28422_3_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), 
            .B(n31251), .C(\IR[0] ), .D(n25978), .Z(n30489)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(676[19] 711[26])
    defparam IR_0__bdd_2_lut_28422_3_lut_4_lut.init = 16'h4000;
    ORCALUT4 i1_2_lut_rep_723 (.A(n33944), .B(n33950), .Z(n31310)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_723.init = 16'h4444;
    ORCALUT4 i1_2_lut_rep_674_3_lut (.A(\IR[2] ), .B(\IR[5] ), .C(\IR[7] ), 
            .Z(n31261)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_674_3_lut.init = 16'h4040;
    ORCALUT4 i1_2_lut_rep_586_3_lut_4_lut (.A(n33944), .B(n33950), .C(n33952), 
            .D(n33954), .Z(n31173)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_586_3_lut_4_lut.init = 16'h0400;
    ORCALUT4 i2_3_lut_3_lut_4_lut (.A(\IR[2] ), .B(\IR[5] ), .C(n6_adj_1966), 
            .D(\IR[6] ), .Z(n26764)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 i1_3_lut_4_lut_adj_321 (.A(\ALU_Op_3__N_1297[3] ), .B(n31251), 
            .C(n31107), .D(n9377), .Z(n9551)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(676[19] 711[26])
    defparam i1_3_lut_4_lut_adj_321.init = 16'h4044;
    ORCALUT4 i1_2_lut_rep_724 (.A(\Set_BusA_To_3__N_1230[0] ), .B(\IR[0] ), 
            .Z(n31311)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1091[15:26])
    defparam i1_2_lut_rep_724.init = 16'hbbbb;
    ORCALUT4 i3_4_lut_adj_322 (.A(n31082), .B(n31013), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n31149), .Z(n25720)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_322.init = 16'hfeee;
    ORCALUT4 i1_2_lut_adj_323 (.A(\IR[4] ), .B(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n12)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_adj_323.init = 16'h8888;
    ORCALUT4 IR_7__I_0_1638_i1_2_lut_rep_725 (.A(n33942), .B(\IR[2] ), .Z(n31312)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1322[15:26])
    defparam IR_7__I_0_1638_i1_2_lut_rep_725.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_662_3_lut_4_lut (.A(\IR[1] ), .B(\IR[2] ), .C(\IR[7] ), 
            .D(\IR[6] ), .Z(n31249)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1322[15:26])
    defparam i1_2_lut_rep_662_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1751_i10_2_lut_rep_726 (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n31313)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1751_i10_2_lut_rep_726.init = 16'heeee;
    ORCALUT4 IR_7__I_0_1650_i11_2_lut_rep_646_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1230[0] ), 
            .C(n33942), .D(\IR[0] ), .Z(n31233)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1650_i11_2_lut_rep_646_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 IR_7__I_0_1636_i11_2_lut_rep_666_3_lut_4_lut (.A(n33944), .B(\Set_BusA_To_3__N_1230[0] ), 
            .C(n33942), .D(\IR[0] ), .Z(n31253)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1636_i11_2_lut_rep_666_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 IR_7__I_0_1606_i11_2_lut_rep_650_3_lut_4_lut (.A(\IR[2] ), .B(n33946), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n31237)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1606_i11_2_lut_rep_650_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 IR_7__I_0_1610_i11_2_lut_rep_656_3_lut_4_lut (.A(\IR[2] ), .B(\Set_BusA_To_3__N_1230[0] ), 
            .C(\IR[1] ), .D(\IR[0] ), .Z(n31243)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam IR_7__I_0_1610_i11_2_lut_rep_656_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i1_3_lut_4_lut_adj_324 (.A(n31171), .B(n33925), .C(n31167), 
            .D(n31231), .Z(n10_adj_1968)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;
    defparam i1_3_lut_4_lut_adj_324.init = 16'hdfdd;
    ORCALUT4 i24713_2_lut_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(n33929), 
            .D(\IR[0] ), .Z(n26427)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2477[15:26])
    defparam i24713_2_lut_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i11979_3_lut_rep_441_4_lut_4_lut (.A(n31257), .B(n7), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n2), .Z(n31028)) /* synthesis lut_function=(A (C)+!A !(B+(C+!(D)))) */ ;
    defparam i11979_3_lut_rep_441_4_lut_4_lut.init = 16'ha1a0;
    ORCALUT4 i7981_2_lut_rep_728 (.A(\IR[6] ), .B(\IR[7] ), .Z(n31315)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i7981_2_lut_rep_728.init = 16'h2222;
    ORCALUT4 Write_N_1574_bdd_3_lut_28327_4_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(n3), .D(n7), .Z(n30508)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam Write_N_1574_bdd_3_lut_28327_4_lut.init = 16'h00d0;
    ORCALUT4 sram_addr_c_bdd_2_lut_28242_3_lut (.A(\IR[6] ), .B(\IR[7] ), 
            .C(n30531), .Z(n30532)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam sram_addr_c_bdd_2_lut_28242_3_lut.init = 16'h2020;
    ORCALUT4 i2_3_lut_3_lut_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(\IR[0] ), 
            .D(n33929), .Z(MCycles_2__N_1029[0])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i2_3_lut_3_lut_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i1_4_lut_adj_325 (.A(\Set_BusA_To_3__N_1230[0] ), .B(n31), 
            .C(n31283), .D(n7_adj_1891), .Z(ALU_Op_3__N_1064[0])) /* synthesis lut_function=(A (B+(C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_4_lut_adj_325.init = 16'hf8a8;
    ORCALUT4 i2_4_lut_adj_326 (.A(\Set_BusA_To_3__N_1230[0] ), .B(n6_adj_1969), 
            .C(n27354), .D(n38), .Z(ALU_Op_3__N_1060[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_326.init = 16'hff8a;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_327 (.A(\IR[6] ), .B(\IR[7] ), .C(n17), 
            .D(\IR[0] ), .Z(n9127)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_3_lut_4_lut_adj_327.init = 16'h2000;
    ORCALUT4 i1_2_lut_rep_675_3_lut (.A(n33952), .B(n33954), .C(n33956), 
            .Z(n31262)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_rep_675_3_lut.init = 16'h2020;
    ORCALUT4 i1_2_lut_rep_649_3_lut_4_lut (.A(\IR[6] ), .B(\IR[7] ), .C(\IR[1] ), 
            .D(n33958), .Z(n31236)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_rep_649_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut_rep_597_2_lut_3_lut (.A(\IR[6] ), .B(\IR[7] ), .C(\IR[2] ), 
            .Z(n31184)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_rep_597_2_lut_3_lut.init = 16'h0202;
    ORCALUT4 i2_2_lut_rep_670_3_lut (.A(n33944), .B(n33942), .C(n33958), 
            .Z(n31257)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_2_lut_rep_670_3_lut.init = 16'hf7f7;
    ORCALUT4 i1_2_lut_rep_537_3_lut_4_lut (.A(\IR[2] ), .B(\IR[1] ), .C(\ALU_Op_3__N_1297[3] ), 
            .D(\IR[0] ), .Z(n31124)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_rep_537_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i14588_2_lut_2_lut_3_lut_4_lut (.A(\IR[2] ), .B(n33942), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n33958), .Z(n408[0])) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i14588_2_lut_2_lut_3_lut_4_lut.init = 16'hff7f;
    ORCALUT4 i3_3_lut_4_lut_adj_328 (.A(n31157), .B(n31152), .C(n31017), 
            .D(n26124), .Z(n8_adj_1960)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_3_lut_4_lut_adj_328.init = 16'h00e0;
    ORCALUT4 i1_2_lut_2_lut_3_lut (.A(\IR[2] ), .B(\IR[1] ), .C(\IR[0] ), 
            .Z(n25912)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h0808;
    ORCALUT4 i1_2_lut_rep_554_3_lut_4_lut (.A(\IR[2] ), .B(\IR[1] ), .C(n7), 
            .D(\IR[0] ), .Z(n31141)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_rep_554_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i2_3_lut_rep_430_4_lut (.A(n31130), .B(n31174), .C(n31158), 
            .D(n31166), .Z(n31017)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_rep_430_4_lut.init = 16'h0080;
    ORCALUT4 i1_2_lut_rep_673_3_lut (.A(\IR[2] ), .B(n33942), .C(\IR[0] ), 
            .Z(n31260)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_2_lut_rep_673_3_lut.init = 16'h8080;
    ORCALUT4 i14639_2_lut_rep_461_4_lut (.A(n31292), .B(n31185), .C(n31277), 
            .D(n31278), .Z(n31048)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i14639_2_lut_rep_461_4_lut.init = 16'hfe00;
    ORCALUT4 i2_3_lut_rep_400_4_lut (.A(n31130), .B(n31174), .C(n31157), 
            .D(n17444), .Z(n30987)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_400_4_lut.init = 16'h8000;
    ORCALUT4 i27142_2_lut_rep_730 (.A(n33950), .B(n33948), .Z(n31317)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i27142_2_lut_rep_730.init = 16'h1111;
    ORCALUT4 BusB_7__I_0_129_i1_2_lut_rep_545_3_lut_4_lut (.A(n33950), .B(\IR[4] ), 
            .C(BusB[0]), .D(\Set_BusA_To_3__N_1230[0] ), .Z(n31132)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam BusB_7__I_0_129_i1_2_lut_rep_545_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_329 (.A(n31198), .B(n31258), .C(n31017), 
            .D(n17354), .Z(n6_adj_1970)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1086[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_329.init = 16'hb000;
    ORCALUT4 i2_3_lut_4_lut_adj_330 (.A(n31198), .B(n31258), .C(n31290), 
            .D(\tstate[2] ), .Z(n26668)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1086[15:26])
    defparam i2_3_lut_4_lut_adj_330.init = 16'h0400;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_331 (.A(n31253), .B(n31258), .C(n31185), 
            .D(n31244), .Z(n5_adj_1971)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1082[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_331.init = 16'hbbb0;
    ORCALUT4 i2_2_lut_rep_635_3_lut (.A(\IR[5] ), .B(\IR[4] ), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n31222)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_rep_635_3_lut.init = 16'h1010;
    ORCALUT4 i2_3_lut_rep_492_4_lut (.A(n31257), .B(n31256), .C(n31290), 
            .D(n33933), .Z(n31079)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(278[23:43])
    defparam i2_3_lut_rep_492_4_lut.init = 16'hfffb;
    ORCALUT4 i2_2_lut_4_lut_adj_332 (.A(n31170), .B(\IR[5] ), .C(n31114), 
            .D(n31106), .Z(n10_adj_1972)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam i2_2_lut_4_lut_adj_332.init = 16'ha800;
    ORCALUT4 i24799_2_lut_rep_405_3_lut_4_lut (.A(n31164), .B(n31156), .C(n9377), 
            .D(n31158), .Z(n30992)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i24799_2_lut_rep_405_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i15192_2_lut_4_lut (.A(n31292), .B(n31185), .C(n31277), .D(n15_adj_1973), 
            .Z(n17001)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2638[19:36])
    defparam i15192_2_lut_4_lut.init = 16'hfe00;
    ORCALUT4 i2_3_lut_4_lut_adj_333 (.A(n33933), .B(n31117), .C(n31170), 
            .D(n15_adj_1903), .Z(n17130)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_333.init = 16'h8000;
    ORCALUT4 i6_3_lut_4_lut (.A(n33933), .B(n31117), .C(n17430), .D(n27359), 
            .Z(n14_adj_1974)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 reduce_or_155_i2_2_lut_rep_644 (.A(n2), .B(\ALU_Op_3__N_1297[3] ), 
            .Z(n31231)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_or_155_i2_2_lut_rep_644.init = 16'heeee;
    ORCALUT4 i2_3_lut_4_lut_adj_334 (.A(n31233), .B(n31234), .C(n31250), 
            .D(n31290), .Z(stop)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam i2_3_lut_4_lut_adj_334.init = 16'h0010;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_335 (.A(n31233), .B(n31234), .C(n31250), 
            .D(n3), .Z(n4_adj_1934)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1355[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_335.init = 16'h0100;
    ORCALUT4 i15106_2_lut_rep_493_4_lut (.A(\IR[5] ), .B(n31249), .C(\IR[0] ), 
            .D(n31151), .Z(n31080)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1322[15:26])
    defparam i15106_2_lut_rep_493_4_lut.init = 16'hfd00;
    ORCALUT4 i1_2_lut_rep_444_3_lut_4_lut (.A(n31264), .B(n31234), .C(n31246), 
            .D(n31150), .Z(n31031)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1301[15:26])
    defparam i1_2_lut_rep_444_3_lut_4_lut.init = 16'h10f0;
    ORCALUT4 i1_4_lut_adj_336 (.A(\ALU_Op_3__N_1297[3] ), .B(n15_adj_1975), 
            .C(\IR[1] ), .D(n31173), .Z(n26119)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_336.init = 16'heccc;
    ORCALUT4 i8298_3_lut_4_lut (.A(n31118), .B(n31290), .C(n294), .D(Jump), 
            .Z(n10145)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i8298_3_lut_4_lut.init = 16'hffe0;
    PFUMX i22_adj_337 (.BLUT(TStates_2__N_1432[2]), .ALUT(TStates_2__N_1435[2]), 
          .C0(ISet[0]), .Z(n8_adj_1976));
    ORCALUT4 i2_4_lut_adj_338 (.A(n25995), .B(\ALU_Op_3__N_1297[3] ), .C(n30990), 
            .D(n31105), .Z(n26754)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i2_4_lut_adj_338.init = 16'h0032;
    PFUMX i21_adj_339 (.BLUT(n8_adj_1952), .ALUT(n617), .C0(n33956), .Z(\Set_Addr_To_2__N_1441[0] ));
    ORCALUT4 i2_3_lut_4_lut_adj_340 (.A(n31199), .B(n31258), .C(n31196), 
            .D(n31290), .Z(n23524)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_4_lut_adj_340.init = 16'hfff2;
    ORCALUT4 i1_4_lut_4_lut_adj_341 (.A(n31199), .B(n31258), .C(n31264), 
            .D(n31233), .Z(n25726)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_341.init = 16'hf232;
    ORCALUT4 i5_4_lut_adj_342 (.A(n31146), .B(n7_adj_1977), .C(n31121), 
            .D(n8_adj_1868), .Z(n27113)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i5_4_lut_adj_342.init = 16'hffdf;
    ORCALUT4 i14591_2_lut_rep_645 (.A(n2), .B(n3), .Z(n31232)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i14591_2_lut_rep_645.init = 16'heeee;
    PFUMX i29751 (.BLUT(Write_N_1574), .ALUT(n33432), .C0(ISet[0]), .Z(n33433));
    ORCALUT4 i2_3_lut_4_lut_adj_343 (.A(n31255), .B(n31256), .C(n31270), 
            .D(n31254), .Z(n26903)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(935[21] 943[24])
    defparam i2_3_lut_4_lut_adj_343.init = 16'hfffb;
    ORCALUT4 i26726_3_lut_4_lut (.A(n31250), .B(n31261), .C(\IR[6] ), 
            .D(n26792), .Z(n37_adj_1978)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i26726_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i5400_3_lut_rep_433_4_lut (.A(n31119), .B(n31290), .C(\tstate[3]_keep ), 
            .D(\tstate[4]_keep ), .Z(n31020)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i5400_3_lut_rep_433_4_lut.init = 16'h1110;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_344 (.A(n31204), .B(n31244), .C(n25720), 
            .D(n31154), .Z(n9_c)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_344.init = 16'hf1ff;
    ORCALUT4 i24639_2_lut_rep_422_3_lut_4_lut (.A(n31293), .B(n31237), .C(n31158), 
            .D(n31164), .Z(n31009)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i24639_2_lut_rep_422_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i1_3_lut_rep_498_4_lut (.A(n31293), .B(n31237), .C(n31269), 
            .D(n31164), .Z(n31085)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_3_lut_rep_498_4_lut.init = 16'hfeee;
    ORCALUT4 i1_2_lut_rep_495_3_lut_4_lut (.A(n31254), .B(n33942), .C(n31256), 
            .D(n31255), .Z(n31082)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i1_2_lut_rep_495_3_lut_4_lut.init = 16'h1101;
    ORCALUT4 i1_2_lut_rep_465_3_lut_4_lut (.A(n31254), .B(\IR[1] ), .C(n31256), 
            .D(n31255), .Z(n31052)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_465_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i14919_rep_14_2_lut_3_lut_4_lut (.A(n31119), .B(n31290), .C(\RegAddrB_r[1] ), 
            .D(\tstate[3]_keep ), .Z(\RegAddrB[1] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i14919_rep_14_2_lut_3_lut_4_lut.init = 16'he0f0;
    ORCALUT4 i2839_3_lut_4_lut (.A(n31254), .B(\IR[1] ), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n31169), .Z(n4051)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i2839_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 i3431_3_lut_4_lut (.A(n31254), .B(\IR[1] ), .C(n31256), .D(n31250), 
            .Z(n4734)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i3431_3_lut_4_lut.init = 16'h0111;
    ORCALUT4 i2_3_lut_4_lut_adj_345 (.A(\IR[0] ), .B(n33924), .C(n31276), 
            .D(\IR[6] ), .Z(n26904)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i2_3_lut_4_lut_adj_345.init = 16'h4000;
    ORCALUT4 i2_4_lut_4_lut_adj_346 (.A(n31243), .B(n31185), .C(n4_adj_1879), 
            .D(n31122), .Z(n9_adj_1979)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(429[15:26])
    defparam i2_4_lut_4_lut_adj_346.init = 16'h5150;
    ORCALUT4 i1_2_lut_rep_436_3_lut_4_lut_3_lut (.A(n31245), .B(n31185), 
            .C(n31204), .Z(n31023)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_436_3_lut_4_lut_3_lut.init = 16'h0808;
    ORCALUT4 i24813_2_lut_3_lut_4_lut (.A(n31245), .B(n31244), .C(n31233), 
            .D(n31196), .Z(n26536)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i24813_2_lut_3_lut_4_lut.init = 16'h4000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_347 (.A(n31245), .B(n31244), .C(n31246), 
            .D(n31228), .Z(n15_adj_1975)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_347.init = 16'h00b0;
    ORCALUT4 i15421_2_lut_3_lut_4_lut_4_lut (.A(n31245), .B(n31244), .C(n31185), 
            .D(n31204), .Z(n17316)) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;
    defparam i15421_2_lut_3_lut_4_lut_4_lut.init = 16'hf454;
    ORCALUT4 i24663_3_lut_4_lut (.A(n31245), .B(n31244), .C(n31198), .D(n31176), 
            .Z(n26372)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;
    defparam i24663_3_lut_4_lut.init = 16'hff40;
    ORCALUT4 i2341_2_lut_4_lut (.A(\IR[0] ), .B(n33927), .C(n31255), .D(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n3276)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2341_2_lut_4_lut.init = 16'hec00;
    ORCALUT4 IR_1__N_1090_bdd_4_lut_27756 (.A(\IR[6] ), .B(\IR[0] ), .C(\IR[2] ), 
            .D(n31255), .Z(n29639)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam IR_1__N_1090_bdd_4_lut_27756.init = 16'h7f75;
    PFUMX i22_adj_348 (.BLUT(ALU_Op_3__N_1060[2]), .ALUT(\ALU_Op_3__N_1064[2] ), 
          .C0(ISet[0]), .Z(n8_adj_26));
    ORCALUT4 i1_4_lut_adj_349 (.A(n31256), .B(n26564), .C(n31157), .D(n33928), 
            .Z(n7_adj_1977)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C)))) */ ;
    defparam i1_4_lut_adj_349.init = 16'h3f37;
    PFUMX i22_adj_350 (.BLUT(\TStates_2__N_1432[1] ), .ALUT(TStates_2__N_1435[1]), 
          .C0(ISet[0]), .Z(n8_adj_1981));
    PFUMX i21_adj_351 (.BLUT(n8_adj_1949), .ALUT(n633), .C0(n33956), .Z(Set_Addr_To_2__N_1441_c[2]));
    ORCALUT4 reduce_nor_511_i1_2_lut_rep_418_3_lut_4_lut (.A(n31250), .B(n3), 
            .C(n5), .D(n4), .Z(n31005)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam reduce_nor_511_i1_2_lut_rep_418_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 MCycle_4__I_0_2_lut_rep_417_3_lut_4_lut (.A(n31250), .B(n3), 
            .C(n5), .D(n4), .Z(n31004)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam MCycle_4__I_0_2_lut_rep_417_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_352 (.A(n31250), .B(n3), .C(n31226), 
            .D(n4), .Z(n4_adj_1890)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_4_lut_adj_352.init = 16'he0f0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_353 (.A(n31250), .B(n3), .C(n15_adj_1834), 
            .D(n4), .Z(n16_adj_1876)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_4_lut_adj_353.init = 16'h1000;
    PFUMX i28473 (.BLUT(n30959), .ALUT(n30958), .C0(\IR[2] ), .Z(n30960));
    ORCALUT4 i24622_3_lut_4_lut (.A(n31141), .B(n2), .C(\IR[4] ), .D(\IR[7] ), 
            .Z(n58)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i24622_3_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_354 (.A(n31273), .B(n31249), .C(n33924), 
            .D(\IR[5] ), .Z(n26154)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1322[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_354.init = 16'hfdff;
    ORCALUT4 i3_4_lut_adj_355 (.A(n33931), .B(n31009), .C(n17350), .D(n17130), 
            .Z(n26890)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_355.init = 16'h8000;
    ORCALUT4 n1_bdd_4_lut_28124 (.A(n1_adj_1873), .B(n21_adj_1880), .C(n33927), 
            .D(n31226), .Z(n29638)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam n1_bdd_4_lut_28124.init = 16'hfbff;
    ORCALUT4 i1_3_lut_4_lut_adj_356 (.A(n31273), .B(n31249), .C(n31085), 
            .D(n31272), .Z(n7_adj_1982)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1322[15:26])
    defparam i1_3_lut_4_lut_adj_356.init = 16'h2f22;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_357 (.A(n31273), .B(n31249), .C(n31290), 
            .D(n33924), .Z(n25883)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1322[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_357.init = 16'h0200;
    ORCALUT4 i1_2_lut_rep_506_3_lut_4_lut (.A(n31292), .B(n31254), .C(n31256), 
            .D(n2), .Z(n31093)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(314[15:26])
    defparam i1_2_lut_rep_506_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_358 (.A(n31292), .B(n31254), .C(n31256), 
            .D(n2), .Z(n26788)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(314[15:26])
    defparam i2_2_lut_3_lut_4_lut_adj_358.init = 16'h0100;
    PFUMX i29575 (.BLUT(n33040), .ALUT(TStates_2__N_1435[0]), .C0(ISet[0]), 
          .Z(n33041));
    ORCALUT4 i12_3_lut (.A(n3_adj_27), .B(\IncDec_16_3__N_1044[3] ), .C(ISet[1]), 
            .Z(\ID16_B[15] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i12_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_359 (.A(n2), .B(n3), .C(n5), .D(n4), 
            .Z(n26034)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(386[23] 390[28])
    defparam i1_2_lut_3_lut_4_lut_adj_359.init = 16'hfff1;
    ORCALUT4 i15066_2_lut (.A(\Set_Addr_To_2__N_1441[0] ), .B(n4213), .Z(Set_Addr_To_2__N_1072[0])) /* synthesis lut_function=(A+(B)) */ ;
    defparam i15066_2_lut.init = 16'heeee;
    ORCALUT4 i24837_4_lut (.A(n11_adj_1984), .B(n31174), .C(n12_adj_1985), 
            .D(n4_adj_1946), .Z(n26564)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i24837_4_lut.init = 16'h8000;
    PFUMX i22_adj_360 (.BLUT(MCycles_2__N_1026[0]), .ALUT(MCycles_2__N_1029[0]), 
          .C0(ISet[0]), .Z(n8_adj_1986));
    ORCALUT4 i2_3_lut_4_lut_then_4_lut (.A(n31253), .B(n31241), .C(\ALU_Op_3__N_1297[3] ), 
            .D(n16657), .Z(n31335)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1703[15:26])
    defparam i2_3_lut_4_lut_then_4_lut.init = 16'h11f1;
    PFUMX i12_adj_361 (.BLUT(n3_adj_1933), .ALUT(IncDec_16_3__N_1044[0]), 
          .C0(ISet[1]), .Z(\IncDec_16[0] ));
    ORCALUT4 i2_3_lut_4_lut_else_4_lut (.A(n31161), .B(\ALU_Op_3__N_1297[3] ), 
            .C(n16657), .D(n3), .Z(n31334)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1703[15:26])
    defparam i2_3_lut_4_lut_else_4_lut.init = 16'h5d0c;
    ORCALUT4 i1_4_lut_adj_362 (.A(n31286), .B(n31255), .C(n31083), .D(n8977), 
            .Z(IORQ_N_1507)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_adj_362.init = 16'heca0;
    ORCALUT4 i4_4_lut_adj_363 (.A(n31204), .B(n31118), .C(n31162), .D(n25953), 
            .Z(n11_adj_1984)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_363.init = 16'hc800;
    ORCALUT4 i27094_3_lut_4_lut (.A(n33929), .B(n33930), .C(ISet[1]), 
            .D(n26017), .Z(\Special_LD[0] )) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i27094_3_lut_4_lut.init = 16'h7fff;
    ORCALUT4 i2_3_lut_4_lut_adj_364 (.A(n33929), .B(n33930), .C(n31246), 
            .D(n31272), .Z(ALU_Op_3__N_1068[3])) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_4_lut_adj_364.init = 16'h8000;
    PFUMX i21_adj_365 (.BLUT(n8_adj_1920), .ALUT(Set_BusA_To_3__N_1052[2]), 
          .C0(n33956), .Z(Set_BusA_To[2]));
    ORCALUT4 i1_2_lut_rep_445_3_lut_4_lut (.A(\IR[6] ), .B(n31261), .C(n31255), 
            .D(n31274), .Z(n31032)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_445_3_lut_4_lut.init = 16'h4000;
    ORCALUT4 i1_2_lut_rep_496_3_lut_4_lut (.A(n33952), .B(n31261), .C(n31250), 
            .D(n3), .Z(n31083)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_496_3_lut_4_lut.init = 16'h0400;
    ORCALUT4 i14857_2_lut_rep_466_3_lut_4_lut (.A(n31264), .B(n31263), .C(n31241), 
            .D(n31196), .Z(n31053)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i14857_2_lut_rep_466_3_lut_4_lut.init = 16'heee0;
    ORCALUT4 i27251_2_lut_rep_447_3_lut_4_lut (.A(n31264), .B(n31263), .C(n31195), 
            .D(n31290), .Z(clk_op_enable_217)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i27251_2_lut_rep_447_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 i8384_2_lut_3_lut_4_lut (.A(n31264), .B(n31263), .C(n17380), 
            .D(n31290), .Z(n10231)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(725[15:26])
    defparam i8384_2_lut_3_lut_4_lut.init = 16'h0f0e;
    ORCALUT4 i1_4_lut_adj_366 (.A(n5_adj_1950), .B(n26838), .C(n31197), 
            .D(\IR[2] ), .Z(n53_adj_1959)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_366.init = 16'hccc8;
    PFUMX i18715 (.BLUT(n57), .ALUT(n59_adj_1987), .C0(n33956), .Z(n61_adj_1895));
    PFUMX i39_adj_367 (.BLUT(n17_adj_1930), .ALUT(n20_adj_1956), .C0(ISet[1]), 
          .Z(n22_adj_1962));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_368 (.A(n33933), .B(n31270), .C(n31197), 
            .D(n31276), .Z(n4_adj_1883)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2227[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_368.init = 16'heefe;
    ORCALUT4 i14848_4_lut (.A(n8_adj_1976), .B(n7), .C(n48), .D(ISet[1]), 
            .Z(tstates[2])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i14848_4_lut.init = 16'hcfee;
    ORCALUT4 i14638_4_lut (.A(n33041), .B(n7), .C(n48_adj_1988), .D(ISet[1]), 
            .Z(tstates[0])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i14638_4_lut.init = 16'hcfee;
    ORCALUT4 i1_3_lut_adj_369 (.A(\ALU_Op_3__N_1297[3] ), .B(n92_c), .C(n56), 
            .Z(n48_adj_1988)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_3_lut_adj_369.init = 16'hecec;
    ORCALUT4 i14849_4_lut (.A(n8_adj_1981), .B(n7), .C(\TStates_2__N_1438[1] ), 
            .D(ISet[1]), .Z(tstates[1])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i14849_4_lut.init = 16'h3022;
    ORCALUT4 i2_4_lut_adj_370 (.A(n31052), .B(n11_adj_1989), .C(n27394), 
            .D(n27359), .Z(n6_adj_1969)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_370.init = 16'hdfff;
    ORCALUT4 i2_4_lut_adj_371 (.A(n9_adj_1990), .B(n17358), .C(n30141), 
            .D(n25726), .Z(n11_adj_1989)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_4_lut_adj_371.init = 16'hfbff;
    ORCALUT4 i25658_4_lut (.A(n27328), .B(n31054), .C(n33925), .D(n26443), 
            .Z(n27394)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i25658_4_lut.init = 16'h0800;
    ORCALUT4 i24536_3_lut_4_lut_4_lut (.A(n31128), .B(n31290), .C(\F[0] ), 
            .D(n31127), .Z(n26233)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C)+!B !(C (D))))) */ ;
    defparam i24536_3_lut_4_lut_4_lut.init = 16'h1e0c;
    ORCALUT4 i15423_3_lut_4_lut (.A(n31269), .B(n31288), .C(n31196), .D(n31233), 
            .Z(n17263)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i15423_3_lut_4_lut.init = 16'hfbbb;
    ORCALUT4 i15366_2_lut_rep_502_3_lut_4_lut (.A(n31269), .B(n31288), .C(n31244), 
            .D(n31245), .Z(n31089)) /* synthesis lut_function=(A+!(B ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1647[15:26])
    defparam i15366_2_lut_rep_502_3_lut_4_lut.init = 16'hbbfb;
    PFUMX i10406 (.BLUT(n8_adj_1917), .ALUT(Set_BusA_To_3__N_1052[1]), .C0(n33956), 
          .Z(Set_BusA_To[1]));
    ORCALUT4 i27_3_lut_4_lut_4_lut_4_lut (.A(n31126), .B(n31290), .C(ACC[3]), 
            .D(n31064), .Z(n13_adj_28)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam i27_3_lut_4_lut_4_lut_4_lut.init = 16'h01f0;
    PFUMX i21_adj_372 (.BLUT(n8_adj_1932), .ALUT(Set_BusB_To_3__N_1428[1]), 
          .C0(n33956), .Z(Set_BusB_To_3__N_1056[1]));
    ORCALUT4 IR_7__I_0_1642_i15_2_lut_rep_519_3_lut_4_lut (.A(n31268), .B(n31267), 
            .C(n31288), .D(n31269), .Z(n31106)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam IR_7__I_0_1642_i15_2_lut_rep_519_3_lut_4_lut.init = 16'hffbf;
    PFUMX i21_adj_373 (.BLUT(n8_adj_1937), .ALUT(MCycles_2__N_1032[2]), 
          .C0(ISet[1]), .Z(mcycles_d[2]));
    PFUMX i92 (.BLUT(n50), .ALUT(n27111), .C0(\IR[7] ), .Z(n92));
    ORCALUT4 i15223_4_lut (.A(n31288), .B(n26128), .C(\IR[5] ), .D(n31264), 
            .Z(n17035)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i15223_4_lut.init = 16'hccc4;
    ORCALUT4 i21_3_lut_4_lut_4_lut_4_lut (.A(n31126), .B(n31290), .C(ACC[5]), 
            .D(n31064), .Z(n10_adj_29)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam i21_3_lut_4_lut_4_lut_4_lut.init = 16'h01f0;
    PFUMX i11939 (.BLUT(n6_adj_1911), .ALUT(Read_To_Reg_N_1484), .C0(ISet[1]), 
          .Z(n8_adj_30));
    ORCALUT4 i5_4_lut_adj_374 (.A(n31113), .B(n15_adj_1875), .C(n17286), 
            .D(n31154), .Z(n12_adj_1985)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_374.init = 16'h8000;
    ORCALUT4 MCycle_3__I_0_1666_2_lut_rep_535_3_lut (.A(n3), .B(n2), .C(n4), 
            .Z(n31122)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam MCycle_3__I_0_1666_2_lut_rep_535_3_lut.init = 16'h1010;
    ORCALUT4 i3_4_lut_adj_375 (.A(n15_adj_1903), .B(n25953), .C(n31055), 
            .D(n9377), .Z(n17430)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_375.init = 16'h8000;
    ORCALUT4 MCycle_4__I_0_1811_2_lut_rep_455_3_lut_4_lut (.A(n3), .B(n2), 
            .C(n5), .D(n4), .Z(n31042)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam MCycle_4__I_0_1811_2_lut_rep_455_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_rep_419_3_lut_4_lut_4_lut (.A(n3), .B(n2), .C(n5), 
            .D(n4), .Z(n31006)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_rep_419_3_lut_4_lut_4_lut.init = 16'hccdc;
    ORCALUT4 Set_BusA_To_3__N_1206_I_0_1803_2_lut_rep_515_3_lut (.A(n3), .B(n2), 
            .C(n4), .Z(n31102)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam Set_BusA_To_3__N_1206_I_0_1803_2_lut_rep_515_3_lut.init = 16'hfefe;
    ORCALUT4 i27150_2_lut_4_lut (.A(n31290), .B(n31129), .C(n31256), .D(n27915), 
            .Z(n27883)) /* synthesis lut_function=(!(A (D)+!A (B (C (D))+!B (D)))) */ ;
    defparam i27150_2_lut_4_lut.init = 16'h04ff;
    ORCALUT4 i27143_2_lut_4_lut (.A(n31290), .B(n31129), .C(n31256), .D(n31120), 
            .Z(n27905)) /* synthesis lut_function=(!(A (D)+!A (B (C (D))+!B (D)))) */ ;
    defparam i27143_2_lut_4_lut.init = 16'h04ff;
    ORCALUT4 i5_4_lut_adj_376 (.A(n9_adj_1996), .B(n27252), .C(n31267), 
            .D(n27279), .Z(n12_adj_1882)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i5_4_lut_adj_376.init = 16'heefe;
    ORCALUT4 i2_4_lut_2_lut_rep_536_2_lut (.A(n3), .B(n2), .Z(n31123)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i2_4_lut_2_lut_rep_536_2_lut.init = 16'hdddd;
    ORCALUT4 i67_2_lut_3_lut (.A(n3), .B(n2), .C(n53_adj_1959), .Z(n59_adj_1987)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i67_2_lut_3_lut.init = 16'h0e0e;
    ORCALUT4 i14659_2_lut (.A(\IR[4] ), .B(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n16452)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14659_2_lut.init = 16'heeee;
    ORCALUT4 i4_4_lut_adj_377 (.A(n33931), .B(n17263), .C(n17286), .D(n6_adj_1970), 
            .Z(n26443)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_377.init = 16'h8000;
    ORCALUT4 i1_4_lut_adj_378 (.A(n31122), .B(n23237), .C(n53_adj_1959), 
            .D(ISet[1]), .Z(Inc_WZ)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2632[19:32])
    defparam i1_4_lut_adj_378.init = 16'h0a22;
    ORCALUT4 i3_4_lut_adj_379 (.A(n5_adj_1971), .B(n31128), .C(n31233), 
            .D(n31263), .Z(n17286)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut_adj_379.init = 16'h8880;
    ORCALUT4 i1_2_lut_rep_491_3_lut_4_lut (.A(n3), .B(n2), .C(ISet[1]), 
            .D(n4), .Z(n31078)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_rep_491_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 select_1008_Select_1_i9_2_lut_rep_427_3_lut_4_lut_3_lut_4_lut (.A(n3), 
            .B(n2), .C(n5), .D(n4), .Z(n31014)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam select_1008_Select_1_i9_2_lut_rep_427_3_lut_4_lut_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 reduce_nor_486_i1_2_lut_rep_450_3_lut_4_lut (.A(n3), .B(n2), 
            .C(n5), .D(n4), .Z(n31037)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam reduce_nor_486_i1_2_lut_rep_450_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_380 (.A(n3), .B(n2), .C(n31184), 
            .D(n31308), .Z(n12_adj_1857)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_3_lut_4_lut_adj_380.init = 16'he000;
    ORCALUT4 i1_2_lut_rep_504_3_lut_4_lut (.A(n3), .B(n2), .C(n31249), 
            .D(n31273), .Z(n31091)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_rep_504_3_lut_4_lut.init = 16'h0e00;
    ORCALUT4 n4_bdd_2_lut_28472_3_lut_4_lut (.A(n3), .B(n2), .C(n31286), 
            .D(n31272), .Z(n30958)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam n4_bdd_2_lut_28472_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_381 (.A(n3), .B(n2), .C(\IR[4] ), 
            .D(\IR[0] ), .Z(n25984)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_3_lut_4_lut_adj_381.init = 16'h000e;
    ORCALUT4 i1_2_lut_rep_420_3_lut_4_lut_3_lut_4_lut (.A(n3), .B(n2), .C(n5), 
            .D(n4), .Z(n31007)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(481[19] 513[26])
    defparam i1_2_lut_rep_420_3_lut_4_lut_3_lut_4_lut.init = 16'h1101;
    ORCALUT4 i8375_3_lut_rep_385_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(n33932), .D(n12185), .Z(n30972)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i8375_3_lut_rep_385_4_lut.init = 16'h22f2;
    ORCALUT4 i2_3_lut_4_lut_adj_382 (.A(\IR[2] ), .B(n31288), .C(n31311), 
            .D(\IR[1] ), .Z(n9377)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_4_lut_adj_382.init = 16'hfff7;
    ORCALUT4 i1_3_lut_4_lut_adj_383 (.A(n33927), .B(n31231), .C(n31251), 
            .D(n17039), .Z(n9563)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_383.init = 16'h00ef;
    ORCALUT4 i1_3_lut_4_lut_adj_384 (.A(n31251), .B(n4), .C(n8032), .D(n25925), 
            .Z(n25926)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_3_lut_4_lut_adj_384.init = 16'hf100;
    ORCALUT4 i25678_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[4]), .D(di_reg[4]), .Z(n27414)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25678_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_385 (.A(\IR[2] ), .B(n31288), .C(n25910), 
            .D(n31292), .Z(n23349)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_385.init = 16'h0080;
    ORCALUT4 i1_4_lut_4_lut_then_4_lut (.A(n33933), .B(\IR[2] ), .C(\IR[1] ), 
            .D(\IR[0] ), .Z(n31341)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_4_lut_then_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_rep_507_3_lut_4_lut (.A(\IR[2] ), .B(n31288), .C(n2), 
            .D(n31292), .Z(n31094)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_507_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i25576_2_lut (.A(n26496), .B(n26443), .Z(n27310)) /* synthesis lut_function=(A (B)) */ ;
    defparam i25576_2_lut.init = 16'h8888;
    ORCALUT4 i3_4_lut_adj_386 (.A(n15_adj_1997), .B(n31167), .C(n26903), 
            .D(n33924), .Z(n8_adj_31)) /* synthesis lut_function=(A+!(B (C)+!B (C (D)))) */ ;
    defparam i3_4_lut_adj_386.init = 16'hafbf;
    ORCALUT4 i25687_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[5]), .D(di_reg[5]), .Z(n27423)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25687_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i25690_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[6]), .D(di_reg[6]), .Z(n27426)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25690_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i1_2_lut_4_lut_4_lut (.A(n31315), .B(\ALU_Op_3__N_1297[3] ), 
            .C(n31257), .D(n31075), .Z(Read_To_Reg_N_1480)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i4_4_lut_adj_387 (.A(n26372), .B(n8_adj_1999), .C(n31286), 
            .D(n56_adj_2000), .Z(n15_adj_1997)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut_adj_387.init = 16'hfddd;
    ORCALUT4 i3_4_lut_adj_388 (.A(n31264), .B(n6_adj_2001), .C(n31258), 
            .D(n26389), .Z(n8_adj_1999)) /* synthesis lut_function=(A (B)+!A (B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_388.init = 16'hdcdd;
    ORCALUT4 i73_4_lut (.A(n31241), .B(\Set_BusA_To_3__N_1230[0] ), .C(\IR[2] ), 
            .D(n31258), .Z(n56_adj_2000)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i73_4_lut.init = 16'hc505;
    ORCALUT4 i1_4_lut_adj_389 (.A(n31179), .B(n60), .C(n31116), .D(n31036), 
            .Z(n6_adj_2001)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_389.init = 16'hcfcd;
    ORCALUT4 i7_4_lut (.A(n31171), .B(n14_adj_1974), .C(n10_adj_1972), 
            .D(n31105), .Z(n26496)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    ORCALUT4 i1_4_lut_adj_390 (.A(n15_adj_1973), .B(n31179), .C(n31258), 
            .D(n31116), .Z(n17350)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_390.init = 16'h8a88;
    ORCALUT4 i1_4_lut_adj_391 (.A(\ALU_Op_3__N_1297[3] ), .B(n17130), .C(n27322), 
            .D(n26124), .Z(n9528)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_391.init = 16'haa2a;
    ORCALUT4 i7_4_lut_adj_392 (.A(n9414), .B(n14_adj_2002), .C(n4051), 
            .D(n31149), .Z(n16_adj_1953)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i7_4_lut_adj_392.init = 16'hfefc;
    ORCALUT4 i5_4_lut_adj_393 (.A(n31246), .B(n10_adj_1968), .C(n31106), 
            .D(n8948), .Z(n14_adj_2002)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i5_4_lut_adj_393.init = 16'hcfce;
    ORCALUT4 i2_3_lut_rep_524_4_lut (.A(n31276), .B(n31293), .C(n31277), 
            .D(n31292), .Z(n31111)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam i2_3_lut_rep_524_4_lut.init = 16'hfffd;
    ORCALUT4 i3_4_lut_adj_394 (.A(n24_adj_2003), .B(n31080), .C(n31246), 
            .D(n9), .Z(n12_adj_1954)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_394.init = 16'hbbba;
    ORCALUT4 select_846_Select_2_i24_4_lut (.A(n894[2]), .B(n31105), .C(n8948), 
            .D(n31246), .Z(n24_adj_2003)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam select_846_Select_2_i24_4_lut.init = 16'h3230;
    ORCALUT4 i15325_2_lut_rep_477_3_lut_4_lut (.A(n31276), .B(n31293), .C(n31244), 
            .D(n31245), .Z(n31064)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam i15325_2_lut_rep_477_3_lut_4_lut.init = 16'hddfd;
    ORCALUT4 i1_2_lut_adj_395 (.A(n2), .B(n7), .Z(n25904)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1776[13] 1943[20])
    defparam i1_2_lut_adj_395.init = 16'h2222;
    ORCALUT4 i3_4_lut_adj_396 (.A(n33931), .B(n15_adj_1997), .C(n17263), 
            .D(n31146), .Z(n26124)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i3_4_lut_adj_396.init = 16'hdfff;
    ORCALUT4 i4_4_lut_adj_397 (.A(n31234), .B(n26065), .C(n31203), .D(n17066), 
            .Z(n11_adj_1951)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C (D)))) */ ;
    defparam i4_4_lut_adj_397.init = 16'hcdff;
    ORCALUT4 i3_4_lut_adj_398 (.A(XY_Ind), .B(Set_BusA_To[1]), .C(Set_BusA_To[2]), 
            .D(n33932), .Z(n1660)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_adj_398.init = 16'h1000;
    ORCALUT4 i25654_4_lut (.A(n27305), .B(n26404), .C(n3), .D(MCycles_2__N_1093), 
            .Z(n27390)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i25654_4_lut.init = 16'h8088;
    ORCALUT4 i25693_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[7]), .D(di_reg[7]), .Z(n27429)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25693_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i14853_2_lut_rep_469_3_lut_4_lut (.A(n31276), .B(n31293), .C(n33933), 
            .D(n31203), .Z(n31056)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam i14853_2_lut_rep_469_3_lut_4_lut.init = 16'hf0d0;
    ORCALUT4 i25572_4_lut (.A(n31246), .B(\ALU_Op_3__N_1297[3] ), .C(n31161), 
            .D(n15_adj_1902), .Z(n27305)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i25572_4_lut.init = 16'hfac8;
    ORCALUT4 i25717_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[0]), .D(di_reg[0]), .Z(n27453)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25717_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i15274_2_lut_rep_478_3_lut_4_lut (.A(n31276), .B(n31293), .C(n31290), 
            .D(n31244), .Z(n31065)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam i15274_2_lut_rep_478_3_lut_4_lut.init = 16'hfffd;
    ORCALUT4 i6_4_lut_adj_399 (.A(n11_adj_2005), .B(n4734), .C(n10_adj_2006), 
            .D(n31106), .Z(n26065)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i6_4_lut_adj_399.init = 16'hfeff;
    ORCALUT4 i4_4_lut_adj_400 (.A(n26818), .B(n408[0]), .C(n9490), .D(n33931), 
            .Z(n11_adj_2005)) /* synthesis lut_function=((B (C+!(D))+!B (C))+!A) */ ;
    defparam i4_4_lut_adj_400.init = 16'hf5fd;
    ORCALUT4 i25714_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[14]), .D(ACC[6]), .Z(n27450)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25714_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i3_4_lut_adj_401 (.A(n31169), .B(n26758), .C(n31170), .D(n33933), 
            .Z(n10_adj_2006)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam i3_4_lut_adj_401.init = 16'h05cd;
    ORCALUT4 i25711_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[13]), .D(ACC[5]), .Z(n27447)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25711_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i3_4_lut_adj_402 (.A(n23512), .B(n30997), .C(n17444), .D(n17350), 
            .Z(n26818)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_402.init = 16'h8000;
    ORCALUT4 i6_4_lut_adj_403 (.A(n31146), .B(n12_adj_2007), .C(n31149), 
            .D(n31167), .Z(n17444)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i6_4_lut_adj_403.init = 16'h0800;
    ORCALUT4 i5_4_lut_adj_404 (.A(n31126), .B(n31051), .C(n17286), .D(n31084), 
            .Z(n12_adj_2007)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i5_4_lut_adj_404.init = 16'h0020;
    ORCALUT4 i25708_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[12]), .D(ACC[4]), .Z(n27444)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25708_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i25807_3_lut_4_lut (.A(n33933), .B(n31290), .C(n31147), .D(Halt_FF), 
            .Z(n27543)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i25807_3_lut_4_lut.init = 16'hff01;
    ORCALUT4 i3_4_lut_adj_405 (.A(n27285), .B(MCycles_2__N_1185[0]), .C(n9563), 
            .D(n31105), .Z(n9490)) /* synthesis lut_function=((B (C+!(D))+!B (C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_405.init = 16'hf5fd;
    ORCALUT4 i15272_2_lut_rep_479_3_lut_4_lut (.A(n31276), .B(n31293), .C(n31290), 
            .D(n31245), .Z(n31066)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1002[15:26])
    defparam i15272_2_lut_rep_479_3_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i3_4_lut_adj_406 (.A(n31122), .B(n31006), .C(n3), .D(n31037), 
            .Z(MCycles_2__N_1185[0])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_adj_406.init = 16'hfeff;
    ORCALUT4 i1_4_lut_adj_407 (.A(\IR[1] ), .B(n31317), .C(n29_adj_1963), 
            .D(n4_c), .Z(n23_adj_32)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_407.init = 16'ha8a0;
    ORCALUT4 i25705_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[11]), .D(ACC[3]), .Z(n27441)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25705_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 select_1256_Select_0_i3_2_lut (.A(\Set_BusA_To_3__N_1230[0] ), 
            .B(\ALU_Op_3__N_1297[3] ), .Z(n3_adj_2009)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2456[19] 2474[26])
    defparam select_1256_Select_0_i3_2_lut.init = 16'h8888;
    PFUMX i76 (.BLUT(n36), .ALUT(n25926), .C0(\IR[7] ), .Z(n76));
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_408 (.A(n31274), .B(n31173), .C(n26119), 
            .D(n31255), .Z(n9_adj_1996)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_2_lut_3_lut_4_lut_adj_408.init = 16'hf8f0;
    PFUMX i92_adj_409 (.BLUT(n50_c), .ALUT(n27157), .C0(n33954), .Z(n92_c));
    PFUMX i28240 (.BLUT(n30533), .ALUT(n30532), .C0(n33956), .Z(Set_BusB_To_3__N_1056[0]));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_410 (.A(n31274), .B(n31173), .C(n33927), 
            .D(n31090), .Z(n10_adj_1877)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_3_lut_4_lut_adj_410.init = 16'h8088;
    ORCALUT4 i1_4_lut_adj_411 (.A(n33927), .B(n31173), .C(n31255), .D(\IR[0] ), 
            .Z(n9133)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_adj_411.init = 16'hc088;
    ORCALUT4 i1_3_lut_4_lut_adj_412 (.A(n31152), .B(n31157), .C(n31149), 
            .D(\ALU_Op_3__N_1297[3] ), .Z(n26030)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_412.init = 16'hf222;
    ORCALUT4 i14859_2_lut (.A(Set_Addr_To_2__N_1441_c[2]), .B(n4213), .Z(\Set_Addr_To_2__N_1072[2] )) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14859_2_lut.init = 16'heeee;
    ORCALUT4 i2_3_lut_rep_437_4_lut (.A(n33927), .B(n31173), .C(\tstate[1] ), 
            .D(n31307), .Z(n31024)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_3_lut_rep_437_4_lut.init = 16'h8000;
    ORCALUT4 i1_4_lut_adj_413 (.A(ISet[0]), .B(n9399), .C(n4_adj_1899), 
            .D(n31273), .Z(n3_adj_27)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_413.init = 16'h5150;
    ORCALUT4 i2_3_lut_4_lut_adj_414 (.A(n31278), .B(n7), .C(Set_Addr_To_2__N_1072[0]), 
            .D(n23524), .Z(n27110)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i2_3_lut_4_lut_adj_414.init = 16'h7000;
    ORCALUT4 i2_3_lut_4_lut_adj_415 (.A(n31278), .B(n7), .C(n23524), .D(n6_adj_12), 
            .Z(n27035)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i2_3_lut_4_lut_adj_415.init = 16'hff8f;
    ORCALUT4 i26029_2_lut_3_lut_3_lut_4_lut (.A(n31278), .B(n7), .C(\Set_Addr_To_2__N_1072[2] ), 
            .D(Set_Addr_To_2__N_1072[0]), .Z(n27765)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i26029_2_lut_3_lut_3_lut_4_lut.init = 16'h0070;
    ORCALUT4 i2_3_lut_rep_394_4_lut (.A(n31278), .B(n7), .C(Set_Addr_To_2__N_1441[1]), 
            .D(n4213), .Z(n30981)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i2_3_lut_rep_394_4_lut.init = 16'hfff8;
    ORCALUT4 i1_4_lut_4_lut_else_4_lut (.A(\IR[2] ), .B(n31315), .C(\IR[1] ), 
            .D(\IR[0] ), .Z(n31340)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_4_lut_else_4_lut.init = 16'h0040;
    ORCALUT4 i25702_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[10]), .D(ACC[2]), .Z(n27438)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25702_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i25699_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[9]), .D(ACC[1]), .Z(n27435)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25699_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i2_3_lut_4_lut_adj_416 (.A(n3), .B(n31250), .C(n33930), .D(n31275), 
            .Z(Jump_N_1533)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i2_3_lut_4_lut_adj_416.init = 16'h2000;
    ORCALUT4 i1_2_lut_rep_606 (.A(\ALU_Op_3__N_1297[3] ), .B(\IR[4] ), .Z(n31193)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_rep_606.init = 16'heeee;
    ORCALUT4 i19_3_lut_4_lut (.A(\ALU_Op_3__N_1297[3] ), .B(\IR[4] ), .C(\IR[1] ), 
            .D(n13844), .Z(n6_adj_1966)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i19_3_lut_4_lut.init = 16'hefe0;
    PFUMX i21_adj_417 (.BLUT(n8_adj_1885), .ALUT(Save_ALU_N_1498), .C0(ISet[1]), 
          .Z(Save_ALU));
    PFUMX i28219 (.BLUT(n30495), .ALUT(n30494), .C0(\IR[6] ), .Z(n46));
    PFUMX i28216 (.BLUT(n30492), .ALUT(n30491), .C0(ISet[1]), .Z(\IncDec_16[1] ));
    PFUMX i57 (.BLUT(n34), .ALUT(n37_adj_1978), .C0(\IR[1] ), .Z(n53));
    ORCALUT4 i2_3_lut (.A(n6_adj_12), .B(n11_adj_1866), .C(n33942), .Z(n4213)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2611[11] 2625[16])
    defparam i2_3_lut.init = 16'h8080;
    PFUMX i28213 (.BLUT(n30489), .ALUT(n23), .C0(\IR[7] ), .Z(n30490));
    ORCALUT4 i11944_3_lut_4_lut (.A(n31155), .B(n31154), .C(ISet[0]), 
            .D(n31028), .Z(n8_adj_1830)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i11944_3_lut_4_lut.init = 16'hf707;
    ORCALUT4 i1_4_lut_adj_418 (.A(n25720), .B(\IR[5] ), .C(n4_adj_1912), 
            .D(n16452), .Z(n4_adj_1884)) /* synthesis lut_function=(A+!(B ((D)+!C)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_418.init = 16'hbafa;
    PFUMX i27 (.BLUT(n26665), .ALUT(n13_adj_1881), .C0(ISet[1]), .Z(Set_BusA_To[3]));
    PFUMX i28210 (.BLUT(n30485), .ALUT(n30484), .C0(n33956), .Z(\IncDec_16[2] ));
    ORCALUT4 IR_7__I_0_1643_i15_2_lut_rep_514_3_lut_4_lut (.A(n31268), .B(n31284), 
            .C(n31288), .D(n31269), .Z(n31101)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam IR_7__I_0_1643_i15_2_lut_rep_514_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i24682_2_lut_rep_448_3_lut_4_lut (.A(n31268), .B(n31284), .C(n31244), 
            .D(n31245), .Z(n31035)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i24682_2_lut_rep_448_3_lut_4_lut.init = 16'h00e0;
    ORCALUT4 i15195_2_lut_rep_508_3_lut_4_lut (.A(n31268), .B(n31284), .C(n31290), 
            .D(n31258), .Z(n31095)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i15195_2_lut_rep_508_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i27117_2_lut_rep_471_3_lut_4_lut (.A(n31268), .B(n31284), .C(n31290), 
            .D(n31199), .Z(n31058)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i27117_2_lut_rep_471_3_lut_4_lut.init = 16'h0001;
    ORCALUT4 i1_3_lut_4_lut_adj_419 (.A(n31255), .B(n31166), .C(n31163), 
            .D(n31105), .Z(n9_adj_1923)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !((D)+!C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_3_lut_4_lut_adj_419.init = 16'h88f8;
    ORCALUT4 i1_2_lut_4_lut_adj_420 (.A(\Set_BusA_To_3__N_1230[0] ), .B(n31122), 
            .C(n31246), .D(n31276), .Z(n25945)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_4_lut_adj_420.init = 16'h5400;
    PFUMX i12_adj_421 (.BLUT(n3_adj_1935), .ALUT(NoRead_N_1570), .C0(ISet[1]), 
          .Z(NoRead_N_1567));
    ORCALUT4 i1_2_lut_4_lut_adj_422 (.A(\Set_BusA_To_3__N_1230[0] ), .B(n31122), 
            .C(n31246), .D(n31299), .Z(n25943)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_4_lut_adj_422.init = 16'h5400;
    PFUMX i12_adj_423 (.BLUT(n3_adj_1926), .ALUT(Jump_N_1533), .C0(n33956), 
          .Z(Jump));
    ORCALUT4 i1_3_lut_4_lut_adj_424 (.A(n31255), .B(n31256), .C(\IR[4] ), 
            .D(\IR[2] ), .Z(n23_c)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2432[19] 2448[26])
    defparam i1_3_lut_4_lut_adj_424.init = 16'hff20;
    ORCALUT4 i1_3_lut_4_lut_adj_425 (.A(n31176), .B(n31162), .C(n31116), 
            .D(n35), .Z(n9_adj_1990)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_425.init = 16'h1f11;
    ORCALUT4 i25669_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[1]), .D(di_reg[1]), .Z(n27405)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25669_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 IR_7__I_0_1662_i15_2_lut_3_lut_4_lut (.A(n31284), .B(n31286), 
            .C(n31288), .D(n31269), .Z(n15_adj_1973)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam IR_7__I_0_1662_i15_2_lut_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_426 (.A(n31284), .B(n31286), .C(n31238), 
            .D(n31199), .Z(n25953)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_426.init = 16'hf0b0;
    ORCALUT4 i15264_2_lut_rep_472_3_lut_4_lut (.A(n31284), .B(n31286), .C(n31290), 
            .D(n31199), .Z(n31059)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i15264_2_lut_rep_472_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i2_3_lut_4_lut_adj_427 (.A(n31284), .B(n31286), .C(n31246), 
            .D(n31241), .Z(n26786)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i2_3_lut_4_lut_adj_427.init = 16'h0040;
    ORCALUT4 i2_3_lut_adj_428 (.A(n17354), .B(n26496), .C(n17286), .Z(n26883)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_428.init = 16'h8080;
    ORCALUT4 i3_4_lut_adj_429 (.A(n5_c), .B(n8384), .C(n31178), .D(n31080), 
            .Z(n27011)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_429.init = 16'heefe;
    ORCALUT4 i2_4_lut_adj_430 (.A(n31005), .B(n31166), .C(n2), .D(n31090), 
            .Z(n8385)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_430.init = 16'hc4cc;
    ORCALUT4 i4_4_lut_adj_431 (.A(n44), .B(n8_c), .C(n31264), .D(n26389), 
            .Z(n9576)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i4_4_lut_adj_431.init = 16'heeef;
    ORCALUT4 i2_4_lut_adj_432 (.A(n9081), .B(n8_adj_2010), .C(n31278), 
            .D(n25912), .Z(mcycles_d[1])) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i2_4_lut_adj_432.init = 16'hefee;
    ORCALUT4 i1_2_lut_rep_532_3_lut_4_lut (.A(n31289), .B(n31288), .C(n31286), 
            .D(n31284), .Z(n31119)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i1_2_lut_rep_532_3_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i1_2_lut_rep_531_3_lut_4_lut (.A(n31289), .B(n31288), .C(n31284), 
            .D(n31268), .Z(n31118)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam i1_2_lut_rep_531_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 i2_2_lut (.A(n26065), .B(n17270), .Z(n6_adj_1948)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i2_2_lut.init = 16'hbbbb;
    ORCALUT4 i15428_4_lut (.A(n31125), .B(\ALU_Op_3__N_1297[3] ), .C(n16657), 
            .D(n15_adj_1838), .Z(n17270)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i15428_4_lut.init = 16'ha888;
    ORCALUT4 select_825_Select_0_i50_2_lut_rep_499_3_lut_4_lut (.A(n31289), 
            .B(n31288), .C(n31255), .D(n31253), .Z(n31086)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1505[15:26])
    defparam select_825_Select_0_i50_2_lut_rep_499_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 i27187_2_lut (.A(Set_BusA_To[2]), .B(Set_BusA_To[1]), .Z(n12250)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i27187_2_lut.init = 16'h1111;
    ORCALUT4 i1_4_lut_adj_433 (.A(\IR[2] ), .B(n31262), .C(\IR[1] ), .D(\IR[0] ), 
            .Z(n9081)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_433.init = 16'h0c44;
    ORCALUT4 i1_4_lut_adj_434 (.A(n31290), .B(n23_adj_2011), .C(n28_adj_2012), 
            .D(n27400), .Z(n8_adj_2010)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_434.init = 16'h5455;
    ORCALUT4 i8_4_lut_adj_435 (.A(n31167), .B(n31121), .C(n31105), .D(n25995), 
            .Z(n23_adj_2011)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;
    defparam i8_4_lut_adj_435.init = 16'h7f77;
    ORCALUT4 i15505_2_lut_3_lut_4_lut (.A(\IR[2] ), .B(n31286), .C(n17350), 
            .D(n31241), .Z(n17358)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;
    defparam i15505_2_lut_3_lut_4_lut.init = 16'hf0b0;
    ORCALUT4 i15254_2_lut_3_lut_4_lut (.A(\IR[2] ), .B(n31286), .C(n2), 
            .D(n31241), .Z(n17066)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i15254_2_lut_3_lut_4_lut.init = 16'hfffb;
    ORCALUT4 select_825_Select_2_i50_2_lut_rep_416_3_lut_4_lut (.A(n4), .B(n31251), 
            .C(n31166), .D(n31255), .Z(n31003)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(805[23] 837[30])
    defparam select_825_Select_2_i50_2_lut_rep_416_3_lut_4_lut.init = 16'hf020;
    ORCALUT4 i21_4_lut_adj_436 (.A(n23_adj_2013), .B(n29642), .C(n33956), 
            .D(n24_adj_2014), .Z(Set_Addr_To_2__N_1441[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i21_4_lut_adj_436.init = 16'hcfca;
    ORCALUT4 i1_3_lut_adj_437 (.A(\IR[2] ), .B(\IR[6] ), .C(\IR[7] ), 
            .Z(n4_adj_33)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_3_lut_adj_437.init = 16'hebeb;
    ORCALUT4 i1_2_lut_adj_438 (.A(\IR[2] ), .B(\IR[6] ), .Z(n25978)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_2_lut_adj_438.init = 16'h8888;
    ORCALUT4 i10_4_lut (.A(n31250), .B(n27388), .C(n17066), .D(n27190), 
            .Z(n23_adj_2013)) /* synthesis lut_function=(!(A (B (C))+!A !(((D)+!C)+!B))) */ ;
    defparam i10_4_lut.init = 16'h7f3f;
    ORCALUT4 i2_4_lut_adj_439 (.A(n31047), .B(n4_adj_1871), .C(n31101), 
            .D(n4_adj_1835), .Z(n8959)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_439.init = 16'hcddd;
    ORCALUT4 i11_4_lut (.A(n31119), .B(n22_adj_2016), .C(n27301), .D(ISet[0]), 
            .Z(n24_adj_2014)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i11_4_lut.init = 16'hffdf;
    ORCALUT4 i1_4_lut_adj_440 (.A(n9279), .B(n31231), .C(n9_adj_1853), 
            .D(n9377), .Z(n26088)) /* synthesis lut_function=(A+!((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_440.init = 16'haeee;
    ORCALUT4 i25652_3_lut (.A(n23512), .B(n30987), .C(n17354), .Z(n27388)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i25652_3_lut.init = 16'h8080;
    ORCALUT4 i25696_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[8]), .D(ACC[0]), .Z(n27432)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25696_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i3_4_lut_adj_441 (.A(n31176), .B(n6_adj_2017), .C(n31238), 
            .D(n31035), .Z(n27190)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C (D)))) */ ;
    defparam i3_4_lut_adj_441.init = 16'hcfdf;
    ORCALUT4 i1_2_lut_rep_530_3_lut_4_lut (.A(n31292), .B(n33944), .C(n31293), 
            .D(n31276), .Z(n31117)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_rep_530_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i25675_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(SP[3]), .D(di_reg[3]), .Z(n27411)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i25675_3_lut_4_lut.init = 16'hfd20;
    ORCALUT4 i25623_3_lut_4_lut (.A(n31292), .B(\IR[2] ), .C(n31245), 
            .D(n31204), .Z(n27359)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i25623_3_lut_4_lut.init = 16'hff0e;
    ORCALUT4 i8_4_lut_adj_442 (.A(n31256), .B(n16_adj_2018), .C(n17358), 
            .D(n31170), .Z(n18_adj_1927)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;
    defparam i8_4_lut_adj_442.init = 16'hcfef;
    ORCALUT4 i6_4_lut_adj_443 (.A(n27299), .B(n31257), .C(n9490), .D(n33931), 
            .Z(n16_adj_2018)) /* synthesis lut_function=((B (C+!(D))+!B (C))+!A) */ ;
    defparam i6_4_lut_adj_443.init = 16'hf5fd;
    ORCALUT4 i2_2_lut_3_lut_4_lut_adj_444 (.A(n31168), .B(n33931), .C(n23347), 
            .D(n31093), .Z(n26753)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_2_lut_3_lut_4_lut_adj_444.init = 16'hfff2;
    ORCALUT4 i4_4_lut_adj_445 (.A(n28), .B(n31100), .C(n33933), .D(n31147), 
            .Z(n14_adj_1928)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;
    defparam i4_4_lut_adj_445.init = 16'haeaf;
    ORCALUT4 i1_3_lut_adj_446 (.A(last_tstate_keep), .B(Set_BusA_To[2]), 
            .C(Read_To_Acc), .Z(\Read_To_Reg_r_4__N_717[2] )) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_adj_446.init = 16'ha8a8;
    ORCALUT4 i1_3_lut_adj_447 (.A(last_tstate_keep), .B(Set_BusA_To[1]), 
            .C(Read_To_Acc), .Z(\Read_To_Reg_r_4__N_717[1] )) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_adj_447.init = 16'ha8a8;
    ORCALUT4 i21555_2_lut_3_lut_4_lut (.A(n31292), .B(n33944), .C(ISet[0]), 
            .D(n31204), .Z(n23237)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21555_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i15270_2_lut_rep_480_3_lut_4_lut (.A(n31289), .B(n31293), .C(n31290), 
            .D(n31245), .Z(n31067)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i15270_2_lut_rep_480_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i1_4_lut_adj_448 (.A(n30996), .B(n11_adj_2020), .C(n9_adj_1979), 
            .D(n10_adj_2021), .Z(Write_N_1574)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_448.init = 16'hfffe;
    ORCALUT4 i4_4_lut_adj_449 (.A(n9551), .B(n26178), .C(n31246), .D(n31160), 
            .Z(n11_adj_2020)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut_adj_449.init = 16'heefe;
    ORCALUT4 i1_2_lut_rep_426_3_lut_4_lut (.A(n2), .B(n31158), .C(n33931), 
            .D(n31168), .Z(n31013)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_rep_426_3_lut_4_lut.init = 16'h2f22;
    ORCALUT4 i3_4_lut_adj_450 (.A(n2), .B(n31014), .C(n15_adj_1902), .D(n25894), 
            .Z(n10_adj_2021)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_450.init = 16'h0ace;
    ORCALUT4 i9_4_lut_adj_451 (.A(n17_adj_1872), .B(n18_adj_2022), .C(n31166), 
            .D(n31076), .Z(n22_adj_2016)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i9_4_lut_adj_451.init = 16'heefe;
    ORCALUT4 i1_4_lut_adj_452 (.A(n31256), .B(n33927), .C(n4_adj_2023), 
            .D(n31157), .Z(n26178)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_452.init = 16'ha0a8;
    ORCALUT4 i1_2_lut_rep_538_3_lut_4_lut (.A(n31289), .B(n31293), .C(\IR[2] ), 
            .D(n31292), .Z(n31125)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(994[15:26])
    defparam i1_2_lut_rep_538_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i8327_3_lut_4_lut (.A(n31171), .B(n31290), .C(n31195), .D(n16668), 
            .Z(n10174)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;
    defparam i8327_3_lut_4_lut.init = 16'hf0fe;
    ORCALUT4 i1_4_lut_adj_453 (.A(n31129), .B(n3), .C(n2), .D(n31170), 
            .Z(n4_adj_2023)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_453.init = 16'ha0ec;
    ORCALUT4 i25568_2_lut (.A(n26890), .B(n17270), .Z(n27301)) /* synthesis lut_function=(A (B)) */ ;
    defparam i25568_2_lut.init = 16'h8888;
    ORCALUT4 i11077_4_lut (.A(n6_adj_12), .B(\tstate[2] ), .C(n31195), 
            .D(n31046), .Z(clk_op_enable_228)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_core.v(114[17:26])
    defparam i11077_4_lut.init = 16'hcac0;
    ORCALUT4 i5_4_lut_adj_454 (.A(n31106), .B(n26657), .C(n31088), .D(n31105), 
            .Z(n18_adj_2022)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam i5_4_lut_adj_454.init = 16'h05cd;
    ORCALUT4 i2_4_lut_adj_455 (.A(n35), .B(n9377), .C(n31288), .D(n31269), 
            .Z(n6_adj_2017)) /* synthesis lut_function=(A ((C (D))+!B)+!A !(B)) */ ;
    defparam i2_4_lut_adj_455.init = 16'hb333;
    ORCALUT4 i2_4_lut_adj_456 (.A(n31037), .B(n31247), .C(n31006), .D(n31246), 
            .Z(n26657)) /* synthesis lut_function=((B (C)+!B (C+(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1435[23] 1473[30])
    defparam i2_4_lut_adj_456.init = 16'hf7f5;
    ORCALUT4 i14721_2_lut (.A(n33946), .B(n33944), .Z(n16514)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14721_2_lut.init = 16'heeee;
    ORCALUT4 i3_3_lut_3_lut_4_lut (.A(Set_Addr_To_2__N_1072[0]), .B(n31190), 
            .C(n33932), .D(n12185), .Z(n8_adj_34)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i3_3_lut_3_lut_4_lut.init = 16'hd000;
    ORCALUT4 i2_4_lut_adj_457 (.A(n8975), .B(n31173), .C(n33958), .D(\IR[1] ), 
            .Z(n15_adj_1834)) /* synthesis lut_function=(A+(B (C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i2_4_lut_adj_457.init = 16'heaae;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_458 (.A(n3), .B(\ALU_Op_3__N_1297[3] ), 
            .C(n2), .D(n31173), .Z(n9134)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_458.init = 16'hfe00;
    ORCALUT4 i15385_3_lut_rep_467_4_lut (.A(n31203), .B(n31293), .C(n33950), 
            .D(n31170), .Z(n31054)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i15385_3_lut_rep_467_4_lut.init = 16'hfe00;
    ORCALUT4 i8354_3_lut_rep_380_4_lut (.A(n31174), .B(n31290), .C(n31195), 
            .D(last_tstate_keep), .Z(n30967)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;
    defparam i8354_3_lut_rep_380_4_lut.init = 16'hf0fe;
    ORCALUT4 i13_4_lut (.A(n26427), .B(n27398), .C(n20_adj_2025), .D(n23361), 
            .Z(n28_adj_2012)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i13_4_lut.init = 16'hfff7;
    ORCALUT4 i25664_4_lut (.A(n27378), .B(n15_adj_1903), .C(n31256), .D(n31157), 
            .Z(n27400)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;
    defparam i25664_4_lut.init = 16'h8808;
    PFUMX i28122 (.BLUT(n30261), .ALUT(n30260), .C0(\IR[2] ), .Z(n30262));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_459 (.A(n31244), .B(n31233), .C(n31116), 
            .D(n31245), .Z(n41)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_459.init = 16'h0f07;
    ORCALUT4 i1_3_lut_4_lut_adj_460 (.A(n31244), .B(n31233), .C(n31179), 
            .D(n31258), .Z(n60)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i1_3_lut_4_lut_adj_460.init = 16'h7f00;
    ORCALUT4 i3_4_lut_adj_461 (.A(n33924), .B(Set_BusA_To_3__N_1210[2]), 
            .C(n7_adj_1982), .D(n31238), .Z(n9_adj_1918)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_461.init = 16'ha0ec;
    ORCALUT4 i4_4_lut_adj_462 (.A(n31003), .B(n8_adj_1907), .C(\IR[5] ), 
            .D(n25718), .Z(n10_adj_1919)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut_adj_462.init = 16'hfeee;
    ORCALUT4 i3_4_lut_adj_463 (.A(n31290), .B(n31273), .C(n31288), .D(n29455), 
            .Z(\Prefix[0] )) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i3_4_lut_adj_463.init = 16'h4000;
    ORCALUT4 i25662_4_lut (.A(n31238), .B(n17134), .C(n31150), .D(n31149), 
            .Z(n27398)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i25662_4_lut.init = 16'h0080;
    ORCALUT4 i2_4_lut_adj_464 (.A(n31082), .B(n26788), .C(n4928), .D(n31038), 
            .Z(n25718)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_464.init = 16'hfeee;
    ORCALUT4 i44_4_lut (.A(n19), .B(n24_adj_2026), .C(\IR[6] ), .D(n4_adj_1865), 
            .Z(n27)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i44_4_lut.init = 16'hca0a;
    ORCALUT4 i45_4_lut (.A(\IR[5] ), .B(n33924), .C(\IR[1] ), .D(n31109), 
            .Z(n24_adj_2026)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i45_4_lut.init = 16'hcac0;
    ORCALUT4 i25552_2_lut_3_lut_4_lut (.A(n31196), .B(n31176), .C(n17430), 
            .D(n9_adj_1853), .Z(n27285)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i25552_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i25642_2_lut_3_lut_4_lut (.A(n31196), .B(n31176), .C(n31054), 
            .D(n9_adj_1853), .Z(n27378)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1477[15:26])
    defparam i25642_2_lut_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i1_4_lut_4_lut_then_4_lut_adj_465 (.A(\IR[4] ), .B(n2), .C(n3), 
            .D(\IR[5] ), .Z(n31344)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_4_lut_then_4_lut_adj_465.init = 16'h8a00;
    ORCALUT4 i1_4_lut_4_lut_else_4_lut_adj_466 (.A(\IR[4] ), .B(n2), .C(n3), 
            .D(\IR[5] ), .Z(n31343)) /* synthesis lut_function=(A (D)+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1956[13] 2581[20])
    defparam i1_4_lut_4_lut_else_4_lut_adj_466.init = 16'hba00;
    ORCALUT4 i6_4_lut_adj_467 (.A(n55_adj_1888), .B(n12_adj_2027), .C(\IR[0] ), 
            .D(n26708), .Z(n14_adj_1924)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i6_4_lut_adj_467.init = 16'hfeee;
    ORCALUT4 i4_4_lut_adj_468 (.A(Set_BusA_To_3__N_1199[0]), .B(\ALU_Op_3__N_1297[3] ), 
            .C(n31167), .D(n9_adj_1853), .Z(n12_adj_2027)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i4_4_lut_adj_468.init = 16'h0ace;
    ORCALUT4 i2_4_lut_adj_469 (.A(n8968), .B(n31246), .C(n31106), .D(n15_adj_1841), 
            .Z(n10_adj_1925)) /* synthesis lut_function=(A+!((C (D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_469.init = 16'haeee;
    ORCALUT4 i25594_2_lut_3_lut_4_lut (.A(n31270), .B(n31183), .C(n17430), 
            .D(n31106), .Z(n27328)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1429[15:26])
    defparam i25594_2_lut_3_lut_4_lut.init = 16'hb000;
    ORCALUT4 i1_4_lut_adj_470 (.A(n33924), .B(n31161), .C(n8_adj_1964), 
            .D(n31113), .Z(n9537)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_470.init = 16'ha2aa;
    ORCALUT4 i6_4_lut_adj_471 (.A(n33944), .B(n12_adj_2028), .C(ISet[1]), 
            .D(ISet[0]), .Z(n1)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i6_4_lut_adj_471.init = 16'h0008;
    ORCALUT4 i5_4_lut_adj_472 (.A(n31269), .B(n31274), .C(n33946), .D(n31288), 
            .Z(n12_adj_2028)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_472.init = 16'h8000;
    ORCALUT4 i24741_2_lut_3_lut_4_lut (.A(n31270), .B(n31183), .C(n31125), 
            .D(n31106), .Z(n26457)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1429[15:26])
    defparam i24741_2_lut_3_lut_4_lut.init = 16'hb000;
    ORCALUT4 i21_3_lut (.A(n8_adj_1986), .B(n11_adj_1897), .C(ISet[1]), 
            .Z(mcycles_d[0])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i21_3_lut.init = 16'h3a3a;
    ORCALUT4 i2_4_lut_adj_473 (.A(n12_c), .B(n31232), .C(MCycles_2__N_1093), 
            .D(n15_adj_1875), .Z(n6_adj_1922)) /* synthesis lut_function=(A+(B (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_4_lut_adj_473.init = 16'heaee;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_474 (.A(n31270), .B(n31183), .C(n15_adj_1841), 
            .D(n31106), .Z(n25894)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1429[15:26])
    defparam i1_2_lut_3_lut_4_lut_adj_474.init = 16'hb000;
    ORCALUT4 i1_4_lut_adj_475 (.A(n2), .B(n29_c), .C(n27_adj_1965), .D(\IR[2] ), 
            .Z(n1_adj_1921)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_4_lut_adj_475.init = 16'ha088;
    PFUMX i30018 (.BLUT(n33934), .ALUT(n33935), .C0(n31264), .Z(n33936));
    ORCALUT4 i24686_2_lut_rep_428_3_lut_4_lut (.A(n31179), .B(n31176), .C(n31166), 
            .D(n31125), .Z(n31015)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1394[15:26])
    defparam i24686_2_lut_rep_428_3_lut_4_lut.init = 16'h0e00;
    ORCALUT4 i2_3_lut_rep_453_4_lut (.A(n31288), .B(n31260), .C(n33927), 
            .D(n31290), .Z(n31040)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i2_3_lut_rep_453_4_lut.init = 16'h0080;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_476 (.A(n3), .B(n31250), .C(ISet[1]), 
            .D(n31173), .Z(n5_adj_35)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam i1_2_lut_3_lut_4_lut_adj_476.init = 16'h2000;
    ORCALUT4 i1_4_lut_adj_477 (.A(n31276), .B(n9377), .C(n31091), .D(n31255), 
            .Z(n25_adj_1929)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(2626[11] 2647[16])
    defparam i1_4_lut_adj_477.init = 16'ha2a0;
    PFUMX i28086 (.BLUT(n3_adj_2009), .ALUT(n30192), .C0(\IR[1] ), .Z(n30193));
    ORCALUT4 i1_4_lut_adj_478 (.A(\IR[4] ), .B(n31238), .C(n25718), .D(n31041), 
            .Z(n20_adj_1916)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(264[7] 2583[14])
    defparam i1_4_lut_adj_478.init = 16'ha2a0;
    ORCALUT4 select_200_Select_2_i7_3_lut_4_lut (.A(n3), .B(n31250), .C(n3_adj_1843), 
            .D(\IR[5] ), .Z(Set_BusA_To_3__N_1210[2])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1617[23] 1643[30])
    defparam select_200_Select_2_i7_3_lut_4_lut.init = 16'hf2f0;
    PFUMX i28509 (.BLUT(n31374), .ALUT(n31375), .C0(n3), .Z(n9279));
    ORCALUT4 i1_4_lut_adj_479 (.A(\IR[4] ), .B(n23627), .C(n31250), .D(n9377), 
            .Z(n26169)) /* synthesis lut_function=(A (B+!((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(1095[19] 1135[26])
    defparam i1_4_lut_adj_479.init = 16'h88a8;
    PFUMX i28505 (.BLUT(n31368), .ALUT(n31369), .C0(\IR[2] ), .Z(n31370));
    PFUMX i28554 (.BLUT(n31450), .ALUT(n31448), .C0(\IR[0] ), .Z(n31451));
    PFUMX i28503 (.BLUT(n31365), .ALUT(n31366), .C0(\IR[7] ), .Z(n31367));
    PFUMX i28501 (.BLUT(n31361), .ALUT(n31362), .C0(n3), .Z(n31363));
    ORCALUT4 i3_4_lut_adj_480 (.A(\IR[1] ), .B(n26030), .C(n26753), .D(n8968), 
            .Z(n8_adj_1931)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i3_4_lut_adj_480.init = 16'hffec;
    ORCALUT4 i1_4_lut_adj_481 (.A(n31258), .B(n35), .C(n31270), .D(\IR[2] ), 
            .Z(n44)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_481.init = 16'h888a;
    PFUMX i28495 (.BLUT(n31352), .ALUT(n31353), .C0(\IR[1] ), .Z(n31354));
    ORCALUT4 i5_4_lut_adj_482 (.A(n17039), .B(n30992), .C(n31251), .D(n4_adj_1852), 
            .Z(n20_adj_2025)) /* synthesis lut_function=(!(A (B)+!A !(((D)+!C)+!B))) */ ;
    defparam i5_4_lut_adj_482.init = 16'h7737;
    ORCALUT4 i1_2_lut_adj_483 (.A(\IR[1] ), .B(n2), .Z(n25910)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_mcode.v(274[13] 1759[20])
    defparam i1_2_lut_adj_483.init = 16'h8888;
    
endmodule
//
// Verilog Description of module tv80_alu
//

module tv80_alu (n30081, n26017, ALU_Op, n31348, BusA, \Set_BusA_To_3__N_1230[0] , 
            n31220, n29902, n29904, \F_Out[1] , n27519, n27495, 
            n27489, n31138, BusB, n31213, n27528, n952, n251, 
            \IR[4] , n14, n1172, n178, n29060, Q_7__N_1635, n951, 
            \IR[5] , n31299, \Q_7__N_1635[3] , \ALU_Q[3] , n30989, 
            \Q_7__N_1635[6] , F_Out_7__N_1677, n27500, n31290, \Q_7__N_1635[5] , 
            F, n10142, n943, n1698, n6, n33948, n33950, n31289, 
            n31133, n31132, n31137, n31218, n31222, F_Out_7__N_1689, 
            n27524, n14_adj_2, n30999, n10230, n998, n903, \F_Out[5] , 
            n31068, \ALU_Q[4] , n27491, \ALU_Q[5] , n1165, n31072, 
            n1142, n996, \F_Out[7] , \Q_7__N_1635[2] , \di_reg[7] , 
            Save_ALU_r_keep, n31257, n31212, \ALU_Q[1] , n3996, n31136, 
            n10, Arith16_r_keep, n27498, n27522, \ALU_Q[7] , \Q_7__N_1595[6] , 
            F_Out_7__N_1690, \Q_7__N_1746[8] , \Q_7__N_1737[8] , \Q_7__N_1595[2] , 
            n33946, n1000, n24338, \F_Out[3] , n11, n31120, n30973, 
            n27496, n31217, n27490, n27915, \F_Out[6] , n31317, 
            n27526, Z16_r, n31276, n27520, n11_adj_3, n6_adj_4, 
            n10158, n27004, n27456) /* synthesis syn_module_defined=1 */ ;
    input n30081;
    input n26017;
    input [3:0]ALU_Op;
    output n31348;
    input [7:0]BusA;
    input \Set_BusA_To_3__N_1230[0] ;
    input n31220;
    input n29902;
    output n29904;
    output \F_Out[1] ;
    output n27519;
    output n27495;
    output n27489;
    output n31138;
    input [7:0]BusB;
    input n31213;
    output n27528;
    output n952;
    output n251;
    input \IR[4] ;
    output n14;
    input n1172;
    output n178;
    input n29060;
    output [7:0]Q_7__N_1635;
    output n951;
    input \IR[5] ;
    input n31299;
    output \Q_7__N_1635[3] ;
    output \ALU_Q[3] ;
    output n30989;
    output \Q_7__N_1635[6] ;
    input F_Out_7__N_1677;
    output n27500;
    input n31290;
    output \Q_7__N_1635[5] ;
    input [7:0]F;
    input n10142;
    output n943;
    output n1698;
    output n6;
    input n33948;
    input n33950;
    output n31289;
    output n31133;
    input n31132;
    input n31137;
    input n31218;
    input n31222;
    input F_Out_7__N_1689;
    output n27524;
    output n14_adj_2;
    input n30999;
    input n10230;
    input n998;
    input n903;
    output \F_Out[5] ;
    input n31068;
    output \ALU_Q[4] ;
    input n27491;
    output \ALU_Q[5] ;
    input n1165;
    input n31072;
    input n1142;
    input n996;
    output \F_Out[7] ;
    output \Q_7__N_1635[2] ;
    input \di_reg[7] ;
    input Save_ALU_r_keep;
    input n31257;
    output n31212;
    output \ALU_Q[1] ;
    output n3996;
    input n31136;
    output n10;
    input Arith16_r_keep;
    output n27498;
    output n27522;
    output \ALU_Q[7] ;
    output \Q_7__N_1595[6] ;
    output F_Out_7__N_1690;
    input \Q_7__N_1746[8] ;
    input \Q_7__N_1737[8] ;
    output \Q_7__N_1595[2] ;
    input n33946;
    input n1000;
    input n24338;
    output \F_Out[3] ;
    output n11;
    output n31120;
    output n30973;
    output n27496;
    input n31217;
    output n27490;
    output n27915;
    output \F_Out[6] ;
    input n31317;
    output n27526;
    input Z16_r;
    input n31276;
    output n27520;
    output n11_adj_3;
    input n6_adj_4;
    output n10158;
    output n27004;
    output n27456;
    
    
    wire n30080;
    wire [7:0]Q_7__N_1627;
    
    wire n31346, n31347, n31225, n29962, n29961, n29963, n29903, 
        n29840, n29839, n8_adj_1769, n25580, n8_adj_1770, n25570, 
        n27513, n8_adj_1771, n25596, n8_adj_1772, n25588, n27932, 
        n31142, n31026, n31001;
    wire [3:0]n1154;
    
    wire n27505, HalfCarry_v_N_1688, n2, n31021, n31063, n31022, 
        n27504;
    wire [8:0]Q_7__N_1737;
    
    wire F_Out_7__N_1693, OverFlow_v, F_Out_7__N_1691, n31337, n31338, 
        n31339, n13, F_Out_7__N_1672;
    wire [8:0]n166;
    wire [8:0]Q_7__N_1746;
    
    wire n4, n31062, n31331, n31332, n32973, n32974, n32972, n32975, 
        n4_adj_1773, n6_c;
    wire [7:0]Q_7__N_1635_c;
    
    wire n11_c, n32971, n31070, n32976, n31071, n4_adj_1775, n4_adj_1776, 
        n6_adj_1777, n27499, n31301, F_Out_7__N_1670, n26823, n8_adj_1778, 
        n6_adj_1779, n5, n26320, n4_adj_1780, n6_adj_1781, n15, 
        n12, n13_adj_1782, n14_adj_1783, n2534, n31326, n31325, 
        n4_adj_1784, F_Out_7__N_1645, n12_adj_1785, n15_adj_1786, n16, 
        n2531, n13_adj_1787, n31223, n4_adj_1788, n6_adj_1789, F_Out_7__N_1649, 
        n31134, n10_c, n31302, n31297, n12_adj_1791, n27523, n31224;
    wire [8:0]Q_7__N_1595;
    
    wire n7468, n31216, n31221, n8_adj_1792, n30991, n27392, n31049, 
        n31008, n13_adj_1793, n8_adj_1794, n30961, n10_adj_1795, n11_adj_1796, 
        n7474;
    wire [7:0]Q_v;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(92[13:16])
    
    wire n5_adj_1797, n6_adj_1798, n5_adj_1799, n6_adj_1800, n5_adj_1801, 
        n6_adj_1802, n5_adj_1804, n5_adj_1805, n5_adj_1806, n5_adj_1807, 
        n11_adj_1808, n11_adj_1809, n12_adj_1810, n14_adj_1811, n10_adj_1812, 
        n11_adj_1813, n27497, n8_adj_1814, n27515, n8_adj_1815, n8_adj_1816, 
        n11_adj_1817, n12_adj_1818, n8_adj_1819, n27514, n31200, n27507, 
        n10_adj_1821, n29975, Q_7__N_1592, n12_adj_1822, Q_7__N_1594, 
        Q_7__N_1593, Q_7__N_1591, n10_adj_1823, n29972, n29971, n14_adj_1825, 
        n10_adj_1826, n8519, n12_adj_1827, n30978, n30988, n30986, 
        n30983, n31069, n31000;
    
    PFUMX i28030 (.BLUT(n30081), .ALUT(n30080), .C0(n26017), .Z(Q_7__N_1627[7]));
    PFUMX i28491 (.BLUT(n31346), .ALUT(n31347), .C0(ALU_Op[0]), .Z(n31348));
    ORCALUT4 i2919_2_lut_rep_638 (.A(ALU_Op[0]), .B(ALU_Op[1]), .Z(n31225)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam i2919_2_lut_rep_638.init = 16'h8888;
    ORCALUT4 i5234_3_lut (.A(BusA[5]), .B(BusA[7]), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(Q_7__N_1627[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i5234_3_lut.init = 16'hcaca;
    PFUMX i27942 (.BLUT(n29962), .ALUT(n29961), .C0(n31220), .Z(n29963));
    ORCALUT4 i5228_3_lut (.A(BusA[4]), .B(BusA[6]), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(Q_7__N_1627[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i5228_3_lut.init = 16'hcaca;
    PFUMX i27914 (.BLUT(n29903), .ALUT(n29902), .C0(ALU_Op[1]), .Z(n29904));
    PFUMX i27871 (.BLUT(n29840), .ALUT(n29839), .C0(ALU_Op[2]), .Z(\F_Out[1] ));
    PFUMX i25783 (.BLUT(n8_adj_1769), .ALUT(n25580), .C0(ALU_Op[1]), .Z(n27519));
    PFUMX i25777 (.BLUT(n8_adj_1770), .ALUT(n25570), .C0(ALU_Op[1]), .Z(n27513));
    PFUMX i25759 (.BLUT(n8_adj_1771), .ALUT(n25596), .C0(ALU_Op[1]), .Z(n27495));
    PFUMX i25753 (.BLUT(n8_adj_1772), .ALUT(n25588), .C0(ALU_Op[1]), .Z(n27489));
    ORCALUT4 i27127_2_lut_3_lut_2_lut (.A(ALU_Op[1]), .B(ALU_Op[2]), .Z(n27932)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam i27127_2_lut_3_lut_2_lut.init = 16'hbbbb;
    ORCALUT4 i5978_2_lut_rep_555_3_lut (.A(ALU_Op[0]), .B(ALU_Op[1]), .C(ALU_Op[2]), 
            .Z(n31142)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam i5978_2_lut_rep_555_3_lut.init = 16'h8f8f;
    ORCALUT4 i26714_3_lut_4_lut (.A(n31026), .B(n31001), .C(n31138), .D(n1154[2]), 
            .Z(n27505)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i26714_3_lut_4_lut.init = 16'h9f90;
    ORCALUT4 i25792_3_lut_4_lut (.A(BusB[2]), .B(n31213), .C(ALU_Op[0]), 
            .D(Q_7__N_1627[2]), .Z(n27528)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(310[17:31])
    defparam i25792_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 BusA_0__bdd_4_lut_29213 (.A(BusA[0]), .B(HalfCarry_v_N_1688), 
            .C(BusB[0]), .D(ALU_Op[1]), .Z(n2)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam BusA_0__bdd_4_lut_29213.init = 16'h2be8;
    ORCALUT4 i1087_2_lut_3_lut_4_lut (.A(BusA[7]), .B(n31021), .C(n31063), 
            .D(n31022), .Z(n952)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(235[15:24])
    defparam i1087_2_lut_3_lut_4_lut.init = 16'h9996;
    ORCALUT4 i26746_3_lut (.A(n27504), .B(n27505), .C(n251), .Z(Q_7__N_1737[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam i26746_3_lut.init = 16'hcaca;
    PFUMX i5979 (.BLUT(F_Out_7__N_1693), .ALUT(OverFlow_v), .C0(n31142), 
          .Z(F_Out_7__N_1691));
    PFUMX i28485 (.BLUT(n31337), .ALUT(n31338), .C0(\IR[4] ), .Z(n31339));
    PFUMX ALU_Op_3__I_0_Mux_7_i14 (.BLUT(n13), .ALUT(F_Out_7__N_1672), .C0(n31220), 
          .Z(n14)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=84, LSE_RCOL=7, LSE_LLINE=276, LSE_RLINE=288 */ ;
    ORCALUT4 mux_702_i7_3_lut (.A(n166[7]), .B(n1172), .C(n178), .Z(Q_7__N_1746[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[3] 242[8])
    defparam mux_702_i7_3_lut.init = 16'hcaca;
    ORCALUT4 mux_702_i6_3_lut (.A(n166[6]), .B(n29060), .C(n178), .Z(Q_7__N_1746[6])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[3] 242[8])
    defparam mux_702_i6_3_lut.init = 16'h3a3a;
    ORCALUT4 ALU_Op_2__I_0_132_Mux_1_i4_3_lut (.A(BusA[1]), .B(ALU_Op[0]), 
            .C(BusB[1]), .Z(n4)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam ALU_Op_2__I_0_132_Mux_1_i4_3_lut.init = 16'h6868;
    ORCALUT4 mux_681_i7_3_lut_3_lut_4_lut (.A(BusA[6]), .B(n31062), .C(n31138), 
            .D(BusA[7]), .Z(n166[7])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(235[15:24])
    defparam mux_681_i7_3_lut_3_lut_4_lut.init = 16'h7f80;
    PFUMX i28481 (.BLUT(n31331), .ALUT(n31332), .C0(ALU_Op[2]), .Z(Q_7__N_1635[0]));
    ORCALUT4 i1094_3_lut_4_lut_3_lut_4_lut_4_lut (.A(BusA[6]), .B(n31062), 
            .C(n31063), .D(BusA[7]), .Z(n951)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(235[15:24])
    defparam i1094_3_lut_4_lut_3_lut_4_lut_4_lut.init = 16'hfe80;
    ORCALUT4 n8_bdd_4_lut_29616 (.A(\IR[4] ), .B(\Set_BusA_To_3__N_1230[0] ), 
            .C(BusB[3]), .D(\IR[5] ), .Z(n32973)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam n8_bdd_4_lut_29616.init = 16'h0080;
    ORCALUT4 n32974_bdd_3_lut (.A(n32974), .B(n32972), .C(ALU_Op[1]), 
            .Z(n32975)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n32974_bdd_3_lut.init = 16'hcaca;
    PFUMX ALU_Op_2__I_0_132_Mux_7_i7 (.BLUT(n4_adj_1773), .ALUT(n6_c), .C0(n27932), 
          .Z(Q_7__N_1635_c[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=84, LSE_RCOL=7, LSE_LLINE=276, LSE_RLINE=288 */ ;
    ORCALUT4 n3_bdd_4_lut (.A(ALU_Op[0]), .B(n31299), .C(\Set_BusA_To_3__N_1230[0] ), 
            .D(BusB[3]), .Z(n32972)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam n3_bdd_4_lut.init = 16'h7f40;
    ORCALUT4 n11_bdd_4_lut_29629 (.A(n11_c), .B(ALU_Op[1]), .C(ALU_Op[0]), 
            .D(BusB[3]), .Z(n32971)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A ((C+!(D))+!B))) */ ;
    defparam n11_bdd_4_lut_29629.init = 16'h2e22;
    ORCALUT4 i25768_3_lut_4_lut (.A(BusA[7]), .B(BusA[6]), .C(n31070), 
            .D(n31138), .Z(n27504)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B+(C+!(D)))) */ ;
    defparam i25768_3_lut_4_lut.init = 16'ha9aa;
    ORCALUT4 Q_7__N_1635_3__bdd_3_lut_29570 (.A(\Q_7__N_1635[3] ), .B(n32976), 
            .C(ALU_Op[3]), .Z(\ALU_Q[3] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam Q_7__N_1635_3__bdd_3_lut_29570.init = 16'hcaca;
    ORCALUT4 i14734_2_lut_rep_402_3_lut_4_lut_4_lut (.A(BusA[7]), .B(BusA[6]), 
            .C(n31070), .D(n31071), .Z(n30989)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B ((D)+!C)+!B (C))) */ ;
    defparam i14734_2_lut_rep_402_3_lut_4_lut_4_lut.init = 16'ha9eb;
    ORCALUT4 ALU_Op_2__I_0_132_Mux_2_i4_3_lut (.A(BusA[2]), .B(ALU_Op[0]), 
            .C(BusB[2]), .Z(n4_adj_1775)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam ALU_Op_2__I_0_132_Mux_2_i4_3_lut.init = 16'h6868;
    PFUMX ALU_Op_2__I_0_132_Mux_6_i7 (.BLUT(n4_adj_1776), .ALUT(n6_adj_1777), 
          .C0(n27932), .Z(\Q_7__N_1635[6] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=84, LSE_RCOL=7, LSE_LLINE=276, LSE_RLINE=288 */ ;
    PFUMX i25764 (.BLUT(n27499), .ALUT(F_Out_7__N_1677), .C0(n31220), 
          .Z(n27500));
    ORCALUT4 i822_2_lut_rep_714 (.A(BusA[2]), .B(BusA[1]), .Z(n31301)) /* synthesis lut_function=(A (B)) */ ;
    defparam i822_2_lut_rep_714.init = 16'h8888;
    ORCALUT4 ALU_Op_3__I_0_Mux_2_i8_4_lut (.A(F_Out_7__N_1670), .B(n26823), 
            .C(ALU_Op[0]), .D(n31290), .Z(n8_adj_1778)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_2_i8_4_lut.init = 16'h3530;
    ORCALUT4 i4_4_lut (.A(Q_7__N_1627[1]), .B(BusA[4]), .C(Q_7__N_1627[7]), 
            .D(n6_adj_1779), .Z(F_Out_7__N_1670)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i4_4_lut.init = 16'h6996;
    ORCALUT4 i1_4_lut (.A(n5), .B(n26320), .C(Q_7__N_1627[6]), .D(BusA[3]), 
            .Z(n6_adj_1779)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i1_4_lut.init = 16'h6996;
    PFUMX ALU_Op_2__I_0_132_Mux_5_i7 (.BLUT(n4_adj_1780), .ALUT(n6_adj_1781), 
          .C0(n27932), .Z(\Q_7__N_1635[5] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=84, LSE_RCOL=7, LSE_LLINE=276, LSE_RLINE=288 */ ;
    ORCALUT4 ALU_Op_3__I_0_Mux_6_i12_3_lut (.A(n15), .B(F[6]), .C(ALU_Op[0]), 
            .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_6_i12_3_lut.init = 16'hc5c5;
    ORCALUT4 i1635_4_lut (.A(n13_adj_1782), .B(n15), .C(ALU_Op[0]), .D(n14_adj_1783), 
            .Z(n2534)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i1635_4_lut.init = 16'h3035;
    ORCALUT4 i5975_3_lut_4_lut_4_lut_then_4_lut (.A(F[1]), .B(BusA[1]), 
            .C(BusA[2]), .D(F[4]), .Z(n31326)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A !(B+(C))) */ ;
    defparam i5975_3_lut_4_lut_4_lut_then_4_lut.init = 16'h8183;
    ORCALUT4 i5975_3_lut_4_lut_4_lut_else_4_lut (.A(F[1]), .B(BusA[1]), 
            .C(BusA[2]), .D(F[4]), .Z(n31325)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D))))) */ ;
    defparam i5975_3_lut_4_lut_4_lut_else_4_lut.init = 16'h7e00;
    ORCALUT4 ALU_Op_2__I_0_132_Mux_3_i4_3_lut (.A(BusA[3]), .B(ALU_Op[0]), 
            .C(BusB[3]), .Z(n4_adj_1784)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam ALU_Op_2__I_0_132_Mux_3_i4_3_lut.init = 16'h6868;
    ORCALUT4 ALU_Op_3__I_0_Mux_2_i12_3_lut (.A(F_Out_7__N_1645), .B(F[2]), 
            .C(ALU_Op[0]), .Z(n12_adj_1785)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_2_i12_3_lut.init = 16'hc5c5;
    ORCALUT4 i1634_4_lut (.A(n15_adj_1786), .B(F_Out_7__N_1645), .C(ALU_Op[0]), 
            .D(n16), .Z(n2531)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i1634_4_lut.init = 16'h3a35;
    ORCALUT4 i26842_3_lut (.A(n2531), .B(n12_adj_1785), .C(ALU_Op[1]), 
            .Z(n13_adj_1787)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i26842_3_lut.init = 16'hcaca;
    ORCALUT4 i832_2_lut_rep_636_3_lut (.A(BusA[2]), .B(BusA[1]), .C(BusA[3]), 
            .Z(n31223)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i832_2_lut_rep_636_3_lut.init = 16'hf8f8;
    PFUMX ALU_Op_2__I_0_132_Mux_4_i7 (.BLUT(n4_adj_1788), .ALUT(n6_adj_1789), 
          .C0(n27932), .Z(Q_7__N_1635_c[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=84, LSE_RCOL=7, LSE_LLINE=276, LSE_RLINE=288 */ ;
    ORCALUT4 i14645_2_lut_3_lut_4_lut (.A(BusA[2]), .B(BusA[1]), .C(F[4]), 
            .D(BusA[3]), .Z(F_Out_7__N_1649)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i14645_2_lut_3_lut_4_lut.init = 16'h0070;
    ORCALUT4 n26017_bdd_3_lut (.A(\IR[4] ), .B(BusA[0]), .C(F[0]), .Z(n30080)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n26017_bdd_3_lut.init = 16'he4e4;
    ORCALUT4 i840_2_lut_rep_547_3_lut_4_lut (.A(BusA[2]), .B(BusA[1]), .C(BusA[4]), 
            .D(BusA[3]), .Z(n31134)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i840_2_lut_rep_547_3_lut_4_lut.init = 16'hfff8;
    ORCALUT4 i2_3_lut (.A(ALU_Op[2]), .B(F[0]), .C(ALU_Op[0]), .Z(HalfCarry_v_N_1688)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(111[88:114])
    defparam i2_3_lut.init = 16'h4040;
    ORCALUT4 ALU_Op_3__I_0_Mux_2_i10_3_lut (.A(n8_adj_1778), .B(F[2]), .C(n10142), 
            .Z(n10_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_2_i10_3_lut.init = 16'hcaca;
    ORCALUT4 i708_2_lut_rep_715 (.A(BusA[1]), .B(BusA[2]), .Z(n31302)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i708_2_lut_rep_715.init = 16'heeee;
    ORCALUT4 i1054_2_lut_rep_710 (.A(BusA[6]), .B(BusA[5]), .Z(n31297)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(241[15:25])
    defparam i1054_2_lut_rep_710.init = 16'heeee;
    ORCALUT4 i1057_2_lut_3_lut (.A(BusA[6]), .B(BusA[5]), .C(BusA[7]), 
            .Z(n943)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(241[15:25])
    defparam i1057_2_lut_3_lut.init = 16'h1e1e;
    ORCALUT4 i1059_2_lut_3_lut (.A(BusA[6]), .B(BusA[5]), .C(BusA[7]), 
            .Z(n1698)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(241[15:25])
    defparam i1059_2_lut_3_lut.init = 16'he0e0;
    ORCALUT4 i1001_2_lut_3_lut (.A(BusA[6]), .B(BusA[5]), .C(BusA[7]), 
            .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(241[15:25])
    defparam i1001_2_lut_3_lut.init = 16'hf8f8;
    ORCALUT4 i6976_2_lut_3_lut (.A(BusA[6]), .B(BusA[5]), .C(BusA[7]), 
            .Z(n1154[2])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(241[15:25])
    defparam i6976_2_lut_3_lut.init = 16'h8787;
    ORCALUT4 i5222_3_lut (.A(BusA[3]), .B(BusA[5]), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(Q_7__N_1627[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i5222_3_lut.init = 16'hcaca;
    ORCALUT4 i25787_3_lut (.A(n11_c), .B(n12_adj_1791), .C(ALU_Op[1]), 
            .Z(n27523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25787_3_lut.init = 16'hcaca;
    ORCALUT4 i718_2_lut_rep_637_3_lut (.A(BusA[1]), .B(BusA[2]), .C(BusA[3]), 
            .Z(n31224)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i718_2_lut_rep_637_3_lut.init = 16'he0e0;
    ORCALUT4 ALU_Op_3__I_0_107_Mux_3_i11_3_lut (.A(Q_7__N_1595[3]), .B(BusB[7]), 
            .C(ALU_Op[0]), .Z(n11_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_107_Mux_3_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_176 (.A(n7468), .B(BusA[1]), .C(BusA[5]), .D(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n5)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i1_4_lut_adj_176.init = 16'h3c66;
    ORCALUT4 i5216_3_lut (.A(BusA[2]), .B(BusA[4]), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(Q_7__N_1627[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i5216_3_lut.init = 16'hcaca;
    ORCALUT4 i5204_3_lut (.A(BusA[0]), .B(BusA[2]), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(Q_7__N_1627[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i5204_3_lut.init = 16'hcaca;
    ORCALUT4 i4031_2_lut_rep_713 (.A(n33948), .B(n33950), .Z(n31289)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam i4031_2_lut_rep_713.init = 16'hbbbb;
    ORCALUT4 i15173_2_lut_rep_629_3_lut (.A(\IR[4] ), .B(\IR[5] ), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n31216)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam i15173_2_lut_rep_629_3_lut.init = 16'h4040;
    ORCALUT4 i15342_2_lut_rep_634_3_lut (.A(\IR[4] ), .B(\IR[5] ), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n31221)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(99[7] 108[14])
    defparam i15342_2_lut_rep_634_3_lut.init = 16'hfbfb;
    ORCALUT4 i2_4_lut (.A(n8_adj_1792), .B(F[0]), .C(n30991), .D(n31138), 
            .Z(n178)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(239[3] 242[8])
    defparam i2_4_lut.init = 16'hfeee;
    ORCALUT4 i25656_3_lut_4_lut (.A(BusA[1]), .B(BusA[2]), .C(Q_7__N_1627[7]), 
            .D(BusA[3]), .Z(n27392)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i25656_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i717_2_lut_rep_546_3_lut_4_lut (.A(BusA[1]), .B(BusA[2]), .C(BusA[4]), 
            .D(BusA[3]), .Z(n31133)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i717_2_lut_rep_546_3_lut_4_lut.init = 16'he000;
    ORCALUT4 F_Out_7__I_158_2_lut_rep_551_3_lut_4_lut (.A(BusA[1]), .B(BusA[2]), 
            .C(F[4]), .D(BusA[3]), .Z(n31138)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam F_Out_7__I_158_2_lut_rep_551_3_lut_4_lut.init = 16'hfef0;
    ORCALUT4 i1600_2_lut_rep_462_3_lut_4_lut_4_lut (.A(BusA[1]), .B(BusA[2]), 
            .C(F[4]), .D(BusA[3]), .Z(n31049)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (C)))) */ ;
    defparam i1600_2_lut_rep_462_3_lut_4_lut_4_lut.init = 16'h545a;
    ORCALUT4 i720_3_lut (.A(n31008), .B(n166[7]), .C(n166[6]), .Z(n8_adj_1792)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i720_3_lut.init = 16'hc8c8;
    ORCALUT4 i941_2_lut_rep_434_3_lut_4_lut (.A(n31224), .B(BusA[4]), .C(BusA[6]), 
            .D(BusA[5]), .Z(n31021)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i941_2_lut_rep_434_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i939_2_lut_rep_435_3_lut_4_lut (.A(n31224), .B(BusA[4]), .C(BusA[6]), 
            .D(BusA[5]), .Z(n31022)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i939_2_lut_rep_435_3_lut_4_lut.init = 16'h78f0;
    ORCALUT4 i14716_2_lut_rep_414_3_lut_4_lut_3_lut_4_lut (.A(BusA[4]), .B(n31223), 
            .C(BusA[6]), .D(BusA[5]), .Z(n31001)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B !(C+(D))))) */ ;
    defparam i14716_2_lut_rep_414_3_lut_4_lut_3_lut_4_lut.init = 16'h1ffe;
    ORCALUT4 i69_4_lut (.A(n31133), .B(F[0]), .C(BusA[7]), .D(n31297), 
            .Z(n251)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(255[7:41])
    defparam i69_4_lut.init = 16'hfcec;
    ORCALUT4 ALU_Op_3__I_0_107_Mux_5_i8_3_lut_4_lut (.A(BusB[5]), .B(n31216), 
            .C(ALU_Op[0]), .D(Q_7__N_1627[5]), .Z(n8_adj_1772)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(310[17:31])
    defparam ALU_Op_3__I_0_107_Mux_5_i8_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 ALU_Op_3__I_0_Mux_6_i8_4_lut (.A(n13_adj_1793), .B(n26823), 
            .C(ALU_Op[0]), .D(n27392), .Z(n8_adj_1794)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_6_i8_4_lut.init = 16'h303a;
    ORCALUT4 i5_4_lut (.A(n31290), .B(BusA[4]), .C(n30961), .D(BusA[5]), 
            .Z(n13_adj_1793)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i5_4_lut.init = 16'h0020;
    ORCALUT4 i7_4_lut (.A(n31132), .B(n31339), .C(n10_adj_1795), .D(n31137), 
            .Z(n26823)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i7_4_lut.init = 16'hfffe;
    ORCALUT4 i989_2_lut (.A(BusA[6]), .B(BusA[5]), .Z(n1154[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i989_2_lut.init = 16'h6666;
    ORCALUT4 ALU_Op_3__I_0_107_Mux_7_i8_3_lut_4_lut (.A(BusB[7]), .B(n31218), 
            .C(ALU_Op[0]), .D(Q_7__N_1627[7]), .Z(n8_adj_1771)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(310[17:31])
    defparam ALU_Op_3__I_0_107_Mux_7_i8_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i2_2_lut_3_lut_4_lut (.A(BusB[1]), .B(n31222), .C(n31213), 
            .D(BusB[2]), .Z(n10_adj_1795)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(310[17:31])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hf888;
    ORCALUT4 ALU_Op_3__I_0_107_Mux_1_i8_3_lut_4_lut (.A(BusB[1]), .B(n31222), 
            .C(ALU_Op[0]), .D(Q_7__N_1627[1]), .Z(n8_adj_1770)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(310[17:31])
    defparam ALU_Op_3__I_0_107_Mux_1_i8_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 ALU_Op_3__I_0_107_Mux_1_i11_3_lut_4_lut (.A(BusA[1]), .B(n31138), 
            .C(ALU_Op[0]), .D(BusB[5]), .Z(n11_adj_1796)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(225[3] 236[8])
    defparam ALU_Op_3__I_0_107_Mux_1_i11_3_lut_4_lut.init = 16'hf606;
    ORCALUT4 i5973_3_lut_4_lut (.A(n31224), .B(F[4]), .C(n7474), .D(BusA[4]), 
            .Z(Q_7__N_1595[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[7:45])
    defparam i5973_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_701_i5_3_lut_rep_421_3_lut_4_lut_3_lut (.A(n31224), .B(BusA[5]), 
            .C(BusA[4]), .Z(n31008)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(247[7:45])
    defparam mux_701_i5_3_lut_rep_421_3_lut_4_lut_3_lut.init = 16'h6c6c;
    PFUMX i25788 (.BLUT(n27523), .ALUT(F_Out_7__N_1689), .C0(n31220), 
          .Z(n27524));
    ORCALUT4 ALU_Op_3__I_0_107_Mux_4_i8_3_lut_4_lut (.A(BusB[4]), .B(n31221), 
            .C(ALU_Op[0]), .D(Q_7__N_1627[4]), .Z(n8_adj_1769)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(310[17:31])
    defparam ALU_Op_3__I_0_107_Mux_4_i8_3_lut_4_lut.init = 16'h2f20;
    ORCALUT4 i26752_3_lut_4_lut (.A(n31225), .B(ALU_Op[2]), .C(Q_v[1]), 
            .D(n5_adj_1797), .Z(n6_adj_1798)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(198[6] 204[13])
    defparam i26752_3_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i26816_3_lut_4_lut (.A(n31225), .B(ALU_Op[2]), .C(Q_v[3]), 
            .D(n5_adj_1799), .Z(n6_adj_1800)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(198[6] 204[13])
    defparam i26816_3_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i26777_3_lut_4_lut (.A(n31225), .B(ALU_Op[2]), .C(Q_v[2]), 
            .D(n5_adj_1801), .Z(n6_adj_1802)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(198[6] 204[13])
    defparam i26777_3_lut_4_lut.init = 16'hf4b0;
    PFUMX ALU_Op_3__I_0_Mux_2_i14 (.BLUT(n10_c), .ALUT(n13_adj_1787), .C0(ALU_Op[2]), 
          .Z(n14_adj_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=84, LSE_RCOL=7, LSE_LLINE=276, LSE_RLINE=288 */ ;
    ORCALUT4 i26869_3_lut_4_lut (.A(n31225), .B(ALU_Op[2]), .C(Q_v[4]), 
            .D(n5_adj_1804), .Z(n6_adj_1789)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(198[6] 204[13])
    defparam i26869_3_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i26907_3_lut_4_lut (.A(n31225), .B(ALU_Op[2]), .C(Q_v[5]), 
            .D(n5_adj_1805), .Z(n6_adj_1781)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(198[6] 204[13])
    defparam i26907_3_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i26946_3_lut_4_lut (.A(n31225), .B(ALU_Op[2]), .C(Q_v[6]), 
            .D(n5_adj_1806), .Z(n6_adj_1777)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(198[6] 204[13])
    defparam i26946_3_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i26956_3_lut_4_lut (.A(n31225), .B(ALU_Op[2]), .C(Q_v[7]), 
            .D(n5_adj_1807), .Z(n6_c)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(198[6] 204[13])
    defparam i26956_3_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 ALU_Op_2__I_0_132_Mux_4_i4_3_lut (.A(BusA[4]), .B(ALU_Op[0]), 
            .C(BusB[4]), .Z(n4_adj_1788)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam ALU_Op_2__I_0_132_Mux_4_i4_3_lut.init = 16'h6868;
    ORCALUT4 ALU_Op_3__I_0_Mux_3_i12_3_lut (.A(BusB[3]), .B(F[3]), .C(ALU_Op[0]), 
            .Z(n12_adj_1791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_3_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i25789_3_lut_4_lut_else_4_lut (.A(BusA[1]), .B(n7468), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n31346)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(310[17:31])
    defparam i25789_3_lut_4_lut_else_4_lut.init = 16'hacac;
    PFUMX i28477 (.BLUT(n31325), .ALUT(n31326), .C0(BusA[3]), .Z(Q_7__N_1595[3]));
    ORCALUT4 i27016_3_lut_4_lut (.A(n30999), .B(n10230), .C(n998), .D(n903), 
            .Z(\F_Out[5] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i27016_3_lut_4_lut.init = 16'hf1e0;
    PFUMX ALU_Op_2__I_0_132_Mux_3_i7 (.BLUT(n4_adj_1784), .ALUT(n6_adj_1800), 
          .C0(n27932), .Z(\Q_7__N_1635[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=84, LSE_RCOL=7, LSE_LLINE=276, LSE_RLINE=288 */ ;
    ORCALUT4 ALU_Op_3__I_0_107_Mux_4_i15_3_lut (.A(n11_adj_1808), .B(BusB[4]), 
            .C(n31068), .Z(\ALU_Q[4] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_107_Mux_4_i15_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Op_2__I_0_132_Mux_5_i4_3_lut (.A(BusA[5]), .B(ALU_Op[0]), 
            .C(BusB[5]), .Z(n4_adj_1780)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam ALU_Op_2__I_0_132_Mux_5_i4_3_lut.init = 16'h6868;
    ORCALUT4 i25763_3_lut (.A(n11_adj_1809), .B(n12_adj_1810), .C(ALU_Op[1]), 
            .Z(n27499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25763_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Op_2__I_0_132_Mux_0_i7_then_4_lut (.A(BusA[0]), .B(ALU_Op[0]), 
            .C(BusB[0]), .D(ALU_Op[1]), .Z(n31332)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A !(B (C)+!B (C (D))))) */ ;
    defparam ALU_Op_2__I_0_132_Mux_0_i7_then_4_lut.init = 16'h7a68;
    ORCALUT4 ALU_Op_2__I_0_132_Mux_0_i7_else_4_lut (.A(BusA[0]), .B(ALU_Op[0]), 
            .C(BusB[0]), .D(F[0]), .Z(n31331)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;
    defparam ALU_Op_2__I_0_132_Mux_0_i7_else_4_lut.init = 16'h965a;
    ORCALUT4 ALU_Op_3__I_0_107_Mux_5_i15_3_lut (.A(n27491), .B(BusB[5]), 
            .C(n31068), .Z(\ALU_Q[5] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_107_Mux_5_i15_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Op_2__I_0_132_Mux_6_i4_3_lut (.A(BusA[6]), .B(ALU_Op[0]), 
            .C(BusB[6]), .Z(n4_adj_1776)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam ALU_Op_2__I_0_132_Mux_6_i4_3_lut.init = 16'h6868;
    ORCALUT4 i24611_3_lut (.A(BusA[2]), .B(BusA[6]), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(n26320)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(424[30:36])
    defparam i24611_3_lut.init = 16'hcaca;
    ORCALUT4 i27003_3_lut_4_lut (.A(n1165), .B(n31072), .C(n1142), .D(n996), 
            .Z(\F_Out[7] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i27003_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i6_4_lut (.A(Q_7__N_1635_c[7]), .B(Q_7__N_1635_c[4]), .C(\Q_7__N_1635[5] ), 
            .D(\Q_7__N_1635[6] ), .Z(n14_adj_1811)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[27:33])
    defparam i6_4_lut.init = 16'h6996;
    ORCALUT4 i2_2_lut (.A(Q_7__N_1635_c[1]), .B(\Q_7__N_1635[2] ), .Z(n10_adj_1812)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[27:33])
    defparam i2_2_lut.init = 16'h6666;
    ORCALUT4 ALU_Op_2__I_0_132_Mux_7_i4_3_lut (.A(BusA[7]), .B(ALU_Op[0]), 
            .C(BusB[7]), .Z(n4_adj_1773)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(134[6] 171[13])
    defparam ALU_Op_2__I_0_132_Mux_7_i4_3_lut.init = 16'h6868;
    ORCALUT4 ALU_Op_3__I_0_107_Mux_7_i11_3_lut (.A(Q_7__N_1595[7]), .B(BusA[7]), 
            .C(ALU_Op[0]), .Z(n11_adj_1813)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_107_Mux_7_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i25761_3_lut (.A(Q_7__N_1635_c[7]), .B(\di_reg[7] ), .C(Save_ALU_r_keep), 
            .Z(n27497)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i25761_3_lut.init = 16'hacac;
    ORCALUT4 ALU_Op_3__I_0_Mux_3_i8_4_lut (.A(Q_7__N_1627[3]), .B(BusB[3]), 
            .C(ALU_Op[0]), .D(n31257), .Z(n8_adj_1814)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_3_i8_4_lut.init = 16'hca0a;
    ORCALUT4 i948_2_lut_rep_404_3_lut_4_lut (.A(BusA[5]), .B(n31133), .C(BusA[7]), 
            .D(BusA[6]), .Z(n30991)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(235[15:24])
    defparam i948_2_lut_rep_404_3_lut_4_lut.init = 16'h8000;
    L6MUX21 ALU_Op_3__I_0_107_Mux_1_i15 (.D0(n27513), .D1(n27515), .SD(n31212), 
            .Z(\ALU_Q[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=84, LSE_RCOL=7, LSE_LLINE=276, LSE_RLINE=288 */ ;
    PFUMX ALU_Op_2__I_0_132_Mux_2_i7 (.BLUT(n4_adj_1775), .ALUT(n6_adj_1802), 
          .C0(n27932), .Z(\Q_7__N_1635[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=84, LSE_RCOL=7, LSE_LLINE=276, LSE_RLINE=288 */ ;
    ORCALUT4 ALU_Op_3__I_0_Mux_5_i8_4_lut (.A(Q_7__N_1627[5]), .B(BusB[5]), 
            .C(ALU_Op[0]), .D(n31257), .Z(n8_adj_1815)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_5_i8_4_lut.init = 16'hca0a;
    PFUMX i2808 (.BLUT(n8_adj_1816), .ALUT(n11_adj_1817), .C0(ALU_Op[2]), 
          .Z(n3996));
    PFUMX i29549 (.BLUT(n32975), .ALUT(n32971), .C0(ALU_Op[2]), .Z(n32976));
    PFUMX i29547 (.BLUT(Q_7__N_1627[3]), .ALUT(n32973), .C0(ALU_Op[0]), 
          .Z(n32974));
    ORCALUT4 ALU_Op_3__I_0_Mux_7_i12_3_lut (.A(BusA[7]), .B(F[7]), .C(ALU_Op[0]), 
            .Z(n12_adj_1818)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_7_i12_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Op_3__I_0_Mux_7_i8_4_lut (.A(Q_7__N_1627[7]), .B(n31136), 
            .C(ALU_Op[0]), .D(n31290), .Z(n8_adj_1819)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_7_i8_4_lut.init = 16'hcac0;
    PFUMX i25779 (.BLUT(n11_adj_1796), .ALUT(n27514), .C0(n31200), .Z(n27515));
    ORCALUT4 mux_681_i6_3_lut_3_lut_4_lut (.A(BusA[5]), .B(n31133), .C(n31138), 
            .D(BusA[6]), .Z(n166[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(235[15:24])
    defparam mux_681_i6_3_lut_3_lut_4_lut.init = 16'h7f80;
    ORCALUT4 i7973_2_lut_4_lut_4_lut (.A(BusA[5]), .B(n31133), .C(n178), 
            .D(n31138), .Z(Q_7__N_1746[5])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(235[15:24])
    defparam i7973_2_lut_4_lut_4_lut.init = 16'h965a;
    ORCALUT4 i6_4_lut_then_4_lut (.A(\IR[5] ), .B(BusB[6]), .C(\Set_BusA_To_3__N_1230[0] ), 
            .D(BusB[7]), .Z(n31338)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i6_4_lut_then_4_lut.init = 16'ha808;
    ORCALUT4 i6_4_lut_else_4_lut (.A(\IR[5] ), .B(BusB[5]), .C(BusB[4]), 
            .D(\Set_BusA_To_3__N_1230[0] ), .Z(n31337)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(312[10:33])
    defparam i6_4_lut_else_4_lut.init = 16'h88a0;
    ORCALUT4 ALU_Op_3__I_0_Mux_7_i10_3_lut (.A(n8_adj_1819), .B(F[7]), .C(n10142), 
            .Z(n10)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_7_i10_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Op_3__I_0_107_Mux_5_i11_3_lut (.A(Q_7__N_1595[5]), .B(BusA[5]), 
            .C(ALU_Op[0]), .Z(n11_adj_1809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_107_Mux_5_i11_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Op_3__I_0_Mux_5_i12_3_lut (.A(BusA[5]), .B(F[5]), .C(ALU_Op[0]), 
            .Z(n12_adj_1810)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_5_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i5972_4_lut (.A(BusA[4]), .B(n31223), .C(F[1]), .D(n31224), 
            .Z(n7474)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam i5972_4_lut.init = 16'h959a;
    ORCALUT4 Q_7__N_1635_7__I_0_116_3_lut (.A(Q_7__N_1635_c[7]), .B(F[7]), 
            .C(Arith16_r_keep), .Z(F_Out_7__N_1672)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(206[6] 211[11])
    defparam Q_7__N_1635_7__I_0_116_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Op_3__I_0_Mux_7_i13_3_lut (.A(n11_adj_1813), .B(n12_adj_1818), 
            .C(ALU_Op[1]), .Z(n13)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_7_i13_3_lut.init = 16'hcaca;
    ORCALUT4 i25762_3_lut (.A(n8_adj_1815), .B(F[5]), .C(ALU_Op[1]), .Z(n27498)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25762_3_lut.init = 16'hcaca;
    ORCALUT4 i25786_3_lut (.A(n8_adj_1814), .B(F[3]), .C(ALU_Op[1]), .Z(n27522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i25786_3_lut.init = 16'hcaca;
    ORCALUT4 ALU_Op_3__I_0_107_Mux_7_i15_3_lut (.A(n27497), .B(BusB[7]), 
            .C(n31068), .Z(\ALU_Q[7] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_107_Mux_7_i15_3_lut.init = 16'hcaca;
    ORCALUT4 F_Out_7__I_166_4_lut (.A(Q_7__N_1635[0]), .B(n14_adj_1811), 
            .C(n10_adj_1812), .D(\Q_7__N_1635[3] ), .Z(F_Out_7__N_1693)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(203[26:33])
    defparam F_Out_7__I_166_4_lut.init = 16'h9669;
    PFUMX ALU_Op_2__I_0_132_Mux_1_i7 (.BLUT(n4), .ALUT(n6_adj_1798), .C0(n27932), 
          .Z(Q_7__N_1635_c[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=84, LSE_RCOL=7, LSE_LLINE=276, LSE_RLINE=288 */ ;
    PFUMX mux_704_i5 (.BLUT(Q_7__N_1746[5]), .ALUT(Q_7__N_1737[5]), .C0(F[1]), 
          .Z(Q_7__N_1595[5]));
    PFUMX mux_704_i6 (.BLUT(Q_7__N_1746[6]), .ALUT(Q_7__N_1737[6]), .C0(F[1]), 
          .Z(\Q_7__N_1595[6] ));
    PFUMX mux_704_i7 (.BLUT(Q_7__N_1746[7]), .ALUT(Q_7__N_1737[7]), .C0(F[1]), 
          .Z(Q_7__N_1595[7]));
    ORCALUT4 F_Out_7__I_165_3_lut (.A(F_Out_7__N_1691), .B(F[2]), .C(Arith16_r_keep), 
            .Z(F_Out_7__N_1690)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(206[6] 211[11])
    defparam F_Out_7__I_165_3_lut.init = 16'hcaca;
    ORCALUT4 i25771_3_lut_3_lut_4_lut (.A(BusA[5]), .B(n31134), .C(n31138), 
            .D(BusA[6]), .Z(n27507)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam i25771_3_lut_3_lut_4_lut.init = 16'hef10;
    ORCALUT4 i1_3_lut_rep_439_4_lut (.A(BusA[5]), .B(n31134), .C(BusA[6]), 
            .D(BusA[7]), .Z(n31026)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_rep_439_4_lut.init = 16'h01fe;
    ORCALUT4 i7970_4_lut_4_lut (.A(BusA[5]), .B(n31134), .C(n31138), .D(n251), 
            .Z(Q_7__N_1737[5])) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(C (D)+!C !(D))))) */ ;
    defparam i7970_4_lut_4_lut.init = 16'h659a;
    PFUMX mux_704_i8 (.BLUT(\Q_7__N_1746[8] ), .ALUT(\Q_7__N_1737[8] ), 
          .C0(F[1]), .Z(Q_7__N_1595[8]));
    ORCALUT4 ALU_Op_3__I_0_Mux_6_i10_3_lut (.A(n8_adj_1794), .B(F[6]), .C(n10142), 
            .Z(n10_adj_1821)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_Mux_6_i10_3_lut.init = 16'hcaca;
    ORCALUT4 i26748_3_lut (.A(n27507), .B(n29975), .C(n251), .Z(Q_7__N_1737[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam i26748_3_lut.init = 16'hcaca;
    ORCALUT4 i5210_3_lut (.A(BusA[1]), .B(BusA[3]), .C(\Set_BusA_To_3__N_1230[0] ), 
            .Z(Q_7__N_1627[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i5210_3_lut.init = 16'hcaca;
    ORCALUT4 i6_4_lut_adj_177 (.A(Q_7__N_1595[4]), .B(\Q_7__N_1595[2] ), 
            .C(Q_7__N_1595[8]), .D(BusA[0]), .Z(n15_adj_1786)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i6_4_lut_adj_177.init = 16'h6996;
    ORCALUT4 i6_4_lut_adj_178 (.A(Q_7__N_1592), .B(n12_adj_1822), .C(BusA[7]), 
            .D(Q_7__N_1594), .Z(F_Out_7__N_1645)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(304[30:36])
    defparam i6_4_lut_adj_178.init = 16'h6996;
    ORCALUT4 i5_4_lut_adj_179 (.A(Q_7__N_1593), .B(BusA[4]), .C(n1154[1]), 
            .D(Q_7__N_1591), .Z(n12_adj_1822)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(304[30:36])
    defparam i5_4_lut_adj_179.init = 16'h6996;
    ORCALUT4 i7_4_lut_adj_180 (.A(Q_7__N_1595[7]), .B(Q_7__N_1595[3]), .C(n31049), 
            .D(n10_adj_1823), .Z(n16)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i7_4_lut_adj_180.init = 16'h6996;
    ORCALUT4 i1_2_lut (.A(\Q_7__N_1595[6] ), .B(Q_7__N_1595[5]), .Z(n10_adj_1823)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(276[24:32])
    defparam i1_2_lut.init = 16'h6666;
    ORCALUT4 i5977_4_lut (.A(BusA[2]), .B(BusA[1]), .C(n31138), .D(F[1]), 
            .Z(\Q_7__N_1595[2] )) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(245[15] 259[11])
    defparam i5977_4_lut.init = 16'h6a9a;
    ORCALUT4 BusB_1__I_0_3_lut (.A(BusB[1]), .B(BusB[5]), .C(ALU_Op[0]), 
            .Z(Q_7__N_1593)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_1__I_0_3_lut.init = 16'hcaca;
    ORCALUT4 BusB_3__I_0_112_3_lut (.A(BusB[3]), .B(BusB[7]), .C(ALU_Op[0]), 
            .Z(Q_7__N_1591)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_3__I_0_112_3_lut.init = 16'hcaca;
    ORCALUT4 BusB_2__I_0_3_lut (.A(BusB[2]), .B(BusB[6]), .C(ALU_Op[0]), 
            .Z(Q_7__N_1592)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_2__I_0_3_lut.init = 16'hcaca;
    ORCALUT4 n29972_bdd_4_lut (.A(n29972), .B(BusA[0]), .C(n29971), .D(n33946), 
            .Z(n30961)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;
    defparam n29972_bdd_4_lut.init = 16'hf022;
    ORCALUT4 BusB_0__I_0_3_lut (.A(BusB[0]), .B(BusB[4]), .C(ALU_Op[0]), 
            .Z(Q_7__N_1594)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(288[15] 290[11])
    defparam BusB_0__I_0_3_lut.init = 16'hcaca;
    ORCALUT4 i27018_3_lut_4_lut (.A(n30999), .B(n10230), .C(n1000), .D(n24338), 
            .Z(\F_Out[3] )) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i27018_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 ALU_Op_3__I_0_107_Mux_0_i11_3_lut (.A(BusA[0]), .B(BusB[4]), 
            .C(ALU_Op[0]), .Z(n11)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam ALU_Op_3__I_0_107_Mux_0_i11_3_lut.init = 16'hcaca;
    ORCALUT4 n3_bdd_3_lut_28735 (.A(ALU_Op[3]), .B(F[1]), .C(ALU_Op[1]), 
            .Z(n29840)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam n3_bdd_3_lut_28735.init = 16'hd0d0;
    ORCALUT4 n3_bdd_4_lut_28734 (.A(ALU_Op[3]), .B(F[1]), .C(ALU_Op[1]), 
            .D(ALU_Op[0]), .Z(n29839)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (C (D))) */ ;
    defparam n3_bdd_4_lut_28734.init = 16'hd008;
    ORCALUT4 i7_4_lut_adj_181 (.A(Q_7__N_1635[0]), .B(n14_adj_1825), .C(n10_adj_1826), 
            .D(\Q_7__N_1635[3] ), .Z(n8519)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i7_4_lut_adj_181.init = 16'hfffe;
    ORCALUT4 i27126_2_lut_rep_613 (.A(ALU_Op[3]), .B(ALU_Op[1]), .Z(n31200)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i27126_2_lut_rep_613.init = 16'hdddd;
    ORCALUT4 i6_4_lut_adj_182 (.A(Q_7__N_1635_c[7]), .B(Q_7__N_1635_c[4]), 
            .C(\Q_7__N_1635[5] ), .D(\Q_7__N_1635[6] ), .Z(n14_adj_1825)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i6_4_lut_adj_182.init = 16'hfffe;
    ORCALUT4 i27146_2_lut_rep_533_3_lut (.A(ALU_Op[3]), .B(ALU_Op[1]), .C(Save_ALU_r_keep), 
            .Z(n31120)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i27146_2_lut_rep_533_3_lut.init = 16'hdfdf;
    ORCALUT4 i2_2_lut_adj_183 (.A(Q_7__N_1635_c[1]), .B(\Q_7__N_1635[2] ), 
            .Z(n10_adj_1826)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(184[10:33])
    defparam i2_2_lut_adj_183.init = 16'heeee;
    ORCALUT4 i5_4_lut_adj_184 (.A(BusA[0]), .B(n31049), .C(Q_7__N_1595[3]), 
            .D(\Q_7__N_1595[2] ), .Z(n13_adj_1782)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(266[10:35])
    defparam i5_4_lut_adj_184.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_185 (.A(Q_7__N_1592), .B(n12_adj_1827), .C(BusA[7]), 
            .D(Q_7__N_1594), .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(295[10:33])
    defparam i6_4_lut_adj_185.init = 16'hfffe;
    ORCALUT4 i5968_4_lut (.A(BusA[7]), .B(\IR[4] ), .C(\IR[5] ), .D(F[0]), 
            .Z(n7468)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(344[6] 409[13])
    defparam i5968_4_lut.init = 16'hcec2;
    ORCALUT4 i5_4_lut_adj_186 (.A(Q_7__N_1593), .B(BusA[4]), .C(n31297), 
            .D(Q_7__N_1591), .Z(n12_adj_1827)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(295[10:33])
    defparam i5_4_lut_adj_186.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_187 (.A(Q_7__N_1595[7]), .B(Q_7__N_1595[4]), .C(Q_7__N_1595[5]), 
            .D(\Q_7__N_1595[6] ), .Z(n14_adj_1783)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(266[10:35])
    defparam i6_4_lut_adj_187.init = 16'hfffe;
    ORCALUT4 i2_3_lut_4_lut (.A(BusB[7]), .B(ALU_Op[1]), .C(n30978), .D(BusA[7]), 
            .Z(Q_v[7])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam i2_3_lut_4_lut.init = 16'h6996;
    ORCALUT4 Carry_v_I_0_2_lut_4_lut_3_lut_4_lut (.A(BusB[7]), .B(ALU_Op[1]), 
            .C(BusA[7]), .D(n30978), .Z(OverFlow_v)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam Carry_v_I_0_2_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    ORCALUT4 i893_4_lut_rep_386_3_lut_4_lut (.A(BusB[7]), .B(ALU_Op[1]), 
            .C(BusA[7]), .D(n30978), .Z(n30973)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(82[39:49])
    defparam i893_4_lut_rep_386_3_lut_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_188 (.A(BusB[4]), .B(ALU_Op[1]), .C(n30988), 
            .D(BusA[4]), .Z(Q_v[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_188.init = 16'h6996;
    ORCALUT4 i872_4_lut_3_lut_rep_399_4_lut (.A(BusB[4]), .B(ALU_Op[1]), 
            .C(BusA[4]), .D(n30988), .Z(n30986)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i872_4_lut_3_lut_rep_399_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_189 (.A(BusB[5]), .B(ALU_Op[1]), .C(n30986), 
            .D(BusA[5]), .Z(Q_v[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_189.init = 16'h6996;
    ORCALUT4 i879_4_lut_3_lut_rep_396_4_lut (.A(BusB[5]), .B(ALU_Op[1]), 
            .C(BusA[5]), .D(n30986), .Z(n30983)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i879_4_lut_3_lut_rep_396_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_190 (.A(BusB[6]), .B(ALU_Op[1]), .C(n30983), 
            .D(BusA[6]), .Z(Q_v[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i2_3_lut_4_lut_adj_190.init = 16'h6996;
    ORCALUT4 i886_4_lut_3_lut_rep_391_4_lut (.A(BusB[6]), .B(ALU_Op[1]), 
            .C(BusA[6]), .D(n30983), .Z(n30978)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(72[39:49])
    defparam i886_4_lut_3_lut_rep_391_4_lut.init = 16'hf660;
    ORCALUT4 i2_3_lut_4_lut_adj_191 (.A(BusB[1]), .B(ALU_Op[1]), .C(n2), 
            .D(BusA[1]), .Z(Q_v[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_191.init = 16'h6996;
    ORCALUT4 i965_4_lut_3_lut_rep_482_4_lut (.A(BusB[1]), .B(ALU_Op[1]), 
            .C(BusA[1]), .D(n2), .Z(n31069)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i965_4_lut_3_lut_rep_482_4_lut.init = 16'hf660;
    ORCALUT4 i25760_4_lut_4_lut_4_lut (.A(ALU_Op[0]), .B(ALU_Op[1]), .C(BusA[7]), 
            .D(Q_7__N_1595[7]), .Z(n27496)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i25760_4_lut_4_lut_4_lut.init = 16'h7160;
    ORCALUT4 n1_bdd_4_lut_27932 (.A(n31217), .B(Q_7__N_1627[6]), .C(ALU_Op[0]), 
            .D(BusB[6]), .Z(n29903)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;
    defparam n1_bdd_4_lut_27932.init = 16'hac0c;
    ORCALUT4 i2_3_lut_4_lut_adj_192 (.A(BusB[2]), .B(ALU_Op[1]), .C(n31069), 
            .D(BusA[2]), .Z(Q_v[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_192.init = 16'h6996;
    ORCALUT4 i972_4_lut_3_lut_rep_413_4_lut (.A(BusB[2]), .B(ALU_Op[1]), 
            .C(BusA[2]), .D(n31069), .Z(n31000)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i972_4_lut_3_lut_rep_413_4_lut.init = 16'hf660;
    ORCALUT4 i25754_4_lut_4_lut_4_lut (.A(ALU_Op[0]), .B(ALU_Op[1]), .C(BusA[5]), 
            .D(Q_7__N_1595[5]), .Z(n27490)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i25754_4_lut_4_lut_4_lut.init = 16'h7160;
    ORCALUT4 i2_3_lut_4_lut_adj_193 (.A(BusB[3]), .B(ALU_Op[1]), .C(n31000), 
            .D(BusA[3]), .Z(Q_v[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i2_3_lut_4_lut_adj_193.init = 16'h6996;
    ORCALUT4 i979_4_lut_3_lut_rep_401_4_lut (.A(BusB[3]), .B(ALU_Op[1]), 
            .C(BusA[3]), .D(n31000), .Z(n30988)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(62[39:49])
    defparam i979_4_lut_3_lut_rep_401_4_lut.init = 16'hf660;
    ORCALUT4 i27123_2_lut_rep_625 (.A(ALU_Op[3]), .B(ALU_Op[2]), .Z(n31212)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i27123_2_lut_rep_625.init = 16'hdddd;
    ORCALUT4 i27137_2_lut_3_lut (.A(ALU_Op[3]), .B(ALU_Op[2]), .C(Save_ALU_r_keep), 
            .Z(n27915)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i27137_2_lut_3_lut.init = 16'hdfdf;
    ORCALUT4 n10_bdd_3_lut_4_lut (.A(ALU_Op[3]), .B(ALU_Op[2]), .C(n29963), 
            .D(n10_adj_1821), .Z(\F_Out[6] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam n10_bdd_3_lut_4_lut.init = 16'hf2d0;
    ORCALUT4 i25790_4_lut_3_lut_4_lut (.A(\Set_BusA_To_3__N_1230[0] ), .B(n31317), 
            .C(BusB[0]), .D(ALU_Op[0]), .Z(n27526)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B !(C))) */ ;
    defparam i25790_4_lut_3_lut_4_lut.init = 16'hb0f4;
    ORCALUT4 n8519_bdd_3_lut (.A(n2534), .B(n12), .C(ALU_Op[1]), .Z(n29962)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n8519_bdd_3_lut.init = 16'hcaca;
    ORCALUT4 n8519_bdd_4_lut (.A(n8519), .B(Arith16_r_keep), .C(Z16_r), 
            .D(F[6]), .Z(n29961)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B ((D)+!C))) */ ;
    defparam n8519_bdd_4_lut.init = 16'hdd01;
    ORCALUT4 BusA_6__bdd_2_lut_28100 (.A(BusA[6]), .B(BusA[7]), .Z(n29971)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam BusA_6__bdd_2_lut_28100.init = 16'h1111;
    ORCALUT4 BusA_0__bdd_4_lut_28161 (.A(\IR[5] ), .B(F[0]), .C(\IR[4] ), 
            .D(BusA[7]), .Z(n29972)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam BusA_0__bdd_4_lut_28161.init = 16'h1a1f;
    ORCALUT4 n8_bdd_4_lut (.A(n31134), .B(n31138), .C(BusA[6]), .D(BusA[5]), 
            .Z(n29975)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C)+!B !(C (D)+!C !(D))))) */ ;
    defparam n8_bdd_4_lut.init = 16'h4bf0;
    ORCALUT4 i848_2_lut_rep_483_3_lut_4_lut (.A(BusA[3]), .B(n31301), .C(BusA[5]), 
            .D(BusA[4]), .Z(n31070)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i848_2_lut_rep_483_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_484_3_lut_4_lut (.A(BusA[3]), .B(n31301), .C(BusA[5]), 
            .D(BusA[4]), .Z(n31071)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_484_3_lut_4_lut.init = 16'h0f1e;
    ORCALUT4 i12_3_lut_4_lut_4_lut (.A(ALU_Op[0]), .B(BusB[7]), .C(n31276), 
            .D(\Set_BusA_To_3__N_1230[0] ), .Z(n25596)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B+(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i12_3_lut_4_lut_4_lut.init = 16'h5ccc;
    ORCALUT4 i25784_4_lut_4_lut_4_lut (.A(ALU_Op[0]), .B(BusA[4]), .C(Q_7__N_1635_c[4]), 
            .D(ALU_Op[3]), .Z(n27520)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i25784_4_lut_4_lut_4_lut.init = 16'h44f0;
    ORCALUT4 i15091_3_lut_3_lut (.A(ALU_Op[0]), .B(BusB[4]), .C(BusA[4]), 
            .Z(n5_adj_1804)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i15091_3_lut_3_lut.init = 16'h5454;
    ORCALUT4 i6189_4_lut_4_lut (.A(ALU_Op[0]), .B(n31138), .C(n7474), 
            .D(BusA[4]), .Z(n11_adj_1808)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i6189_4_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i15090_3_lut_3_lut (.A(ALU_Op[0]), .B(BusB[3]), .C(BusA[3]), 
            .Z(n5_adj_1799)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i15090_3_lut_3_lut.init = 16'h5454;
    ORCALUT4 i15094_3_lut_3_lut (.A(ALU_Op[0]), .B(BusB[6]), .C(BusA[6]), 
            .Z(n5_adj_1806)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i15094_3_lut_3_lut.init = 16'h5454;
    ORCALUT4 i15095_3_lut_3_lut (.A(ALU_Op[0]), .B(BusB[7]), .C(BusA[7]), 
            .Z(n5_adj_1807)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i15095_3_lut_3_lut.init = 16'h5454;
    ORCALUT4 i12_3_lut_4_lut_4_lut_adj_194 (.A(ALU_Op[0]), .B(BusB[4]), 
            .C(n31289), .D(\Set_BusA_To_3__N_1230[0] ), .Z(n25580)) /* synthesis lut_function=(A (B (C+(D)))+!A (B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i12_3_lut_4_lut_4_lut_adj_194.init = 16'hccc5;
    ORCALUT4 i12_3_lut_4_lut_4_lut_adj_195 (.A(ALU_Op[0]), .B(BusB[5]), 
            .C(n31289), .D(\Set_BusA_To_3__N_1230[0] ), .Z(n25588)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i12_3_lut_4_lut_4_lut_adj_195.init = 16'hc5cc;
    ORCALUT4 i15093_3_lut_3_lut (.A(ALU_Op[0]), .B(BusB[5]), .C(BusA[5]), 
            .Z(n5_adj_1805)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i15093_3_lut_3_lut.init = 16'h5454;
    ORCALUT4 i25778_4_lut_4_lut_4_lut (.A(ALU_Op[0]), .B(BusB[1]), .C(Q_7__N_1635_c[1]), 
            .D(ALU_Op[3]), .Z(n27514)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i25778_4_lut_4_lut_4_lut.init = 16'h44f0;
    ORCALUT4 i14820_4_lut_4_lut (.A(ALU_Op[0]), .B(\Set_BusA_To_3__N_1230[0] ), 
            .C(BusA[0]), .D(BusA[7]), .Z(n8_adj_1816)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i14820_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i15116_4_lut_4_lut (.A(ALU_Op[0]), .B(F[1]), .C(F_Out_7__N_1649), 
            .D(n31224), .Z(n11_adj_3)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i15116_4_lut_4_lut.init = 16'h5140;
    ORCALUT4 i8311_4_lut_4_lut (.A(ALU_Op[0]), .B(ALU_Op[3]), .C(n6_adj_4), 
            .D(n31068), .Z(n10158)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i8311_4_lut_4_lut.init = 16'hff40;
    ORCALUT4 i15087_3_lut_3_lut (.A(ALU_Op[0]), .B(BusB[1]), .C(BusA[1]), 
            .Z(n5_adj_1797)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i15087_3_lut_3_lut.init = 16'h5454;
    ORCALUT4 i15088_3_lut_3_lut (.A(ALU_Op[0]), .B(BusB[2]), .C(BusA[2]), 
            .Z(n5_adj_1801)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i15088_3_lut_3_lut.init = 16'h5454;
    ORCALUT4 i3_4_lut_4_lut_4_lut (.A(ALU_Op[0]), .B(ALU_Op[2]), .C(ALU_Op[1]), 
            .D(ALU_Op[3]), .Z(n27004)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i3_4_lut_4_lut_4_lut.init = 16'hfdff;
    ORCALUT4 i12_3_lut_4_lut_4_lut_adj_196 (.A(ALU_Op[0]), .B(BusB[1]), 
            .C(n31317), .D(\Set_BusA_To_3__N_1230[0] ), .Z(n25570)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B+(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i12_3_lut_4_lut_4_lut_adj_196.init = 16'h5ccc;
    ORCALUT4 i2813_3_lut_3_lut (.A(ALU_Op[0]), .B(Q_7__N_1595[8]), .C(F[0]), 
            .Z(n11_adj_1817)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i2813_3_lut_3_lut.init = 16'hf4f4;
    ORCALUT4 i25720_4_lut_4_lut (.A(ALU_Op[0]), .B(ALU_Op[1]), .C(n30988), 
            .D(ALU_Op[2]), .Z(n27456)) /* synthesis lut_function=(!(A (B (C)+!B ((D)+!C))+!A (B (C+(D))+!B !(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(128[7] 438[14])
    defparam i25720_4_lut_4_lut.init = 16'h193c;
    ORCALUT4 i934_2_lut_rep_475_3_lut_4_lut (.A(n31302), .B(BusA[3]), .C(BusA[5]), 
            .D(BusA[4]), .Z(n31062)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i934_2_lut_rep_475_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i932_2_lut_rep_476_3_lut_4_lut (.A(n31302), .B(BusA[3]), .C(BusA[5]), 
            .D(BusA[4]), .Z(n31063)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i932_2_lut_rep_476_3_lut_4_lut.init = 16'h78f0;
    ORCALUT4 i25789_3_lut_4_lut_then_4_lut (.A(BusB[0]), .B(\IR[4] ), .C(\IR[5] ), 
            .D(\Set_BusA_To_3__N_1230[0] ), .Z(n31347)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/tv80_alu.v(310[17:31])
    defparam i25789_3_lut_4_lut_then_4_lut.init = 16'h0002;
    
endmodule
//
// Verilog Description of module boot_rom
//

module boot_rom (sram_addr_0_0, sram_addr_0_2, n28379, sram_addr_0_6, 
            n9435, n31044, sram_data_out_3, sram_go_N_88, n30740, 
            sram_data_out_5, n30749, n31295, n6, n31298, n26876, 
            sram_addr_0_1, n16360, sram_addr_0_9, sram_addr_0_8, sram_addr_0_7, 
            sram_addr_0_11, sram_addr_0_10) /* synthesis syn_module_defined=1 */ ;
    input sram_addr_0_0;
    input sram_addr_0_2;
    output n28379;
    input sram_addr_0_6;
    output n9435;
    input n31044;
    input sram_data_out_3;
    input sram_go_N_88;
    output n30740;
    input sram_data_out_5;
    output n30749;
    input n31295;
    output n6;
    input n31298;
    output n26876;
    input sram_addr_0_1;
    output n16360;
    input sram_addr_0_9;
    input sram_addr_0_8;
    input sram_addr_0_7;
    input sram_addr_0_11;
    input sram_addr_0_10;
    
    
    wire n33938, n33937, n12;
    
    ORCALUT4 i27071_2_lut (.A(sram_addr_0_0), .B(sram_addr_0_2), .Z(n28379)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i27071_2_lut.init = 16'h9999;
    ORCALUT4 i14567_3_lut_4_lut_then_4_lut (.A(sram_addr_0_0), .B(sram_addr_0_6), 
            .C(n9435), .D(sram_addr_0_2), .Z(n33938)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14567_3_lut_4_lut_then_4_lut.init = 16'hfffe;
    ORCALUT4 i14567_3_lut_4_lut_else_4_lut (.A(sram_addr_0_0), .B(sram_addr_0_6), 
            .C(n9435), .D(sram_addr_0_2), .Z(n33937)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i14567_3_lut_4_lut_else_4_lut.init = 16'hfeff;
    ORCALUT4 io_rdata_7__N_62_bdd_3_lut_28346_4_lut (.A(n31044), .B(sram_addr_0_2), 
            .C(sram_data_out_3), .D(sram_go_N_88), .Z(n30740)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(13[9:17])
    defparam io_rdata_7__N_62_bdd_3_lut_28346_4_lut.init = 16'h11f0;
    ORCALUT4 io_rdata_7__N_62_bdd_3_lut_4_lut (.A(n31044), .B(sram_addr_0_2), 
            .C(sram_data_out_5), .D(sram_go_N_88), .Z(n30749)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(13[9:17])
    defparam io_rdata_7__N_62_bdd_3_lut_4_lut.init = 16'h11f0;
    ORCALUT4 i1_2_lut_4_lut (.A(sram_addr_0_2), .B(sram_addr_0_6), .C(sram_addr_0_0), 
            .D(n31295), .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(10[9:17])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i2_2_lut_3_lut_4_lut (.A(n31298), .B(n9435), .C(sram_addr_0_0), 
            .D(sram_addr_0_2), .Z(n26876)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(8[9:17])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hffef;
    PFUMX i30020 (.BLUT(n33937), .ALUT(n33938), .C0(sram_addr_0_1), .Z(n16360));
    ORCALUT4 i6_4_lut (.A(sram_addr_0_9), .B(n12), .C(sram_addr_0_8), 
            .D(sram_go_N_88), .Z(n9435)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(11[9:17])
    defparam i6_4_lut.init = 16'hfeff;
    ORCALUT4 i5_4_lut (.A(sram_addr_0_7), .B(sram_addr_0_11), .C(sram_addr_0_10), 
            .D(n31295), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/boot_rom.v(11[9:17])
    defparam i5_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (uart_tx_busy, clk_op, n31309, VCC_net, n31030, n4, 
            clk_op_enable_275, n17, n31077, cpu_dout, uart_tx_c) /* synthesis syn_module_defined=1 */ ;
    output uart_tx_busy;
    input clk_op;
    input n31309;
    input VCC_net;
    input n31030;
    input n4;
    input clk_op_enable_275;
    output n17;
    input n31077;
    input [7:0]cpu_dout;
    output uart_tx_c;
    
    wire clk_op /* synthesis SET_AS_NETWORK=clk_op, is_clock=1 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/z80cpm_brevia2.v(29[8:14])
    
    wire tx_busy_N_138;
    wire [7:0]sr;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(16[14:16])
    
    wire clk_op_enable_50;
    wire [7:0]sr_7__N_119;
    
    wire GND_net;
    wire [8:0]k;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(14[14:15])
    wire [8:0]n52;
    
    wire n23168, n8644;
    wire [3:0]bitcnt;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(15[14:20])
    
    wire clk_op_enable_272, clk_op_enable_166, n10749, n10747, n10745, 
        n26661, n10741, n10739, n4_adj_1767, n23169, n23170, n23171, 
        n15, n14, n10692, n10686, n1381, n10737, n10729, n10735, 
        n10733, n10731, clk_op_enable_277, n10690, n10696, n31143;
    
    FD1S3DX tx_busy_34 (.D(tx_busy_N_138), .CK(clk_op), .CD(n31309), .Q(uart_tx_busy)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam tx_busy_34.GSR = "ENABLED";
    FD1P3DX sr_i7 (.D(sr_7__N_119[7]), .SP(clk_op_enable_50), .CK(clk_op), 
            .CD(n31309), .Q(sr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i7.GSR = "ENABLED";
    FD1P3DX sr_i6 (.D(sr_7__N_119[6]), .SP(clk_op_enable_50), .CK(clk_op), 
            .CD(n31309), .Q(sr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i6.GSR = "ENABLED";
    FD1P3DX sr_i5 (.D(sr_7__N_119[5]), .SP(clk_op_enable_50), .CK(clk_op), 
            .CD(n31309), .Q(sr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i5.GSR = "ENABLED";
    FD1P3DX sr_i4 (.D(sr_7__N_119[4]), .SP(clk_op_enable_50), .CK(clk_op), 
            .CD(n31309), .Q(sr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i4.GSR = "ENABLED";
    FD1P3DX sr_i3 (.D(sr_7__N_119[3]), .SP(clk_op_enable_50), .CK(clk_op), 
            .CD(n31309), .Q(sr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i3.GSR = "ENABLED";
    FD1P3DX sr_i2 (.D(sr_7__N_119[2]), .SP(clk_op_enable_50), .CK(clk_op), 
            .CD(n31309), .Q(sr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i2.GSR = "ENABLED";
    FD1P3DX sr_i1 (.D(sr_7__N_119[1]), .SP(clk_op_enable_50), .CK(clk_op), 
            .CD(n31309), .Q(sr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i1.GSR = "ENABLED";
    CCU2B add_48_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(k[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n23168), 
          .S1(n52[0]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_1.INIT0 = 16'h0000;
    defparam add_48_add_4_1.INIT1 = 16'h555a;
    defparam add_48_add_4_1.INJECT1_0 = "NO";
    defparam add_48_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 i8848_4_lut (.A(n31030), .B(n8644), .C(n4), .D(bitcnt[3]), 
            .Z(clk_op_enable_272)) /* synthesis lut_function=(A+!(B ((D)+!C)+!B !(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i8848_4_lut.init = 16'hbafa;
    FD1P3DX bitcnt__i1 (.D(n10749), .SP(clk_op_enable_166), .CK(clk_op), 
            .CD(n31309), .Q(bitcnt[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam bitcnt__i1.GSR = "ENABLED";
    FD1P3DX bitcnt__i2 (.D(n10747), .SP(clk_op_enable_166), .CK(clk_op), 
            .CD(n31309), .Q(bitcnt[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam bitcnt__i2.GSR = "ENABLED";
    FD1P3DX bitcnt__i3 (.D(n10745), .SP(clk_op_enable_166), .CK(clk_op), 
            .CD(n31309), .Q(bitcnt[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam bitcnt__i3.GSR = "ENABLED";
    FD1P3DX k__i1 (.D(n26661), .SP(clk_op_enable_275), .CK(clk_op), .CD(n31309), 
            .Q(k[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i1.GSR = "ENABLED";
    FD1P3DX k__i2 (.D(n10741), .SP(clk_op_enable_275), .CK(clk_op), .CD(n31309), 
            .Q(k[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i2.GSR = "ENABLED";
    FD1P3DX k__i3 (.D(n10739), .SP(clk_op_enable_275), .CK(clk_op), .CD(n31309), 
            .Q(k[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i3.GSR = "ENABLED";
    ORCALUT4 i1_2_lut (.A(bitcnt[3]), .B(n17), .Z(n4_adj_1767)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    CCU2B add_48_add_4_3 (.A0(k[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23168), 
          .COUT(n23169), .S0(n52[1]), .S1(n52[2]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_3.INIT0 = 16'haaaa;
    defparam add_48_add_4_3.INIT1 = 16'haaaa;
    defparam add_48_add_4_3.INJECT1_0 = "NO";
    defparam add_48_add_4_3.INJECT1_1 = "NO";
    CCU2B add_48_add_4_7 (.A0(k[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23170), 
          .COUT(n23171), .S0(n52[5]), .S1(n52[6]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_7.INIT0 = 16'haaaa;
    defparam add_48_add_4_7.INIT1 = 16'haaaa;
    defparam add_48_add_4_7.INJECT1_0 = "NO";
    defparam add_48_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i2_3_lut (.A(bitcnt[0]), .B(bitcnt[1]), .C(bitcnt[2]), .Z(n8644)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(28[9] 32[16])
    defparam i2_3_lut.init = 16'hfefe;
    ORCALUT4 i8_4_lut (.A(n15), .B(k[3]), .C(n14), .D(k[6]), .Z(n17)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i8_4_lut.init = 16'hfbff;
    ORCALUT4 i6_4_lut (.A(k[2]), .B(k[1]), .C(k[4]), .D(k[0]), .Z(n15)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i6_4_lut.init = 16'hffef;
    ORCALUT4 i5_3_lut (.A(k[7]), .B(k[5]), .C(k[8]), .Z(n14)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i5_3_lut.init = 16'hfdfd;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(uart_tx_busy), .B(n31077), .C(n52[0]), 
            .D(n17), .Z(n10692)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hb000;
    ORCALUT4 i8837_3_lut_4_lut (.A(uart_tx_busy), .B(n31077), .C(cpu_dout[0]), 
            .D(sr[1]), .Z(n10686)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i8837_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i15014_3_lut_4_lut (.A(uart_tx_busy), .B(n31077), .C(n1381), 
            .D(bitcnt[2]), .Z(n10747)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B+(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i15014_3_lut_4_lut.init = 16'h0bb0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_169 (.A(uart_tx_busy), .B(n31077), 
            .C(n52[4]), .D(n17), .Z(n10737)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i1_2_lut_3_lut_4_lut_adj_169.init = 16'hb000;
    ORCALUT4 i15015_3_lut_4_lut (.A(uart_tx_busy), .B(n31077), .C(bitcnt[0]), 
            .D(bitcnt[1]), .Z(n10749)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B+(C (D)+!C !(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i15015_3_lut_4_lut.init = 16'h0bb0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_170 (.A(uart_tx_busy), .B(n31077), 
            .C(n52[8]), .D(n17), .Z(n10729)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i1_2_lut_3_lut_4_lut_adj_170.init = 16'hb000;
    FD1P3DX k__i4 (.D(n10737), .SP(clk_op_enable_275), .CK(clk_op), .CD(n31309), 
            .Q(k[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i4.GSR = "ENABLED";
    ORCALUT4 i8897_3_lut_4_lut_3_lut (.A(uart_tx_busy), .B(n31077), .C(n17), 
            .Z(clk_op_enable_166)) /* synthesis lut_function=(!(A (C)+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i8897_3_lut_4_lut_3_lut.init = 16'h4e4e;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_171 (.A(uart_tx_busy), .B(n31077), 
            .C(n52[3]), .D(n17), .Z(n10739)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i1_2_lut_3_lut_4_lut_adj_171.init = 16'hb000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_172 (.A(uart_tx_busy), .B(n31077), 
            .C(n52[5]), .D(n17), .Z(n10735)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i1_2_lut_3_lut_4_lut_adj_172.init = 16'hb000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_173 (.A(uart_tx_busy), .B(n31077), 
            .C(n52[6]), .D(n17), .Z(n10733)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i1_2_lut_3_lut_4_lut_adj_173.init = 16'hb000;
    ORCALUT4 i2_3_lut_4_lut (.A(uart_tx_busy), .B(n31077), .C(n17), .D(n52[1]), 
            .Z(n26661)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i2_3_lut_4_lut.init = 16'hb000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_174 (.A(uart_tx_busy), .B(n31077), 
            .C(n52[7]), .D(n17), .Z(n10731)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i1_2_lut_3_lut_4_lut_adj_174.init = 16'hb000;
    ORCALUT4 i8838_4_lut_4_lut (.A(uart_tx_busy), .B(n31077), .C(n17), 
            .D(bitcnt[3]), .Z(clk_op_enable_277)) /* synthesis lut_function=(!(A (C+(D))+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i8838_4_lut_4_lut.init = 16'h444e;
    ORCALUT4 i14532_3_lut_4_lut (.A(uart_tx_busy), .B(n31077), .C(n17), 
            .D(bitcnt[0]), .Z(n10690)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i14532_3_lut_4_lut.init = 16'hb00b;
    ORCALUT4 i14643_3_lut_4_lut (.A(uart_tx_busy), .B(n31077), .C(bitcnt[3]), 
            .D(sr[0]), .Z(n10696)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i14643_3_lut_4_lut.init = 16'hbbb0;
    ORCALUT4 i14529_4_lut_4_lut (.A(uart_tx_busy), .B(n31077), .C(n4_adj_1767), 
            .D(n8644), .Z(tx_busy_N_138)) /* synthesis lut_function=(!(A (C (D))+!A !(B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i14529_4_lut_4_lut.init = 16'h4eee;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_175 (.A(uart_tx_busy), .B(n31077), 
            .C(n52[2]), .D(n17), .Z(n10741)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[14:34])
    defparam i1_2_lut_3_lut_4_lut_adj_175.init = 16'hb000;
    ORCALUT4 i15043_2_lut (.A(cpu_dout[7]), .B(uart_tx_busy), .Z(sr_7__N_119[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(25[10] 35[8])
    defparam i15043_2_lut.init = 16'h2222;
    FD1P3DX k__i5 (.D(n10735), .SP(clk_op_enable_275), .CK(clk_op), .CD(n31309), 
            .Q(k[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i5.GSR = "ENABLED";
    ORCALUT4 i2273_3_lut (.A(cpu_dout[6]), .B(sr[7]), .C(uart_tx_busy), 
            .Z(sr_7__N_119[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(25[10] 35[8])
    defparam i2273_3_lut.init = 16'hcaca;
    ORCALUT4 i2275_3_lut (.A(cpu_dout[5]), .B(sr[6]), .C(uart_tx_busy), 
            .Z(sr_7__N_119[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(25[10] 35[8])
    defparam i2275_3_lut.init = 16'hcaca;
    ORCALUT4 i2305_3_lut (.A(cpu_dout[4]), .B(sr[5]), .C(uart_tx_busy), 
            .Z(sr_7__N_119[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(25[10] 35[8])
    defparam i2305_3_lut.init = 16'hcaca;
    ORCALUT4 i2313_4_lut (.A(cpu_dout[3]), .B(sr[4]), .C(uart_tx_busy), 
            .D(n31143), .Z(sr_7__N_119[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(25[10] 35[8])
    defparam i2313_4_lut.init = 16'h0aca;
    ORCALUT4 i2321_4_lut (.A(cpu_dout[2]), .B(sr[3]), .C(uart_tx_busy), 
            .D(n31143), .Z(sr_7__N_119[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(25[10] 35[8])
    defparam i2321_4_lut.init = 16'h0aca;
    ORCALUT4 i2333_4_lut (.A(cpu_dout[1]), .B(sr[2]), .C(uart_tx_busy), 
            .D(n31143), .Z(sr_7__N_119[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(25[10] 35[8])
    defparam i2333_4_lut.init = 16'h0aca;
    ORCALUT4 i2525_2_lut_rep_556 (.A(bitcnt[3]), .B(n17), .Z(n31143)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[12:23])
    defparam i2525_2_lut_rep_556.init = 16'heeee;
    ORCALUT4 i27215_2_lut_3_lut_3_lut_4_lut (.A(bitcnt[3]), .B(n17), .C(n31077), 
            .D(uart_tx_busy), .Z(clk_op_enable_50)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[12:23])
    defparam i27215_2_lut_3_lut_3_lut_4_lut.init = 16'h11f0;
    FD1P3DX k__i6 (.D(n10733), .SP(clk_op_enable_275), .CK(clk_op), .CD(n31309), 
            .Q(k[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i6.GSR = "ENABLED";
    ORCALUT4 i742_2_lut (.A(bitcnt[1]), .B(bitcnt[0]), .Z(n1381)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(27[27:37])
    defparam i742_2_lut.init = 16'h8888;
    ORCALUT4 i15013_4_lut (.A(bitcnt[3]), .B(n31030), .C(bitcnt[2]), .D(n1381), 
            .Z(n10745)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(C (D))))) */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam i15013_4_lut.init = 16'h1222;
    FD1P3DX k__i7 (.D(n10731), .SP(clk_op_enable_275), .CK(clk_op), .CD(n31309), 
            .Q(k[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i7.GSR = "ENABLED";
    FD1P3DX k__i8 (.D(n10729), .SP(clk_op_enable_275), .CK(clk_op), .CD(n31309), 
            .Q(k[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i8.GSR = "ENABLED";
    CCU2B add_48_add_4_5 (.A0(k[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23169), 
          .COUT(n23170), .S0(n52[3]), .S1(n52[4]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_5.INIT0 = 16'haaaa;
    defparam add_48_add_4_5.INIT1 = 16'haaaa;
    defparam add_48_add_4_5.INJECT1_0 = "NO";
    defparam add_48_add_4_5.INJECT1_1 = "NO";
    CCU2B add_48_add_4_9 (.A0(k[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(k[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n23171), 
          .S0(n52[7]), .S1(n52[8]));   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(34[17:22])
    defparam add_48_add_4_9.INIT0 = 16'haaaa;
    defparam add_48_add_4_9.INIT1 = 16'haaaa;
    defparam add_48_add_4_9.INJECT1_0 = "NO";
    defparam add_48_add_4_9.INJECT1_1 = "NO";
    FD1P3BX txd_36 (.D(n10696), .SP(clk_op_enable_272), .CK(clk_op), .PD(n31309), 
            .Q(uart_tx_c)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam txd_36.GSR = "ENABLED";
    FD1P3DX k__i0 (.D(n10692), .SP(clk_op_enable_275), .CK(clk_op), .CD(n31309), 
            .Q(k[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam k__i0.GSR = "ENABLED";
    FD1P3DX bitcnt__i0 (.D(n10690), .SP(clk_op_enable_275), .CK(clk_op), 
            .CD(n31309), .Q(bitcnt[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam bitcnt__i0.GSR = "ENABLED";
    FD1P3DX sr_i0 (.D(n10686), .SP(clk_op_enable_277), .CK(clk_op), .CD(n31309), 
            .Q(sr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=54, LSE_LLINE=128, LSE_RLINE=129 */ ;   // c:/users/techf/desktop/brevia2/z80cpm/rtl/uart_tx.v(22[10] 35[8])
    defparam sr_i0.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    
endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 5.7 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -arch mg5a00 -n pmi_pll0o500X125252550d29c740 -bb -bus_exp 7 -type pll -fin 50 -fclkop 25 -fclkok 12.500000 -fb_mode CLKOP -phaseadj 0 -duty 8.00000 -pmi -lang verilog  */
/* Sun Nov 15 22:33:23 2026 */


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
