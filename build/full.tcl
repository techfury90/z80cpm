set ROOT "C:/Users/techf/Desktop/brevia2/z80cpm"
prj_project new -name z80cpm -dev "LFXP2-5E-6TN144C" -impl impl1
prj_src add -format VERILOG "$ROOT/rtl/z80cpm_brevia2.v"
prj_src add -format VERILOG "$ROOT/rtl/boot_rom.v"
prj_src add -format VERILOG "$ROOT/rtl/tv80n.v"
prj_src add -format VERILOG "$ROOT/rtl/tv80_core.v"
prj_src add -format VERILOG "$ROOT/rtl/tv80_alu.v"
prj_src add -format VERILOG "$ROOT/rtl/tv80_reg.v"
prj_src add -format VERILOG "$ROOT/rtl/tv80_mcode.v"
prj_src add -format VERILOG "$ROOT/rtl/uart_tx.v"
prj_src add -format VERILOG "$ROOT/rtl/uart_rx.v"
prj_src add -format VERILOG "$ROOT/rtl/sram_async.v"
prj_src set -top z80cpm_brevia2
prj_project add -file "$ROOT/build/brevia2.lpf" -lpf
prj_project save
puts "=== SETUP OK ==="
foreach ms {Synthesis Translate Map} {
  prj_run $ms -impl impl1
  puts "=== $ms DONE ==="
}
