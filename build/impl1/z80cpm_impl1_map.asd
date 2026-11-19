[ActiveSupport MAP]
Device = LFXP2-5E;
Package = TQFP144;
Performance = 6;
LUTS_avail = 4752;
LUTS_used = 2489;
FF_avail = 3664;
FF_used = 629;
INPUT_LVCMOS33 = 13;
OUTPUT_LVCMOS33 = 35;
BIDI_LVCMOS33 = 8;
IO_avail = 100;
IO_used = 56;
PLL_avail = 2;
PLL_used = 1;
EBR_avail = 9;
EBR_used = 2;
;
; start of DSP statistics
MULT36X36B = 0;
MULT18X18B = 0;
MULT18X18MACB = 0;
MULT18X18ADDSUBB = 0;
MULT18X18ADDSUBSUMB = 0;
MULT9X9B = 0;
MULT9X9ADDSUBB = 0;
MULT9X9ADDSUBSUMB = 0;
DSP_avail = 24;
DSP_used = 0;
; end of DSP statistics
;
; Begin EBR Section
Instance_Name = u_rom/u_rom/pmi_romXhboot_romssdn8124096p11842eef_0_1_0;
Type = DP16KB;
Width_A = 4;
Depth_A = 4096;
REGMODE_A = NOREG;
REGMODE_B = NOREG;
RESETMODE = SYNC;
WRITEMODE_A = NORMAL;
WRITEMODE_B = NORMAL;
GSR = DISABLED;
MEM_INIT_FILE = boot_rom.mem;
MEM_LPC_FILE = pmi_romXhboot_romssdn8124096p11842eef__PMIR__4096__8__8__-1H;
Instance_Name = u_rom/u_rom/pmi_romXhboot_romssdn8124096p11842eef_0_0_1;
Type = DP16KB;
Width_A = 4;
Depth_A = 4096;
REGMODE_A = NOREG;
REGMODE_B = NOREG;
RESETMODE = SYNC;
WRITEMODE_A = NORMAL;
WRITEMODE_B = NORMAL;
GSR = DISABLED;
MEM_INIT_FILE = boot_rom.mem;
MEM_LPC_FILE = pmi_romXhboot_romssdn8124096p11842eef__PMIR__4096__8__8__-1H;
; End EBR Section
; Begin PLL Section
Instance_Name = pll_inst/PLLInst_0;
Type = EHXPLLE;
Output_Clock(P)_Actual_Frequency = 25.0000;
CLKOP_BYPASS = DISABLED;
CLKOS_BYPASS = DISABLED;
CLKOK_BYPASS = DISABLED;
CLKI_Divider = 2;
CLKFB_Divider = 1;
CLKOP_Divider = 32;
CLKOK_Divider = 2;
CLKOS_Phase_Shift_(degree) = 0.0;
CLKOS_Duty_Cycle_(*1/16) = 8;
Phase_Duty_Control = STATIC;
CLKOPDutyTrimPolarity = FALLING;
CLKOPDutyTrimPolarityDelay = 0;
CLKOSDutyTrimPolarity = RISING;
CLKOSDutyTrimPolarityDelay = 0;
; End PLL Section
