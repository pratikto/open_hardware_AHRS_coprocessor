############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll -factor 2 "normType4/loop_norm"
set_directive_pipeline "normType4/loop_norm"
set_directive_pipeline "mulConstanta/loop_mulConstanta"
set_directive_unroll -factor 2 "mulConstanta/loop_mulConstanta"
set_directive_pipeline "add2vector/loop_add2vector"
set_directive_unroll -factor 2 "add2vector/loop_add2vector"
set_directive_pipeline "normType4/loop_recipNorm"
set_directive_unroll -factor 2 "normType4/loop_recipNorm"
set_directive_inline -off "add2vector"
set_directive_unroll -factor 2 "madgwick/assign_q_in"
set_directive_pipeline "madgwick/assign_q_in"
set_directive_pipeline "madgwick/loop_assign_q_out"
set_directive_unroll "madgwick/loop_assign_q_out"
set_directive_interface -mode s_axilite -bundle bus_coprocessor "madgwick" g
set_directive_interface -mode s_axilite -bundle bus_coprocessor "madgwick" euler
set_directive_interface -mode s_axilite -bundle bus_coprocessor "madgwick" m
set_directive_interface -mode s_axilite -bundle bus_coprocessor "madgwick" q
set_directive_interface -mode s_axilite -bundle bus_coprocessor "madgwick" negBeta
set_directive_interface -mode s_axilite -bundle bus_coprocessor "madgwick" a
set_directive_interface -mode s_axilite -bundle bus_coprocessor "madgwick" periode
set_directive_interface -mode s_axilite -bundle bus_coprocessor "madgwick" reset
set_directive_interface -mode s_axilite -bundle bus_coprocessor "madgwick"
set_directive_interface -mode ap_none "madgwick" q_done
set_directive_interface -mode ap_none "madgwick" e_done
set_directive_interface -mode ap_none "madgwick" start_cprsr
