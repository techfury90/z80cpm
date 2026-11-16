prj_project open "C:/Users/techf/Desktop/brevia2/z80cpm/build/z80cpm.ldf"
prj_run Synthesis -impl impl1
prj_run Translate -impl impl1
prj_run Map -impl impl1
prj_run "Place & Route" -impl impl1
prj_run Export -impl impl1
puts "=== FLOW DONE ==="
