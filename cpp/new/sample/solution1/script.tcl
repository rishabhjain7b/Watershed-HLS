############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sample
set_top imageProcessing
add_files segmentation.cpp -cflags "-std=c++11"
add_files segmentation.cpp -cflags "-std=c++11"
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./sample/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow impl -rtl verilog -format syn_dcp
