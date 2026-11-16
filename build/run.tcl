set ROOT "C:/Users/techf/Desktop/brevia2/z80cpm"
prj_project open "C:/Users/techf/Desktop/brevia2/z80cpm/build/z80cpm.ldf"
prj_run Translate -impl impl1
puts "=== TRANSLATE DONE ==="
prj_run Map -impl impl1
puts "=== MAP DONE ==="
prj_run PlaceAndRoute -impl impl1
puts "=== PAR DONE ==="
prj_run Export -impl impl1
puts "=== EXPORT DONE ==="
