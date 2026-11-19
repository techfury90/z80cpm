# Build the BRAM boot-ROM variant as a NEW project (bram) so it does not
# clobber the working LUT-ROM impl1. Top = z80cpm_brevia2_bram.
set ROOT "C:/Users/techf/Desktop/brevia2/z80cpm"
prj_project new -name z80cpm_bram -dev "LFXP2-5E-6TN144C" -impl impl1
prj_src add -format VERILOG "$ROOT/rtl/z80cpm_brevia2_bram.v"
prj_src add -format VERILOG "$ROOT/rtl/boot_rom_bram.v"
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
prj_src set -top z80cpm_brevia2_bram
prj_project add -file "$ROOT/build/z80cpm.lpf" -lpf
prj_project save
puts "=== SETUP OK ==="
foreach ms {Synthesis Translate Map PlaceAndRoute} {
  prj_run $ms -impl impl1
  puts "=== $ms DONE ==="
}
prj_run Export -impl impl1
puts "=== EXPORT DONE ==="
