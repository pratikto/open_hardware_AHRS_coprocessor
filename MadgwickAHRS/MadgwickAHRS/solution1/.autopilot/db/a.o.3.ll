; ModuleID = '/home/toni/Documents/vivado_projects/MadgwickAHRS/MadgwickAHRS/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q = global [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16 ; [#uses=8 type=[4 x float]*]
@beta = global float 0x3FB99999A0000000, align 4  ; [#uses=2 type=float*]
@MadgwickAHRSupdate_s = internal unnamed_addr constant [19 x i8] c"MadgwickAHRSupdate\00" ; [#uses=1 type=[19 x i8]*]
@p_str3 = private unnamed_addr constant [19 x i8] c"loop_integrateQdot\00", align 1 ; [#uses=2 type=[19 x i8]*]
@p_str2 = private unnamed_addr constant [17 x i8] c"loopfeedbackStep\00", align 1 ; [#uses=2 type=[17 x i8]*]
@p_str1 = private unnamed_addr constant [15 x i8] c"calculateQ1to3\00", align 1 ; [#uses=2 type=[15 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"SumOfSquare\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=2]
define internal fastcc { float, float, float } @normalise.1(float %in_0_read, float %in_1_read, float %in_2_read, float %in_3_read) readnone {
  %in_3_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %in_3_read) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %in_3_read_1}, i64 0, metadata !43), !dbg !56 ; [debug line = 206:22] [debug variable = in[3]]
  %in_2_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %in_2_read) ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %in_2_read_1}, i64 0, metadata !57), !dbg !56 ; [debug line = 206:22] [debug variable = in[2]]
  %in_1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %in_1_read) ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %in_1_read_1}, i64 0, metadata !58), !dbg !56 ; [debug line = 206:22] [debug variable = in[1]]
  %in_0_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %in_0_read) ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %in_0_read_1}, i64 0, metadata !59), !dbg !56 ; [debug line = 206:22] [debug variable = in[0]]
  call void @llvm.dbg.value(metadata !{float %in_0_read}, i64 0, metadata !59), !dbg !56 ; [debug line = 206:22] [debug variable = in[0]]
  call void @llvm.dbg.value(metadata !{float %in_1_read}, i64 0, metadata !58), !dbg !56 ; [debug line = 206:22] [debug variable = in[1]]
  call void @llvm.dbg.value(metadata !{float %in_2_read}, i64 0, metadata !57), !dbg !56 ; [debug line = 206:22] [debug variable = in[2]]
  call void @llvm.dbg.value(metadata !{float %in_3_read}, i64 0, metadata !43), !dbg !56 ; [debug line = 206:22] [debug variable = in[3]]
  br label %1, !dbg !60                           ; [debug line = 209:29]

; <label>:1                                       ; preds = %_ifconv, %0
  %i = phi i3 [ 1, %0 ], [ %i_1, %_ifconv ]       ; [#uses=3 type=i3]
  %SumOfSquare = phi float [ 0.000000e+00, %0 ], [ %SumOfSquare_2, %_ifconv ] ; [#uses=3 type=float]
  %exitcond1 = icmp eq i3 %i, -4, !dbg !60        ; [#uses=1 type=i1] [debug line = 209:29]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %_ifconv4, label %_ifconv, !dbg !60 ; [debug line = 209:29]

_ifconv:                                          ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str) nounwind, !dbg !63 ; [debug line = 209:44]
  %tmp_9 = trunc i3 %i to i2                      ; [#uses=2 type=i2]
  %sel_tmp = icmp eq i2 %tmp_9, -2, !dbg !65      ; [#uses=1 type=i1] [debug line = 210:3]
  %sel_tmp1 = select i1 %sel_tmp, float %in_2_read_1, float %in_3_read_1, !dbg !65 ; [#uses=1 type=float] [debug line = 210:3]
  %sel_tmp2 = icmp eq i2 %tmp_9, 1, !dbg !65      ; [#uses=1 type=i1] [debug line = 210:3]
  %in_load_1_phi = select i1 %sel_tmp2, float %in_1_read_1, float %sel_tmp1, !dbg !65 ; [#uses=2 type=float] [debug line = 210:3]
  %tmp_2 = fmul float %in_load_1_phi, %in_load_1_phi, !dbg !65 ; [#uses=1 type=float] [debug line = 210:3]
  %SumOfSquare_2 = fadd float %SumOfSquare, %tmp_2, !dbg !65 ; [#uses=1 type=float] [debug line = 210:3]
  call void @llvm.dbg.value(metadata !{float %SumOfSquare_2}, i64 0, metadata !66), !dbg !65 ; [debug line = 210:3] [debug variable = SumOfSquare]
  %i_1 = add i3 1, %i, !dbg !67                   ; [#uses=1 type=i3] [debug line = 209:38]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !68), !dbg !67 ; [debug line = 209:38] [debug variable = i]
  br label %1, !dbg !67                           ; [debug line = 209:38]

_ifconv4:                                         ; preds = %1
  %in_0_read_to_int = bitcast float %in_0_read_1 to i32 ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_0_read_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_1 = trunc i32 %in_0_read_to_int to i23     ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_1, 0                 ; [#uses=1 type=i1]
  %tmp_4 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp_6 = fcmp oeq float %in_0_read_1, 0.000000e+00, !dbg !70 ; [#uses=1 type=i1] [debug line = 212:2]
  %tmp_7 = and i1 %tmp_4, %tmp_6, !dbg !70        ; [#uses=2 type=i1] [debug line = 212:2]
  %tmp_5 = fmul float %in_0_read_1, %in_0_read_1, !dbg !71 ; [#uses=1 type=float] [debug line = 213:3]
  %SumOfSquare_1 = fadd float %SumOfSquare, %tmp_5, !dbg !71 ; [#uses=1 type=float] [debug line = 213:3]
  call void @llvm.dbg.value(metadata !{float %SumOfSquare_1}, i64 0, metadata !66), !dbg !71 ; [debug line = 213:3] [debug variable = SumOfSquare]
  %SumOfSquare_3 = select i1 %tmp_7, float %SumOfSquare, float %SumOfSquare_1, !dbg !72 ; [#uses=2 type=float] [debug line = 193:21@215:14]
  call void @llvm.dbg.value(metadata !{float %SumOfSquare_3}, i64 0, metadata !66), !dbg !65 ; [debug line = 210:3] [debug variable = SumOfSquare]
  call void @llvm.dbg.value(metadata !{float %SumOfSquare_3}, i64 0, metadata !77), !dbg !72 ; [debug line = 193:21@215:14] [debug variable = x]
  %halfx = fmul float %SumOfSquare_3, 5.000000e-01, !dbg !78 ; [#uses=1 type=float] [debug line = 194:24@215:14]
  call void @llvm.dbg.value(metadata !{float %halfx}, i64 0, metadata !80), !dbg !78 ; [debug line = 194:24@215:14] [debug variable = halfx]
  %y = bitcast float %SumOfSquare_3 to i32, !dbg !81 ; [#uses=1 type=i32] [debug line = 195:13@215:14]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !82), !dbg !81 ; [debug line = 195:13@215:14] [debug variable = y]
  %tmp_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %y, i32 1, i32 31), !dbg !83 ; [#uses=1 type=i31] [debug line = 198:2@215:14]
  %tmp_8 = zext i31 %tmp_i to i32, !dbg !83       ; [#uses=1 type=i32] [debug line = 198:2@215:14]
  %y_1 = sub i32 1597463007, %tmp_8, !dbg !83     ; [#uses=1 type=i32] [debug line = 198:2@215:14]
  call void @llvm.dbg.value(metadata !{i32 %y_1}, i64 0, metadata !82), !dbg !83 ; [debug line = 198:2@215:14] [debug variable = y]
  %tmp_i_4 = bitcast i32 %y_1 to float, !dbg !84  ; [#uses=3 type=float] [debug line = 199:2@215:14]
  %tmp_4_i = fmul float %halfx, %tmp_i_4, !dbg !84 ; [#uses=1 type=float] [debug line = 199:2@215:14]
  %tmp_5_i = fmul float %tmp_4_i, %tmp_i_4, !dbg !84 ; [#uses=1 type=float] [debug line = 199:2@215:14]
  %tmp_6_i = fsub float 1.500000e+00, %tmp_5_i, !dbg !84 ; [#uses=1 type=float] [debug line = 199:2@215:14]
  %recipNorm = fmul float %tmp_i_4, %tmp_6_i, !dbg !84 ; [#uses=2 type=float] [debug line = 199:2@215:14]
  call void @llvm.dbg.value(metadata !{float %recipNorm}, i64 0, metadata !85), !dbg !76 ; [debug line = 215:14] [debug variable = recipNorm]
  br label %2, !dbg !86                           ; [debug line = 216:33]

; <label>:2                                       ; preds = %3, %_ifconv4
  %in2 = phi float [ %in_2_read_1, %_ifconv4 ], [ %in2_1, %3 ] ; [#uses=3 type=float]
  %in = phi float [ %in_1_read_1, %_ifconv4 ], [ %in12_1, %3 ] ; [#uses=3 type=float]
  %i1 = phi i2 [ 1, %_ifconv4 ], [ %i_2, %3 ]     ; [#uses=3 type=i2]
  %exitcond = icmp eq i2 %i1, -1, !dbg !86        ; [#uses=1 type=i1] [debug line = 216:33]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  br i1 %exitcond, label %_ifconv6, label %3, !dbg !86 ; [debug line = 216:33]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind, !dbg !88 ; [debug line = 216:48]
  %cond = icmp eq i2 %i1, 1, !dbg !90             ; [#uses=3 type=i1] [debug line = 217:3]
  %in_load_3_phi = select i1 %cond, float %in, float %in2, !dbg !90 ; [#uses=1 type=float] [debug line = 217:3]
  %tmp_s = fmul float %in_load_3_phi, %recipNorm, !dbg !90 ; [#uses=2 type=float] [debug line = 217:3]
  %in2_1 = select i1 %cond, float %in2, float %tmp_s, !dbg !90 ; [#uses=1 type=float] [debug line = 217:3]
  %in12_1 = select i1 %cond, float %tmp_s, float %in, !dbg !90 ; [#uses=1 type=float] [debug line = 217:3]
  %i_2 = add i2 %i1, 1, !dbg !91                  ; [#uses=1 type=i2] [debug line = 216:42]
  call void @llvm.dbg.value(metadata !{i2 %i_2}, i64 0, metadata !92), !dbg !91 ; [debug line = 216:42] [debug variable = i]
  br label %2, !dbg !91                           ; [debug line = 216:42]

_ifconv6:                                         ; preds = %2
  %tmp_3 = fmul float %recipNorm, %in_0_read_1, !dbg !93 ; [#uses=1 type=float] [debug line = 220:3]
  %in_0_write_assign = select i1 %tmp_7, float 0.000000e+00, float %tmp_3, !dbg !56 ; [#uses=1 type=float] [debug line = 206:22]
  call void @llvm.dbg.value(metadata !{float %in_0_write_assign}, i64 0, metadata !94), !dbg !56 ; [debug line = 206:22] [debug variable = in[0]]
  %mrv_s = insertvalue { float, float, float } undef, float %in, 0, !dbg !95 ; [#uses=1 type={ float, float, float }] [debug line = 224:1]
  %mrv_1 = insertvalue { float, float, float } %mrv_s, float %in2, 1, !dbg !95 ; [#uses=1 type={ float, float, float }] [debug line = 224:1]
  %mrv_2 = insertvalue { float, float, float } %mrv_1, float %in_0_write_assign, 2, !dbg !95 ; [#uses=1 type={ float, float, float }] [debug line = 224:1]
  ret { float, float, float } %mrv_2, !dbg !95    ; [debug line = 224:1]
}

; [#uses=5]
define internal fastcc void @normalise([4 x float]* nocapture %in) {
  %in_addr = getelementptr [4 x float]* %in, i64 0, i64 0 ; [#uses=3 type=float*]
  br label %1, !dbg !60                           ; [debug line = 209:29]

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 1, %0 ], [ %i_1, %2 ]             ; [#uses=3 type=i3]
  %SumOfSquare = phi float [ 0.000000e+00, %0 ], [ %SumOfSquare_2, %2 ] ; [#uses=3 type=float]
  %exitcond1 = icmp eq i3 %i, -4, !dbg !60        ; [#uses=1 type=i1] [debug line = 209:29]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %_ifconv, label %2, !dbg !60 ; [debug line = 209:29]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str) nounwind, !dbg !63 ; [debug line = 209:44]
  %tmp_1 = zext i3 %i to i64, !dbg !65            ; [#uses=1 type=i64] [debug line = 210:3]
  %in_addr_1 = getelementptr [4 x float]* %in, i64 0, i64 %tmp_1, !dbg !65 ; [#uses=1 type=float*] [debug line = 210:3]
  %in_load_1 = load float* %in_addr_1, align 4, !dbg !65 ; [#uses=2 type=float] [debug line = 210:3]
  %tmp_2 = fmul float %in_load_1, %in_load_1, !dbg !65 ; [#uses=1 type=float] [debug line = 210:3]
  %SumOfSquare_2 = fadd float %SumOfSquare, %tmp_2, !dbg !65 ; [#uses=1 type=float] [debug line = 210:3]
  call void @llvm.dbg.value(metadata !{float %SumOfSquare_2}, i64 0, metadata !66), !dbg !65 ; [debug line = 210:3] [debug variable = SumOfSquare]
  %i_1 = add i3 %i, 1, !dbg !67                   ; [#uses=1 type=i3] [debug line = 209:38]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !68), !dbg !67 ; [debug line = 209:38] [debug variable = i]
  br label %1, !dbg !67                           ; [debug line = 209:38]

_ifconv:                                          ; preds = %1
  %in_load = load float* %in_addr, align 4, !dbg !70 ; [#uses=4 type=float] [debug line = 212:2]
  %in_load_to_int = bitcast float %in_load to i32 ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_12 = trunc i32 %in_load_to_int to i23      ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_12, 0                ; [#uses=1 type=i1]
  %tmp_4 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %tmp_6 = fcmp oeq float %in_load, 0.000000e+00, !dbg !70 ; [#uses=1 type=i1] [debug line = 212:2]
  %tmp_7 = and i1 %tmp_4, %tmp_6, !dbg !70        ; [#uses=1 type=i1] [debug line = 212:2]
  %tmp_5 = fmul float %in_load, %in_load, !dbg !71 ; [#uses=1 type=float] [debug line = 213:3]
  %SumOfSquare_3 = fadd float %SumOfSquare, %tmp_5, !dbg !71 ; [#uses=1 type=float] [debug line = 213:3]
  call void @llvm.dbg.value(metadata !{float %SumOfSquare_3}, i64 0, metadata !66), !dbg !71 ; [debug line = 213:3] [debug variable = SumOfSquare]
  %SumOfSquare_4 = select i1 %tmp_7, float %SumOfSquare, float %SumOfSquare_3, !dbg !72 ; [#uses=2 type=float] [debug line = 193:21@215:14]
  call void @llvm.dbg.value(metadata !{float %SumOfSquare_4}, i64 0, metadata !66), !dbg !65 ; [debug line = 210:3] [debug variable = SumOfSquare]
  call void @llvm.dbg.value(metadata !{float %SumOfSquare_4}, i64 0, metadata !77), !dbg !72 ; [debug line = 193:21@215:14] [debug variable = x]
  %halfx = fmul float %SumOfSquare_4, 5.000000e-01, !dbg !78 ; [#uses=1 type=float] [debug line = 194:24@215:14]
  call void @llvm.dbg.value(metadata !{float %halfx}, i64 0, metadata !80), !dbg !78 ; [debug line = 194:24@215:14] [debug variable = halfx]
  %y = bitcast float %SumOfSquare_4 to i32, !dbg !81 ; [#uses=1 type=i32] [debug line = 195:13@215:14]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !82), !dbg !81 ; [debug line = 195:13@215:14] [debug variable = y]
  %tmp_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %y, i32 1, i32 31), !dbg !83 ; [#uses=1 type=i31] [debug line = 198:2@215:14]
  %tmp_8 = zext i31 %tmp_i to i32, !dbg !83       ; [#uses=1 type=i32] [debug line = 198:2@215:14]
  %y_2 = sub i32 1597463007, %tmp_8, !dbg !83     ; [#uses=1 type=i32] [debug line = 198:2@215:14]
  call void @llvm.dbg.value(metadata !{i32 %y_2}, i64 0, metadata !82), !dbg !83 ; [debug line = 198:2@215:14] [debug variable = y]
  %tmp_i_6 = bitcast i32 %y_2 to float, !dbg !84  ; [#uses=3 type=float] [debug line = 199:2@215:14]
  %tmp_4_i = fmul float %halfx, %tmp_i_6, !dbg !84 ; [#uses=1 type=float] [debug line = 199:2@215:14]
  %tmp_5_i = fmul float %tmp_4_i, %tmp_i_6, !dbg !84 ; [#uses=1 type=float] [debug line = 199:2@215:14]
  %tmp_6_i = fsub float 1.500000e+00, %tmp_5_i, !dbg !84 ; [#uses=1 type=float] [debug line = 199:2@215:14]
  %recipNorm = fmul float %tmp_i_6, %tmp_6_i, !dbg !84 ; [#uses=2 type=float] [debug line = 199:2@215:14]
  call void @llvm.dbg.value(metadata !{float %recipNorm}, i64 0, metadata !85), !dbg !76 ; [debug line = 215:14] [debug variable = recipNorm]
  br label %3, !dbg !86                           ; [debug line = 216:33]

; <label>:3                                       ; preds = %4, %_ifconv
  %i1 = phi i2 [ 1, %_ifconv ], [ %i_2, %4 ]      ; [#uses=3 type=i2]
  %exitcond = icmp eq i2 %i1, -1, !dbg !86        ; [#uses=1 type=i1] [debug line = 216:33]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  br i1 %exitcond, label %_ifconv1, label %4, !dbg !86 ; [debug line = 216:33]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind, !dbg !88 ; [debug line = 216:48]
  %tmp_9 = zext i2 %i1 to i64, !dbg !90           ; [#uses=1 type=i64] [debug line = 217:3]
  %in_addr_2 = getelementptr [4 x float]* %in, i64 0, i64 %tmp_9, !dbg !90 ; [#uses=2 type=float*] [debug line = 217:3]
  %in_load_3 = load float* %in_addr_2, align 4, !dbg !90 ; [#uses=1 type=float] [debug line = 217:3]
  %tmp_s = fmul float %in_load_3, %recipNorm, !dbg !90 ; [#uses=1 type=float] [debug line = 217:3]
  store float %tmp_s, float* %in_addr_2, align 4, !dbg !90 ; [debug line = 217:3]
  %i_2 = add i2 %i1, 1, !dbg !91                  ; [#uses=1 type=i2] [debug line = 216:42]
  call void @llvm.dbg.value(metadata !{i2 %i_2}, i64 0, metadata !92), !dbg !91 ; [debug line = 216:42] [debug variable = i]
  br label %3, !dbg !91                           ; [debug line = 216:42]

_ifconv1:                                         ; preds = %3
  %in_load_2 = load float* %in_addr, align 4, !dbg !96 ; [#uses=3 type=float] [debug line = 219:2]
  %in_load_2_to_int = bitcast float %in_load_2 to i32 ; [#uses=2 type=i32]
  %tmp_10 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %in_load_2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_16 = trunc i32 %in_load_2_to_int to i23    ; [#uses=1 type=i23]
  %notlhs5 = icmp ne i8 %tmp_10, -1               ; [#uses=1 type=i1]
  %notrhs6 = icmp eq i23 %tmp_16, 0               ; [#uses=1 type=i1]
  %tmp_11 = or i1 %notrhs6, %notlhs5              ; [#uses=1 type=i1]
  %tmp_13 = fcmp oeq float %in_load_2, 0.000000e+00, !dbg !96 ; [#uses=1 type=i1] [debug line = 219:2]
  %tmp_14 = and i1 %tmp_11, %tmp_13, !dbg !96     ; [#uses=1 type=i1] [debug line = 219:2]
  %tmp_3 = fmul float %in_load_2, %recipNorm, !dbg !93 ; [#uses=1 type=float] [debug line = 220:3]
  %storemerge = select i1 %tmp_14, float 0.000000e+00, float %tmp_3 ; [#uses=1 type=float]
  store float %storemerge, float* %in_addr, align 4, !dbg !97 ; [debug line = 222:3]
  ret void, !dbg !95                              ; [debug line = 224:1]
}

; [#uses=1]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=131]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=8]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

; [#uses=12]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_8 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_8
}

; [#uses=2]
define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_9 = trunc i32 %empty to i31              ; [#uses=1 type=i31]
  ret i31 %empty_9
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=6]
define weak float @_ssdm_op_Mux.ap_auto.4float.i2(float, float, float, float, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi float [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ] ; [#uses=1 type=float]
  ret float %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

; [#uses=1]
define internal fastcc void @MadgwickAHRSupdateIM([4 x float]* nocapture %g, [4 x float]* nocapture %a) {
  call void @llvm.dbg.value(metadata !{[4 x float]* %g}, i64 0, metadata !98), !dbg !102 ; [debug line = 130:34] [debug variable = g]
  call void @llvm.dbg.value(metadata !{[4 x float]* %a}, i64 0, metadata !103), !dbg !104 ; [debug line = 130:46] [debug variable = a]
  %q_load = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !105 ; [#uses=3 type=float] [debug line = 136:2]
  %tmp_to_int = bitcast float %q_load to i32, !dbg !105 ; [#uses=1 type=i32] [debug line = 136:2]
  %tmp_neg = xor i32 %tmp_to_int, -2147483648, !dbg !105 ; [#uses=1 type=i32] [debug line = 136:2]
  %tmp = bitcast i32 %tmp_neg to float, !dbg !105 ; [#uses=1 type=float] [debug line = 136:2]
  %g_addr = getelementptr [4 x float]* %g, i64 0, i64 1, !dbg !105 ; [#uses=1 type=float*] [debug line = 136:2]
  %g_load = load float* %g_addr, align 4, !dbg !105 ; [#uses=4 type=float] [debug line = 136:2]
  %tmp_s = fmul float %g_load, %tmp, !dbg !105    ; [#uses=1 type=float] [debug line = 136:2]
  %q_load_1 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !105 ; [#uses=3 type=float] [debug line = 136:2]
  %g_addr_1 = getelementptr [4 x float]* %g, i64 0, i64 2, !dbg !105 ; [#uses=1 type=float*] [debug line = 136:2]
  %g_load_1 = load float* %g_addr_1, align 4, !dbg !105 ; [#uses=4 type=float] [debug line = 136:2]
  %tmp_1 = fmul float %q_load_1, %g_load_1, !dbg !105 ; [#uses=1 type=float] [debug line = 136:2]
  %tmp_2 = fsub float %tmp_s, %tmp_1, !dbg !105   ; [#uses=1 type=float] [debug line = 136:2]
  %q_load_2 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !105 ; [#uses=3 type=float] [debug line = 136:2]
  %g_addr_2 = getelementptr [4 x float]* %g, i64 0, i64 3, !dbg !105 ; [#uses=1 type=float*] [debug line = 136:2]
  %g_load_2 = load float* %g_addr_2, align 4, !dbg !105 ; [#uses=4 type=float] [debug line = 136:2]
  %tmp_3 = fmul float %q_load_2, %g_load_2, !dbg !105 ; [#uses=1 type=float] [debug line = 136:2]
  %tmp_4 = fsub float %tmp_2, %tmp_3, !dbg !105   ; [#uses=1 type=float] [debug line = 136:2]
  %qDot_0 = fmul float %tmp_4, 5.000000e-01, !dbg !105 ; [#uses=2 type=float] [debug line = 136:2]
  call void @llvm.dbg.value(metadata !{float %qDot_0}, i64 0, metadata !107), !dbg !105 ; [debug line = 136:2] [debug variable = qDot[0]]
  %q_load_3 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !109 ; [#uses=3 type=float] [debug line = 138:2]
  %tmp_6 = fmul float %q_load_3, %g_load, !dbg !109 ; [#uses=1 type=float] [debug line = 138:2]
  %tmp_7 = fmul float %q_load_1, %g_load_2, !dbg !109 ; [#uses=1 type=float] [debug line = 138:2]
  %tmp_8 = fadd float %tmp_6, %tmp_7, !dbg !109   ; [#uses=1 type=float] [debug line = 138:2]
  %tmp_9 = fmul float %q_load_2, %g_load_1, !dbg !109 ; [#uses=1 type=float] [debug line = 138:2]
  %tmp_5 = fsub float %tmp_8, %tmp_9, !dbg !109   ; [#uses=1 type=float] [debug line = 138:2]
  %qDot_1 = fmul float %tmp_5, 5.000000e-01, !dbg !109 ; [#uses=2 type=float] [debug line = 138:2]
  call void @llvm.dbg.value(metadata !{float %qDot_1}, i64 0, metadata !110), !dbg !109 ; [debug line = 138:2] [debug variable = qDot[1]]
  %tmp_10 = fmul float %q_load_3, %g_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 140:2]
  %tmp_11 = fmul float %q_load, %g_load_2, !dbg !111 ; [#uses=1 type=float] [debug line = 140:2]
  %tmp_12 = fsub float %tmp_10, %tmp_11, !dbg !111 ; [#uses=1 type=float] [debug line = 140:2]
  %tmp_13 = fmul float %q_load_2, %g_load, !dbg !111 ; [#uses=1 type=float] [debug line = 140:2]
  %tmp_14 = fadd float %tmp_12, %tmp_13, !dbg !111 ; [#uses=1 type=float] [debug line = 140:2]
  %qDot_2 = fmul float %tmp_14, 5.000000e-01, !dbg !111 ; [#uses=2 type=float] [debug line = 140:2]
  call void @llvm.dbg.value(metadata !{float %qDot_2}, i64 0, metadata !112), !dbg !111 ; [debug line = 140:2] [debug variable = qDot[2]]
  %tmp_15 = fmul float %q_load_3, %g_load_2, !dbg !113 ; [#uses=1 type=float] [debug line = 142:2]
  %tmp_16 = fmul float %q_load, %g_load_1, !dbg !113 ; [#uses=1 type=float] [debug line = 142:2]
  %tmp_17 = fadd float %tmp_15, %tmp_16, !dbg !113 ; [#uses=1 type=float] [debug line = 142:2]
  %tmp_18 = fmul float %q_load_1, %g_load, !dbg !113 ; [#uses=1 type=float] [debug line = 142:2]
  %tmp_19 = fsub float %tmp_17, %tmp_18, !dbg !113 ; [#uses=1 type=float] [debug line = 142:2]
  %qDot_3 = fmul float %tmp_19, 5.000000e-01, !dbg !113 ; [#uses=2 type=float] [debug line = 142:2]
  call void @llvm.dbg.value(metadata !{float %qDot_3}, i64 0, metadata !114), !dbg !113 ; [debug line = 142:2] [debug variable = qDot[3]]
  %a_addr = getelementptr [4 x float]* %a, i64 0, i64 1, !dbg !115 ; [#uses=2 type=float*] [debug line = 145:2]
  %a_load = load float* %a_addr, align 4, !dbg !115 ; [#uses=2 type=float] [debug line = 145:2]
  %a_load_to_int = bitcast float %a_load to i32   ; [#uses=2 type=i32]
  %tmp_20 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_21 = trunc i32 %a_load_to_int to i23       ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_20, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_21, 0                ; [#uses=1 type=i1]
  %tmp_22 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp_64 = fcmp oeq float %a_load, 0.000000e+00, !dbg !115 ; [#uses=1 type=i1] [debug line = 145:2]
  %tmp_65 = and i1 %tmp_22, %tmp_64, !dbg !115    ; [#uses=1 type=i1] [debug line = 145:2]
  br i1 %tmp_65, label %1, label %._crit_edge, !dbg !115 ; [debug line = 145:2]

; <label>:1                                       ; preds = %0
  %a_addr_1 = getelementptr [4 x float]* %a, i64 0, i64 2, !dbg !115 ; [#uses=1 type=float*] [debug line = 145:2]
  %a_load_1 = load float* %a_addr_1, align 4, !dbg !115 ; [#uses=2 type=float] [debug line = 145:2]
  %a_load_1_to_int = bitcast float %a_load_1 to i32 ; [#uses=2 type=i32]
  %tmp_66 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_67 = trunc i32 %a_load_1_to_int to i23     ; [#uses=1 type=i23]
  %notlhs1 = icmp ne i8 %tmp_66, -1               ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp_67, 0               ; [#uses=1 type=i1]
  %tmp_68 = or i1 %notrhs1, %notlhs1              ; [#uses=1 type=i1]
  %tmp_69 = fcmp oeq float %a_load_1, 0.000000e+00, !dbg !115 ; [#uses=1 type=i1] [debug line = 145:2]
  %tmp_70 = and i1 %tmp_68, %tmp_69, !dbg !115    ; [#uses=1 type=i1] [debug line = 145:2]
  br i1 %tmp_70, label %2, label %._crit_edge, !dbg !115 ; [debug line = 145:2]

; <label>:2                                       ; preds = %1
  %a_addr_2 = getelementptr [4 x float]* %a, i64 0, i64 3, !dbg !115 ; [#uses=1 type=float*] [debug line = 145:2]
  %a_load_2 = load float* %a_addr_2, align 4, !dbg !115 ; [#uses=2 type=float] [debug line = 145:2]
  %a_load_2_to_int = bitcast float %a_load_2 to i32 ; [#uses=2 type=i32]
  %tmp_71 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_72 = trunc i32 %a_load_2_to_int to i23     ; [#uses=1 type=i23]
  %notlhs2 = icmp ne i8 %tmp_71, -1               ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp_72, 0               ; [#uses=1 type=i1]
  %tmp_73 = or i1 %notrhs2, %notlhs2              ; [#uses=1 type=i1]
  %tmp_74 = fcmp oeq float %a_load_2, 0.000000e+00, !dbg !115 ; [#uses=1 type=i1] [debug line = 145:2]
  %tmp_75 = and i1 %tmp_73, %tmp_74, !dbg !115    ; [#uses=1 type=i1] [debug line = 145:2]
  br i1 %tmp_75, label %._crit_edge2, label %._crit_edge, !dbg !115 ; [debug line = 145:2]

._crit_edge:                                      ; preds = %2, %1, %0
  call fastcc void @normalise([4 x float]* %a), !dbg !116 ; [debug line = 148:3]
  %q_load_4 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !118 ; [#uses=4 type=float] [debug line = 151:3]
  %p_2q0 = fmul float %q_load_4, 2.000000e+00, !dbg !118 ; [#uses=2 type=float] [debug line = 151:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0}, i64 0, metadata !119), !dbg !118 ; [debug line = 151:3] [debug variable = _2q0]
  %q_load_5 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !120 ; [#uses=6 type=float] [debug line = 152:3]
  %p_2q1 = fmul float %q_load_5, 2.000000e+00, !dbg !120 ; [#uses=2 type=float] [debug line = 152:3]
  call void @llvm.dbg.value(metadata !{float %p_2q1}, i64 0, metadata !121), !dbg !120 ; [debug line = 152:3] [debug variable = _2q1]
  %q_load_6 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !122 ; [#uses=6 type=float] [debug line = 153:3]
  %p_2q2 = fmul float %q_load_6, 2.000000e+00, !dbg !122 ; [#uses=2 type=float] [debug line = 153:3]
  call void @llvm.dbg.value(metadata !{float %p_2q2}, i64 0, metadata !123), !dbg !122 ; [debug line = 153:3] [debug variable = _2q2]
  %q_load_7 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !124 ; [#uses=5 type=float] [debug line = 154:3]
  %p_2q3 = fmul float %q_load_7, 2.000000e+00, !dbg !124 ; [#uses=2 type=float] [debug line = 154:3]
  call void @llvm.dbg.value(metadata !{float %p_2q3}, i64 0, metadata !125), !dbg !124 ; [debug line = 154:3] [debug variable = _2q3]
  %p_4q0 = fmul float %q_load_4, 4.000000e+00, !dbg !126 ; [#uses=2 type=float] [debug line = 155:3]
  call void @llvm.dbg.value(metadata !{float %p_4q0}, i64 0, metadata !127), !dbg !126 ; [debug line = 155:3] [debug variable = _4q0]
  %p_4q1 = fmul float %q_load_5, 4.000000e+00, !dbg !128 ; [#uses=3 type=float] [debug line = 156:3]
  call void @llvm.dbg.value(metadata !{float %p_4q1}, i64 0, metadata !129), !dbg !128 ; [debug line = 156:3] [debug variable = _4q1]
  %p_4q2 = fmul float %q_load_6, 4.000000e+00, !dbg !130 ; [#uses=3 type=float] [debug line = 157:3]
  call void @llvm.dbg.value(metadata !{float %p_4q2}, i64 0, metadata !131), !dbg !130 ; [debug line = 157:3] [debug variable = _4q2]
  %p_8q1 = fmul float %q_load_5, 8.000000e+00, !dbg !132 ; [#uses=2 type=float] [debug line = 158:3]
  call void @llvm.dbg.value(metadata !{float %p_8q1}, i64 0, metadata !133), !dbg !132 ; [debug line = 158:3] [debug variable = _8q1]
  %p_8q2 = fmul float %q_load_6, 8.000000e+00, !dbg !134 ; [#uses=2 type=float] [debug line = 159:3]
  call void @llvm.dbg.value(metadata !{float %p_8q2}, i64 0, metadata !135), !dbg !134 ; [debug line = 159:3] [debug variable = _8q2]
  %q0q0 = fmul float %q_load_4, %q_load_4, !dbg !136 ; [#uses=1 type=float] [debug line = 160:3]
  call void @llvm.dbg.value(metadata !{float %q0q0}, i64 0, metadata !137), !dbg !136 ; [debug line = 160:3] [debug variable = q0q0]
  %q1q1 = fmul float %q_load_5, %q_load_5, !dbg !138 ; [#uses=4 type=float] [debug line = 161:3]
  call void @llvm.dbg.value(metadata !{float %q1q1}, i64 0, metadata !139), !dbg !138 ; [debug line = 161:3] [debug variable = q1q1]
  %q2q2 = fmul float %q_load_6, %q_load_6, !dbg !140 ; [#uses=4 type=float] [debug line = 162:3]
  call void @llvm.dbg.value(metadata !{float %q2q2}, i64 0, metadata !141), !dbg !140 ; [debug line = 162:3] [debug variable = q2q2]
  %q3q3 = fmul float %q_load_7, %q_load_7, !dbg !142 ; [#uses=2 type=float] [debug line = 163:3]
  call void @llvm.dbg.value(metadata !{float %q3q3}, i64 0, metadata !143), !dbg !142 ; [debug line = 163:3] [debug variable = q3q3]
  %tmp_23 = fmul float %p_4q0, %q2q2, !dbg !144   ; [#uses=1 type=float] [debug line = 167:3]
  %a_load_3 = load float* %a_addr, align 4, !dbg !144 ; [#uses=4 type=float] [debug line = 167:3]
  %tmp_24 = fmul float %p_2q2, %a_load_3, !dbg !144 ; [#uses=1 type=float] [debug line = 167:3]
  %tmp_25 = fadd float %tmp_23, %tmp_24, !dbg !144 ; [#uses=1 type=float] [debug line = 167:3]
  %tmp_26 = fmul float %p_4q0, %q1q1, !dbg !144   ; [#uses=1 type=float] [debug line = 167:3]
  %tmp_27 = fadd float %tmp_25, %tmp_26, !dbg !144 ; [#uses=1 type=float] [debug line = 167:3]
  %a_addr_3 = getelementptr [4 x float]* %a, i64 0, i64 2, !dbg !144 ; [#uses=1 type=float*] [debug line = 167:3]
  %a_load_4 = load float* %a_addr_3, align 4, !dbg !144 ; [#uses=4 type=float] [debug line = 167:3]
  %tmp_28 = fmul float %p_2q1, %a_load_4, !dbg !144 ; [#uses=1 type=float] [debug line = 167:3]
  %s_0 = fsub float %tmp_27, %tmp_28, !dbg !144   ; [#uses=1 type=float] [debug line = 167:3]
  call void @llvm.dbg.value(metadata !{float %s_0}, i64 0, metadata !145), !dbg !144 ; [debug line = 167:3] [debug variable = s[0]]
  %tmp_29 = fmul float %p_4q1, %q3q3, !dbg !147   ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_30 = fmul float %p_2q3, %a_load_3, !dbg !147 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_31 = fsub float %tmp_29, %tmp_30, !dbg !147 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_32 = fmul float %q0q0, 4.000000e+00, !dbg !147 ; [#uses=2 type=float] [debug line = 169:3]
  %tmp_33 = fmul float %tmp_32, %q_load_5, !dbg !147 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_34 = fadd float %tmp_31, %tmp_33, !dbg !147 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_35 = fmul float %p_2q0, %a_load_4, !dbg !147 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_36 = fsub float %tmp_34, %tmp_35, !dbg !147 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_37 = fsub float %tmp_36, %p_4q1, !dbg !147 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_38 = fmul float %p_8q1, %q1q1, !dbg !147   ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_39 = fadd float %tmp_37, %tmp_38, !dbg !147 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_40 = fmul float %p_8q1, %q2q2, !dbg !147   ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_41 = fadd float %tmp_39, %tmp_40, !dbg !147 ; [#uses=1 type=float] [debug line = 169:3]
  %a_addr_4 = getelementptr [4 x float]* %a, i64 0, i64 3, !dbg !147 ; [#uses=1 type=float*] [debug line = 169:3]
  %a_load_5 = load float* %a_addr_4, align 4, !dbg !147 ; [#uses=2 type=float] [debug line = 169:3]
  %tmp_42 = fmul float %p_4q1, %a_load_5, !dbg !147 ; [#uses=1 type=float] [debug line = 169:3]
  %s_1 = fadd float %tmp_41, %tmp_42, !dbg !147   ; [#uses=1 type=float] [debug line = 169:3]
  call void @llvm.dbg.value(metadata !{float %s_1}, i64 0, metadata !148), !dbg !147 ; [debug line = 169:3] [debug variable = s[1]]
  %tmp_43 = fmul float %tmp_32, %q_load_6, !dbg !149 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_44 = fmul float %p_2q0, %a_load_3, !dbg !149 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_45 = fadd float %tmp_43, %tmp_44, !dbg !149 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_46 = fmul float %p_4q2, %q3q3, !dbg !149   ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_47 = fadd float %tmp_45, %tmp_46, !dbg !149 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_48 = fmul float %p_2q3, %a_load_4, !dbg !149 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_49 = fsub float %tmp_47, %tmp_48, !dbg !149 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_50 = fsub float %tmp_49, %p_4q2, !dbg !149 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_51 = fmul float %p_8q2, %q1q1, !dbg !149   ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_52 = fadd float %tmp_50, %tmp_51, !dbg !149 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_53 = fmul float %p_8q2, %q2q2, !dbg !149   ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_54 = fadd float %tmp_52, %tmp_53, !dbg !149 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_55 = fmul float %p_4q2, %a_load_5, !dbg !149 ; [#uses=1 type=float] [debug line = 171:3]
  %s_2 = fadd float %tmp_54, %tmp_55, !dbg !149   ; [#uses=1 type=float] [debug line = 171:3]
  call void @llvm.dbg.value(metadata !{float %s_2}, i64 0, metadata !150), !dbg !149 ; [debug line = 171:3] [debug variable = s[2]]
  %tmp_56 = fmul float %q1q1, 4.000000e+00, !dbg !151 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_57 = fmul float %tmp_56, %q_load_7, !dbg !151 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_58 = fmul float %p_2q1, %a_load_3, !dbg !151 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_59 = fsub float %tmp_57, %tmp_58, !dbg !151 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_60 = fmul float %q2q2, 4.000000e+00, !dbg !151 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_61 = fmul float %tmp_60, %q_load_7, !dbg !151 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_62 = fadd float %tmp_59, %tmp_61, !dbg !151 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_63 = fmul float %p_2q2, %a_load_4, !dbg !151 ; [#uses=1 type=float] [debug line = 173:3]
  %s_3 = fsub float %tmp_62, %tmp_63, !dbg !151   ; [#uses=2 type=float] [debug line = 173:3]
  call void @llvm.dbg.value(metadata !{float %s_3}, i64 0, metadata !152), !dbg !151 ; [debug line = 173:3] [debug variable = s[3]]
  %call_ret = call fastcc { float, float, float } @normalise.1(float %s_0, float %s_1, float %s_2, float %s_3), !dbg !153 ; [#uses=3 type={ float, float, float }] [debug line = 176:3]
  %s_2_1 = extractvalue { float, float, float } %call_ret, 1, !dbg !153 ; [#uses=1 type=float] [debug line = 176:3]
  %s_1_1 = extractvalue { float, float, float } %call_ret, 0, !dbg !153 ; [#uses=1 type=float] [debug line = 176:3]
  %s_0_1 = extractvalue { float, float, float } %call_ret, 2, !dbg !153 ; [#uses=1 type=float] [debug line = 176:3]
  call void @llvm.dbg.value(metadata !{float %s_0_1}, i64 0, metadata !145), !dbg !153 ; [debug line = 176:3] [debug variable = s[0]]
  call void @llvm.dbg.value(metadata !{float %s_1_1}, i64 0, metadata !148), !dbg !153 ; [debug line = 176:3] [debug variable = s[1]]
  call void @llvm.dbg.value(metadata !{float %s_2_1}, i64 0, metadata !150), !dbg !153 ; [debug line = 176:3] [debug variable = s[2]]
  %beta_load = load float* @beta, align 4, !dbg !154 ; [#uses=1 type=float] [debug line = 179:3]
  call void @llvm.dbg.value(metadata !{float %beta_load}, i64 0, metadata !155), !dbg !159 ; [debug line = 229:40@179:3] [debug variable = beta]
  br label %3, !dbg !160                          ; [debug line = 230:35@179:3]

; <label>:3                                       ; preds = %_ifconv, %._crit_edge
  %qDot_3_3 = phi float [ %qDot_0, %._crit_edge ], [ %qDot_3_4, %_ifconv ] ; [#uses=3 type=float]
  %qDot_3_5 = phi float [ %qDot_1, %._crit_edge ], [ %qDot_3_7, %_ifconv ] ; [#uses=4 type=float]
  %qDot_2_2 = phi float [ %qDot_2, %._crit_edge ], [ %qDot_3_10, %_ifconv ] ; [#uses=5 type=float]
  %qDot_31 = phi float [ %qDot_3, %._crit_edge ], [ %qDot_3_13, %_ifconv ] ; [#uses=5 type=float]
  %i_i = phi i3 [ 0, %._crit_edge ], [ %i, %_ifconv ] ; [#uses=3 type=i3]
  %exitcond_i = icmp eq i3 %i_i, -4, !dbg !160    ; [#uses=1 type=i1] [debug line = 230:35@179:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i = add i3 %i_i, 1, !dbg !163                  ; [#uses=1 type=i3] [debug line = 230:44@179:3]
  br i1 %exitcond_i, label %._crit_edge2.loopexit, label %_ifconv, !dbg !160 ; [debug line = 230:35@179:3]

_ifconv:                                          ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str2) nounwind, !dbg !164 ; [debug line = 230:50@179:3]
  %tmp_79 = trunc i3 %i_i to i2                   ; [#uses=5 type=i2]
  %tmp_76 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %s_0_1, float %s_1_1, float %s_2_1, float %s_3, i2 %tmp_79) ; [#uses=1 type=float]
  %tmp_i = fmul float %tmp_76, %beta_load, !dbg !166 ; [#uses=1 type=float] [debug line = 231:3@179:3]
  %tmp_77 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %qDot_3_3, float %qDot_3_5, float %qDot_2_2, float %qDot_31, i2 %tmp_79) ; [#uses=1 type=float]
  %qDot_3_14 = fsub float %tmp_77, %tmp_i, !dbg !166 ; [#uses=4 type=float] [debug line = 231:3@179:3]
  call void @llvm.dbg.value(metadata !{float %qDot_3_14}, i64 0, metadata !114), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[3]]
  call void @llvm.dbg.value(metadata !{float %qDot_3_14}, i64 0, metadata !107), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[0]]
  call void @llvm.dbg.value(metadata !{float %qDot_3_14}, i64 0, metadata !110), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[1]]
  call void @llvm.dbg.value(metadata !{float %qDot_3_14}, i64 0, metadata !112), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[2]]
  call void @llvm.dbg.value(metadata !{float %qDot_3_3}, i64 0, metadata !114), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[3]]
  %sel_tmp8 = icmp eq i2 %tmp_79, 0               ; [#uses=4 type=i1]
  %qDot_3_4 = select i1 %sel_tmp8, float %qDot_3_14, float %qDot_3_3 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_4}, i64 0, metadata !114), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[3]]
  call void @llvm.dbg.value(metadata !{float %qDot_3_5}, i64 0, metadata !114), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[3]]
  %sel_tmp = icmp eq i2 %tmp_79, 1                ; [#uses=3 type=i1]
  %qDot_3_6 = select i1 %sel_tmp, float %qDot_3_14, float %qDot_3_5 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_6}, i64 0, metadata !114), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[3]]
  %qDot_3_7 = select i1 %sel_tmp8, float %qDot_3_5, float %qDot_3_6 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_7}, i64 0, metadata !114), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[3]]
  %sel_tmp2 = icmp eq i2 %tmp_79, -2              ; [#uses=2 type=i1]
  %qDot_3_8 = select i1 %sel_tmp2, float %qDot_3_14, float %qDot_2_2 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_8}, i64 0, metadata !114), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[3]]
  %qDot_3_9 = select i1 %sel_tmp, float %qDot_2_2, float %qDot_3_8 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_9}, i64 0, metadata !114), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[3]]
  %qDot_3_10 = select i1 %sel_tmp8, float %qDot_2_2, float %qDot_3_9 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_10}, i64 0, metadata !114), !dbg !166 ; [debug line = 231:3@179:3] [debug variable = qDot[3]]
  %qDot_3_11 = select i1 %sel_tmp2, float %qDot_31, float %qDot_3_14 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_11}, i64 0, metadata !114), !dbg !113 ; [debug line = 142:2] [debug variable = qDot[3]]
  %qDot_3_12 = select i1 %sel_tmp, float %qDot_31, float %qDot_3_11 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_12}, i64 0, metadata !114), !dbg !113 ; [debug line = 142:2] [debug variable = qDot[3]]
  %qDot_3_13 = select i1 %sel_tmp8, float %qDot_31, float %qDot_3_12 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_13}, i64 0, metadata !114), !dbg !113 ; [debug line = 142:2] [debug variable = qDot[3]]
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !167), !dbg !163 ; [debug line = 230:44@179:3] [debug variable = i]
  br label %3, !dbg !163                          ; [debug line = 230:44@179:3]

._crit_edge2.loopexit:                            ; preds = %3
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %._crit_edge2.loopexit, %2
  %qDot_0_s = phi float [ %qDot_0, %2 ], [ %qDot_3_3, %._crit_edge2.loopexit ] ; [#uses=1 type=float]
  %qDot_1_2 = phi float [ %qDot_1, %2 ], [ %qDot_3_5, %._crit_edge2.loopexit ] ; [#uses=1 type=float]
  %qDot_2_2_2 = phi float [ %qDot_2, %2 ], [ %qDot_2_2, %._crit_edge2.loopexit ] ; [#uses=1 type=float]
  %qDot_3_2 = phi float [ %qDot_3, %2 ], [ %qDot_31, %._crit_edge2.loopexit ] ; [#uses=1 type=float]
  br label %4, !dbg !168                          ; [debug line = 239:36@183:2]

; <label>:4                                       ; preds = %5, %._crit_edge2
  %i_i1 = phi i3 [ 0, %._crit_edge2 ], [ %i_3, %5 ] ; [#uses=4 type=i3]
  %exitcond_i1 = icmp eq i3 %i_i1, -4, !dbg !168  ; [#uses=1 type=i1] [debug line = 239:36@183:2]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_3 = add i3 %i_i1, 1, !dbg !173               ; [#uses=1 type=i3] [debug line = 239:45@183:2]
  br i1 %exitcond_i1, label %integrateQdot.exit, label %5, !dbg !168 ; [debug line = 239:36@183:2]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str3) nounwind, !dbg !174 ; [debug line = 239:51@183:2]
  %tmp_i1 = zext i3 %i_i1 to i64, !dbg !176       ; [#uses=1 type=i64] [debug line = 240:3@183:2]
  %tmp_80 = trunc i3 %i_i1 to i2                  ; [#uses=1 type=i2]
  %tmp_78 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %qDot_0_s, float %qDot_1_2, float %qDot_2_2_2, float %qDot_3_2, i2 %tmp_80) ; [#uses=1 type=float]
  %tmp_i1_11 = fmul float %tmp_78, 1.953125e-03, !dbg !176 ; [#uses=1 type=float] [debug line = 240:3@183:2]
  %q_addr = getelementptr [4 x float]* @q, i64 0, i64 %tmp_i1, !dbg !176 ; [#uses=2 type=float*] [debug line = 240:3@183:2]
  %q_load_8 = load float* %q_addr, align 4, !dbg !176 ; [#uses=1 type=float] [debug line = 240:3@183:2]
  %tmp_8_i = fadd float %q_load_8, %tmp_i1_11, !dbg !176 ; [#uses=1 type=float] [debug line = 240:3@183:2]
  store float %tmp_8_i, float* %q_addr, align 4, !dbg !176 ; [debug line = 240:3@183:2]
  call void @llvm.dbg.value(metadata !{i3 %i_3}, i64 0, metadata !177), !dbg !173 ; [debug line = 239:45@183:2] [debug variable = i]
  br label %4, !dbg !173                          ; [debug line = 239:45@183:2]

integrateQdot.exit:                               ; preds = %4
  call fastcc void @normalise([4 x float]* @q), !dbg !178 ; [debug line = 186:2]
  ret void, !dbg !179                             ; [debug line = 187:1]
}

; [#uses=0]
define void @MadgwickAHRSupdate([4 x float]* %g, [4 x float]* %a, [4 x float]* %m) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([4 x float]* %g) nounwind, !map !180
  call void (...)* @_ssdm_op_SpecBitsMap([4 x float]* %a) nounwind, !map !184
  call void (...)* @_ssdm_op_SpecBitsMap([4 x float]* %m) nounwind, !map !188
  %m_addr = getelementptr [4 x float]* %m, i64 0, i64 0 ; [#uses=1 type=float*]
  %a_addr = getelementptr [4 x float]* %a, i64 0, i64 0 ; [#uses=1 type=float*]
  %g_addr = getelementptr [4 x float]* %g, i64 0, i64 0 ; [#uses=1 type=float*]
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @MadgwickAHRSupdate_s) nounwind
  call void @llvm.dbg.value(metadata !{[4 x float]* %g}, i64 0, metadata !192), !dbg !196 ; [debug line = 36:31] [debug variable = g]
  call void @llvm.dbg.value(metadata !{[4 x float]* %a}, i64 0, metadata !197), !dbg !198 ; [debug line = 36:43] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[4 x float]* %m}, i64 0, metadata !199), !dbg !200 ; [debug line = 36:55] [debug variable = m]
  store float 0.000000e+00, float* %g_addr, align 4, !dbg !201 ; [debug line = 37:2]
  store float 0.000000e+00, float* %a_addr, align 4, !dbg !203 ; [debug line = 38:2]
  store float 0.000000e+00, float* %m_addr, align 4, !dbg !204 ; [debug line = 39:2]
  %m_addr_1 = getelementptr [4 x float]* %m, i64 0, i64 1, !dbg !205 ; [#uses=2 type=float*] [debug line = 46:2]
  %m_load = load float* %m_addr_1, align 4, !dbg !205 ; [#uses=2 type=float] [debug line = 46:2]
  %m_load_to_int = bitcast float %m_load to i32   ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_86 = trunc i32 %m_load_to_int to i23       ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_86, 0                ; [#uses=1 type=i1]
  %tmp_87 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp_88 = fcmp oeq float %m_load, 0.000000e+00, !dbg !205 ; [#uses=1 type=i1] [debug line = 46:2]
  %tmp_232 = and i1 %tmp_87, %tmp_88, !dbg !205   ; [#uses=1 type=i1] [debug line = 46:2]
  br i1 %tmp_232, label %1, label %._crit_edge, !dbg !205 ; [debug line = 46:2]

; <label>:1                                       ; preds = %0
  %m_addr_2 = getelementptr [4 x float]* %m, i64 0, i64 2, !dbg !205 ; [#uses=1 type=float*] [debug line = 46:2]
  %m_load_1 = load float* %m_addr_2, align 4, !dbg !205 ; [#uses=2 type=float] [debug line = 46:2]
  %m_load_1_to_int = bitcast float %m_load_1 to i32 ; [#uses=2 type=i32]
  %tmp_233 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_load_1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_234 = trunc i32 %m_load_1_to_int to i23    ; [#uses=1 type=i23]
  %notlhs3 = icmp ne i8 %tmp_233, -1              ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp_234, 0              ; [#uses=1 type=i1]
  %tmp_235 = or i1 %notrhs3, %notlhs3             ; [#uses=1 type=i1]
  %tmp_236 = fcmp oeq float %m_load_1, 0.000000e+00, !dbg !205 ; [#uses=1 type=i1] [debug line = 46:2]
  %tmp_237 = and i1 %tmp_235, %tmp_236, !dbg !205 ; [#uses=1 type=i1] [debug line = 46:2]
  br i1 %tmp_237, label %2, label %._crit_edge, !dbg !205 ; [debug line = 46:2]

; <label>:2                                       ; preds = %1
  %m_addr_3 = getelementptr [4 x float]* %m, i64 0, i64 3, !dbg !205 ; [#uses=1 type=float*] [debug line = 46:2]
  %m_load_2 = load float* %m_addr_3, align 4, !dbg !205 ; [#uses=2 type=float] [debug line = 46:2]
  %m_load_2_to_int = bitcast float %m_load_2 to i32 ; [#uses=2 type=i32]
  %tmp_238 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_load_2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_239 = trunc i32 %m_load_2_to_int to i23    ; [#uses=1 type=i23]
  %notlhs4 = icmp ne i8 %tmp_238, -1              ; [#uses=1 type=i1]
  %notrhs4 = icmp eq i23 %tmp_239, 0              ; [#uses=1 type=i1]
  %tmp_240 = or i1 %notrhs4, %notlhs4             ; [#uses=1 type=i1]
  %tmp_241 = fcmp oeq float %m_load_2, 0.000000e+00, !dbg !205 ; [#uses=1 type=i1] [debug line = 46:2]
  %tmp_242 = and i1 %tmp_240, %tmp_241, !dbg !205 ; [#uses=1 type=i1] [debug line = 46:2]
  br i1 %tmp_242, label %3, label %._crit_edge, !dbg !205 ; [debug line = 46:2]

; <label>:3                                       ; preds = %2
  call fastcc void @MadgwickAHRSupdateIM([4 x float]* %g, [4 x float]* %a) nounwind, !dbg !206 ; [debug line = 47:3]
  br label %9, !dbg !208                          ; [debug line = 48:3]

._crit_edge:                                      ; preds = %2, %1, %0
  %q_load = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !209 ; [#uses=4 type=float] [debug line = 52:2]
  %tmp_82_to_int = bitcast float %q_load to i32, !dbg !209 ; [#uses=1 type=i32] [debug line = 52:2]
  %tmp_82_neg = xor i32 %tmp_82_to_int, -2147483648, !dbg !209 ; [#uses=1 type=i32] [debug line = 52:2]
  %tmp_s = bitcast i32 %tmp_82_neg to float, !dbg !209 ; [#uses=1 type=float] [debug line = 52:2]
  %g_addr_3 = getelementptr [4 x float]* %g, i64 0, i64 1, !dbg !209 ; [#uses=1 type=float*] [debug line = 52:2]
  %g_load = load float* %g_addr_3, align 4, !dbg !209 ; [#uses=4 type=float] [debug line = 52:2]
  %tmp_64 = fmul float %g_load, %tmp_s, !dbg !209 ; [#uses=1 type=float] [debug line = 52:2]
  %q_load_8 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !209 ; [#uses=3 type=float] [debug line = 52:2]
  %g_addr_4 = getelementptr [4 x float]* %g, i64 0, i64 2, !dbg !209 ; [#uses=1 type=float*] [debug line = 52:2]
  %g_load_3 = load float* %g_addr_4, align 4, !dbg !209 ; [#uses=4 type=float] [debug line = 52:2]
  %tmp_65 = fmul float %q_load_8, %g_load_3, !dbg !209 ; [#uses=1 type=float] [debug line = 52:2]
  %tmp_66 = fsub float %tmp_64, %tmp_65, !dbg !209 ; [#uses=1 type=float] [debug line = 52:2]
  %q_load_9 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !209 ; [#uses=3 type=float] [debug line = 52:2]
  %g_addr_5 = getelementptr [4 x float]* %g, i64 0, i64 3, !dbg !209 ; [#uses=1 type=float*] [debug line = 52:2]
  %g_load_4 = load float* %g_addr_5, align 4, !dbg !209 ; [#uses=4 type=float] [debug line = 52:2]
  %tmp_67 = fmul float %q_load_9, %g_load_4, !dbg !209 ; [#uses=1 type=float] [debug line = 52:2]
  %tmp_68 = fsub float %tmp_66, %tmp_67, !dbg !209 ; [#uses=1 type=float] [debug line = 52:2]
  %qDot_0 = fmul float %tmp_68, 5.000000e-01, !dbg !209 ; [#uses=2 type=float] [debug line = 52:2]
  call void @llvm.dbg.value(metadata !{float %qDot_0}, i64 0, metadata !210), !dbg !209 ; [debug line = 52:2] [debug variable = qDot[0]]
  %tmp_69 = fmul float %q_load, %g_load, !dbg !212 ; [#uses=1 type=float] [debug line = 54:2]
  %tmp_70 = fmul float %q_load_8, %g_load_4, !dbg !212 ; [#uses=1 type=float] [debug line = 54:2]
  %tmp_71 = fadd float %tmp_69, %tmp_70, !dbg !212 ; [#uses=1 type=float] [debug line = 54:2]
  %tmp_72 = fmul float %q_load_9, %g_load_3, !dbg !212 ; [#uses=1 type=float] [debug line = 54:2]
  %tmp_73 = fsub float %tmp_71, %tmp_72, !dbg !212 ; [#uses=1 type=float] [debug line = 54:2]
  %qDot_1 = fmul float %tmp_73, 5.000000e-01, !dbg !212 ; [#uses=2 type=float] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{float %qDot_1}, i64 0, metadata !213), !dbg !212 ; [debug line = 54:2] [debug variable = qDot[1]]
  %tmp_74 = fmul float %q_load, %g_load_3, !dbg !214 ; [#uses=1 type=float] [debug line = 56:2]
  %q_load_10 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !214 ; [#uses=2 type=float] [debug line = 56:2]
  %tmp_75 = fmul float %q_load_10, %g_load_4, !dbg !214 ; [#uses=1 type=float] [debug line = 56:2]
  %tmp_76 = fsub float %tmp_74, %tmp_75, !dbg !214 ; [#uses=1 type=float] [debug line = 56:2]
  %tmp_77 = fmul float %q_load_9, %g_load, !dbg !214 ; [#uses=1 type=float] [debug line = 56:2]
  %tmp_78 = fadd float %tmp_76, %tmp_77, !dbg !214 ; [#uses=1 type=float] [debug line = 56:2]
  %qDot_2 = fmul float %tmp_78, 5.000000e-01, !dbg !214 ; [#uses=2 type=float] [debug line = 56:2]
  call void @llvm.dbg.value(metadata !{float %qDot_2}, i64 0, metadata !215), !dbg !214 ; [debug line = 56:2] [debug variable = qDot[2]]
  %tmp_79 = fmul float %q_load, %g_load_4, !dbg !216 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_80 = fmul float %q_load_10, %g_load_3, !dbg !216 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_81 = fadd float %tmp_79, %tmp_80, !dbg !216 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_82 = fmul float %q_load_8, %g_load, !dbg !216 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_83 = fsub float %tmp_81, %tmp_82, !dbg !216 ; [#uses=1 type=float] [debug line = 58:2]
  %qDot_3_2 = fmul float %tmp_83, 5.000000e-01, !dbg !216 ; [#uses=2 type=float] [debug line = 58:2]
  call void @llvm.dbg.value(metadata !{float %qDot_3_2}, i64 0, metadata !217), !dbg !216 ; [debug line = 58:2] [debug variable = qDot[3]]
  %a_addr_5 = getelementptr [4 x float]* %a, i64 0, i64 1, !dbg !218 ; [#uses=2 type=float*] [debug line = 62:2]
  %a_load = load float* %a_addr_5, align 4, !dbg !218 ; [#uses=2 type=float] [debug line = 62:2]
  %a_load_to_int = bitcast float %a_load to i32   ; [#uses=2 type=i32]
  %tmp_243 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_244 = trunc i32 %a_load_to_int to i23      ; [#uses=1 type=i23]
  %notlhs5 = icmp ne i8 %tmp_243, -1              ; [#uses=1 type=i1]
  %notrhs5 = icmp eq i23 %tmp_244, 0              ; [#uses=1 type=i1]
  %tmp_245 = or i1 %notrhs5, %notlhs5             ; [#uses=1 type=i1]
  %tmp_246 = fcmp oeq float %a_load, 0.000000e+00, !dbg !218 ; [#uses=1 type=i1] [debug line = 62:2]
  %tmp_247 = and i1 %tmp_245, %tmp_246, !dbg !218 ; [#uses=1 type=i1] [debug line = 62:2]
  br i1 %tmp_247, label %4, label %._crit_edge3, !dbg !218 ; [debug line = 62:2]

; <label>:4                                       ; preds = %._crit_edge
  %a_addr_6 = getelementptr [4 x float]* %a, i64 0, i64 2, !dbg !218 ; [#uses=1 type=float*] [debug line = 62:2]
  %a_load_6 = load float* %a_addr_6, align 4, !dbg !218 ; [#uses=2 type=float] [debug line = 62:2]
  %a_load_6_to_int = bitcast float %a_load_6 to i32 ; [#uses=2 type=i32]
  %tmp_248 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_6_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_249 = trunc i32 %a_load_6_to_int to i23    ; [#uses=1 type=i23]
  %notlhs6 = icmp ne i8 %tmp_248, -1              ; [#uses=1 type=i1]
  %notrhs6 = icmp eq i23 %tmp_249, 0              ; [#uses=1 type=i1]
  %tmp_250 = or i1 %notrhs6, %notlhs6             ; [#uses=1 type=i1]
  %tmp_251 = fcmp oeq float %a_load_6, 0.000000e+00, !dbg !218 ; [#uses=1 type=i1] [debug line = 62:2]
  %tmp_252 = and i1 %tmp_250, %tmp_251, !dbg !218 ; [#uses=1 type=i1] [debug line = 62:2]
  br i1 %tmp_252, label %5, label %._crit_edge3, !dbg !218 ; [debug line = 62:2]

; <label>:5                                       ; preds = %4
  %a_addr_7 = getelementptr [4 x float]* %a, i64 0, i64 3, !dbg !218 ; [#uses=1 type=float*] [debug line = 62:2]
  %a_load_7 = load float* %a_addr_7, align 4, !dbg !218 ; [#uses=2 type=float] [debug line = 62:2]
  %a_load_7_to_int = bitcast float %a_load_7 to i32 ; [#uses=2 type=i32]
  %tmp_253 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_7_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_254 = trunc i32 %a_load_7_to_int to i23    ; [#uses=1 type=i23]
  %notlhs7 = icmp ne i8 %tmp_253, -1              ; [#uses=1 type=i1]
  %notrhs7 = icmp eq i23 %tmp_254, 0              ; [#uses=1 type=i1]
  %tmp_255 = or i1 %notrhs7, %notlhs7             ; [#uses=1 type=i1]
  %tmp_256 = fcmp oeq float %a_load_7, 0.000000e+00, !dbg !218 ; [#uses=1 type=i1] [debug line = 62:2]
  %tmp_257 = and i1 %tmp_255, %tmp_256, !dbg !218 ; [#uses=1 type=i1] [debug line = 62:2]
  br i1 %tmp_257, label %._crit_edge5, label %._crit_edge3, !dbg !218 ; [debug line = 62:2]

._crit_edge3:                                     ; preds = %5, %4, %._crit_edge
  call fastcc void @normalise([4 x float]* %a) nounwind, !dbg !219 ; [debug line = 65:3]
  call fastcc void @normalise([4 x float]* %m) nounwind, !dbg !221 ; [debug line = 68:3]
  %q_load_11 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !222 ; [#uses=9 type=float] [debug line = 71:3]
  %p_2q0 = fmul float %q_load_11, 2.000000e+00, !dbg !222 ; [#uses=6 type=float] [debug line = 71:3]
  %m_load_3 = load float* %m_addr_1, align 4, !dbg !222 ; [#uses=7 type=float] [debug line = 71:3]
  %p_2q0mx = fmul float %p_2q0, %m_load_3, !dbg !222 ; [#uses=2 type=float] [debug line = 71:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0mx}, i64 0, metadata !223), !dbg !222 ; [debug line = 71:3] [debug variable = _2q0mx]
  %m_addr_4 = getelementptr [4 x float]* %m, i64 0, i64 2, !dbg !224 ; [#uses=1 type=float*] [debug line = 72:3]
  %m_load_4 = load float* %m_addr_4, align 4, !dbg !224 ; [#uses=8 type=float] [debug line = 72:3]
  %p_2q0my = fmul float %p_2q0, %m_load_4, !dbg !224 ; [#uses=2 type=float] [debug line = 72:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0my}, i64 0, metadata !225), !dbg !224 ; [debug line = 72:3] [debug variable = _2q0my]
  %m_addr_5 = getelementptr [4 x float]* %m, i64 0, i64 3, !dbg !226 ; [#uses=1 type=float*] [debug line = 73:3]
  %m_load_5 = load float* %m_addr_5, align 4, !dbg !226 ; [#uses=8 type=float] [debug line = 73:3]
  %p_2q0mz = fmul float %p_2q0, %m_load_5, !dbg !226 ; [#uses=2 type=float] [debug line = 73:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0mz}, i64 0, metadata !227), !dbg !226 ; [debug line = 73:3] [debug variable = _2q0mz]
  %q_load_12 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !228 ; [#uses=12 type=float] [debug line = 74:3]
  %p_2q1 = fmul float %q_load_12, 2.000000e+00, !dbg !228 ; [#uses=5 type=float] [debug line = 74:3]
  %p_2q1mx = fmul float %p_2q1, %m_load_3, !dbg !228 ; [#uses=2 type=float] [debug line = 74:3]
  call void @llvm.dbg.value(metadata !{float %p_2q1mx}, i64 0, metadata !229), !dbg !228 ; [debug line = 74:3] [debug variable = _2q1mx]
  call void @llvm.dbg.value(metadata !{float %p_2q0}, i64 0, metadata !230), !dbg !231 ; [debug line = 75:3] [debug variable = _2q0]
  call void @llvm.dbg.value(metadata !{float %p_2q1}, i64 0, metadata !232), !dbg !233 ; [debug line = 76:3] [debug variable = _2q1]
  %q_load_13 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !234 ; [#uses=16 type=float] [debug line = 77:3]
  %p_2q2 = fmul float %q_load_13, 2.000000e+00, !dbg !234 ; [#uses=5 type=float] [debug line = 77:3]
  call void @llvm.dbg.value(metadata !{float %p_2q2}, i64 0, metadata !235), !dbg !234 ; [debug line = 77:3] [debug variable = _2q2]
  %q_load_14 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !236 ; [#uses=17 type=float] [debug line = 78:3]
  %p_2q3 = fmul float %q_load_14, 2.000000e+00, !dbg !236 ; [#uses=2 type=float] [debug line = 78:3]
  call void @llvm.dbg.value(metadata !{float %p_2q3}, i64 0, metadata !237), !dbg !236 ; [debug line = 78:3] [debug variable = _2q3]
  %p_2q0q2 = fmul float %p_2q0, %q_load_13, !dbg !238 ; [#uses=1 type=float] [debug line = 79:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0q2}, i64 0, metadata !239), !dbg !238 ; [debug line = 79:3] [debug variable = _2q0q2]
  %p_2q2q3 = fmul float %p_2q2, %q_load_14, !dbg !240 ; [#uses=1 type=float] [debug line = 80:3]
  call void @llvm.dbg.value(metadata !{float %p_2q2q3}, i64 0, metadata !241), !dbg !240 ; [debug line = 80:3] [debug variable = _2q2q3]
  %q0q0 = fmul float %q_load_11, %q_load_11, !dbg !242 ; [#uses=3 type=float] [debug line = 81:3]
  call void @llvm.dbg.value(metadata !{float %q0q0}, i64 0, metadata !243), !dbg !242 ; [debug line = 81:3] [debug variable = q0q0]
  %q0q1 = fmul float %q_load_11, %q_load_12, !dbg !244 ; [#uses=2 type=float] [debug line = 82:3]
  call void @llvm.dbg.value(metadata !{float %q0q1}, i64 0, metadata !245), !dbg !244 ; [debug line = 82:3] [debug variable = q0q1]
  %q0q2 = fmul float %q_load_11, %q_load_13, !dbg !246 ; [#uses=2 type=float] [debug line = 83:3]
  call void @llvm.dbg.value(metadata !{float %q0q2}, i64 0, metadata !247), !dbg !246 ; [debug line = 83:3] [debug variable = q0q2]
  %q0q3 = fmul float %q_load_11, %q_load_14, !dbg !248 ; [#uses=1 type=float] [debug line = 84:3]
  call void @llvm.dbg.value(metadata !{float %q0q3}, i64 0, metadata !249), !dbg !248 ; [debug line = 84:3] [debug variable = q0q3]
  %q1q1 = fmul float %q_load_12, %q_load_12, !dbg !250 ; [#uses=5 type=float] [debug line = 85:3]
  call void @llvm.dbg.value(metadata !{float %q1q1}, i64 0, metadata !251), !dbg !250 ; [debug line = 85:3] [debug variable = q1q1]
  %q1q2 = fmul float %q_load_12, %q_load_13, !dbg !252 ; [#uses=1 type=float] [debug line = 86:3]
  call void @llvm.dbg.value(metadata !{float %q1q2}, i64 0, metadata !253), !dbg !252 ; [debug line = 86:3] [debug variable = q1q2]
  %q1q3 = fmul float %q_load_12, %q_load_14, !dbg !254 ; [#uses=3 type=float] [debug line = 87:3]
  call void @llvm.dbg.value(metadata !{float %q1q3}, i64 0, metadata !255), !dbg !254 ; [debug line = 87:3] [debug variable = q1q3]
  %q2q2 = fmul float %q_load_13, %q_load_13, !dbg !256 ; [#uses=6 type=float] [debug line = 88:3]
  call void @llvm.dbg.value(metadata !{float %q2q2}, i64 0, metadata !257), !dbg !256 ; [debug line = 88:3] [debug variable = q2q2]
  %q2q3 = fmul float %q_load_13, %q_load_14, !dbg !258 ; [#uses=1 type=float] [debug line = 89:3]
  call void @llvm.dbg.value(metadata !{float %q2q3}, i64 0, metadata !259), !dbg !258 ; [debug line = 89:3] [debug variable = q2q3]
  %q3q3 = fmul float %q_load_14, %q_load_14, !dbg !260 ; [#uses=4 type=float] [debug line = 90:3]
  call void @llvm.dbg.value(metadata !{float %q3q3}, i64 0, metadata !261), !dbg !260 ; [debug line = 90:3] [debug variable = q3q3]
  %tmp_84 = fmul float %m_load_3, %q0q0, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_85 = fmul float %p_2q0my, %q_load_14, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_89 = fsub float %tmp_84, %tmp_85, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_90 = fmul float %p_2q0mz, %q_load_13, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_91 = fadd float %tmp_89, %tmp_90, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_92 = fmul float %m_load_3, %q1q1, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_93 = fadd float %tmp_91, %tmp_92, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_94 = fmul float %p_2q1, %m_load_4, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_95 = fmul float %tmp_94, %q_load_13, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_96 = fadd float %tmp_93, %tmp_95, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_97 = fmul float %p_2q1, %m_load_5, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_98 = fmul float %tmp_97, %q_load_14, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_99 = fadd float %tmp_96, %tmp_98, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_100 = fmul float %m_load_3, %q2q2, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_101 = fsub float %tmp_99, %tmp_100, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_102 = fmul float %m_load_3, %q3q3, !dbg !262 ; [#uses=1 type=float] [debug line = 94:3]
  %hx = fsub float %tmp_101, %tmp_102, !dbg !262  ; [#uses=2 type=float] [debug line = 94:3]
  call void @llvm.dbg.value(metadata !{float %hx}, i64 0, metadata !263), !dbg !262 ; [debug line = 94:3] [debug variable = hx]
  %tmp_103 = fmul float %p_2q0mx, %q_load_14, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_104 = fmul float %m_load_4, %q0q0, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_105 = fadd float %tmp_103, %tmp_104, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_106 = fmul float %p_2q0mz, %q_load_12, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_107 = fsub float %tmp_105, %tmp_106, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_108 = fmul float %p_2q1mx, %q_load_13, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_109 = fadd float %tmp_107, %tmp_108, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_110 = fmul float %m_load_4, %q1q1, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_111 = fsub float %tmp_109, %tmp_110, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_112 = fmul float %m_load_4, %q2q2, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_113 = fadd float %tmp_111, %tmp_112, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_114 = fmul float %p_2q2, %m_load_5, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_115 = fmul float %tmp_114, %q_load_14, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_116 = fadd float %tmp_113, %tmp_115, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_117 = fmul float %m_load_4, %q3q3, !dbg !264 ; [#uses=1 type=float] [debug line = 96:3]
  %hy = fsub float %tmp_116, %tmp_117, !dbg !264  ; [#uses=2 type=float] [debug line = 96:3]
  call void @llvm.dbg.value(metadata !{float %hy}, i64 0, metadata !265), !dbg !264 ; [debug line = 96:3] [debug variable = hy]
  %tmp_118 = fmul float %hx, %hx, !dbg !266       ; [#uses=1 type=float] [debug line = 97:10]
  %tmp_119 = fmul float %hy, %hy, !dbg !266       ; [#uses=1 type=float] [debug line = 97:10]
  %tmp_120 = fadd float %tmp_118, %tmp_119, !dbg !266 ; [#uses=1 type=float] [debug line = 97:10]
  %p_2bx = call float @llvm.sqrt.f32(float %tmp_120), !dbg !266 ; [#uses=9 type=float] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{float %p_2bx}, i64 0, metadata !267), !dbg !266 ; [debug line = 97:10] [debug variable = _2bx]
  %tmp_144_to_int = bitcast float %p_2q0mx to i32, !dbg !268 ; [#uses=1 type=i32] [debug line = 99:3]
  %tmp_144_neg = xor i32 %tmp_144_to_int, -2147483648, !dbg !268 ; [#uses=1 type=i32] [debug line = 99:3]
  %tmp_121 = bitcast i32 %tmp_144_neg to float, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_122 = fmul float %q_load_13, %tmp_121, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_123 = fmul float %p_2q0my, %q_load_12, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_124 = fadd float %tmp_122, %tmp_123, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_125 = fmul float %m_load_5, %q0q0, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_126 = fadd float %tmp_124, %tmp_125, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_127 = fmul float %p_2q1mx, %q_load_14, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_128 = fadd float %tmp_126, %tmp_127, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_129 = fmul float %m_load_5, %q1q1, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_130 = fsub float %tmp_128, %tmp_129, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_131 = fmul float %p_2q2, %m_load_4, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_132 = fmul float %tmp_131, %q_load_14, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_133 = fadd float %tmp_130, %tmp_132, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_134 = fmul float %m_load_5, %q2q2, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_135 = fsub float %tmp_133, %tmp_134, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_136 = fmul float %m_load_5, %q3q3, !dbg !268 ; [#uses=1 type=float] [debug line = 99:3]
  %p_2bz = fadd float %tmp_135, %tmp_136, !dbg !268 ; [#uses=8 type=float] [debug line = 99:3]
  call void @llvm.dbg.value(metadata !{float %p_2bz}, i64 0, metadata !269), !dbg !268 ; [debug line = 99:3] [debug variable = _2bz]
  %p_4bx = fmul float %p_2bx, 2.000000e+00, !dbg !270 ; [#uses=1 type=float] [debug line = 100:3]
  call void @llvm.dbg.value(metadata !{float %p_4bx}, i64 0, metadata !271), !dbg !270 ; [debug line = 100:3] [debug variable = _4bx]
  %p_4bz = fmul float %p_2bz, 2.000000e+00, !dbg !272 ; [#uses=2 type=float] [debug line = 101:3]
  call void @llvm.dbg.value(metadata !{float %p_4bz}, i64 0, metadata !273), !dbg !272 ; [debug line = 101:3] [debug variable = _4bz]
  %tmp_160_to_int = bitcast float %p_2q2 to i32, !dbg !274 ; [#uses=1 type=i32] [debug line = 105:3]
  %tmp_160_neg = xor i32 %tmp_160_to_int, -2147483648, !dbg !274 ; [#uses=1 type=i32] [debug line = 105:3]
  %tmp_137 = bitcast i32 %tmp_160_neg to float, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_138 = fmul float %q1q3, 2.000000e+00, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_139 = fsub float %tmp_138, %p_2q0q2, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %a_load_8 = load float* %a_addr_5, align 4, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_140 = fsub float %tmp_139, %a_load_8, !dbg !274 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp_141 = fmul float %tmp_140, %tmp_137, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_142 = fmul float %q0q1, 2.000000e+00, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_143 = fadd float %tmp_142, %p_2q2q3, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %a_addr_8 = getelementptr [4 x float]* %a, i64 0, i64 2, !dbg !274 ; [#uses=1 type=float*] [debug line = 105:3]
  %a_load_9 = load float* %a_addr_8, align 4, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_144 = fsub float %tmp_143, %a_load_9, !dbg !274 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp_145 = fmul float %p_2q1, %tmp_144, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_146 = fadd float %tmp_141, %tmp_145, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_147 = fmul float %p_2bz, %q_load_13, !dbg !274 ; [#uses=2 type=float] [debug line = 105:3]
  %tmp_148 = fsub float 5.000000e-01, %q2q2, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_149 = fsub float %tmp_148, %q3q3, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_150 = fmul float %p_2bx, %tmp_149, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_151 = fsub float %q1q3, %q0q2, !dbg !274   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_152 = fmul float %p_2bz, %tmp_151, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_153 = fadd float %tmp_150, %tmp_152, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_154 = fsub float %tmp_153, %m_load_3, !dbg !274 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp_155 = fmul float %tmp_147, %tmp_154, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_156 = fsub float %tmp_146, %tmp_155, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_180_to_int = bitcast float %p_2bx to i32, !dbg !274 ; [#uses=1 type=i32] [debug line = 105:3]
  %tmp_180_neg = xor i32 %tmp_180_to_int, -2147483648, !dbg !274 ; [#uses=1 type=i32] [debug line = 105:3]
  %tmp_157 = bitcast i32 %tmp_180_neg to float, !dbg !274 ; [#uses=2 type=float] [debug line = 105:3]
  %tmp_158 = fmul float %q_load_14, %tmp_157, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_159 = fmul float %p_2bz, %q_load_12, !dbg !274 ; [#uses=2 type=float] [debug line = 105:3]
  %tmp_160 = fadd float %tmp_158, %tmp_159, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_161 = fsub float %q1q2, %q0q3, !dbg !274   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_162 = fmul float %p_2bx, %tmp_161, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_163 = fadd float %q0q1, %q2q3, !dbg !274   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_164 = fmul float %p_2bz, %tmp_163, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_165 = fadd float %tmp_162, %tmp_164, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_166 = fsub float %tmp_165, %m_load_4, !dbg !274 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp_167 = fmul float %tmp_160, %tmp_166, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_168 = fadd float %tmp_156, %tmp_167, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_169 = fmul float %p_2bx, %q_load_13, !dbg !274 ; [#uses=2 type=float] [debug line = 105:3]
  %tmp_170 = fadd float %q0q2, %q1q3, !dbg !274   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_171 = fmul float %p_2bx, %tmp_170, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_172 = fsub float 5.000000e-01, %q1q1, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_173 = fsub float %tmp_172, %q2q2, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_174 = fmul float %p_2bz, %tmp_173, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_175 = fadd float %tmp_171, %tmp_174, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_176 = fsub float %tmp_175, %m_load_5, !dbg !274 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp_177 = fmul float %tmp_169, %tmp_176, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  %s_0 = fadd float %tmp_168, %tmp_177, !dbg !274 ; [#uses=1 type=float] [debug line = 105:3]
  call void @llvm.dbg.value(metadata !{float %s_0}, i64 0, metadata !275), !dbg !274 ; [debug line = 105:3] [debug variable = s[0]]
  %tmp_178 = fmul float %p_2q3, %tmp_140, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_179 = fmul float %p_2q0, %tmp_144, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_180 = fadd float %tmp_178, %tmp_179, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_181 = fmul float %q_load_12, 4.000000e+00, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_182 = fmul float %q1q1, 2.000000e+00, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_183 = fsub float 1.000000e+00, %tmp_182, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_184 = fmul float %q2q2, 2.000000e+00, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_185 = fsub float %tmp_183, %tmp_184, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %a_addr_9 = getelementptr [4 x float]* %a, i64 0, i64 3, !dbg !277 ; [#uses=1 type=float*] [debug line = 107:3]
  %a_load_10 = load float* %a_addr_9, align 4, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_186 = fsub float %tmp_185, %a_load_10, !dbg !277 ; [#uses=2 type=float] [debug line = 107:3]
  %tmp_187 = fmul float %tmp_181, %tmp_186, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_188 = fsub float %tmp_180, %tmp_187, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_189 = fmul float %p_2bz, %q_load_14, !dbg !277 ; [#uses=2 type=float] [debug line = 107:3]
  %tmp_190 = fmul float %tmp_189, %tmp_154, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_191 = fadd float %tmp_188, %tmp_190, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_192 = fmul float %p_2bz, %q_load_11, !dbg !277 ; [#uses=2 type=float] [debug line = 107:3]
  %tmp_193 = fadd float %tmp_169, %tmp_192, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_194 = fmul float %tmp_193, %tmp_166, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_195 = fadd float %tmp_191, %tmp_194, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_196 = fmul float %p_2bx, %q_load_14, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_197 = fmul float %p_4bz, %q_load_12, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_198 = fsub float %tmp_196, %tmp_197, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_199 = fmul float %tmp_198, %tmp_176, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %s_1 = fadd float %tmp_195, %tmp_199, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  call void @llvm.dbg.value(metadata !{float %s_1}, i64 0, metadata !278), !dbg !277 ; [debug line = 107:3] [debug variable = s[1]]
  %tmp_225_to_int = bitcast float %p_2q0 to i32, !dbg !279 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_225_neg = xor i32 %tmp_225_to_int, -2147483648, !dbg !279 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_200 = bitcast i32 %tmp_225_neg to float, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_201 = fmul float %tmp_140, %tmp_200, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_202 = fmul float %p_2q3, %tmp_144, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_203 = fadd float %tmp_201, %tmp_202, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_204 = fmul float %q_load_13, 4.000000e+00, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_205 = fmul float %tmp_204, %tmp_186, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_206 = fsub float %tmp_203, %tmp_205, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_232_to_int = bitcast float %p_4bx to i32, !dbg !279 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_232_neg = xor i32 %tmp_232_to_int, -2147483648, !dbg !279 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_207 = bitcast i32 %tmp_232_neg to float, !dbg !279 ; [#uses=2 type=float] [debug line = 109:3]
  %tmp_208 = fmul float %q_load_13, %tmp_207, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_209 = fsub float %tmp_208, %tmp_192, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_210 = fmul float %tmp_209, %tmp_154, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_211 = fadd float %tmp_206, %tmp_210, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_212 = fmul float %p_2bx, %q_load_12, !dbg !279 ; [#uses=2 type=float] [debug line = 109:3]
  %tmp_213 = fadd float %tmp_212, %tmp_189, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_214 = fmul float %tmp_213, %tmp_166, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_215 = fadd float %tmp_211, %tmp_214, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_216 = fmul float %p_2bx, %q_load_11, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_217 = fmul float %p_4bz, %q_load_13, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_218 = fsub float %tmp_216, %tmp_217, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_219 = fmul float %tmp_218, %tmp_176, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  %s_2 = fadd float %tmp_215, %tmp_219, !dbg !279 ; [#uses=1 type=float] [debug line = 109:3]
  call void @llvm.dbg.value(metadata !{float %s_2}, i64 0, metadata !280), !dbg !279 ; [debug line = 109:3] [debug variable = s[2]]
  %tmp_220 = fmul float %p_2q1, %tmp_140, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_221 = fmul float %p_2q2, %tmp_144, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_222 = fadd float %tmp_220, %tmp_221, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_223 = fmul float %q_load_14, %tmp_207, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_224 = fadd float %tmp_223, %tmp_159, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_225 = fmul float %tmp_224, %tmp_154, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_226 = fadd float %tmp_222, %tmp_225, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_227 = fmul float %q_load_11, %tmp_157, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_228 = fadd float %tmp_227, %tmp_147, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_229 = fmul float %tmp_228, %tmp_166, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_230 = fadd float %tmp_226, %tmp_229, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_231 = fmul float %tmp_212, %tmp_176, !dbg !281 ; [#uses=1 type=float] [debug line = 111:3]
  %s_3 = fadd float %tmp_230, %tmp_231, !dbg !281 ; [#uses=2 type=float] [debug line = 111:3]
  call void @llvm.dbg.value(metadata !{float %s_3}, i64 0, metadata !282), !dbg !281 ; [debug line = 111:3] [debug variable = s[3]]
  %call_ret = call fastcc { float, float, float } @normalise.1(float %s_0, float %s_1, float %s_2, float %s_3) nounwind, !dbg !283 ; [#uses=3 type={ float, float, float }] [debug line = 114:3]
  %s_2_2 = extractvalue { float, float, float } %call_ret, 1, !dbg !283 ; [#uses=1 type=float] [debug line = 114:3]
  %s_1_2 = extractvalue { float, float, float } %call_ret, 0, !dbg !283 ; [#uses=1 type=float] [debug line = 114:3]
  %s_0_2 = extractvalue { float, float, float } %call_ret, 2, !dbg !283 ; [#uses=1 type=float] [debug line = 114:3]
  call void @llvm.dbg.value(metadata !{float %s_0_2}, i64 0, metadata !275), !dbg !283 ; [debug line = 114:3] [debug variable = s[0]]
  call void @llvm.dbg.value(metadata !{float %s_1_2}, i64 0, metadata !278), !dbg !283 ; [debug line = 114:3] [debug variable = s[1]]
  call void @llvm.dbg.value(metadata !{float %s_2_2}, i64 0, metadata !280), !dbg !283 ; [debug line = 114:3] [debug variable = s[2]]
  %beta_load = load float* @beta, align 4, !dbg !284 ; [#uses=1 type=float] [debug line = 117:3]
  call void @llvm.dbg.value(metadata !{float %beta_load}, i64 0, metadata !285) nounwind, !dbg !286 ; [debug line = 229:40@117:3] [debug variable = beta]
  br label %6, !dbg !287                          ; [debug line = 230:35@117:3]

; <label>:6                                       ; preds = %_ifconv, %._crit_edge3
  %qDot_3_3 = phi float [ %qDot_0, %._crit_edge3 ], [ %qDot_3_6, %_ifconv ] ; [#uses=3 type=float]
  %qDot_3_4 = phi float [ %qDot_1, %._crit_edge3 ], [ %qDot_3_8, %_ifconv ] ; [#uses=4 type=float]
  %qDot_2_3 = phi float [ %qDot_2, %._crit_edge3 ], [ %qDot_3_11, %_ifconv ] ; [#uses=5 type=float]
  %qDot_3 = phi float [ %qDot_3_2, %._crit_edge3 ], [ %qDot_3_1, %_ifconv ] ; [#uses=5 type=float]
  %i_i = phi i3 [ 0, %._crit_edge3 ], [ %i, %_ifconv ] ; [#uses=3 type=i3]
  %exitcond_i = icmp eq i3 %i_i, -4, !dbg !287    ; [#uses=1 type=i1] [debug line = 230:35@117:3]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  %i = add i3 %i_i, 1, !dbg !288                  ; [#uses=1 type=i3] [debug line = 230:44@117:3]
  br i1 %exitcond_i, label %._crit_edge5.loopexit, label %_ifconv, !dbg !287 ; [debug line = 230:35@117:3]

_ifconv:                                          ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str2) nounwind, !dbg !289 ; [debug line = 230:50@117:3]
  %tmp_261 = trunc i3 %i_i to i2                  ; [#uses=5 type=i2]
  %tmp_258 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %s_0_2, float %s_1_2, float %s_2_2, float %s_3, i2 %tmp_261) nounwind ; [#uses=1 type=float]
  %tmp_i = fmul float %tmp_258, %beta_load, !dbg !290 ; [#uses=1 type=float] [debug line = 231:3@117:3]
  %tmp_259 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %qDot_3_3, float %qDot_3_4, float %qDot_2_3, float %qDot_3, i2 %tmp_261) nounwind ; [#uses=1 type=float]
  %qDot_3_15 = fsub float %tmp_259, %tmp_i, !dbg !290 ; [#uses=4 type=float] [debug line = 231:3@117:3]
  call void @llvm.dbg.value(metadata !{float %qDot_3_15}, i64 0, metadata !217), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[3]]
  call void @llvm.dbg.value(metadata !{float %qDot_3_15}, i64 0, metadata !210), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[0]]
  call void @llvm.dbg.value(metadata !{float %qDot_3_15}, i64 0, metadata !213), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[1]]
  call void @llvm.dbg.value(metadata !{float %qDot_3_15}, i64 0, metadata !215), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[2]]
  call void @llvm.dbg.value(metadata !{float %qDot_3_3}, i64 0, metadata !217), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[3]]
  %sel_tmp7 = icmp eq i2 %tmp_261, 0              ; [#uses=4 type=i1]
  %qDot_3_6 = select i1 %sel_tmp7, float %qDot_3_15, float %qDot_3_3 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_6}, i64 0, metadata !217), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[3]]
  call void @llvm.dbg.value(metadata !{float %qDot_3_4}, i64 0, metadata !217), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[3]]
  %sel_tmp = icmp eq i2 %tmp_261, 1               ; [#uses=3 type=i1]
  %qDot_3_7 = select i1 %sel_tmp, float %qDot_3_15, float %qDot_3_4 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_7}, i64 0, metadata !217), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[3]]
  %qDot_3_8 = select i1 %sel_tmp7, float %qDot_3_4, float %qDot_3_7 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_8}, i64 0, metadata !217), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[3]]
  %sel_tmp9 = icmp eq i2 %tmp_261, -2             ; [#uses=2 type=i1]
  %qDot_3_9 = select i1 %sel_tmp9, float %qDot_3_15, float %qDot_2_3 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_9}, i64 0, metadata !217), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[3]]
  %qDot_3_10 = select i1 %sel_tmp, float %qDot_2_3, float %qDot_3_9 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_10}, i64 0, metadata !217), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[3]]
  %qDot_3_11 = select i1 %sel_tmp7, float %qDot_2_3, float %qDot_3_10 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_11}, i64 0, metadata !217), !dbg !290 ; [debug line = 231:3@117:3] [debug variable = qDot[3]]
  %qDot_3_12 = select i1 %sel_tmp9, float %qDot_3, float %qDot_3_15 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_12}, i64 0, metadata !217), !dbg !216 ; [debug line = 58:2] [debug variable = qDot[3]]
  %qDot_3_13 = select i1 %sel_tmp, float %qDot_3, float %qDot_3_12 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_13}, i64 0, metadata !217), !dbg !216 ; [debug line = 58:2] [debug variable = qDot[3]]
  %qDot_3_1 = select i1 %sel_tmp7, float %qDot_3, float %qDot_3_13 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %qDot_3_1}, i64 0, metadata !217), !dbg !216 ; [debug line = 58:2] [debug variable = qDot[3]]
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !291) nounwind, !dbg !288 ; [debug line = 230:44@117:3] [debug variable = i]
  br label %6, !dbg !288                          ; [debug line = 230:44@117:3]

._crit_edge5.loopexit:                            ; preds = %6
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge5.loopexit, %5
  %qDot_0_s = phi float [ %qDot_0, %5 ], [ %qDot_3_3, %._crit_edge5.loopexit ] ; [#uses=1 type=float]
  %qDot_1_s = phi float [ %qDot_1, %5 ], [ %qDot_3_4, %._crit_edge5.loopexit ] ; [#uses=1 type=float]
  %qDot_2_3_2 = phi float [ %qDot_2, %5 ], [ %qDot_2_3, %._crit_edge5.loopexit ] ; [#uses=1 type=float]
  %qDot_3_s = phi float [ %qDot_3_2, %5 ], [ %qDot_3, %._crit_edge5.loopexit ] ; [#uses=1 type=float]
  br label %7, !dbg !292                          ; [debug line = 239:36@121:2]

; <label>:7                                       ; preds = %8, %._crit_edge5
  %i_i2 = phi i3 [ 0, %._crit_edge5 ], [ %i_4, %8 ] ; [#uses=4 type=i3]
  %exitcond_i2 = icmp eq i3 %i_i2, -4, !dbg !292  ; [#uses=1 type=i1] [debug line = 239:36@121:2]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  %i_4 = add i3 %i_i2, 1, !dbg !294               ; [#uses=1 type=i3] [debug line = 239:45@121:2]
  br i1 %exitcond_i2, label %integrateQdot.exit, label %8, !dbg !292 ; [debug line = 239:36@121:2]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str3) nounwind, !dbg !295 ; [debug line = 239:51@121:2]
  %tmp_i2 = zext i3 %i_i2 to i64, !dbg !296       ; [#uses=1 type=i64] [debug line = 240:3@121:2]
  %tmp_262 = trunc i3 %i_i2 to i2                 ; [#uses=1 type=i2]
  %tmp_260 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %qDot_0_s, float %qDot_1_s, float %qDot_2_3_2, float %qDot_3_s, i2 %tmp_262) nounwind ; [#uses=1 type=float]
  %tmp_i2_13 = fmul float %tmp_260, 1.953125e-03, !dbg !296 ; [#uses=1 type=float] [debug line = 240:3@121:2]
  %q_addr = getelementptr [4 x float]* @q, i64 0, i64 %tmp_i2, !dbg !296 ; [#uses=2 type=float*] [debug line = 240:3@121:2]
  %q_load_15 = load float* %q_addr, align 4, !dbg !296 ; [#uses=1 type=float] [debug line = 240:3@121:2]
  %tmp_8_i = fadd float %q_load_15, %tmp_i2_13, !dbg !296 ; [#uses=1 type=float] [debug line = 240:3@121:2]
  store float %tmp_8_i, float* %q_addr, align 4, !dbg !296 ; [debug line = 240:3@121:2]
  call void @llvm.dbg.value(metadata !{i3 %i_4}, i64 0, metadata !297) nounwind, !dbg !294 ; [debug line = 239:45@121:2] [debug variable = i]
  br label %7, !dbg !294                          ; [debug line = 239:45@121:2]

integrateQdot.exit:                               ; preds = %7
  call fastcc void @normalise([4 x float]* @q) nounwind, !dbg !298 ; [debug line = 124:2]
  br label %9, !dbg !299                          ; [debug line = 125:1]

; <label>:9                                       ; preds = %integrateQdot.exit, %3
  ret void, !dbg !299                             ; [debug line = 125:1]
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
!43 = metadata !{i32 790533, metadata !44, metadata !"in[3]", null, i32 206, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!44 = metadata !{i32 786689, metadata !45, metadata !"in", null, i32 206, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 786478, i32 0, metadata !46, metadata !"normalise", metadata !"normalise", metadata !"_Z9normalisePf", metadata !46, i32 206, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 206} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786473, metadata !"MadgwickAHRS.cpp", metadata !"/home/toni/Documents/vivado_projects/MadgwickAHRS", null} ; [ DW_TAG_file_type ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{null, metadata !49}
!49 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!53 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !50, metadata !54, i32 0, i32 0} ; [ DW_TAG_array_type ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!56 = metadata !{i32 206, i32 22, metadata !45, null}
!57 = metadata !{i32 790533, metadata !44, metadata !"in[2]", null, i32 206, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!58 = metadata !{i32 790533, metadata !44, metadata !"in[1]", null, i32 206, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!59 = metadata !{i32 790533, metadata !44, metadata !"in[0]", null, i32 206, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!60 = metadata !{i32 209, i32 29, metadata !61, null}
!61 = metadata !{i32 786443, metadata !62, i32 209, i32 15, metadata !46, i32 7} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 786443, metadata !45, i32 206, i32 29, metadata !46, i32 6} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 209, i32 44, metadata !64, null}
!64 = metadata !{i32 786443, metadata !61, i32 209, i32 43, metadata !46, i32 8} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 210, i32 3, metadata !64, null}
!66 = metadata !{i32 786688, metadata !62, metadata !"SumOfSquare", metadata !46, i32 208, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 209, i32 38, metadata !61, null}
!68 = metadata !{i32 786688, metadata !61, metadata !"i", metadata !46, i32 209, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!70 = metadata !{i32 212, i32 2, metadata !62, null}
!71 = metadata !{i32 213, i32 3, metadata !62, null}
!72 = metadata !{i32 193, i32 21, metadata !73, metadata !76}
!73 = metadata !{i32 786478, i32 0, metadata !46, metadata !"invSqrt", metadata !"invSqrt", metadata !"_Z7invSqrtf", metadata !46, i32 193, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 193} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{metadata !50, metadata !50}
!76 = metadata !{i32 215, i32 14, metadata !62, null}
!77 = metadata !{i32 786689, metadata !73, metadata !"x", metadata !46, i32 16777409, metadata !50, i32 0, metadata !76} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 194, i32 24, metadata !79, metadata !76}
!79 = metadata !{i32 786443, metadata !73, i32 193, i32 24, metadata !46, i32 5} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786688, metadata !79, metadata !"halfx", metadata !46, i32 194, metadata !50, i32 0, metadata !76} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 195, i32 13, metadata !79, metadata !76}
!82 = metadata !{i32 786688, metadata !79, metadata !"y", metadata !46, i32 195, metadata !50, i32 0, metadata !76} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 198, i32 2, metadata !79, metadata !76}
!84 = metadata !{i32 199, i32 2, metadata !79, metadata !76}
!85 = metadata !{i32 786688, metadata !62, metadata !"recipNorm", metadata !46, i32 207, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 216, i32 33, metadata !87, null}
!87 = metadata !{i32 786443, metadata !62, i32 216, i32 19, metadata !46, i32 9} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 216, i32 48, metadata !89, null}
!89 = metadata !{i32 786443, metadata !87, i32 216, i32 47, metadata !46, i32 10} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 217, i32 3, metadata !89, null}
!91 = metadata !{i32 216, i32 42, metadata !87, null}
!92 = metadata !{i32 786688, metadata !87, metadata !"i", metadata !46, i32 216, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 220, i32 3, metadata !62, null}
!94 = metadata !{i32 790535, metadata !44, metadata !"in[0]", null, i32 206, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!95 = metadata !{i32 224, i32 1, metadata !62, null}
!96 = metadata !{i32 219, i32 2, metadata !62, null}
!97 = metadata !{i32 222, i32 3, metadata !62, null}
!98 = metadata !{i32 786689, metadata !99, metadata !"g", null, i32 130, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 786478, i32 0, metadata !46, metadata !"MadgwickAHRSupdateIMU", metadata !"MadgwickAHRSupdateIMU", metadata !"_Z21MadgwickAHRSupdateIMUPfS_", metadata !46, i32 130, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 130} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !49, metadata !49}
!102 = metadata !{i32 130, i32 34, metadata !99, null}
!103 = metadata !{i32 786689, metadata !99, metadata !"a", null, i32 130, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 130, i32 46, metadata !99, null}
!105 = metadata !{i32 136, i32 2, metadata !106, null}
!106 = metadata !{i32 786443, metadata !99, i32 130, i32 52, metadata !46, i32 3} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 790529, metadata !108, metadata !"qDot[0]", null, i32 132, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!108 = metadata !{i32 786688, metadata !106, metadata !"qDot", metadata !46, i32 132, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 138, i32 2, metadata !106, null}
!110 = metadata !{i32 790529, metadata !108, metadata !"qDot[1]", null, i32 132, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!111 = metadata !{i32 140, i32 2, metadata !106, null}
!112 = metadata !{i32 790529, metadata !108, metadata !"qDot[2]", null, i32 132, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!113 = metadata !{i32 142, i32 2, metadata !106, null}
!114 = metadata !{i32 790529, metadata !108, metadata !"qDot[3]", null, i32 132, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!115 = metadata !{i32 145, i32 2, metadata !106, null}
!116 = metadata !{i32 148, i32 3, metadata !117, null}
!117 = metadata !{i32 786443, metadata !106, i32 145, i32 61, metadata !46, i32 4} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 151, i32 3, metadata !117, null}
!119 = metadata !{i32 786688, metadata !106, metadata !"_2q0", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 152, i32 3, metadata !117, null}
!121 = metadata !{i32 786688, metadata !106, metadata !"_2q1", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 153, i32 3, metadata !117, null}
!123 = metadata !{i32 786688, metadata !106, metadata !"_2q2", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 154, i32 3, metadata !117, null}
!125 = metadata !{i32 786688, metadata !106, metadata !"_2q3", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 155, i32 3, metadata !117, null}
!127 = metadata !{i32 786688, metadata !106, metadata !"_4q0", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 156, i32 3, metadata !117, null}
!129 = metadata !{i32 786688, metadata !106, metadata !"_4q1", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 157, i32 3, metadata !117, null}
!131 = metadata !{i32 786688, metadata !106, metadata !"_4q2", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 158, i32 3, metadata !117, null}
!133 = metadata !{i32 786688, metadata !106, metadata !"_8q1", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 159, i32 3, metadata !117, null}
!135 = metadata !{i32 786688, metadata !106, metadata !"_8q2", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 160, i32 3, metadata !117, null}
!137 = metadata !{i32 786688, metadata !106, metadata !"q0q0", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 161, i32 3, metadata !117, null}
!139 = metadata !{i32 786688, metadata !106, metadata !"q1q1", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 162, i32 3, metadata !117, null}
!141 = metadata !{i32 786688, metadata !106, metadata !"q2q2", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 163, i32 3, metadata !117, null}
!143 = metadata !{i32 786688, metadata !106, metadata !"q3q3", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 167, i32 3, metadata !117, null}
!145 = metadata !{i32 790529, metadata !146, metadata !"s[0]", null, i32 131, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!146 = metadata !{i32 786688, metadata !106, metadata !"s", metadata !46, i32 131, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 169, i32 3, metadata !117, null}
!148 = metadata !{i32 790529, metadata !146, metadata !"s[1]", null, i32 131, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!149 = metadata !{i32 171, i32 3, metadata !117, null}
!150 = metadata !{i32 790529, metadata !146, metadata !"s[2]", null, i32 131, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!151 = metadata !{i32 173, i32 3, metadata !117, null}
!152 = metadata !{i32 790529, metadata !146, metadata !"s[3]", null, i32 131, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!153 = metadata !{i32 176, i32 3, metadata !117, null}
!154 = metadata !{i32 179, i32 3, metadata !117, null}
!155 = metadata !{i32 786689, metadata !156, metadata !"beta", metadata !46, i32 33554661, metadata !50, i32 0, metadata !154} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 786478, i32 0, metadata !46, metadata !"feedbackStep", metadata !"feedbackStep", metadata !"_Z12feedbackStepPffS_", metadata !46, i32 229, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 229} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!158 = metadata !{null, metadata !49, metadata !50, metadata !49}
!159 = metadata !{i32 229, i32 40, metadata !156, metadata !154}
!160 = metadata !{i32 230, i32 35, metadata !161, metadata !154}
!161 = metadata !{i32 786443, metadata !162, i32 230, i32 21, metadata !46, i32 12} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 786443, metadata !156, i32 229, i32 58, metadata !46, i32 11} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 230, i32 44, metadata !161, metadata !154}
!164 = metadata !{i32 230, i32 50, metadata !165, metadata !154}
!165 = metadata !{i32 786443, metadata !161, i32 230, i32 49, metadata !46, i32 13} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 231, i32 3, metadata !165, metadata !154}
!167 = metadata !{i32 786688, metadata !161, metadata !"i", metadata !46, i32 230, metadata !69, i32 0, metadata !154} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 239, i32 36, metadata !169, metadata !172}
!169 = metadata !{i32 786443, metadata !170, i32 239, i32 22, metadata !46, i32 15} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 786443, metadata !171, i32 238, i32 47, metadata !46, i32 14} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786478, i32 0, metadata !46, metadata !"integrateQdot", metadata !"integrateQdot", metadata !"_Z13integrateQdotPfS_", metadata !46, i32 238, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 238} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 183, i32 2, metadata !106, null}
!173 = metadata !{i32 239, i32 45, metadata !169, metadata !172}
!174 = metadata !{i32 239, i32 51, metadata !175, metadata !172}
!175 = metadata !{i32 786443, metadata !169, i32 239, i32 50, metadata !46, i32 16} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 240, i32 3, metadata !175, metadata !172}
!177 = metadata !{i32 786688, metadata !169, metadata !"i", metadata !46, i32 239, metadata !69, i32 0, metadata !172} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 186, i32 2, metadata !106, null}
!179 = metadata !{i32 187, i32 1, metadata !106, null}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 0, i32 31, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"g", metadata !34, metadata !"float", i32 0, i32 31}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 0, i32 31, metadata !186}
!186 = metadata !{metadata !187}
!187 = metadata !{metadata !"a", metadata !34, metadata !"float", i32 0, i32 31}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 0, i32 31, metadata !190}
!190 = metadata !{metadata !191}
!191 = metadata !{metadata !"m", metadata !34, metadata !"float", i32 0, i32 31}
!192 = metadata !{i32 786689, metadata !193, metadata !"g", null, i32 36, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 786478, i32 0, metadata !46, metadata !"MadgwickAHRSupdate", metadata !"MadgwickAHRSupdate", metadata !"_Z18MadgwickAHRSupdatePfS_S_", metadata !46, i32 36, metadata !194, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 36} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!195 = metadata !{null, metadata !49, metadata !49, metadata !49}
!196 = metadata !{i32 36, i32 31, metadata !193, null}
!197 = metadata !{i32 786689, metadata !193, metadata !"a", null, i32 36, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 36, i32 43, metadata !193, null}
!199 = metadata !{i32 786689, metadata !193, metadata !"m", null, i32 36, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 36, i32 55, metadata !193, null}
!201 = metadata !{i32 37, i32 2, metadata !202, null}
!202 = metadata !{i32 786443, metadata !193, i32 36, i32 61, metadata !46, i32 0} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 38, i32 2, metadata !202, null}
!204 = metadata !{i32 39, i32 2, metadata !202, null}
!205 = metadata !{i32 46, i32 2, metadata !202, null}
!206 = metadata !{i32 47, i32 3, metadata !207, null}
!207 = metadata !{i32 786443, metadata !202, i32 46, i32 58, metadata !46, i32 1} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 48, i32 3, metadata !207, null}
!209 = metadata !{i32 52, i32 2, metadata !202, null}
!210 = metadata !{i32 790529, metadata !211, metadata !"qDot[0]", null, i32 41, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!211 = metadata !{i32 786688, metadata !202, metadata !"qDot", metadata !46, i32 41, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!212 = metadata !{i32 54, i32 2, metadata !202, null}
!213 = metadata !{i32 790529, metadata !211, metadata !"qDot[1]", null, i32 41, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!214 = metadata !{i32 56, i32 2, metadata !202, null}
!215 = metadata !{i32 790529, metadata !211, metadata !"qDot[2]", null, i32 41, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!216 = metadata !{i32 58, i32 2, metadata !202, null}
!217 = metadata !{i32 790529, metadata !211, metadata !"qDot[3]", null, i32 41, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!218 = metadata !{i32 62, i32 2, metadata !202, null}
!219 = metadata !{i32 65, i32 3, metadata !220, null}
!220 = metadata !{i32 786443, metadata !202, i32 62, i32 61, metadata !46, i32 2} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 68, i32 3, metadata !220, null}
!222 = metadata !{i32 71, i32 3, metadata !220, null}
!223 = metadata !{i32 786688, metadata !202, metadata !"_2q0mx", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 72, i32 3, metadata !220, null}
!225 = metadata !{i32 786688, metadata !202, metadata !"_2q0my", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 73, i32 3, metadata !220, null}
!227 = metadata !{i32 786688, metadata !202, metadata !"_2q0mz", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 74, i32 3, metadata !220, null}
!229 = metadata !{i32 786688, metadata !202, metadata !"_2q1mx", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 786688, metadata !202, metadata !"_2q0", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 75, i32 3, metadata !220, null}
!232 = metadata !{i32 786688, metadata !202, metadata !"_2q1", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 76, i32 3, metadata !220, null}
!234 = metadata !{i32 77, i32 3, metadata !220, null}
!235 = metadata !{i32 786688, metadata !202, metadata !"_2q2", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!236 = metadata !{i32 78, i32 3, metadata !220, null}
!237 = metadata !{i32 786688, metadata !202, metadata !"_2q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!238 = metadata !{i32 79, i32 3, metadata !220, null}
!239 = metadata !{i32 786688, metadata !202, metadata !"_2q0q2", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!240 = metadata !{i32 80, i32 3, metadata !220, null}
!241 = metadata !{i32 786688, metadata !202, metadata !"_2q2q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!242 = metadata !{i32 81, i32 3, metadata !220, null}
!243 = metadata !{i32 786688, metadata !202, metadata !"q0q0", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 82, i32 3, metadata !220, null}
!245 = metadata !{i32 786688, metadata !202, metadata !"q0q1", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!246 = metadata !{i32 83, i32 3, metadata !220, null}
!247 = metadata !{i32 786688, metadata !202, metadata !"q0q2", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 84, i32 3, metadata !220, null}
!249 = metadata !{i32 786688, metadata !202, metadata !"q0q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 85, i32 3, metadata !220, null}
!251 = metadata !{i32 786688, metadata !202, metadata !"q1q1", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 86, i32 3, metadata !220, null}
!253 = metadata !{i32 786688, metadata !202, metadata !"q1q2", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!254 = metadata !{i32 87, i32 3, metadata !220, null}
!255 = metadata !{i32 786688, metadata !202, metadata !"q1q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 88, i32 3, metadata !220, null}
!257 = metadata !{i32 786688, metadata !202, metadata !"q2q2", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 89, i32 3, metadata !220, null}
!259 = metadata !{i32 786688, metadata !202, metadata !"q2q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 90, i32 3, metadata !220, null}
!261 = metadata !{i32 786688, metadata !202, metadata !"q3q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 94, i32 3, metadata !220, null}
!263 = metadata !{i32 786688, metadata !202, metadata !"hx", metadata !46, i32 42, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 96, i32 3, metadata !220, null}
!265 = metadata !{i32 786688, metadata !202, metadata !"hy", metadata !46, i32 42, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 97, i32 10, metadata !220, null}
!267 = metadata !{i32 786688, metadata !202, metadata !"_2bx", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!268 = metadata !{i32 99, i32 3, metadata !220, null}
!269 = metadata !{i32 786688, metadata !202, metadata !"_2bz", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 100, i32 3, metadata !220, null}
!271 = metadata !{i32 786688, metadata !202, metadata !"_4bx", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 101, i32 3, metadata !220, null}
!273 = metadata !{i32 786688, metadata !202, metadata !"_4bz", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 105, i32 3, metadata !220, null}
!275 = metadata !{i32 790529, metadata !276, metadata !"s[0]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!276 = metadata !{i32 786688, metadata !202, metadata !"s", metadata !46, i32 40, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 107, i32 3, metadata !220, null}
!278 = metadata !{i32 790529, metadata !276, metadata !"s[1]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!279 = metadata !{i32 109, i32 3, metadata !220, null}
!280 = metadata !{i32 790529, metadata !276, metadata !"s[2]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!281 = metadata !{i32 111, i32 3, metadata !220, null}
!282 = metadata !{i32 790529, metadata !276, metadata !"s[3]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!283 = metadata !{i32 114, i32 3, metadata !220, null}
!284 = metadata !{i32 117, i32 3, metadata !220, null}
!285 = metadata !{i32 786689, metadata !156, metadata !"beta", metadata !46, i32 33554661, metadata !50, i32 0, metadata !284} ; [ DW_TAG_arg_variable ]
!286 = metadata !{i32 229, i32 40, metadata !156, metadata !284}
!287 = metadata !{i32 230, i32 35, metadata !161, metadata !284}
!288 = metadata !{i32 230, i32 44, metadata !161, metadata !284}
!289 = metadata !{i32 230, i32 50, metadata !165, metadata !284}
!290 = metadata !{i32 231, i32 3, metadata !165, metadata !284}
!291 = metadata !{i32 786688, metadata !161, metadata !"i", metadata !46, i32 230, metadata !69, i32 0, metadata !284} ; [ DW_TAG_auto_variable ]
!292 = metadata !{i32 239, i32 36, metadata !169, metadata !293}
!293 = metadata !{i32 121, i32 2, metadata !202, null}
!294 = metadata !{i32 239, i32 45, metadata !169, metadata !293}
!295 = metadata !{i32 239, i32 51, metadata !175, metadata !293}
!296 = metadata !{i32 240, i32 3, metadata !175, metadata !293}
!297 = metadata !{i32 786688, metadata !169, metadata !"i", metadata !46, i32 239, metadata !69, i32 0, metadata !293} ; [ DW_TAG_auto_variable ]
!298 = metadata !{i32 124, i32 2, metadata !202, null}
!299 = metadata !{i32 125, i32 1, metadata !202, null}
