# Reading C:/intelFPGA/17.1/modelsim_ase/tcl/vsim/pref.tcl
# do CNT10_run_msim_rtl_verilog.do
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
# vlog -vlog01compat -work work +incdir+D:/Document/Quartus\ II\ Project\ Files/1.1 {D:/Document/Quartus II Project Files/1.1/CNT10.v}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 16:46:25 on Oct 14,2019
# vlog -reportprogress 300 -vlog01compat -work work "+incdir+D:/Document/Quartus II Project Files/1.1" D:/Document/Quartus II Project Files/1.1/CNT10.v 
# -- Compiling module CNT10
# 
# Top level modules:
# 	CNT10
# End time: 16:46:25 on Oct 14,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
vsim work.CNT10
# vsim work.CNT10 
# Start time: 16:46:57 on Oct 14,2019
# Loading work.CNT10
add wave -position insertpoint  \
sim:/CNT10/CLK \
sim:/CNT10/EN \
sim:/CNT10/RST \
sim:/CNT10/LOAD \
sim:/CNT10/DATA \
sim:/CNT10/DOUT \
sim:/CNT10/COUT
force -freeze sim:/CNT10/CLK 1 0, 0 {5 ps} -r 10
force -freeze sim:/CNT10/DATA 0011 0
force -freeze sim:/CNT10/EN 0 0
force -freeze sim:/CNT10/RST 1 0
force -freeze sim:/CNT10/LOAD 1 0
run 100
force -freeze sim:/CNT10/EN 1 0
force -freeze sim:/CNT10/RST 0 0
force -freeze sim:/CNT10/LOAD St1 0
run 100
force -freeze sim:/CNT10/LOAD 0 0
force -freeze sim:/CNT10/RST 1 0
force -freeze sim:/CNT10/EN 1 0
run 100
force -freeze sim:/CNT10/LOAD 1 0
run 100
force -freeze sim:/CNT10/EN 0 0, 1 {20 ps} -r 200
force -freeze sim:/CNT10/RST 0 0, 1 {10 ps} -r 200
force -freeze sim:/CNT10/LOAD 1 0, 0 {90 ps} -r 100
run 200
