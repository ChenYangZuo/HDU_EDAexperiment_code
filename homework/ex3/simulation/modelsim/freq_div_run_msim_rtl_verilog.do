transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/homework/ex3 {D:/Document/Quartus II Project Files/homework/ex3/freq_div.v}

