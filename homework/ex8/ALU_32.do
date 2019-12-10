# Reading C:/intelFPGA/17.1/modelsim_ase/tcl/vsim/pref.tcl
# do ALU_32_run_msim_rtl_verilog.do
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
# vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/homework/ex8 {D:/Document/Quartus II Project Files/homework/ex8/ALU_32.v}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:07:15 on Dec 10,2019
# vlog -reportprogress 300 -vlog01compat -work work "+incdir+D:/Document/Quartus II Project Files/homework/ex8" D:/Document/Quartus II Project Files/homework/ex8/ALU_32.v 
# -- Compiling module ALU_32
# 
# Top level modules:
# 	ALU_32
# End time: 21:07:15 on Dec 10,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
vsim -gui -l msim_transcript work.ALU_32
# vsim -gui -l msim_transcript work.ALU_32 
# Start time: 21:07:22 on Dec 10,2019
# Loading work.ALU_32
add wave -position insertpoint  \
sim:/ALU_32/result_out
add wave -position insertpoint  \
sim:/ALU_32/op_code \
sim:/ALU_32/data_b_in \
sim:/ALU_32/data_a_in \
sim:/ALU_32/carry_out \
sim:/ALU_32/carry_in
force -freeze sim:/ALU_32/data_b_in 4'd28 0
force -freeze sim:/ALU_32/data_a_in 4'd12 0
force -freeze sim:/ALU_32/op_code 0 0
force -freeze sim:/ALU_32/carry_in 0 0
run 10ns
force -freeze sim:/ALU_32/op_code 1 0
run 10ns
force -freeze sim:/ALU_32/data_b_in 1'b1 0
force -freeze sim:/ALU_32/data_a_in 1'b0 0
force -freeze sim:/ALU_32/op_code 1'd2 0
run 10ns
force -freeze sim:/ALU_32/data_a_in 1'b1 0
run 10ns
force -freeze sim:/ALU_32/data_b_in 00000000000000000000000000000000 0
force -freeze sim:/ALU_32/data_a_in 00000000000000000000000000000000 0
force -freeze sim:/ALU_32/op_code 1'd3 0
run 10ns
force -freeze sim:/ALU_32/data_b_in 4'd3721 0
force -freeze sim:/ALU_32/data_a_in 4'd3721 0
force -freeze sim:/ALU_32/op_code 1'd4 0
run 10ns
force -freeze sim:/ALU_32/data_a_in 4'd3720 0
run 10ns
force -freeze sim:/ALU_32/op_code 1'd5 0
run 10ns
