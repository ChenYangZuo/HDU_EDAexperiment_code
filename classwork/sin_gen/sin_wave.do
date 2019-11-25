# Reading C:/intelFPGA/17.1/modelsim_ase/tcl/vsim/pref.tcl
# do sin_gen_run_msim_rtl_verilog.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 10.5b Lib Mapping Utility 2016.10 Oct  5 2016
# vmap work rtl_work 
# Copying C:/intelFPGA/17.1/modelsim_ase/win32aloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# 
# vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/sin_gen {D:/Document/Quartus II Project Files/sin_gen/ROM78.v}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 16:35:34 on Nov 09,2019
# vlog -reportprogress 300 -vlog01compat -work work "+incdir+D:/Document/Quartus II Project Files/sin_gen" D:/Document/Quartus II Project Files/sin_gen/ROM78.v 
# -- Compiling module ROM78
# 
# Top level modules:
# 	ROM78
# End time: 16:35:34 on Nov 09,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/sin_gen {D:/Document/Quartus II Project Files/sin_gen/CNT7B.v}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 16:35:34 on Nov 09,2019
# vlog -reportprogress 300 -vlog01compat -work work "+incdir+D:/Document/Quartus II Project Files/sin_gen" D:/Document/Quartus II Project Files/sin_gen/CNT7B.v 
# -- Compiling module CNT7B
# 
# Top level modules:
# 	CNT7B
# End time: 16:35:34 on Nov 09,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/sin_gen {D:/Document/Quartus II Project Files/sin_gen/sin_gen.v}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 16:35:34 on Nov 09,2019
# vlog -reportprogress 300 -vlog01compat -work work "+incdir+D:/Document/Quartus II Project Files/sin_gen" D:/Document/Quartus II Project Files/sin_gen/sin_gen.v 
# -- Compiling module sin_gen
# 
# Top level modules:
# 	sin_gen
# End time: 16:35:34 on Nov 09,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
# vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/sin_gen {D:/Document/Quartus II Project Files/sin_gen/sin_gen_tb.v}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 16:35:34 on Nov 09,2019
# vlog -reportprogress 300 -vlog01compat -work work "+incdir+D:/Document/Quartus II Project Files/sin_gen" D:/Document/Quartus II Project Files/sin_gen/sin_gen_tb.v 
# -- Compiling module sin_gen_tb
# 
# Top level modules:
# 	sin_gen_tb
# End time: 16:35:35 on Nov 09,2019, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# 
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclone10lp_ver -L rtl_work -L work -voptargs="+acc"  sin_gen_tb
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclone10lp_ver -L rtl_work -L work -voptargs=""+acc"" sin_gen_tb 
# Start time: 16:35:35 on Nov 09,2019
# Loading work.sin_gen_tb
# Loading work.sin_gen
# Loading work.CNT7B
# Loading work.ROM78
# Loading altera_mf_ver.altsyncram
# Loading altera_mf_ver.altsyncram_body
# Loading altera_mf_ver.ALTERA_DEVICE_FAMILIES
# Loading altera_mf_ver.ALTERA_MF_MEMORY_INITIALIZATION
# 
# add wave *
# view structure
# .main_pane.structure.interior.cs.body.struct
# view signals
# .main_pane.objects.interior.cs.body.tree
# run -all
# ** Note: $stop    : D:/Document/Quartus II Project Files/sin_gen/sin_gen_tb.v(29)
#    Time: 100150 ns  Iteration: 0  Instance: /sin_gen_tb
# Break in Module sin_gen_tb at D:/Document/Quartus II Project Files/sin_gen/sin_gen_tb.v line 29
vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclone10lp_ver -L rtl_work -L work -voptargs=\"+acc\" work.sin_gen
# End time: 16:35:50 on Nov 09,2019, Elapsed time: 0:00:15
# Errors: 0, Warnings: 0
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclone10lp_ver -L rtl_work -L work -voptargs=""+acc"" work.sin_gen 
# Start time: 16:35:50 on Nov 09,2019
# Loading work.sin_gen
# Loading work.CNT7B
# Loading work.ROM78
# Loading altera_mf_ver.altsyncram
# Loading altera_mf_ver.altsyncram_body
# Loading altera_mf_ver.ALTERA_DEVICE_FAMILIES
# Loading altera_mf_ver.ALTERA_MF_MEMORY_INITIALIZATION
add wave -position insertpoint  \
sim:/sin_gen/rst_n \
sim:/sin_gen/en \
sim:/sin_gen/cntcout \
sim:/sin_gen/clk \
sim:/sin_gen/Q
force -freeze sim:/sin_gen/rst_n 0 0
force -freeze sim:/sin_gen/en 1 0
force -freeze sim:/sin_gen/clk 1 0, 0 {5000 ps} -r 10ns
run 100ns
force -freeze sim:/sin_gen/rst_n 1 0
run 10us
