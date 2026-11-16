prj_project open "C:/Users/techf/Desktop/brevia2/z80cpm/build/z80cpm.ldf"
prj_src add -format VERILOG "C:/Users/techf/Desktop/brevia2/z80cpm/rtl/ram_disk.v"
prj_project save
prj_run Synthesis -impl impl1 -forceAll
prj_run Translate -impl impl1 -forceAll
prj_run Map -impl impl1 -forceAll
prj_run "Place & Route" -impl impl1 -forceAll
prj_run Export -impl impl1 -forceAll
puts "=== RAMDISK FLOW DONE ==="
