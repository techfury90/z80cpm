prj_project open "C:/Users/techf/Desktop/brevia2/z80cpm/build/z80cpm.ldf"
prj_run "Place & Route" -impl impl1
puts "=== PAR DONE ==="
prj_run "Export" -impl impl1
puts "=== EXPORT DONE ==="
