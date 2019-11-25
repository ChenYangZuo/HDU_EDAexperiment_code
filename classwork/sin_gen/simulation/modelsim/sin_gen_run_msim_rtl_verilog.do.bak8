transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/sin_gen {D:/Document/Quartus II Project Files/sin_gen/ROM78.v}
vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/sin_gen {D:/Document/Quartus II Project Files/sin_gen/CNT7B.v}
vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/sin_gen {D:/Document/Quartus II Project Files/sin_gen/sin_gen.v}

vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/sin_gen {D:/Document/Quartus II Project Files/sin_gen/sin_gen_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclone10lp_ver -L rtl_work -L work -voptargs="+acc"  sin_gen_tb

add wave *
view structure
view signals
run -all
