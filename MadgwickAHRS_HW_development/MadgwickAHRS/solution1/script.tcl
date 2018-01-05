############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project MadgwickAHRS
set_top update
add_files MadgwickAHRS.cpp
add_files MadgwickAHRS.h
add_files csv.cpp
add_files csv.h
add_files -tb MadgwickAHRS_testbench1.cpp
add_files -tb gold.float.64bit.csv
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
source "./MadgwickAHRS/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -compiler gcc -rtl vhdl
export_design -format ip_catalog
