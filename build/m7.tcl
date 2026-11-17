set ROOT "C:/Users/techf/Desktop/brevia2/z80cpm"
prj_project new -name z80cpm -dev "LFXP2-5E-6TN144C" -impl impl1 -lpf "$ROOT/build/brevia2.lpf"
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
prj_src add -format VERILOG "$ROOT/rtl/ram_disk.v"
prj_src add -format VERILOG "$ROOT/rtl/spi_flash.v"
prj_src set -top z80cpm_brevia2
prj_project save
puts "=== SETUP OK ==="
prj_run Synthesis -impl impl1 -forceAll
puts "=== SYNTHESIS OK ==="
prj_run Translate -impl impl1 -forceAll
puts "=== TRANSLATE OK ==="
prj_run Map -impl impl1 -forceAll
puts "=== MAP OK ==="
prj_run "Place & Route" -impl impl1 -forceAll
puts "=== PAR OK ==="
prj_run Export -impl impl1 -forceAll
puts "=== EXPORT OK ==="
prj_run Map -impl impl1 -task MapVerilogSimFile -forceAll
puts "=== ALL DONE ==="
