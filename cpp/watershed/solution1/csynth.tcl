############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project watershed
set_top imageProcessing
add_files segmentation.cpp -cflags "-std=c++11"
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./watershed/solution1/directives.tcl"
csynth_design
