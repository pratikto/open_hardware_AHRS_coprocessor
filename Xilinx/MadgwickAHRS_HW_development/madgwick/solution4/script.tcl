############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project madgwick
set_top madgwick
add_files MadgwickAHRS.cpp
add_files MadgwickAHRS.h
add_files csv.cpp
add_files csv.h
add_files -tb MadgwickAHRS_testbench.cpp
open_solution "solution4"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_schedule -effort high -verbose
config_bind -effort high
source "./madgwick/solution4/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -compiler gcc -trace_level all
export_design -rtl vhdl -format ip_catalog
