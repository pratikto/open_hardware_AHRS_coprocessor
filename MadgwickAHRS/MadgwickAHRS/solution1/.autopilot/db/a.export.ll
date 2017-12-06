; ModuleID = '/home/toni/Documents/vivado_projects/MadgwickAHRS/MadgwickAHRS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q = global [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@beta = global float 0x3FB99999A0000000, align 4
@MadgwickAHRSupdate_s = internal unnamed_addr constant [19 x i8] c"MadgwickAHRSupdate\00"
@p_str3 = private unnamed_addr constant [19 x i8] c"loop_integrateQdot\00", align 1
@p_str2 = private unnamed_addr constant [17 x i8] c"loopfeedbackStep\00", align 1
@p_str1 = private unnamed_addr constant [15 x i8] c"calculateQ1to3\00", align 1
@p_str = private unnamed_addr constant [12 x i8] c"SumOfSquare\00", align 1

define internal fastcc { float, float, float } @normalise.1(float %in_0_read, float %in_1_read, float %in_2_read, float %in_3_read) readnone {
  %in_3_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %in_3_read)
  %in_2_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %in_2_read)
  %in_1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %in_1_read)
  %in_0_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %in_0_read)
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %i = phi i3 [ 1, %0 ], [ %i_1, %_ifconv ]
  %SumOfSquare = phi float [ 0.000000e+00, %0 ], [ %SumOfSquare_2, %_ifconv ]
  %exitcond1 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %exitcond1, label %_ifconv4, label %_ifconv

_ifconv:                                          ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str) nounwind
  %tmp_9 = trunc i3 %i to i2
  %sel_tmp = icmp eq i2 %tmp_9, -2
  %sel_tmp1 = select i1 %sel_tmp, float %in_2_read_1, float %in_3_read_1
  %sel_tmp2 = icmp eq i2 %tmp_9, 1
  %in_load_1_phi = select i1 %sel_tmp2, float %in_1_read_1, float %sel_tmp1
  %tmp_2 = fmul float %in_load_1_phi, %in_load_1_phi
  %SumOfSquare_2 = fadd float %SumOfSquare, %tmp_2
  %i_1 = add i3 1, %i
  br label %1

_ifconv4:                                         ; preds = %1
  %in_0_read_to_int = bitcast float %in_0_read_1 to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_0_read_to_int, i32 23, i32 30)
  %tmp_1 = trunc i32 %in_0_read_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_1, 0
  %tmp_4 = or i1 %notrhs, %notlhs
  %tmp_6 = fcmp oeq float %in_0_read_1, 0.000000e+00
  %tmp_7 = and i1 %tmp_4, %tmp_6
  %tmp_5 = fmul float %in_0_read_1, %in_0_read_1
  %SumOfSquare_1 = fadd float %SumOfSquare, %tmp_5
  %SumOfSquare_3 = select i1 %tmp_7, float %SumOfSquare, float %SumOfSquare_1
  %halfx = fmul float %SumOfSquare_3, 5.000000e-01
  %y = bitcast float %SumOfSquare_3 to i32
  %tmp_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %y, i32 1, i32 31)
  %tmp_8 = zext i31 %tmp_i to i32
  %y_1 = sub i32 1597463007, %tmp_8
  %tmp_i_4 = bitcast i32 %y_1 to float
  %tmp_4_i = fmul float %halfx, %tmp_i_4
  %tmp_5_i = fmul float %tmp_4_i, %tmp_i_4
  %tmp_6_i = fsub float 1.500000e+00, %tmp_5_i
  %recipNorm = fmul float %tmp_i_4, %tmp_6_i
  br label %2

; <label>:2                                       ; preds = %3, %_ifconv4
  %in2 = phi float [ %in_2_read_1, %_ifconv4 ], [ %in2_1, %3 ]
  %in = phi float [ %in_1_read_1, %_ifconv4 ], [ %in12_1, %3 ]
  %i1 = phi i2 [ 1, %_ifconv4 ], [ %i_2, %3 ]
  %exitcond = icmp eq i2 %i1, -1
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  br i1 %exitcond, label %_ifconv6, label %3

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind
  %cond = icmp eq i2 %i1, 1
  %in_load_3_phi = select i1 %cond, float %in, float %in2
  %tmp_s = fmul float %in_load_3_phi, %recipNorm
  %in2_1 = select i1 %cond, float %in2, float %tmp_s
  %in12_1 = select i1 %cond, float %tmp_s, float %in
  %i_2 = add i2 %i1, 1
  br label %2

_ifconv6:                                         ; preds = %2
  %tmp_3 = fmul float %recipNorm, %in_0_read_1
  %in_0_write_assign = select i1 %tmp_7, float 0.000000e+00, float %tmp_3
  %mrv_s = insertvalue { float, float, float } undef, float %in, 0
  %mrv_1 = insertvalue { float, float, float } %mrv_s, float %in2, 1
  %mrv_2 = insertvalue { float, float, float } %mrv_1, float %in_0_write_assign, 2
  ret { float, float, float } %mrv_2
}

define internal fastcc void @normalise([4 x float]* nocapture %in_r) {
  %in_addr = getelementptr [4 x float]* %in_r, i64 0, i64 0
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 1, %0 ], [ %i_1, %2 ]
  %SumOfSquare = phi float [ 0.000000e+00, %0 ], [ %SumOfSquare_2, %2 ]
  %exitcond1 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %exitcond1, label %_ifconv, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str) nounwind
  %tmp_1 = zext i3 %i to i64
  %in_addr_1 = getelementptr [4 x float]* %in_r, i64 0, i64 %tmp_1
  %in_load_1 = load float* %in_addr_1, align 4
  %tmp_2 = fmul float %in_load_1, %in_load_1
  %SumOfSquare_2 = fadd float %SumOfSquare, %tmp_2
  %i_1 = add i3 %i, 1
  br label %1

_ifconv:                                          ; preds = %1
  %in_load = load float* %in_addr, align 4
  %in_load_to_int = bitcast float %in_load to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_load_to_int, i32 23, i32 30)
  %tmp_12 = trunc i32 %in_load_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_12, 0
  %tmp_4 = or i1 %notrhs, %notlhs
  %tmp_6 = fcmp oeq float %in_load, 0.000000e+00
  %tmp_7 = and i1 %tmp_4, %tmp_6
  %tmp_5 = fmul float %in_load, %in_load
  %SumOfSquare_3 = fadd float %SumOfSquare, %tmp_5
  %SumOfSquare_4 = select i1 %tmp_7, float %SumOfSquare, float %SumOfSquare_3
  %halfx = fmul float %SumOfSquare_4, 5.000000e-01
  %y = bitcast float %SumOfSquare_4 to i32
  %tmp_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %y, i32 1, i32 31)
  %tmp_8 = zext i31 %tmp_i to i32
  %y_2 = sub i32 1597463007, %tmp_8
  %tmp_i_6 = bitcast i32 %y_2 to float
  %tmp_4_i = fmul float %halfx, %tmp_i_6
  %tmp_5_i = fmul float %tmp_4_i, %tmp_i_6
  %tmp_6_i = fsub float 1.500000e+00, %tmp_5_i
  %recipNorm = fmul float %tmp_i_6, %tmp_6_i
  br label %3

; <label>:3                                       ; preds = %4, %_ifconv
  %i1 = phi i2 [ 1, %_ifconv ], [ %i_2, %4 ]
  %exitcond = icmp eq i2 %i1, -1
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  br i1 %exitcond, label %_ifconv1, label %4

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind
  %tmp_9 = zext i2 %i1 to i64
  %in_addr_2 = getelementptr [4 x float]* %in_r, i64 0, i64 %tmp_9
  %in_load_3 = load float* %in_addr_2, align 4
  %tmp_s = fmul float %in_load_3, %recipNorm
  store float %tmp_s, float* %in_addr_2, align 4
  %i_2 = add i2 %i1, 1
  br label %3

_ifconv1:                                         ; preds = %3
  %in_load_2 = load float* %in_addr, align 4
  %in_load_2_to_int = bitcast float %in_load_2 to i32
  %tmp_10 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_load_2_to_int, i32 23, i32 30)
  %tmp_16 = trunc i32 %in_load_2_to_int to i23
  %notlhs5 = icmp ne i8 %tmp_10, -1
  %notrhs6 = icmp eq i23 %tmp_16, 0
  %tmp_11 = or i1 %notrhs6, %notlhs5
  %tmp_13 = fcmp oeq float %in_load_2, 0.000000e+00
  %tmp_14 = and i1 %tmp_11, %tmp_13
  %tmp_3 = fmul float %in_load_2, %recipNorm
  %storemerge = select i1 %tmp_14, float 0.000000e+00, float %tmp_3
  store float %storemerge, float* %in_addr, align 4
  ret void
}

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_8 = trunc i32 %empty to i8
  ret i8 %empty_8
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_9 = trunc i32 %empty to i31
  ret i31 %empty_9
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak float @_ssdm_op_Mux.ap_auto.4float.i2(float, float, float, float, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi float [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret float %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

define internal fastcc void @MadgwickAHRSupdateIM([4 x float]* nocapture %g, [4 x float]* nocapture %a) {
  %q_load = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4
  %tmp_to_int = bitcast float %q_load to i32
  %tmp_neg = xor i32 %tmp_to_int, -2147483648
  %tmp = bitcast i32 %tmp_neg to float
  %g_addr = getelementptr [4 x float]* %g, i64 0, i64 1
  %g_load = load float* %g_addr, align 4
  %tmp_s = fmul float %g_load, %tmp
  %q_load_1 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8
  %g_addr_1 = getelementptr [4 x float]* %g, i64 0, i64 2
  %g_load_1 = load float* %g_addr_1, align 4
  %tmp_1 = fmul float %q_load_1, %g_load_1
  %tmp_2 = fsub float %tmp_s, %tmp_1
  %q_load_2 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4
  %g_addr_2 = getelementptr [4 x float]* %g, i64 0, i64 3
  %g_load_2 = load float* %g_addr_2, align 4
  %tmp_3 = fmul float %q_load_2, %g_load_2
  %tmp_4 = fsub float %tmp_2, %tmp_3
  %qDot_0 = fmul float %tmp_4, 5.000000e-01
  %q_load_3 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16
  %tmp_6 = fmul float %q_load_3, %g_load
  %tmp_7 = fmul float %q_load_1, %g_load_2
  %tmp_8 = fadd float %tmp_6, %tmp_7
  %tmp_9 = fmul float %q_load_2, %g_load_1
  %tmp_5 = fsub float %tmp_8, %tmp_9
  %qDot_1 = fmul float %tmp_5, 5.000000e-01
  %tmp_10 = fmul float %q_load_3, %g_load_1
  %tmp_11 = fmul float %q_load, %g_load_2
  %tmp_12 = fsub float %tmp_10, %tmp_11
  %tmp_13 = fmul float %q_load_2, %g_load
  %tmp_14 = fadd float %tmp_12, %tmp_13
  %qDot_2 = fmul float %tmp_14, 5.000000e-01
  %tmp_15 = fmul float %q_load_3, %g_load_2
  %tmp_16 = fmul float %q_load, %g_load_1
  %tmp_17 = fadd float %tmp_15, %tmp_16
  %tmp_18 = fmul float %q_load_1, %g_load
  %tmp_19 = fsub float %tmp_17, %tmp_18
  %qDot_3 = fmul float %tmp_19, 5.000000e-01
  %a_addr = getelementptr [4 x float]* %a, i64 0, i64 1
  %a_load = load float* %a_addr, align 4
  %a_load_to_int = bitcast float %a_load to i32
  %tmp_20 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_to_int, i32 23, i32 30)
  %tmp_21 = trunc i32 %a_load_to_int to i23
  %notlhs = icmp ne i8 %tmp_20, -1
  %notrhs = icmp eq i23 %tmp_21, 0
  %tmp_22 = or i1 %notrhs, %notlhs
  %tmp_64 = fcmp oeq float %a_load, 0.000000e+00
  %tmp_65 = and i1 %tmp_22, %tmp_64
  br i1 %tmp_65, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  %a_addr_1 = getelementptr [4 x float]* %a, i64 0, i64 2
  %a_load_1 = load float* %a_addr_1, align 4
  %a_load_1_to_int = bitcast float %a_load_1 to i32
  %tmp_66 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_1_to_int, i32 23, i32 30)
  %tmp_67 = trunc i32 %a_load_1_to_int to i23
  %notlhs1 = icmp ne i8 %tmp_66, -1
  %notrhs1 = icmp eq i23 %tmp_67, 0
  %tmp_68 = or i1 %notrhs1, %notlhs1
  %tmp_69 = fcmp oeq float %a_load_1, 0.000000e+00
  %tmp_70 = and i1 %tmp_68, %tmp_69
  br i1 %tmp_70, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  %a_addr_2 = getelementptr [4 x float]* %a, i64 0, i64 3
  %a_load_2 = load float* %a_addr_2, align 4
  %a_load_2_to_int = bitcast float %a_load_2 to i32
  %tmp_71 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_2_to_int, i32 23, i32 30)
  %tmp_72 = trunc i32 %a_load_2_to_int to i23
  %notlhs2 = icmp ne i8 %tmp_71, -1
  %notrhs2 = icmp eq i23 %tmp_72, 0
  %tmp_73 = or i1 %notrhs2, %notlhs2
  %tmp_74 = fcmp oeq float %a_load_2, 0.000000e+00
  %tmp_75 = and i1 %tmp_73, %tmp_74
  br i1 %tmp_75, label %._crit_edge2, label %._crit_edge

._crit_edge:                                      ; preds = %2, %1, %0
  call fastcc void @normalise([4 x float]* %a)
  %q_load_4 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16
  %p_2q0 = fmul float %q_load_4, 2.000000e+00
  %q_load_5 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4
  %p_2q1 = fmul float %q_load_5, 2.000000e+00
  %q_load_6 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8
  %p_2q2 = fmul float %q_load_6, 2.000000e+00
  %q_load_7 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4
  %p_2q3 = fmul float %q_load_7, 2.000000e+00
  %p_4q0 = fmul float %q_load_4, 4.000000e+00
  %p_4q1 = fmul float %q_load_5, 4.000000e+00
  %p_4q2 = fmul float %q_load_6, 4.000000e+00
  %p_8q1 = fmul float %q_load_5, 8.000000e+00
  %p_8q2 = fmul float %q_load_6, 8.000000e+00
  %q0q0 = fmul float %q_load_4, %q_load_4
  %q1q1 = fmul float %q_load_5, %q_load_5
  %q2q2 = fmul float %q_load_6, %q_load_6
  %q3q3 = fmul float %q_load_7, %q_load_7
  %tmp_23 = fmul float %p_4q0, %q2q2
  %a_load_3 = load float* %a_addr, align 4
  %tmp_24 = fmul float %p_2q2, %a_load_3
  %tmp_25 = fadd float %tmp_23, %tmp_24
  %tmp_26 = fmul float %p_4q0, %q1q1
  %tmp_27 = fadd float %tmp_25, %tmp_26
  %a_addr_3 = getelementptr [4 x float]* %a, i64 0, i64 2
  %a_load_4 = load float* %a_addr_3, align 4
  %tmp_28 = fmul float %p_2q1, %a_load_4
  %s_0 = fsub float %tmp_27, %tmp_28
  %tmp_29 = fmul float %p_4q1, %q3q3
  %tmp_30 = fmul float %p_2q3, %a_load_3
  %tmp_31 = fsub float %tmp_29, %tmp_30
  %tmp_32 = fmul float %q0q0, 4.000000e+00
  %tmp_33 = fmul float %tmp_32, %q_load_5
  %tmp_34 = fadd float %tmp_31, %tmp_33
  %tmp_35 = fmul float %p_2q0, %a_load_4
  %tmp_36 = fsub float %tmp_34, %tmp_35
  %tmp_37 = fsub float %tmp_36, %p_4q1
  %tmp_38 = fmul float %p_8q1, %q1q1
  %tmp_39 = fadd float %tmp_37, %tmp_38
  %tmp_40 = fmul float %p_8q1, %q2q2
  %tmp_41 = fadd float %tmp_39, %tmp_40
  %a_addr_4 = getelementptr [4 x float]* %a, i64 0, i64 3
  %a_load_5 = load float* %a_addr_4, align 4
  %tmp_42 = fmul float %p_4q1, %a_load_5
  %s_1 = fadd float %tmp_41, %tmp_42
  %tmp_43 = fmul float %tmp_32, %q_load_6
  %tmp_44 = fmul float %p_2q0, %a_load_3
  %tmp_45 = fadd float %tmp_43, %tmp_44
  %tmp_46 = fmul float %p_4q2, %q3q3
  %tmp_47 = fadd float %tmp_45, %tmp_46
  %tmp_48 = fmul float %p_2q3, %a_load_4
  %tmp_49 = fsub float %tmp_47, %tmp_48
  %tmp_50 = fsub float %tmp_49, %p_4q2
  %tmp_51 = fmul float %p_8q2, %q1q1
  %tmp_52 = fadd float %tmp_50, %tmp_51
  %tmp_53 = fmul float %p_8q2, %q2q2
  %tmp_54 = fadd float %tmp_52, %tmp_53
  %tmp_55 = fmul float %p_4q2, %a_load_5
  %s_2 = fadd float %tmp_54, %tmp_55
  %tmp_56 = fmul float %q1q1, 4.000000e+00
  %tmp_57 = fmul float %tmp_56, %q_load_7
  %tmp_58 = fmul float %p_2q1, %a_load_3
  %tmp_59 = fsub float %tmp_57, %tmp_58
  %tmp_60 = fmul float %q2q2, 4.000000e+00
  %tmp_61 = fmul float %tmp_60, %q_load_7
  %tmp_62 = fadd float %tmp_59, %tmp_61
  %tmp_63 = fmul float %p_2q2, %a_load_4
  %s_3 = fsub float %tmp_62, %tmp_63
  %call_ret = call fastcc { float, float, float } @normalise.1(float %s_0, float %s_1, float %s_2, float %s_3)
  %s_2_1 = extractvalue { float, float, float } %call_ret, 1
  %s_1_1 = extractvalue { float, float, float } %call_ret, 0
  %s_0_1 = extractvalue { float, float, float } %call_ret, 2
  %beta_load = load float* @beta, align 4
  br label %3

; <label>:3                                       ; preds = %_ifconv, %._crit_edge
  %qDot_3_3 = phi float [ %qDot_0, %._crit_edge ], [ %qDot_3_4, %_ifconv ]
  %qDot_3_5 = phi float [ %qDot_1, %._crit_edge ], [ %qDot_3_7, %_ifconv ]
  %qDot_2_2 = phi float [ %qDot_2, %._crit_edge ], [ %qDot_3_10, %_ifconv ]
  %qDot_31 = phi float [ %qDot_3, %._crit_edge ], [ %qDot_3_13, %_ifconv ]
  %i_i = phi i3 [ 0, %._crit_edge ], [ %i, %_ifconv ]
  %exitcond_i = icmp eq i3 %i_i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i = add i3 %i_i, 1
  br i1 %exitcond_i, label %._crit_edge2.loopexit, label %_ifconv

_ifconv:                                          ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str2) nounwind
  %tmp_79 = trunc i3 %i_i to i2
  %tmp_76 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %s_0_1, float %s_1_1, float %s_2_1, float %s_3, i2 %tmp_79)
  %tmp_i = fmul float %tmp_76, %beta_load
  %tmp_77 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %qDot_3_3, float %qDot_3_5, float %qDot_2_2, float %qDot_31, i2 %tmp_79)
  %qDot_3_14 = fsub float %tmp_77, %tmp_i
  %sel_tmp8 = icmp eq i2 %tmp_79, 0
  %qDot_3_4 = select i1 %sel_tmp8, float %qDot_3_14, float %qDot_3_3
  %sel_tmp = icmp eq i2 %tmp_79, 1
  %qDot_3_6 = select i1 %sel_tmp, float %qDot_3_14, float %qDot_3_5
  %qDot_3_7 = select i1 %sel_tmp8, float %qDot_3_5, float %qDot_3_6
  %sel_tmp2 = icmp eq i2 %tmp_79, -2
  %qDot_3_8 = select i1 %sel_tmp2, float %qDot_3_14, float %qDot_2_2
  %qDot_3_9 = select i1 %sel_tmp, float %qDot_2_2, float %qDot_3_8
  %qDot_3_10 = select i1 %sel_tmp8, float %qDot_2_2, float %qDot_3_9
  %qDot_3_11 = select i1 %sel_tmp2, float %qDot_31, float %qDot_3_14
  %qDot_3_12 = select i1 %sel_tmp, float %qDot_31, float %qDot_3_11
  %qDot_3_13 = select i1 %sel_tmp8, float %qDot_31, float %qDot_3_12
  br label %3

._crit_edge2.loopexit:                            ; preds = %3
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %._crit_edge2.loopexit, %2
  %qDot_0_s = phi float [ %qDot_0, %2 ], [ %qDot_3_3, %._crit_edge2.loopexit ]
  %qDot_1_2 = phi float [ %qDot_1, %2 ], [ %qDot_3_5, %._crit_edge2.loopexit ]
  %qDot_2_2_2 = phi float [ %qDot_2, %2 ], [ %qDot_2_2, %._crit_edge2.loopexit ]
  %qDot_3_2 = phi float [ %qDot_3, %2 ], [ %qDot_31, %._crit_edge2.loopexit ]
  br label %4

; <label>:4                                       ; preds = %5, %._crit_edge2
  %i_i1 = phi i3 [ 0, %._crit_edge2 ], [ %i_3, %5 ]
  %exitcond_i1 = icmp eq i3 %i_i1, -4
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_3 = add i3 %i_i1, 1
  br i1 %exitcond_i1, label %integrateQdot.exit, label %5

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str3) nounwind
  %tmp_i1 = zext i3 %i_i1 to i64
  %tmp_80 = trunc i3 %i_i1 to i2
  %tmp_78 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %qDot_0_s, float %qDot_1_2, float %qDot_2_2_2, float %qDot_3_2, i2 %tmp_80)
  %tmp_i1_11 = fmul float %tmp_78, 1.953125e-03
  %q_addr = getelementptr [4 x float]* @q, i64 0, i64 %tmp_i1
  %q_load_8 = load float* %q_addr, align 4
  %tmp_8_i = fadd float %q_load_8, %tmp_i1_11
  store float %tmp_8_i, float* %q_addr, align 4
  br label %4

integrateQdot.exit:                               ; preds = %4
  call fastcc void @normalise([4 x float]* @q)
  ret void
}

define void @MadgwickAHRSupdate([4 x float]* %g, [4 x float]* %a, [4 x float]* %m) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([4 x float]* %g) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecBitsMap([4 x float]* %a) nounwind, !map !47
  call void (...)* @_ssdm_op_SpecBitsMap([4 x float]* %m) nounwind, !map !51
  %m_addr = getelementptr [4 x float]* %m, i64 0, i64 0
  %a_addr = getelementptr [4 x float]* %a, i64 0, i64 0
  %g_addr = getelementptr [4 x float]* %g, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @MadgwickAHRSupdate_s) nounwind
  store float 0.000000e+00, float* %g_addr, align 4
  store float 0.000000e+00, float* %a_addr, align 4
  store float 0.000000e+00, float* %m_addr, align 4
  %m_addr_1 = getelementptr [4 x float]* %m, i64 0, i64 1
  %m_load = load float* %m_addr_1, align 4
  %m_load_to_int = bitcast float %m_load to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_load_to_int, i32 23, i32 30)
  %tmp_86 = trunc i32 %m_load_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_86, 0
  %tmp_87 = or i1 %notrhs, %notlhs
  %tmp_88 = fcmp oeq float %m_load, 0.000000e+00
  %tmp_232 = and i1 %tmp_87, %tmp_88
  br i1 %tmp_232, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  %m_addr_2 = getelementptr [4 x float]* %m, i64 0, i64 2
  %m_load_1 = load float* %m_addr_2, align 4
  %m_load_1_to_int = bitcast float %m_load_1 to i32
  %tmp_233 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_load_1_to_int, i32 23, i32 30)
  %tmp_234 = trunc i32 %m_load_1_to_int to i23
  %notlhs3 = icmp ne i8 %tmp_233, -1
  %notrhs3 = icmp eq i23 %tmp_234, 0
  %tmp_235 = or i1 %notrhs3, %notlhs3
  %tmp_236 = fcmp oeq float %m_load_1, 0.000000e+00
  %tmp_237 = and i1 %tmp_235, %tmp_236
  br i1 %tmp_237, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  %m_addr_3 = getelementptr [4 x float]* %m, i64 0, i64 3
  %m_load_2 = load float* %m_addr_3, align 4
  %m_load_2_to_int = bitcast float %m_load_2 to i32
  %tmp_238 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_load_2_to_int, i32 23, i32 30)
  %tmp_239 = trunc i32 %m_load_2_to_int to i23
  %notlhs4 = icmp ne i8 %tmp_238, -1
  %notrhs4 = icmp eq i23 %tmp_239, 0
  %tmp_240 = or i1 %notrhs4, %notlhs4
  %tmp_241 = fcmp oeq float %m_load_2, 0.000000e+00
  %tmp_242 = and i1 %tmp_240, %tmp_241
  br i1 %tmp_242, label %3, label %._crit_edge

; <label>:3                                       ; preds = %2
  call fastcc void @MadgwickAHRSupdateIM([4 x float]* %g, [4 x float]* %a) nounwind
  br label %9

._crit_edge:                                      ; preds = %2, %1, %0
  %q_load = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16
  %tmp_82_to_int = bitcast float %q_load to i32
  %tmp_82_neg = xor i32 %tmp_82_to_int, -2147483648
  %tmp_s = bitcast i32 %tmp_82_neg to float
  %g_addr_3 = getelementptr [4 x float]* %g, i64 0, i64 1
  %g_load = load float* %g_addr_3, align 4
  %tmp_64 = fmul float %g_load, %tmp_s
  %q_load_8 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8
  %g_addr_4 = getelementptr [4 x float]* %g, i64 0, i64 2
  %g_load_3 = load float* %g_addr_4, align 4
  %tmp_65 = fmul float %q_load_8, %g_load_3
  %tmp_66 = fsub float %tmp_64, %tmp_65
  %q_load_9 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4
  %g_addr_5 = getelementptr [4 x float]* %g, i64 0, i64 3
  %g_load_4 = load float* %g_addr_5, align 4
  %tmp_67 = fmul float %q_load_9, %g_load_4
  %tmp_68 = fsub float %tmp_66, %tmp_67
  %qDot_0 = fmul float %tmp_68, 5.000000e-01
  %tmp_69 = fmul float %q_load, %g_load
  %tmp_70 = fmul float %q_load_8, %g_load_4
  %tmp_71 = fadd float %tmp_69, %tmp_70
  %tmp_72 = fmul float %q_load_9, %g_load_3
  %tmp_73 = fsub float %tmp_71, %tmp_72
  %qDot_1 = fmul float %tmp_73, 5.000000e-01
  %tmp_74 = fmul float %q_load, %g_load_3
  %q_load_10 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4
  %tmp_75 = fmul float %q_load_10, %g_load_4
  %tmp_76 = fsub float %tmp_74, %tmp_75
  %tmp_77 = fmul float %q_load_9, %g_load
  %tmp_78 = fadd float %tmp_76, %tmp_77
  %qDot_2 = fmul float %tmp_78, 5.000000e-01
  %tmp_79 = fmul float %q_load, %g_load_4
  %tmp_80 = fmul float %q_load_10, %g_load_3
  %tmp_81 = fadd float %tmp_79, %tmp_80
  %tmp_82 = fmul float %q_load_8, %g_load
  %tmp_83 = fsub float %tmp_81, %tmp_82
  %qDot_3_2 = fmul float %tmp_83, 5.000000e-01
  %a_addr_5 = getelementptr [4 x float]* %a, i64 0, i64 1
  %a_load = load float* %a_addr_5, align 4
  %a_load_to_int = bitcast float %a_load to i32
  %tmp_243 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_to_int, i32 23, i32 30)
  %tmp_244 = trunc i32 %a_load_to_int to i23
  %notlhs5 = icmp ne i8 %tmp_243, -1
  %notrhs5 = icmp eq i23 %tmp_244, 0
  %tmp_245 = or i1 %notrhs5, %notlhs5
  %tmp_246 = fcmp oeq float %a_load, 0.000000e+00
  %tmp_247 = and i1 %tmp_245, %tmp_246
  br i1 %tmp_247, label %4, label %._crit_edge3

; <label>:4                                       ; preds = %._crit_edge
  %a_addr_6 = getelementptr [4 x float]* %a, i64 0, i64 2
  %a_load_6 = load float* %a_addr_6, align 4
  %a_load_6_to_int = bitcast float %a_load_6 to i32
  %tmp_248 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_6_to_int, i32 23, i32 30)
  %tmp_249 = trunc i32 %a_load_6_to_int to i23
  %notlhs6 = icmp ne i8 %tmp_248, -1
  %notrhs6 = icmp eq i23 %tmp_249, 0
  %tmp_250 = or i1 %notrhs6, %notlhs6
  %tmp_251 = fcmp oeq float %a_load_6, 0.000000e+00
  %tmp_252 = and i1 %tmp_250, %tmp_251
  br i1 %tmp_252, label %5, label %._crit_edge3

; <label>:5                                       ; preds = %4
  %a_addr_7 = getelementptr [4 x float]* %a, i64 0, i64 3
  %a_load_7 = load float* %a_addr_7, align 4
  %a_load_7_to_int = bitcast float %a_load_7 to i32
  %tmp_253 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_7_to_int, i32 23, i32 30)
  %tmp_254 = trunc i32 %a_load_7_to_int to i23
  %notlhs7 = icmp ne i8 %tmp_253, -1
  %notrhs7 = icmp eq i23 %tmp_254, 0
  %tmp_255 = or i1 %notrhs7, %notlhs7
  %tmp_256 = fcmp oeq float %a_load_7, 0.000000e+00
  %tmp_257 = and i1 %tmp_255, %tmp_256
  br i1 %tmp_257, label %._crit_edge5, label %._crit_edge3

._crit_edge3:                                     ; preds = %5, %4, %._crit_edge
  call fastcc void @normalise([4 x float]* %a) nounwind
  call fastcc void @normalise([4 x float]* %m) nounwind
  %q_load_11 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16
  %p_2q0 = fmul float %q_load_11, 2.000000e+00
  %m_load_3 = load float* %m_addr_1, align 4
  %p_2q0mx = fmul float %p_2q0, %m_load_3
  %m_addr_4 = getelementptr [4 x float]* %m, i64 0, i64 2
  %m_load_4 = load float* %m_addr_4, align 4
  %p_2q0my = fmul float %p_2q0, %m_load_4
  %m_addr_5 = getelementptr [4 x float]* %m, i64 0, i64 3
  %m_load_5 = load float* %m_addr_5, align 4
  %p_2q0mz = fmul float %p_2q0, %m_load_5
  %q_load_12 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4
  %p_2q1 = fmul float %q_load_12, 2.000000e+00
  %p_2q1mx = fmul float %p_2q1, %m_load_3
  %q_load_13 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8
  %p_2q2 = fmul float %q_load_13, 2.000000e+00
  %q_load_14 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4
  %p_2q3 = fmul float %q_load_14, 2.000000e+00
  %p_2q0q2 = fmul float %p_2q0, %q_load_13
  %p_2q2q3 = fmul float %p_2q2, %q_load_14
  %q0q0 = fmul float %q_load_11, %q_load_11
  %q0q1 = fmul float %q_load_11, %q_load_12
  %q0q2 = fmul float %q_load_11, %q_load_13
  %q0q3 = fmul float %q_load_11, %q_load_14
  %q1q1 = fmul float %q_load_12, %q_load_12
  %q1q2 = fmul float %q_load_12, %q_load_13
  %q1q3 = fmul float %q_load_12, %q_load_14
  %q2q2 = fmul float %q_load_13, %q_load_13
  %q2q3 = fmul float %q_load_13, %q_load_14
  %q3q3 = fmul float %q_load_14, %q_load_14
  %tmp_84 = fmul float %m_load_3, %q0q0
  %tmp_85 = fmul float %p_2q0my, %q_load_14
  %tmp_89 = fsub float %tmp_84, %tmp_85
  %tmp_90 = fmul float %p_2q0mz, %q_load_13
  %tmp_91 = fadd float %tmp_89, %tmp_90
  %tmp_92 = fmul float %m_load_3, %q1q1
  %tmp_93 = fadd float %tmp_91, %tmp_92
  %tmp_94 = fmul float %p_2q1, %m_load_4
  %tmp_95 = fmul float %tmp_94, %q_load_13
  %tmp_96 = fadd float %tmp_93, %tmp_95
  %tmp_97 = fmul float %p_2q1, %m_load_5
  %tmp_98 = fmul float %tmp_97, %q_load_14
  %tmp_99 = fadd float %tmp_96, %tmp_98
  %tmp_100 = fmul float %m_load_3, %q2q2
  %tmp_101 = fsub float %tmp_99, %tmp_100
  %tmp_102 = fmul float %m_load_3, %q3q3
  %hx = fsub float %tmp_101, %tmp_102
  %tmp_103 = fmul float %p_2q0mx, %q_load_14
  %tmp_104 = fmul float %m_load_4, %q0q0
  %tmp_105 = fadd float %tmp_103, %tmp_104
  %tmp_106 = fmul float %p_2q0mz, %q_load_12
  %tmp_107 = fsub float %tmp_105, %tmp_106
  %tmp_108 = fmul float %p_2q1mx, %q_load_13
  %tmp_109 = fadd float %tmp_107, %tmp_108
  %tmp_110 = fmul float %m_load_4, %q1q1
  %tmp_111 = fsub float %tmp_109, %tmp_110
  %tmp_112 = fmul float %m_load_4, %q2q2
  %tmp_113 = fadd float %tmp_111, %tmp_112
  %tmp_114 = fmul float %p_2q2, %m_load_5
  %tmp_115 = fmul float %tmp_114, %q_load_14
  %tmp_116 = fadd float %tmp_113, %tmp_115
  %tmp_117 = fmul float %m_load_4, %q3q3
  %hy = fsub float %tmp_116, %tmp_117
  %tmp_118 = fmul float %hx, %hx
  %tmp_119 = fmul float %hy, %hy
  %tmp_120 = fadd float %tmp_118, %tmp_119
  %p_2bx = call float @llvm.sqrt.f32(float %tmp_120)
  %tmp_144_to_int = bitcast float %p_2q0mx to i32
  %tmp_144_neg = xor i32 %tmp_144_to_int, -2147483648
  %tmp_121 = bitcast i32 %tmp_144_neg to float
  %tmp_122 = fmul float %q_load_13, %tmp_121
  %tmp_123 = fmul float %p_2q0my, %q_load_12
  %tmp_124 = fadd float %tmp_122, %tmp_123
  %tmp_125 = fmul float %m_load_5, %q0q0
  %tmp_126 = fadd float %tmp_124, %tmp_125
  %tmp_127 = fmul float %p_2q1mx, %q_load_14
  %tmp_128 = fadd float %tmp_126, %tmp_127
  %tmp_129 = fmul float %m_load_5, %q1q1
  %tmp_130 = fsub float %tmp_128, %tmp_129
  %tmp_131 = fmul float %p_2q2, %m_load_4
  %tmp_132 = fmul float %tmp_131, %q_load_14
  %tmp_133 = fadd float %tmp_130, %tmp_132
  %tmp_134 = fmul float %m_load_5, %q2q2
  %tmp_135 = fsub float %tmp_133, %tmp_134
  %tmp_136 = fmul float %m_load_5, %q3q3
  %p_2bz = fadd float %tmp_135, %tmp_136
  %p_4bx = fmul float %p_2bx, 2.000000e+00
  %p_4bz = fmul float %p_2bz, 2.000000e+00
  %tmp_160_to_int = bitcast float %p_2q2 to i32
  %tmp_160_neg = xor i32 %tmp_160_to_int, -2147483648
  %tmp_137 = bitcast i32 %tmp_160_neg to float
  %tmp_138 = fmul float %q1q3, 2.000000e+00
  %tmp_139 = fsub float %tmp_138, %p_2q0q2
  %a_load_8 = load float* %a_addr_5, align 4
  %tmp_140 = fsub float %tmp_139, %a_load_8
  %tmp_141 = fmul float %tmp_140, %tmp_137
  %tmp_142 = fmul float %q0q1, 2.000000e+00
  %tmp_143 = fadd float %tmp_142, %p_2q2q3
  %a_addr_8 = getelementptr [4 x float]* %a, i64 0, i64 2
  %a_load_9 = load float* %a_addr_8, align 4
  %tmp_144 = fsub float %tmp_143, %a_load_9
  %tmp_145 = fmul float %p_2q1, %tmp_144
  %tmp_146 = fadd float %tmp_141, %tmp_145
  %tmp_147 = fmul float %p_2bz, %q_load_13
  %tmp_148 = fsub float 5.000000e-01, %q2q2
  %tmp_149 = fsub float %tmp_148, %q3q3
  %tmp_150 = fmul float %p_2bx, %tmp_149
  %tmp_151 = fsub float %q1q3, %q0q2
  %tmp_152 = fmul float %p_2bz, %tmp_151
  %tmp_153 = fadd float %tmp_150, %tmp_152
  %tmp_154 = fsub float %tmp_153, %m_load_3
  %tmp_155 = fmul float %tmp_147, %tmp_154
  %tmp_156 = fsub float %tmp_146, %tmp_155
  %tmp_180_to_int = bitcast float %p_2bx to i32
  %tmp_180_neg = xor i32 %tmp_180_to_int, -2147483648
  %tmp_157 = bitcast i32 %tmp_180_neg to float
  %tmp_158 = fmul float %q_load_14, %tmp_157
  %tmp_159 = fmul float %p_2bz, %q_load_12
  %tmp_160 = fadd float %tmp_158, %tmp_159
  %tmp_161 = fsub float %q1q2, %q0q3
  %tmp_162 = fmul float %p_2bx, %tmp_161
  %tmp_163 = fadd float %q0q1, %q2q3
  %tmp_164 = fmul float %p_2bz, %tmp_163
  %tmp_165 = fadd float %tmp_162, %tmp_164
  %tmp_166 = fsub float %tmp_165, %m_load_4
  %tmp_167 = fmul float %tmp_160, %tmp_166
  %tmp_168 = fadd float %tmp_156, %tmp_167
  %tmp_169 = fmul float %p_2bx, %q_load_13
  %tmp_170 = fadd float %q0q2, %q1q3
  %tmp_171 = fmul float %p_2bx, %tmp_170
  %tmp_172 = fsub float 5.000000e-01, %q1q1
  %tmp_173 = fsub float %tmp_172, %q2q2
  %tmp_174 = fmul float %p_2bz, %tmp_173
  %tmp_175 = fadd float %tmp_171, %tmp_174
  %tmp_176 = fsub float %tmp_175, %m_load_5
  %tmp_177 = fmul float %tmp_169, %tmp_176
  %s_0 = fadd float %tmp_168, %tmp_177
  %tmp_178 = fmul float %p_2q3, %tmp_140
  %tmp_179 = fmul float %p_2q0, %tmp_144
  %tmp_180 = fadd float %tmp_178, %tmp_179
  %tmp_181 = fmul float %q_load_12, 4.000000e+00
  %tmp_182 = fmul float %q1q1, 2.000000e+00
  %tmp_183 = fsub float 1.000000e+00, %tmp_182
  %tmp_184 = fmul float %q2q2, 2.000000e+00
  %tmp_185 = fsub float %tmp_183, %tmp_184
  %a_addr_9 = getelementptr [4 x float]* %a, i64 0, i64 3
  %a_load_10 = load float* %a_addr_9, align 4
  %tmp_186 = fsub float %tmp_185, %a_load_10
  %tmp_187 = fmul float %tmp_181, %tmp_186
  %tmp_188 = fsub float %tmp_180, %tmp_187
  %tmp_189 = fmul float %p_2bz, %q_load_14
  %tmp_190 = fmul float %tmp_189, %tmp_154
  %tmp_191 = fadd float %tmp_188, %tmp_190
  %tmp_192 = fmul float %p_2bz, %q_load_11
  %tmp_193 = fadd float %tmp_169, %tmp_192
  %tmp_194 = fmul float %tmp_193, %tmp_166
  %tmp_195 = fadd float %tmp_191, %tmp_194
  %tmp_196 = fmul float %p_2bx, %q_load_14
  %tmp_197 = fmul float %p_4bz, %q_load_12
  %tmp_198 = fsub float %tmp_196, %tmp_197
  %tmp_199 = fmul float %tmp_198, %tmp_176
  %s_1 = fadd float %tmp_195, %tmp_199
  %tmp_225_to_int = bitcast float %p_2q0 to i32
  %tmp_225_neg = xor i32 %tmp_225_to_int, -2147483648
  %tmp_200 = bitcast i32 %tmp_225_neg to float
  %tmp_201 = fmul float %tmp_140, %tmp_200
  %tmp_202 = fmul float %p_2q3, %tmp_144
  %tmp_203 = fadd float %tmp_201, %tmp_202
  %tmp_204 = fmul float %q_load_13, 4.000000e+00
  %tmp_205 = fmul float %tmp_204, %tmp_186
  %tmp_206 = fsub float %tmp_203, %tmp_205
  %tmp_232_to_int = bitcast float %p_4bx to i32
  %tmp_232_neg = xor i32 %tmp_232_to_int, -2147483648
  %tmp_207 = bitcast i32 %tmp_232_neg to float
  %tmp_208 = fmul float %q_load_13, %tmp_207
  %tmp_209 = fsub float %tmp_208, %tmp_192
  %tmp_210 = fmul float %tmp_209, %tmp_154
  %tmp_211 = fadd float %tmp_206, %tmp_210
  %tmp_212 = fmul float %p_2bx, %q_load_12
  %tmp_213 = fadd float %tmp_212, %tmp_189
  %tmp_214 = fmul float %tmp_213, %tmp_166
  %tmp_215 = fadd float %tmp_211, %tmp_214
  %tmp_216 = fmul float %p_2bx, %q_load_11
  %tmp_217 = fmul float %p_4bz, %q_load_13
  %tmp_218 = fsub float %tmp_216, %tmp_217
  %tmp_219 = fmul float %tmp_218, %tmp_176
  %s_2 = fadd float %tmp_215, %tmp_219
  %tmp_220 = fmul float %p_2q1, %tmp_140
  %tmp_221 = fmul float %p_2q2, %tmp_144
  %tmp_222 = fadd float %tmp_220, %tmp_221
  %tmp_223 = fmul float %q_load_14, %tmp_207
  %tmp_224 = fadd float %tmp_223, %tmp_159
  %tmp_225 = fmul float %tmp_224, %tmp_154
  %tmp_226 = fadd float %tmp_222, %tmp_225
  %tmp_227 = fmul float %q_load_11, %tmp_157
  %tmp_228 = fadd float %tmp_227, %tmp_147
  %tmp_229 = fmul float %tmp_228, %tmp_166
  %tmp_230 = fadd float %tmp_226, %tmp_229
  %tmp_231 = fmul float %tmp_212, %tmp_176
  %s_3 = fadd float %tmp_230, %tmp_231
  %call_ret = call fastcc { float, float, float } @normalise.1(float %s_0, float %s_1, float %s_2, float %s_3) nounwind
  %s_2_2 = extractvalue { float, float, float } %call_ret, 1
  %s_1_2 = extractvalue { float, float, float } %call_ret, 0
  %s_0_2 = extractvalue { float, float, float } %call_ret, 2
  %beta_load = load float* @beta, align 4
  br label %6

; <label>:6                                       ; preds = %_ifconv, %._crit_edge3
  %qDot_3_3 = phi float [ %qDot_0, %._crit_edge3 ], [ %qDot_3_6, %_ifconv ]
  %qDot_3_4 = phi float [ %qDot_1, %._crit_edge3 ], [ %qDot_3_8, %_ifconv ]
  %qDot_2_3 = phi float [ %qDot_2, %._crit_edge3 ], [ %qDot_3_11, %_ifconv ]
  %qDot_3 = phi float [ %qDot_3_2, %._crit_edge3 ], [ %qDot_3_1, %_ifconv ]
  %i_i = phi i3 [ 0, %._crit_edge3 ], [ %i, %_ifconv ]
  %exitcond_i = icmp eq i3 %i_i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %i = add i3 %i_i, 1
  br i1 %exitcond_i, label %._crit_edge5.loopexit, label %_ifconv

_ifconv:                                          ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str2) nounwind
  %tmp_261 = trunc i3 %i_i to i2
  %tmp_258 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %s_0_2, float %s_1_2, float %s_2_2, float %s_3, i2 %tmp_261) nounwind
  %tmp_i = fmul float %tmp_258, %beta_load
  %tmp_259 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %qDot_3_3, float %qDot_3_4, float %qDot_2_3, float %qDot_3, i2 %tmp_261) nounwind
  %qDot_3_15 = fsub float %tmp_259, %tmp_i
  %sel_tmp7 = icmp eq i2 %tmp_261, 0
  %qDot_3_6 = select i1 %sel_tmp7, float %qDot_3_15, float %qDot_3_3
  %sel_tmp = icmp eq i2 %tmp_261, 1
  %qDot_3_7 = select i1 %sel_tmp, float %qDot_3_15, float %qDot_3_4
  %qDot_3_8 = select i1 %sel_tmp7, float %qDot_3_4, float %qDot_3_7
  %sel_tmp9 = icmp eq i2 %tmp_261, -2
  %qDot_3_9 = select i1 %sel_tmp9, float %qDot_3_15, float %qDot_2_3
  %qDot_3_10 = select i1 %sel_tmp, float %qDot_2_3, float %qDot_3_9
  %qDot_3_11 = select i1 %sel_tmp7, float %qDot_2_3, float %qDot_3_10
  %qDot_3_12 = select i1 %sel_tmp9, float %qDot_3, float %qDot_3_15
  %qDot_3_13 = select i1 %sel_tmp, float %qDot_3, float %qDot_3_12
  %qDot_3_1 = select i1 %sel_tmp7, float %qDot_3, float %qDot_3_13
  br label %6

._crit_edge5.loopexit:                            ; preds = %6
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge5.loopexit, %5
  %qDot_0_s = phi float [ %qDot_0, %5 ], [ %qDot_3_3, %._crit_edge5.loopexit ]
  %qDot_1_s = phi float [ %qDot_1, %5 ], [ %qDot_3_4, %._crit_edge5.loopexit ]
  %qDot_2_3_2 = phi float [ %qDot_2, %5 ], [ %qDot_2_3, %._crit_edge5.loopexit ]
  %qDot_3_s = phi float [ %qDot_3_2, %5 ], [ %qDot_3, %._crit_edge5.loopexit ]
  br label %7

; <label>:7                                       ; preds = %8, %._crit_edge5
  %i_i2 = phi i3 [ 0, %._crit_edge5 ], [ %i_4, %8 ]
  %exitcond_i2 = icmp eq i3 %i_i2, -4
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %i_4 = add i3 %i_i2, 1
  br i1 %exitcond_i2, label %integrateQdot.exit, label %8

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str3) nounwind
  %tmp_i2 = zext i3 %i_i2 to i64
  %tmp_262 = trunc i3 %i_i2 to i2
  %tmp_260 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %qDot_0_s, float %qDot_1_s, float %qDot_2_3_2, float %qDot_3_s, i2 %tmp_262) nounwind
  %tmp_i2_13 = fmul float %tmp_260, 1.953125e-03
  %q_addr = getelementptr [4 x float]* @q, i64 0, i64 %tmp_i2
  %q_load_15 = load float* %q_addr, align 4
  %tmp_8_i = fadd float %q_load_15, %tmp_i2_13
  store float %tmp_8_i, float* %q_addr, align 4
  br label %7

integrateQdot.exit:                               ; preds = %7
  call fastcc void @normalise([4 x float]* @q) nounwind
  br label %9

; <label>:9                                       ; preds = %integrateQdot.exit, %3
  ret void
}

!opencl.kernels = !{!0, !7, !13, !19, !23, !27}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!29, !36}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"float*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"g", metadata !"a", metadata !"m"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"g", metadata !"a"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!19 = metadata !{null, metadata !20, metadata !15, metadata !21, metadata !17, metadata !22, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"float*"}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"in"}
!23 = metadata !{null, metadata !24, metadata !2, metadata !25, metadata !4, metadata !26, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 1}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float", metadata !"float*"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"qDot", metadata !"beta", metadata !"s"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !28, metadata !6}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"q", metadata !"qDot"}
!29 = metadata !{metadata !30, [4 x float]* @q}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"q", metadata !34, metadata !"float", i32 0, i32 31}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 3, i32 1}
!36 = metadata !{metadata !37, float* @beta}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"beta", metadata !41, metadata !"float", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, i32 1}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"g", metadata !34, metadata !"float", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"a", metadata !34, metadata !"float", i32 0, i32 31}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"m", metadata !34, metadata !"float", i32 0, i32 31}
