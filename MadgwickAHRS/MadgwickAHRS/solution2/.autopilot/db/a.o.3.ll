; ModuleID = '/home/toni/Documents/vivado_projects/MadgwickAHRS/MadgwickAHRS/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q = global [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16 ; [#uses=8 type=[4 x float]*]
@beta = global float 0x3FB99999A0000000, align 4  ; [#uses=2 type=float*]
@MadgwickAHRSupdate_s = internal unnamed_addr constant [19 x i8] c"MadgwickAHRSupdate\00" ; [#uses=1 type=[19 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=2 type=[1 x i8]*]
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

; [#uses=114]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
define internal fastcc void @integrateQdot([4 x float]* nocapture %q, float %p_read, float %p_read1, float %p_read2, float %p_read3) {
  %p_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %p_read3) ; [#uses=1 type=float]
  %p_read_2 = call float @_ssdm_op_Read.ap_auto.float(float %p_read2) ; [#uses=1 type=float]
  %p_read_3 = call float @_ssdm_op_Read.ap_auto.float(float %p_read1) ; [#uses=1 type=float]
  %p_read_4 = call float @_ssdm_op_Read.ap_auto.float(float %p_read) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{[4 x float]* %q}, i64 0, metadata !98), !dbg !102 ; [debug line = 237:26] [debug variable = q]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !103 ; [debug line = 238:1]
  %tmp_s = fmul float %p_read_4, 1.953125e-03, !dbg !105 ; [#uses=1 type=float] [debug line = 239:3]
  %q_addr = getelementptr [4 x float]* %q, i64 0, i64 0, !dbg !105 ; [#uses=2 type=float*] [debug line = 239:3]
  %q_load = load float* %q_addr, align 4, !dbg !105 ; [#uses=1 type=float] [debug line = 239:3]
  %tmp_8 = fadd float %q_load, %tmp_s, !dbg !105  ; [#uses=1 type=float] [debug line = 239:3]
  store float %tmp_8, float* %q_addr, align 4, !dbg !105 ; [debug line = 239:3]
  %tmp_1 = fmul float %p_read_3, 1.953125e-03, !dbg !105 ; [#uses=1 type=float] [debug line = 239:3]
  %q_addr_1 = getelementptr [4 x float]* %q, i64 0, i64 1, !dbg !105 ; [#uses=2 type=float*] [debug line = 239:3]
  %q_load_1 = load float* %q_addr_1, align 4, !dbg !105 ; [#uses=1 type=float] [debug line = 239:3]
  %tmp_8_1 = fadd float %q_load_1, %tmp_1, !dbg !105 ; [#uses=1 type=float] [debug line = 239:3]
  store float %tmp_8_1, float* %q_addr_1, align 4, !dbg !105 ; [debug line = 239:3]
  %tmp_2 = fmul float %p_read_2, 1.953125e-03, !dbg !105 ; [#uses=1 type=float] [debug line = 239:3]
  %q_addr_2 = getelementptr [4 x float]* %q, i64 0, i64 2, !dbg !105 ; [#uses=2 type=float*] [debug line = 239:3]
  %q_load_2 = load float* %q_addr_2, align 4, !dbg !105 ; [#uses=1 type=float] [debug line = 239:3]
  %tmp_8_2 = fadd float %q_load_2, %tmp_2, !dbg !105 ; [#uses=1 type=float] [debug line = 239:3]
  store float %tmp_8_2, float* %q_addr_2, align 4, !dbg !105 ; [debug line = 239:3]
  %tmp_3 = fmul float %p_read_1, 1.953125e-03, !dbg !105 ; [#uses=1 type=float] [debug line = 239:3]
  %q_addr_3 = getelementptr [4 x float]* %q, i64 0, i64 3, !dbg !105 ; [#uses=2 type=float*] [debug line = 239:3]
  %q_load_3 = load float* %q_addr_3, align 4, !dbg !105 ; [#uses=1 type=float] [debug line = 239:3]
  %tmp_8_3 = fadd float %q_load_3, %tmp_3, !dbg !105 ; [#uses=1 type=float] [debug line = 239:3]
  store float %tmp_8_3, float* %q_addr_3, align 4, !dbg !105 ; [debug line = 239:3]
  ret void, !dbg !108                             ; [debug line = 241:1]
}

; [#uses=2]
define internal fastcc { float, float, float, float } @feedbackStep(float %qDot_0_read, float %qDot_1_read, float %qDot_2_read, float %qDot_3_read, float %beta, float %s_0_read, float %s_1_read, float %s_2_read, float %s_3_read) readnone {
  %s_3_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %s_3_read) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %s_3_read_1}, i64 0, metadata !109), !dbg !114 ; [debug line = 229:52] [debug variable = s[3]]
  %s_2_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %s_2_read) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %s_2_read_1}, i64 0, metadata !115), !dbg !114 ; [debug line = 229:52] [debug variable = s[2]]
  %s_1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %s_1_read) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %s_1_read_1}, i64 0, metadata !116), !dbg !114 ; [debug line = 229:52] [debug variable = s[1]]
  %s_0_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %s_0_read) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %s_0_read_1}, i64 0, metadata !117), !dbg !114 ; [debug line = 229:52] [debug variable = s[0]]
  %beta_read = call float @_ssdm_op_Read.ap_auto.float(float %beta) ; [#uses=4 type=float]
  call void @llvm.dbg.value(metadata !{float %beta_read}, i64 0, metadata !118), !dbg !119 ; [debug line = 229:40] [debug variable = beta]
  %qDot_3_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %qDot_3_read) ; [#uses=1 type=float]
  %qDot_2_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %qDot_2_read) ; [#uses=1 type=float]
  %qDot_1_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %qDot_1_read) ; [#uses=1 type=float]
  %qDot_0_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %qDot_0_read) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %beta}, i64 0, metadata !118), !dbg !119 ; [debug line = 229:40] [debug variable = beta]
  call void @llvm.dbg.value(metadata !{float %s_0_read}, i64 0, metadata !117), !dbg !114 ; [debug line = 229:52] [debug variable = s[0]]
  call void @llvm.dbg.value(metadata !{float %s_1_read}, i64 0, metadata !116), !dbg !114 ; [debug line = 229:52] [debug variable = s[1]]
  call void @llvm.dbg.value(metadata !{float %s_2_read}, i64 0, metadata !115), !dbg !114 ; [debug line = 229:52] [debug variable = s[2]]
  call void @llvm.dbg.value(metadata !{float %s_3_read}, i64 0, metadata !109), !dbg !114 ; [debug line = 229:52] [debug variable = s[3]]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !120 ; [debug line = 230:1]
  %tmp_s = fmul float %s_0_read_1, %beta_read, !dbg !122 ; [#uses=1 type=float] [debug line = 230:3]
  %qDot = fsub float %qDot_0_read_1, %tmp_s, !dbg !122 ; [#uses=1 type=float] [debug line = 230:3]
  %tmp_1 = fmul float %s_1_read_1, %beta_read, !dbg !122 ; [#uses=1 type=float] [debug line = 230:3]
  %qDot_1 = fsub float %qDot_1_read_1, %tmp_1, !dbg !122 ; [#uses=1 type=float] [debug line = 230:3]
  %tmp_2 = fmul float %s_2_read_1, %beta_read, !dbg !122 ; [#uses=1 type=float] [debug line = 230:3]
  %qDot_2 = fsub float %qDot_2_read_1, %tmp_2, !dbg !122 ; [#uses=1 type=float] [debug line = 230:3]
  %tmp_3 = fmul float %s_3_read_1, %beta_read, !dbg !122 ; [#uses=1 type=float] [debug line = 230:3]
  %qDot_3 = fsub float %qDot_3_read_1, %tmp_3, !dbg !122 ; [#uses=1 type=float] [debug line = 230:3]
  %mrv = insertvalue { float, float, float, float } undef, float %qDot, 0, !dbg !125 ; [#uses=1 type={ float, float, float, float }] [debug line = 232:1]
  %mrv_1 = insertvalue { float, float, float, float } %mrv, float %qDot_1, 1, !dbg !125 ; [#uses=1 type={ float, float, float, float }] [debug line = 232:1]
  %mrv_2 = insertvalue { float, float, float, float } %mrv_1, float %qDot_2, 2, !dbg !125 ; [#uses=1 type={ float, float, float, float }] [debug line = 232:1]
  %mrv_3 = insertvalue { float, float, float, float } %mrv_2, float %qDot_3, 3, !dbg !125 ; [#uses=1 type={ float, float, float, float }] [debug line = 232:1]
  ret { float, float, float, float } %mrv_3, !dbg !125 ; [debug line = 232:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=17]
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

; [#uses=1]
define internal fastcc void @MadgwickAHRSupdateIM([4 x float]* nocapture %g, [4 x float]* nocapture %a) {
  call void @llvm.dbg.value(metadata !{[4 x float]* %g}, i64 0, metadata !126), !dbg !128 ; [debug line = 130:34] [debug variable = g]
  call void @llvm.dbg.value(metadata !{[4 x float]* %a}, i64 0, metadata !129), !dbg !130 ; [debug line = 130:46] [debug variable = a]
  %q_load = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !131 ; [#uses=3 type=float] [debug line = 136:2]
  %tmp_to_int = bitcast float %q_load to i32, !dbg !131 ; [#uses=1 type=i32] [debug line = 136:2]
  %tmp_neg = xor i32 %tmp_to_int, -2147483648, !dbg !131 ; [#uses=1 type=i32] [debug line = 136:2]
  %tmp = bitcast i32 %tmp_neg to float, !dbg !131 ; [#uses=1 type=float] [debug line = 136:2]
  %g_addr = getelementptr [4 x float]* %g, i64 0, i64 1, !dbg !131 ; [#uses=1 type=float*] [debug line = 136:2]
  %g_load = load float* %g_addr, align 4, !dbg !131 ; [#uses=4 type=float] [debug line = 136:2]
  %tmp_s = fmul float %g_load, %tmp, !dbg !131    ; [#uses=1 type=float] [debug line = 136:2]
  %q_load_1 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !131 ; [#uses=3 type=float] [debug line = 136:2]
  %g_addr_1 = getelementptr [4 x float]* %g, i64 0, i64 2, !dbg !131 ; [#uses=1 type=float*] [debug line = 136:2]
  %g_load_1 = load float* %g_addr_1, align 4, !dbg !131 ; [#uses=4 type=float] [debug line = 136:2]
  %tmp_1 = fmul float %q_load_1, %g_load_1, !dbg !131 ; [#uses=1 type=float] [debug line = 136:2]
  %tmp_2 = fsub float %tmp_s, %tmp_1, !dbg !131   ; [#uses=1 type=float] [debug line = 136:2]
  %q_load_2 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !131 ; [#uses=3 type=float] [debug line = 136:2]
  %g_addr_2 = getelementptr [4 x float]* %g, i64 0, i64 3, !dbg !131 ; [#uses=1 type=float*] [debug line = 136:2]
  %g_load_2 = load float* %g_addr_2, align 4, !dbg !131 ; [#uses=4 type=float] [debug line = 136:2]
  %tmp_3 = fmul float %q_load_2, %g_load_2, !dbg !131 ; [#uses=1 type=float] [debug line = 136:2]
  %tmp_4 = fsub float %tmp_2, %tmp_3, !dbg !131   ; [#uses=1 type=float] [debug line = 136:2]
  %qDot_0 = fmul float %tmp_4, 5.000000e-01, !dbg !131 ; [#uses=2 type=float] [debug line = 136:2]
  call void @llvm.dbg.value(metadata !{float %qDot_0}, i64 0, metadata !133), !dbg !131 ; [debug line = 136:2] [debug variable = qDot[0]]
  %q_load_3 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !134 ; [#uses=3 type=float] [debug line = 138:2]
  %tmp_6 = fmul float %q_load_3, %g_load, !dbg !134 ; [#uses=1 type=float] [debug line = 138:2]
  %tmp_7 = fmul float %q_load_1, %g_load_2, !dbg !134 ; [#uses=1 type=float] [debug line = 138:2]
  %tmp_8 = fadd float %tmp_6, %tmp_7, !dbg !134   ; [#uses=1 type=float] [debug line = 138:2]
  %tmp_9 = fmul float %q_load_2, %g_load_1, !dbg !134 ; [#uses=1 type=float] [debug line = 138:2]
  %tmp_5 = fsub float %tmp_8, %tmp_9, !dbg !134   ; [#uses=1 type=float] [debug line = 138:2]
  %qDot_1 = fmul float %tmp_5, 5.000000e-01, !dbg !134 ; [#uses=2 type=float] [debug line = 138:2]
  call void @llvm.dbg.value(metadata !{float %qDot_1}, i64 0, metadata !135), !dbg !134 ; [debug line = 138:2] [debug variable = qDot[1]]
  %tmp_10 = fmul float %q_load_3, %g_load_1, !dbg !136 ; [#uses=1 type=float] [debug line = 140:2]
  %tmp_11 = fmul float %q_load, %g_load_2, !dbg !136 ; [#uses=1 type=float] [debug line = 140:2]
  %tmp_12 = fsub float %tmp_10, %tmp_11, !dbg !136 ; [#uses=1 type=float] [debug line = 140:2]
  %tmp_13 = fmul float %q_load_2, %g_load, !dbg !136 ; [#uses=1 type=float] [debug line = 140:2]
  %tmp_14 = fadd float %tmp_12, %tmp_13, !dbg !136 ; [#uses=1 type=float] [debug line = 140:2]
  %qDot_2 = fmul float %tmp_14, 5.000000e-01, !dbg !136 ; [#uses=2 type=float] [debug line = 140:2]
  call void @llvm.dbg.value(metadata !{float %qDot_2}, i64 0, metadata !137), !dbg !136 ; [debug line = 140:2] [debug variable = qDot[2]]
  %tmp_15 = fmul float %q_load_3, %g_load_2, !dbg !138 ; [#uses=1 type=float] [debug line = 142:2]
  %tmp_16 = fmul float %q_load, %g_load_1, !dbg !138 ; [#uses=1 type=float] [debug line = 142:2]
  %tmp_17 = fadd float %tmp_15, %tmp_16, !dbg !138 ; [#uses=1 type=float] [debug line = 142:2]
  %tmp_18 = fmul float %q_load_1, %g_load, !dbg !138 ; [#uses=1 type=float] [debug line = 142:2]
  %tmp_19 = fsub float %tmp_17, %tmp_18, !dbg !138 ; [#uses=1 type=float] [debug line = 142:2]
  %qDot_3 = fmul float %tmp_19, 5.000000e-01, !dbg !138 ; [#uses=2 type=float] [debug line = 142:2]
  call void @llvm.dbg.value(metadata !{float %qDot_3}, i64 0, metadata !139), !dbg !138 ; [debug line = 142:2] [debug variable = qDot[3]]
  %a_addr = getelementptr [4 x float]* %a, i64 0, i64 1, !dbg !140 ; [#uses=2 type=float*] [debug line = 145:2]
  %a_load = load float* %a_addr, align 4, !dbg !140 ; [#uses=2 type=float] [debug line = 145:2]
  %a_load_to_int = bitcast float %a_load to i32   ; [#uses=2 type=i32]
  %tmp_20 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_21 = trunc i32 %a_load_to_int to i23       ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_20, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_21, 0                ; [#uses=1 type=i1]
  %tmp_22 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp_64 = fcmp oeq float %a_load, 0.000000e+00, !dbg !140 ; [#uses=1 type=i1] [debug line = 145:2]
  %tmp_65 = and i1 %tmp_22, %tmp_64, !dbg !140    ; [#uses=1 type=i1] [debug line = 145:2]
  br i1 %tmp_65, label %1, label %._crit_edge, !dbg !140 ; [debug line = 145:2]

; <label>:1                                       ; preds = %0
  %a_addr_1 = getelementptr [4 x float]* %a, i64 0, i64 2, !dbg !140 ; [#uses=1 type=float*] [debug line = 145:2]
  %a_load_1 = load float* %a_addr_1, align 4, !dbg !140 ; [#uses=2 type=float] [debug line = 145:2]
  %a_load_1_to_int = bitcast float %a_load_1 to i32 ; [#uses=2 type=i32]
  %tmp_66 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_67 = trunc i32 %a_load_1_to_int to i23     ; [#uses=1 type=i23]
  %notlhs3 = icmp ne i8 %tmp_66, -1               ; [#uses=1 type=i1]
  %notrhs4 = icmp eq i23 %tmp_67, 0               ; [#uses=1 type=i1]
  %tmp_68 = or i1 %notrhs4, %notlhs3              ; [#uses=1 type=i1]
  %tmp_69 = fcmp oeq float %a_load_1, 0.000000e+00, !dbg !140 ; [#uses=1 type=i1] [debug line = 145:2]
  %tmp_70 = and i1 %tmp_68, %tmp_69, !dbg !140    ; [#uses=1 type=i1] [debug line = 145:2]
  br i1 %tmp_70, label %2, label %._crit_edge, !dbg !140 ; [debug line = 145:2]

; <label>:2                                       ; preds = %1
  %a_addr_2 = getelementptr [4 x float]* %a, i64 0, i64 3, !dbg !140 ; [#uses=1 type=float*] [debug line = 145:2]
  %a_load_2 = load float* %a_addr_2, align 4, !dbg !140 ; [#uses=2 type=float] [debug line = 145:2]
  %a_load_2_to_int = bitcast float %a_load_2 to i32 ; [#uses=2 type=i32]
  %tmp_71 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_72 = trunc i32 %a_load_2_to_int to i23     ; [#uses=1 type=i23]
  %notlhs5 = icmp ne i8 %tmp_71, -1               ; [#uses=1 type=i1]
  %notrhs6 = icmp eq i23 %tmp_72, 0               ; [#uses=1 type=i1]
  %tmp_73 = or i1 %notrhs6, %notlhs5              ; [#uses=1 type=i1]
  %tmp_74 = fcmp oeq float %a_load_2, 0.000000e+00, !dbg !140 ; [#uses=1 type=i1] [debug line = 145:2]
  %tmp_75 = and i1 %tmp_73, %tmp_74, !dbg !140    ; [#uses=1 type=i1] [debug line = 145:2]
  br i1 %tmp_75, label %._crit_edge2, label %._crit_edge, !dbg !140 ; [debug line = 145:2]

._crit_edge:                                      ; preds = %2, %1, %0
  call fastcc void @normalise([4 x float]* %a), !dbg !141 ; [debug line = 148:3]
  %q_load_4 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !143 ; [#uses=4 type=float] [debug line = 151:3]
  %p_2q0 = fmul float %q_load_4, 2.000000e+00, !dbg !143 ; [#uses=2 type=float] [debug line = 151:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0}, i64 0, metadata !144), !dbg !143 ; [debug line = 151:3] [debug variable = _2q0]
  %q_load_5 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !145 ; [#uses=6 type=float] [debug line = 152:3]
  %p_2q1 = fmul float %q_load_5, 2.000000e+00, !dbg !145 ; [#uses=2 type=float] [debug line = 152:3]
  call void @llvm.dbg.value(metadata !{float %p_2q1}, i64 0, metadata !146), !dbg !145 ; [debug line = 152:3] [debug variable = _2q1]
  %q_load_6 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !147 ; [#uses=6 type=float] [debug line = 153:3]
  %p_2q2 = fmul float %q_load_6, 2.000000e+00, !dbg !147 ; [#uses=2 type=float] [debug line = 153:3]
  call void @llvm.dbg.value(metadata !{float %p_2q2}, i64 0, metadata !148), !dbg !147 ; [debug line = 153:3] [debug variable = _2q2]
  %q_load_7 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !149 ; [#uses=5 type=float] [debug line = 154:3]
  %p_2q3 = fmul float %q_load_7, 2.000000e+00, !dbg !149 ; [#uses=2 type=float] [debug line = 154:3]
  call void @llvm.dbg.value(metadata !{float %p_2q3}, i64 0, metadata !150), !dbg !149 ; [debug line = 154:3] [debug variable = _2q3]
  %p_4q0 = fmul float %q_load_4, 4.000000e+00, !dbg !151 ; [#uses=2 type=float] [debug line = 155:3]
  call void @llvm.dbg.value(metadata !{float %p_4q0}, i64 0, metadata !152), !dbg !151 ; [debug line = 155:3] [debug variable = _4q0]
  %p_4q1 = fmul float %q_load_5, 4.000000e+00, !dbg !153 ; [#uses=3 type=float] [debug line = 156:3]
  call void @llvm.dbg.value(metadata !{float %p_4q1}, i64 0, metadata !154), !dbg !153 ; [debug line = 156:3] [debug variable = _4q1]
  %p_4q2 = fmul float %q_load_6, 4.000000e+00, !dbg !155 ; [#uses=3 type=float] [debug line = 157:3]
  call void @llvm.dbg.value(metadata !{float %p_4q2}, i64 0, metadata !156), !dbg !155 ; [debug line = 157:3] [debug variable = _4q2]
  %p_8q1 = fmul float %q_load_5, 8.000000e+00, !dbg !157 ; [#uses=2 type=float] [debug line = 158:3]
  call void @llvm.dbg.value(metadata !{float %p_8q1}, i64 0, metadata !158), !dbg !157 ; [debug line = 158:3] [debug variable = _8q1]
  %p_8q2 = fmul float %q_load_6, 8.000000e+00, !dbg !159 ; [#uses=2 type=float] [debug line = 159:3]
  call void @llvm.dbg.value(metadata !{float %p_8q2}, i64 0, metadata !160), !dbg !159 ; [debug line = 159:3] [debug variable = _8q2]
  %q0q0 = fmul float %q_load_4, %q_load_4, !dbg !161 ; [#uses=1 type=float] [debug line = 160:3]
  call void @llvm.dbg.value(metadata !{float %q0q0}, i64 0, metadata !162), !dbg !161 ; [debug line = 160:3] [debug variable = q0q0]
  %q1q1 = fmul float %q_load_5, %q_load_5, !dbg !163 ; [#uses=4 type=float] [debug line = 161:3]
  call void @llvm.dbg.value(metadata !{float %q1q1}, i64 0, metadata !164), !dbg !163 ; [debug line = 161:3] [debug variable = q1q1]
  %q2q2 = fmul float %q_load_6, %q_load_6, !dbg !165 ; [#uses=4 type=float] [debug line = 162:3]
  call void @llvm.dbg.value(metadata !{float %q2q2}, i64 0, metadata !166), !dbg !165 ; [debug line = 162:3] [debug variable = q2q2]
  %q3q3 = fmul float %q_load_7, %q_load_7, !dbg !167 ; [#uses=2 type=float] [debug line = 163:3]
  call void @llvm.dbg.value(metadata !{float %q3q3}, i64 0, metadata !168), !dbg !167 ; [debug line = 163:3] [debug variable = q3q3]
  %tmp_23 = fmul float %p_4q0, %q2q2, !dbg !169   ; [#uses=1 type=float] [debug line = 167:3]
  %a_load_3 = load float* %a_addr, align 4, !dbg !169 ; [#uses=4 type=float] [debug line = 167:3]
  %tmp_24 = fmul float %p_2q2, %a_load_3, !dbg !169 ; [#uses=1 type=float] [debug line = 167:3]
  %tmp_25 = fadd float %tmp_23, %tmp_24, !dbg !169 ; [#uses=1 type=float] [debug line = 167:3]
  %tmp_26 = fmul float %p_4q0, %q1q1, !dbg !169   ; [#uses=1 type=float] [debug line = 167:3]
  %tmp_27 = fadd float %tmp_25, %tmp_26, !dbg !169 ; [#uses=1 type=float] [debug line = 167:3]
  %a_addr_3 = getelementptr [4 x float]* %a, i64 0, i64 2, !dbg !169 ; [#uses=1 type=float*] [debug line = 167:3]
  %a_load_4 = load float* %a_addr_3, align 4, !dbg !169 ; [#uses=4 type=float] [debug line = 167:3]
  %tmp_28 = fmul float %p_2q1, %a_load_4, !dbg !169 ; [#uses=1 type=float] [debug line = 167:3]
  %s_0 = fsub float %tmp_27, %tmp_28, !dbg !169   ; [#uses=1 type=float] [debug line = 167:3]
  call void @llvm.dbg.value(metadata !{float %s_0}, i64 0, metadata !170), !dbg !169 ; [debug line = 167:3] [debug variable = s[0]]
  %tmp_29 = fmul float %p_4q1, %q3q3, !dbg !172   ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_30 = fmul float %p_2q3, %a_load_3, !dbg !172 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_31 = fsub float %tmp_29, %tmp_30, !dbg !172 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_32 = fmul float %q0q0, 4.000000e+00, !dbg !172 ; [#uses=2 type=float] [debug line = 169:3]
  %tmp_33 = fmul float %tmp_32, %q_load_5, !dbg !172 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_34 = fadd float %tmp_31, %tmp_33, !dbg !172 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_35 = fmul float %p_2q0, %a_load_4, !dbg !172 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_36 = fsub float %tmp_34, %tmp_35, !dbg !172 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_37 = fsub float %tmp_36, %p_4q1, !dbg !172 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_38 = fmul float %p_8q1, %q1q1, !dbg !172   ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_39 = fadd float %tmp_37, %tmp_38, !dbg !172 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_40 = fmul float %p_8q1, %q2q2, !dbg !172   ; [#uses=1 type=float] [debug line = 169:3]
  %tmp_41 = fadd float %tmp_39, %tmp_40, !dbg !172 ; [#uses=1 type=float] [debug line = 169:3]
  %a_addr_4 = getelementptr [4 x float]* %a, i64 0, i64 3, !dbg !172 ; [#uses=1 type=float*] [debug line = 169:3]
  %a_load_5 = load float* %a_addr_4, align 4, !dbg !172 ; [#uses=2 type=float] [debug line = 169:3]
  %tmp_42 = fmul float %p_4q1, %a_load_5, !dbg !172 ; [#uses=1 type=float] [debug line = 169:3]
  %s_1 = fadd float %tmp_41, %tmp_42, !dbg !172   ; [#uses=1 type=float] [debug line = 169:3]
  call void @llvm.dbg.value(metadata !{float %s_1}, i64 0, metadata !173), !dbg !172 ; [debug line = 169:3] [debug variable = s[1]]
  %tmp_43 = fmul float %tmp_32, %q_load_6, !dbg !174 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_44 = fmul float %p_2q0, %a_load_3, !dbg !174 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_45 = fadd float %tmp_43, %tmp_44, !dbg !174 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_46 = fmul float %p_4q2, %q3q3, !dbg !174   ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_47 = fadd float %tmp_45, %tmp_46, !dbg !174 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_48 = fmul float %p_2q3, %a_load_4, !dbg !174 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_49 = fsub float %tmp_47, %tmp_48, !dbg !174 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_50 = fsub float %tmp_49, %p_4q2, !dbg !174 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_51 = fmul float %p_8q2, %q1q1, !dbg !174   ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_52 = fadd float %tmp_50, %tmp_51, !dbg !174 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_53 = fmul float %p_8q2, %q2q2, !dbg !174   ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_54 = fadd float %tmp_52, %tmp_53, !dbg !174 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp_55 = fmul float %p_4q2, %a_load_5, !dbg !174 ; [#uses=1 type=float] [debug line = 171:3]
  %s_2 = fadd float %tmp_54, %tmp_55, !dbg !174   ; [#uses=1 type=float] [debug line = 171:3]
  call void @llvm.dbg.value(metadata !{float %s_2}, i64 0, metadata !175), !dbg !174 ; [debug line = 171:3] [debug variable = s[2]]
  %tmp_56 = fmul float %q1q1, 4.000000e+00, !dbg !176 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_57 = fmul float %tmp_56, %q_load_7, !dbg !176 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_58 = fmul float %p_2q1, %a_load_3, !dbg !176 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_59 = fsub float %tmp_57, %tmp_58, !dbg !176 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_60 = fmul float %q2q2, 4.000000e+00, !dbg !176 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_61 = fmul float %tmp_60, %q_load_7, !dbg !176 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_62 = fadd float %tmp_59, %tmp_61, !dbg !176 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp_63 = fmul float %p_2q2, %a_load_4, !dbg !176 ; [#uses=1 type=float] [debug line = 173:3]
  %s_3 = fsub float %tmp_62, %tmp_63, !dbg !176   ; [#uses=2 type=float] [debug line = 173:3]
  call void @llvm.dbg.value(metadata !{float %s_3}, i64 0, metadata !177), !dbg !176 ; [debug line = 173:3] [debug variable = s[3]]
  %call_ret1 = call fastcc { float, float, float } @normalise.1(float %s_0, float %s_1, float %s_2, float %s_3), !dbg !178 ; [#uses=3 type={ float, float, float }] [debug line = 176:3]
  %s_2_1 = extractvalue { float, float, float } %call_ret1, 1, !dbg !178 ; [#uses=1 type=float] [debug line = 176:3]
  %s_1_1 = extractvalue { float, float, float } %call_ret1, 0, !dbg !178 ; [#uses=1 type=float] [debug line = 176:3]
  %s_0_1 = extractvalue { float, float, float } %call_ret1, 2, !dbg !178 ; [#uses=1 type=float] [debug line = 176:3]
  call void @llvm.dbg.value(metadata !{float %s_0_1}, i64 0, metadata !170), !dbg !178 ; [debug line = 176:3] [debug variable = s[0]]
  call void @llvm.dbg.value(metadata !{float %s_1_1}, i64 0, metadata !173), !dbg !178 ; [debug line = 176:3] [debug variable = s[1]]
  call void @llvm.dbg.value(metadata !{float %s_2_1}, i64 0, metadata !175), !dbg !178 ; [debug line = 176:3] [debug variable = s[2]]
  %beta_load = load float* @beta, align 4, !dbg !179 ; [#uses=1 type=float] [debug line = 179:3]
  %call_ret = call fastcc { float, float, float, float } @feedbackStep(float %qDot_0, float %qDot_1, float %qDot_2, float %qDot_3, float %beta_load, float %s_0_1, float %s_1_1, float %s_2_1, float %s_3), !dbg !179 ; [#uses=4 type={ float, float, float, float }] [debug line = 179:3]
  %qDot_0_1 = extractvalue { float, float, float, float } %call_ret, 0, !dbg !179 ; [#uses=1 type=float] [debug line = 179:3]
  call void @llvm.dbg.value(metadata !{float %qDot_0_1}, i64 0, metadata !133), !dbg !179 ; [debug line = 179:3] [debug variable = qDot[0]]
  %qDot_1_1 = extractvalue { float, float, float, float } %call_ret, 1, !dbg !179 ; [#uses=1 type=float] [debug line = 179:3]
  call void @llvm.dbg.value(metadata !{float %qDot_1_1}, i64 0, metadata !135), !dbg !179 ; [debug line = 179:3] [debug variable = qDot[1]]
  %qDot_2_1 = extractvalue { float, float, float, float } %call_ret, 2, !dbg !179 ; [#uses=1 type=float] [debug line = 179:3]
  call void @llvm.dbg.value(metadata !{float %qDot_2_1}, i64 0, metadata !137), !dbg !179 ; [debug line = 179:3] [debug variable = qDot[2]]
  %qDot_3_1 = extractvalue { float, float, float, float } %call_ret, 3, !dbg !179 ; [#uses=1 type=float] [debug line = 179:3]
  call void @llvm.dbg.value(metadata !{float %qDot_3_1}, i64 0, metadata !139), !dbg !179 ; [debug line = 179:3] [debug variable = qDot[3]]
  br label %._crit_edge2, !dbg !180               ; [debug line = 180:2]

._crit_edge2:                                     ; preds = %._crit_edge, %2
  %qDot_3_10 = phi float [ %qDot_3, %2 ], [ %qDot_3_1, %._crit_edge ] ; [#uses=1 type=float]
  %qDot_2_11 = phi float [ %qDot_2, %2 ], [ %qDot_2_1, %._crit_edge ] ; [#uses=1 type=float]
  %qDot_1_12 = phi float [ %qDot_1, %2 ], [ %qDot_1_1, %._crit_edge ] ; [#uses=1 type=float]
  %qDot = phi float [ %qDot_0, %2 ], [ %qDot_0_1, %._crit_edge ] ; [#uses=1 type=float]
  call fastcc void @integrateQdot([4 x float]* @q, float %qDot, float %qDot_1_12, float %qDot_2_11, float %qDot_3_10), !dbg !181 ; [debug line = 183:2]
  call fastcc void @normalise([4 x float]* @q), !dbg !182 ; [debug line = 186:2]
  ret void, !dbg !183                             ; [debug line = 187:1]
}

; [#uses=0]
define void @MadgwickAHRSupdate([4 x float]* %g, [4 x float]* %a, [4 x float]* %m) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([4 x float]* %g) nounwind, !map !184
  call void (...)* @_ssdm_op_SpecBitsMap([4 x float]* %a) nounwind, !map !188
  call void (...)* @_ssdm_op_SpecBitsMap([4 x float]* %m) nounwind, !map !192
  %m_addr = getelementptr [4 x float]* %m, i64 0, i64 0 ; [#uses=1 type=float*]
  %a_addr = getelementptr [4 x float]* %a, i64 0, i64 0 ; [#uses=1 type=float*]
  %g_addr = getelementptr [4 x float]* %g, i64 0, i64 0 ; [#uses=1 type=float*]
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @MadgwickAHRSupdate_s) nounwind
  call void @llvm.dbg.value(metadata !{[4 x float]* %g}, i64 0, metadata !196), !dbg !200 ; [debug line = 36:31] [debug variable = g]
  call void @llvm.dbg.value(metadata !{[4 x float]* %a}, i64 0, metadata !201), !dbg !202 ; [debug line = 36:43] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[4 x float]* %m}, i64 0, metadata !203), !dbg !204 ; [debug line = 36:55] [debug variable = m]
  store float 0.000000e+00, float* %g_addr, align 4, !dbg !205 ; [debug line = 37:2]
  store float 0.000000e+00, float* %a_addr, align 4, !dbg !207 ; [debug line = 38:2]
  store float 0.000000e+00, float* %m_addr, align 4, !dbg !208 ; [debug line = 39:2]
  %m_addr_1 = getelementptr [4 x float]* %m, i64 0, i64 1, !dbg !209 ; [#uses=2 type=float*] [debug line = 46:2]
  %m_load = load float* %m_addr_1, align 4, !dbg !209 ; [#uses=2 type=float] [debug line = 46:2]
  %m_load_to_int = bitcast float %m_load to i32   ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_86 = trunc i32 %m_load_to_int to i23       ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_86, 0                ; [#uses=1 type=i1]
  %tmp_87 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp_88 = fcmp oeq float %m_load, 0.000000e+00, !dbg !209 ; [#uses=1 type=i1] [debug line = 46:2]
  %tmp_232 = and i1 %tmp_87, %tmp_88, !dbg !209   ; [#uses=1 type=i1] [debug line = 46:2]
  br i1 %tmp_232, label %1, label %._crit_edge, !dbg !209 ; [debug line = 46:2]

; <label>:1                                       ; preds = %0
  %m_addr_2 = getelementptr [4 x float]* %m, i64 0, i64 2, !dbg !209 ; [#uses=1 type=float*] [debug line = 46:2]
  %m_load_1 = load float* %m_addr_2, align 4, !dbg !209 ; [#uses=2 type=float] [debug line = 46:2]
  %m_load_1_to_int = bitcast float %m_load_1 to i32 ; [#uses=2 type=i32]
  %tmp_233 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_load_1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_234 = trunc i32 %m_load_1_to_int to i23    ; [#uses=1 type=i23]
  %notlhs1 = icmp ne i8 %tmp_233, -1              ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp_234, 0              ; [#uses=1 type=i1]
  %tmp_235 = or i1 %notrhs1, %notlhs1             ; [#uses=1 type=i1]
  %tmp_236 = fcmp oeq float %m_load_1, 0.000000e+00, !dbg !209 ; [#uses=1 type=i1] [debug line = 46:2]
  %tmp_237 = and i1 %tmp_235, %tmp_236, !dbg !209 ; [#uses=1 type=i1] [debug line = 46:2]
  br i1 %tmp_237, label %2, label %._crit_edge, !dbg !209 ; [debug line = 46:2]

; <label>:2                                       ; preds = %1
  %m_addr_3 = getelementptr [4 x float]* %m, i64 0, i64 3, !dbg !209 ; [#uses=1 type=float*] [debug line = 46:2]
  %m_load_2 = load float* %m_addr_3, align 4, !dbg !209 ; [#uses=2 type=float] [debug line = 46:2]
  %m_load_2_to_int = bitcast float %m_load_2 to i32 ; [#uses=2 type=i32]
  %tmp_238 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %m_load_2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_239 = trunc i32 %m_load_2_to_int to i23    ; [#uses=1 type=i23]
  %notlhs2 = icmp ne i8 %tmp_238, -1              ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp_239, 0              ; [#uses=1 type=i1]
  %tmp_240 = or i1 %notrhs2, %notlhs2             ; [#uses=1 type=i1]
  %tmp_241 = fcmp oeq float %m_load_2, 0.000000e+00, !dbg !209 ; [#uses=1 type=i1] [debug line = 46:2]
  %tmp_242 = and i1 %tmp_240, %tmp_241, !dbg !209 ; [#uses=1 type=i1] [debug line = 46:2]
  br i1 %tmp_242, label %3, label %._crit_edge, !dbg !209 ; [debug line = 46:2]

; <label>:3                                       ; preds = %2
  call fastcc void @MadgwickAHRSupdateIM([4 x float]* %g, [4 x float]* %a) nounwind, !dbg !210 ; [debug line = 47:3]
  br label %6, !dbg !212                          ; [debug line = 48:3]

._crit_edge:                                      ; preds = %2, %1, %0
  %q_load = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !213 ; [#uses=4 type=float] [debug line = 52:2]
  %tmp_82_to_int = bitcast float %q_load to i32, !dbg !213 ; [#uses=1 type=i32] [debug line = 52:2]
  %tmp_82_neg = xor i32 %tmp_82_to_int, -2147483648, !dbg !213 ; [#uses=1 type=i32] [debug line = 52:2]
  %tmp_s = bitcast i32 %tmp_82_neg to float, !dbg !213 ; [#uses=1 type=float] [debug line = 52:2]
  %g_addr_3 = getelementptr [4 x float]* %g, i64 0, i64 1, !dbg !213 ; [#uses=1 type=float*] [debug line = 52:2]
  %g_load = load float* %g_addr_3, align 4, !dbg !213 ; [#uses=4 type=float] [debug line = 52:2]
  %tmp_64 = fmul float %g_load, %tmp_s, !dbg !213 ; [#uses=1 type=float] [debug line = 52:2]
  %q_load_8 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !213 ; [#uses=3 type=float] [debug line = 52:2]
  %g_addr_4 = getelementptr [4 x float]* %g, i64 0, i64 2, !dbg !213 ; [#uses=1 type=float*] [debug line = 52:2]
  %g_load_3 = load float* %g_addr_4, align 4, !dbg !213 ; [#uses=4 type=float] [debug line = 52:2]
  %tmp_65 = fmul float %q_load_8, %g_load_3, !dbg !213 ; [#uses=1 type=float] [debug line = 52:2]
  %tmp_66 = fsub float %tmp_64, %tmp_65, !dbg !213 ; [#uses=1 type=float] [debug line = 52:2]
  %q_load_9 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !213 ; [#uses=3 type=float] [debug line = 52:2]
  %g_addr_5 = getelementptr [4 x float]* %g, i64 0, i64 3, !dbg !213 ; [#uses=1 type=float*] [debug line = 52:2]
  %g_load_4 = load float* %g_addr_5, align 4, !dbg !213 ; [#uses=4 type=float] [debug line = 52:2]
  %tmp_67 = fmul float %q_load_9, %g_load_4, !dbg !213 ; [#uses=1 type=float] [debug line = 52:2]
  %tmp_68 = fsub float %tmp_66, %tmp_67, !dbg !213 ; [#uses=1 type=float] [debug line = 52:2]
  %qDot_0 = fmul float %tmp_68, 5.000000e-01, !dbg !213 ; [#uses=2 type=float] [debug line = 52:2]
  call void @llvm.dbg.value(metadata !{float %qDot_0}, i64 0, metadata !214), !dbg !213 ; [debug line = 52:2] [debug variable = qDot[0]]
  %tmp_69 = fmul float %q_load, %g_load, !dbg !215 ; [#uses=1 type=float] [debug line = 54:2]
  %tmp_70 = fmul float %q_load_8, %g_load_4, !dbg !215 ; [#uses=1 type=float] [debug line = 54:2]
  %tmp_71 = fadd float %tmp_69, %tmp_70, !dbg !215 ; [#uses=1 type=float] [debug line = 54:2]
  %tmp_72 = fmul float %q_load_9, %g_load_3, !dbg !215 ; [#uses=1 type=float] [debug line = 54:2]
  %tmp_73 = fsub float %tmp_71, %tmp_72, !dbg !215 ; [#uses=1 type=float] [debug line = 54:2]
  %qDot_1 = fmul float %tmp_73, 5.000000e-01, !dbg !215 ; [#uses=2 type=float] [debug line = 54:2]
  call void @llvm.dbg.value(metadata !{float %qDot_1}, i64 0, metadata !216), !dbg !215 ; [debug line = 54:2] [debug variable = qDot[1]]
  %tmp_74 = fmul float %q_load, %g_load_3, !dbg !217 ; [#uses=1 type=float] [debug line = 56:2]
  %q_load_10 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !217 ; [#uses=2 type=float] [debug line = 56:2]
  %tmp_75 = fmul float %q_load_10, %g_load_4, !dbg !217 ; [#uses=1 type=float] [debug line = 56:2]
  %tmp_76 = fsub float %tmp_74, %tmp_75, !dbg !217 ; [#uses=1 type=float] [debug line = 56:2]
  %tmp_77 = fmul float %q_load_9, %g_load, !dbg !217 ; [#uses=1 type=float] [debug line = 56:2]
  %tmp_78 = fadd float %tmp_76, %tmp_77, !dbg !217 ; [#uses=1 type=float] [debug line = 56:2]
  %qDot_2 = fmul float %tmp_78, 5.000000e-01, !dbg !217 ; [#uses=2 type=float] [debug line = 56:2]
  call void @llvm.dbg.value(metadata !{float %qDot_2}, i64 0, metadata !218), !dbg !217 ; [debug line = 56:2] [debug variable = qDot[2]]
  %tmp_79 = fmul float %q_load, %g_load_4, !dbg !219 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_80 = fmul float %q_load_10, %g_load_3, !dbg !219 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_81 = fadd float %tmp_79, %tmp_80, !dbg !219 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_82 = fmul float %q_load_8, %g_load, !dbg !219 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_83 = fsub float %tmp_81, %tmp_82, !dbg !219 ; [#uses=1 type=float] [debug line = 58:2]
  %qDot_3 = fmul float %tmp_83, 5.000000e-01, !dbg !219 ; [#uses=2 type=float] [debug line = 58:2]
  call void @llvm.dbg.value(metadata !{float %qDot_3}, i64 0, metadata !220), !dbg !219 ; [debug line = 58:2] [debug variable = qDot[3]]
  %a_addr_5 = getelementptr [4 x float]* %a, i64 0, i64 1, !dbg !221 ; [#uses=2 type=float*] [debug line = 62:2]
  %a_load = load float* %a_addr_5, align 4, !dbg !221 ; [#uses=2 type=float] [debug line = 62:2]
  %a_load_to_int = bitcast float %a_load to i32   ; [#uses=2 type=i32]
  %tmp_243 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_244 = trunc i32 %a_load_to_int to i23      ; [#uses=1 type=i23]
  %notlhs6 = icmp ne i8 %tmp_243, -1              ; [#uses=1 type=i1]
  %notrhs7 = icmp eq i23 %tmp_244, 0              ; [#uses=1 type=i1]
  %tmp_245 = or i1 %notrhs7, %notlhs6             ; [#uses=1 type=i1]
  %tmp_246 = fcmp oeq float %a_load, 0.000000e+00, !dbg !221 ; [#uses=1 type=i1] [debug line = 62:2]
  %tmp_247 = and i1 %tmp_245, %tmp_246, !dbg !221 ; [#uses=1 type=i1] [debug line = 62:2]
  br i1 %tmp_247, label %4, label %._crit_edge3, !dbg !221 ; [debug line = 62:2]

; <label>:4                                       ; preds = %._crit_edge
  %a_addr_6 = getelementptr [4 x float]* %a, i64 0, i64 2, !dbg !221 ; [#uses=1 type=float*] [debug line = 62:2]
  %a_load_6 = load float* %a_addr_6, align 4, !dbg !221 ; [#uses=2 type=float] [debug line = 62:2]
  %a_load_6_to_int = bitcast float %a_load_6 to i32 ; [#uses=2 type=i32]
  %tmp_248 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_6_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_249 = trunc i32 %a_load_6_to_int to i23    ; [#uses=1 type=i23]
  %notlhs8 = icmp ne i8 %tmp_248, -1              ; [#uses=1 type=i1]
  %notrhs9 = icmp eq i23 %tmp_249, 0              ; [#uses=1 type=i1]
  %tmp_250 = or i1 %notrhs9, %notlhs8             ; [#uses=1 type=i1]
  %tmp_251 = fcmp oeq float %a_load_6, 0.000000e+00, !dbg !221 ; [#uses=1 type=i1] [debug line = 62:2]
  %tmp_252 = and i1 %tmp_250, %tmp_251, !dbg !221 ; [#uses=1 type=i1] [debug line = 62:2]
  br i1 %tmp_252, label %5, label %._crit_edge3, !dbg !221 ; [debug line = 62:2]

; <label>:5                                       ; preds = %4
  %a_addr_7 = getelementptr [4 x float]* %a, i64 0, i64 3, !dbg !221 ; [#uses=1 type=float*] [debug line = 62:2]
  %a_load_7 = load float* %a_addr_7, align 4, !dbg !221 ; [#uses=2 type=float] [debug line = 62:2]
  %a_load_7_to_int = bitcast float %a_load_7 to i32 ; [#uses=2 type=i32]
  %tmp_253 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %a_load_7_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_254 = trunc i32 %a_load_7_to_int to i23    ; [#uses=1 type=i23]
  %notlhs3 = icmp ne i8 %tmp_253, -1              ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp_254, 0              ; [#uses=1 type=i1]
  %tmp_255 = or i1 %notrhs3, %notlhs3             ; [#uses=1 type=i1]
  %tmp_256 = fcmp oeq float %a_load_7, 0.000000e+00, !dbg !221 ; [#uses=1 type=i1] [debug line = 62:2]
  %tmp_257 = and i1 %tmp_255, %tmp_256, !dbg !221 ; [#uses=1 type=i1] [debug line = 62:2]
  br i1 %tmp_257, label %._crit_edge5, label %._crit_edge3, !dbg !221 ; [debug line = 62:2]

._crit_edge3:                                     ; preds = %5, %4, %._crit_edge
  call fastcc void @normalise([4 x float]* %a) nounwind, !dbg !222 ; [debug line = 65:3]
  call fastcc void @normalise([4 x float]* %m) nounwind, !dbg !224 ; [debug line = 68:3]
  %q_load_11 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !225 ; [#uses=9 type=float] [debug line = 71:3]
  %p_2q0 = fmul float %q_load_11, 2.000000e+00, !dbg !225 ; [#uses=6 type=float] [debug line = 71:3]
  %m_load_3 = load float* %m_addr_1, align 4, !dbg !225 ; [#uses=7 type=float] [debug line = 71:3]
  %p_2q0mx = fmul float %p_2q0, %m_load_3, !dbg !225 ; [#uses=2 type=float] [debug line = 71:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0mx}, i64 0, metadata !226), !dbg !225 ; [debug line = 71:3] [debug variable = _2q0mx]
  %m_addr_4 = getelementptr [4 x float]* %m, i64 0, i64 2, !dbg !227 ; [#uses=1 type=float*] [debug line = 72:3]
  %m_load_4 = load float* %m_addr_4, align 4, !dbg !227 ; [#uses=8 type=float] [debug line = 72:3]
  %p_2q0my = fmul float %p_2q0, %m_load_4, !dbg !227 ; [#uses=2 type=float] [debug line = 72:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0my}, i64 0, metadata !228), !dbg !227 ; [debug line = 72:3] [debug variable = _2q0my]
  %m_addr_5 = getelementptr [4 x float]* %m, i64 0, i64 3, !dbg !229 ; [#uses=1 type=float*] [debug line = 73:3]
  %m_load_5 = load float* %m_addr_5, align 4, !dbg !229 ; [#uses=8 type=float] [debug line = 73:3]
  %p_2q0mz = fmul float %p_2q0, %m_load_5, !dbg !229 ; [#uses=2 type=float] [debug line = 73:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0mz}, i64 0, metadata !230), !dbg !229 ; [debug line = 73:3] [debug variable = _2q0mz]
  %q_load_12 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !231 ; [#uses=12 type=float] [debug line = 74:3]
  %p_2q1 = fmul float %q_load_12, 2.000000e+00, !dbg !231 ; [#uses=5 type=float] [debug line = 74:3]
  %p_2q1mx = fmul float %p_2q1, %m_load_3, !dbg !231 ; [#uses=2 type=float] [debug line = 74:3]
  call void @llvm.dbg.value(metadata !{float %p_2q1mx}, i64 0, metadata !232), !dbg !231 ; [debug line = 74:3] [debug variable = _2q1mx]
  call void @llvm.dbg.value(metadata !{float %p_2q0}, i64 0, metadata !233), !dbg !234 ; [debug line = 75:3] [debug variable = _2q0]
  call void @llvm.dbg.value(metadata !{float %p_2q1}, i64 0, metadata !235), !dbg !236 ; [debug line = 76:3] [debug variable = _2q1]
  %q_load_13 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !237 ; [#uses=16 type=float] [debug line = 77:3]
  %p_2q2 = fmul float %q_load_13, 2.000000e+00, !dbg !237 ; [#uses=5 type=float] [debug line = 77:3]
  call void @llvm.dbg.value(metadata !{float %p_2q2}, i64 0, metadata !238), !dbg !237 ; [debug line = 77:3] [debug variable = _2q2]
  %q_load_14 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !239 ; [#uses=17 type=float] [debug line = 78:3]
  %p_2q3 = fmul float %q_load_14, 2.000000e+00, !dbg !239 ; [#uses=2 type=float] [debug line = 78:3]
  call void @llvm.dbg.value(metadata !{float %p_2q3}, i64 0, metadata !240), !dbg !239 ; [debug line = 78:3] [debug variable = _2q3]
  %p_2q0q2 = fmul float %p_2q0, %q_load_13, !dbg !241 ; [#uses=1 type=float] [debug line = 79:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0q2}, i64 0, metadata !242), !dbg !241 ; [debug line = 79:3] [debug variable = _2q0q2]
  %p_2q2q3 = fmul float %p_2q2, %q_load_14, !dbg !243 ; [#uses=1 type=float] [debug line = 80:3]
  call void @llvm.dbg.value(metadata !{float %p_2q2q3}, i64 0, metadata !244), !dbg !243 ; [debug line = 80:3] [debug variable = _2q2q3]
  %q0q0 = fmul float %q_load_11, %q_load_11, !dbg !245 ; [#uses=3 type=float] [debug line = 81:3]
  call void @llvm.dbg.value(metadata !{float %q0q0}, i64 0, metadata !246), !dbg !245 ; [debug line = 81:3] [debug variable = q0q0]
  %q0q1 = fmul float %q_load_11, %q_load_12, !dbg !247 ; [#uses=2 type=float] [debug line = 82:3]
  call void @llvm.dbg.value(metadata !{float %q0q1}, i64 0, metadata !248), !dbg !247 ; [debug line = 82:3] [debug variable = q0q1]
  %q0q2 = fmul float %q_load_11, %q_load_13, !dbg !249 ; [#uses=2 type=float] [debug line = 83:3]
  call void @llvm.dbg.value(metadata !{float %q0q2}, i64 0, metadata !250), !dbg !249 ; [debug line = 83:3] [debug variable = q0q2]
  %q0q3 = fmul float %q_load_11, %q_load_14, !dbg !251 ; [#uses=1 type=float] [debug line = 84:3]
  call void @llvm.dbg.value(metadata !{float %q0q3}, i64 0, metadata !252), !dbg !251 ; [debug line = 84:3] [debug variable = q0q3]
  %q1q1 = fmul float %q_load_12, %q_load_12, !dbg !253 ; [#uses=5 type=float] [debug line = 85:3]
  call void @llvm.dbg.value(metadata !{float %q1q1}, i64 0, metadata !254), !dbg !253 ; [debug line = 85:3] [debug variable = q1q1]
  %q1q2 = fmul float %q_load_12, %q_load_13, !dbg !255 ; [#uses=1 type=float] [debug line = 86:3]
  call void @llvm.dbg.value(metadata !{float %q1q2}, i64 0, metadata !256), !dbg !255 ; [debug line = 86:3] [debug variable = q1q2]
  %q1q3 = fmul float %q_load_12, %q_load_14, !dbg !257 ; [#uses=3 type=float] [debug line = 87:3]
  call void @llvm.dbg.value(metadata !{float %q1q3}, i64 0, metadata !258), !dbg !257 ; [debug line = 87:3] [debug variable = q1q3]
  %q2q2 = fmul float %q_load_13, %q_load_13, !dbg !259 ; [#uses=6 type=float] [debug line = 88:3]
  call void @llvm.dbg.value(metadata !{float %q2q2}, i64 0, metadata !260), !dbg !259 ; [debug line = 88:3] [debug variable = q2q2]
  %q2q3 = fmul float %q_load_13, %q_load_14, !dbg !261 ; [#uses=1 type=float] [debug line = 89:3]
  call void @llvm.dbg.value(metadata !{float %q2q3}, i64 0, metadata !262), !dbg !261 ; [debug line = 89:3] [debug variable = q2q3]
  %q3q3 = fmul float %q_load_14, %q_load_14, !dbg !263 ; [#uses=4 type=float] [debug line = 90:3]
  call void @llvm.dbg.value(metadata !{float %q3q3}, i64 0, metadata !264), !dbg !263 ; [debug line = 90:3] [debug variable = q3q3]
  %tmp_84 = fmul float %m_load_3, %q0q0, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_85 = fmul float %p_2q0my, %q_load_14, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_89 = fsub float %tmp_84, %tmp_85, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_90 = fmul float %p_2q0mz, %q_load_13, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_91 = fadd float %tmp_89, %tmp_90, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_92 = fmul float %m_load_3, %q1q1, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_93 = fadd float %tmp_91, %tmp_92, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_94 = fmul float %p_2q1, %m_load_4, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_95 = fmul float %tmp_94, %q_load_13, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_96 = fadd float %tmp_93, %tmp_95, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_97 = fmul float %p_2q1, %m_load_5, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_98 = fmul float %tmp_97, %q_load_14, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_99 = fadd float %tmp_96, %tmp_98, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_100 = fmul float %m_load_3, %q2q2, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_101 = fsub float %tmp_99, %tmp_100, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp_102 = fmul float %m_load_3, %q3q3, !dbg !265 ; [#uses=1 type=float] [debug line = 94:3]
  %hx = fsub float %tmp_101, %tmp_102, !dbg !265  ; [#uses=2 type=float] [debug line = 94:3]
  call void @llvm.dbg.value(metadata !{float %hx}, i64 0, metadata !266), !dbg !265 ; [debug line = 94:3] [debug variable = hx]
  %tmp_103 = fmul float %p_2q0mx, %q_load_14, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_104 = fmul float %m_load_4, %q0q0, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_105 = fadd float %tmp_103, %tmp_104, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_106 = fmul float %p_2q0mz, %q_load_12, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_107 = fsub float %tmp_105, %tmp_106, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_108 = fmul float %p_2q1mx, %q_load_13, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_109 = fadd float %tmp_107, %tmp_108, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_110 = fmul float %m_load_4, %q1q1, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_111 = fsub float %tmp_109, %tmp_110, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_112 = fmul float %m_load_4, %q2q2, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_113 = fadd float %tmp_111, %tmp_112, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_114 = fmul float %p_2q2, %m_load_5, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_115 = fmul float %tmp_114, %q_load_14, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_116 = fadd float %tmp_113, %tmp_115, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp_117 = fmul float %m_load_4, %q3q3, !dbg !267 ; [#uses=1 type=float] [debug line = 96:3]
  %hy = fsub float %tmp_116, %tmp_117, !dbg !267  ; [#uses=2 type=float] [debug line = 96:3]
  call void @llvm.dbg.value(metadata !{float %hy}, i64 0, metadata !268), !dbg !267 ; [debug line = 96:3] [debug variable = hy]
  %tmp_118 = fmul float %hx, %hx, !dbg !269       ; [#uses=1 type=float] [debug line = 97:10]
  %tmp_119 = fmul float %hy, %hy, !dbg !269       ; [#uses=1 type=float] [debug line = 97:10]
  %tmp_120 = fadd float %tmp_118, %tmp_119, !dbg !269 ; [#uses=1 type=float] [debug line = 97:10]
  %p_2bx = call float @llvm.sqrt.f32(float %tmp_120), !dbg !269 ; [#uses=9 type=float] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{float %p_2bx}, i64 0, metadata !270), !dbg !269 ; [debug line = 97:10] [debug variable = _2bx]
  %tmp_144_to_int = bitcast float %p_2q0mx to i32, !dbg !271 ; [#uses=1 type=i32] [debug line = 99:3]
  %tmp_144_neg = xor i32 %tmp_144_to_int, -2147483648, !dbg !271 ; [#uses=1 type=i32] [debug line = 99:3]
  %tmp_121 = bitcast i32 %tmp_144_neg to float, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_122 = fmul float %q_load_13, %tmp_121, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_123 = fmul float %p_2q0my, %q_load_12, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_124 = fadd float %tmp_122, %tmp_123, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_125 = fmul float %m_load_5, %q0q0, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_126 = fadd float %tmp_124, %tmp_125, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_127 = fmul float %p_2q1mx, %q_load_14, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_128 = fadd float %tmp_126, %tmp_127, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_129 = fmul float %m_load_5, %q1q1, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_130 = fsub float %tmp_128, %tmp_129, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_131 = fmul float %p_2q2, %m_load_4, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_132 = fmul float %tmp_131, %q_load_14, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_133 = fadd float %tmp_130, %tmp_132, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_134 = fmul float %m_load_5, %q2q2, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_135 = fsub float %tmp_133, %tmp_134, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp_136 = fmul float %m_load_5, %q3q3, !dbg !271 ; [#uses=1 type=float] [debug line = 99:3]
  %p_2bz = fadd float %tmp_135, %tmp_136, !dbg !271 ; [#uses=8 type=float] [debug line = 99:3]
  call void @llvm.dbg.value(metadata !{float %p_2bz}, i64 0, metadata !272), !dbg !271 ; [debug line = 99:3] [debug variable = _2bz]
  %p_4bx = fmul float %p_2bx, 2.000000e+00, !dbg !273 ; [#uses=1 type=float] [debug line = 100:3]
  call void @llvm.dbg.value(metadata !{float %p_4bx}, i64 0, metadata !274), !dbg !273 ; [debug line = 100:3] [debug variable = _4bx]
  %p_4bz = fmul float %p_2bz, 2.000000e+00, !dbg !275 ; [#uses=2 type=float] [debug line = 101:3]
  call void @llvm.dbg.value(metadata !{float %p_4bz}, i64 0, metadata !276), !dbg !275 ; [debug line = 101:3] [debug variable = _4bz]
  %tmp_160_to_int = bitcast float %p_2q2 to i32, !dbg !277 ; [#uses=1 type=i32] [debug line = 105:3]
  %tmp_160_neg = xor i32 %tmp_160_to_int, -2147483648, !dbg !277 ; [#uses=1 type=i32] [debug line = 105:3]
  %tmp_137 = bitcast i32 %tmp_160_neg to float, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_138 = fmul float %q1q3, 2.000000e+00, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_139 = fsub float %tmp_138, %p_2q0q2, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %a_load_8 = load float* %a_addr_5, align 4, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_140 = fsub float %tmp_139, %a_load_8, !dbg !277 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp_141 = fmul float %tmp_140, %tmp_137, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_142 = fmul float %q0q1, 2.000000e+00, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_143 = fadd float %tmp_142, %p_2q2q3, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %a_addr_8 = getelementptr [4 x float]* %a, i64 0, i64 2, !dbg !277 ; [#uses=1 type=float*] [debug line = 105:3]
  %a_load_9 = load float* %a_addr_8, align 4, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_144 = fsub float %tmp_143, %a_load_9, !dbg !277 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp_145 = fmul float %p_2q1, %tmp_144, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_146 = fadd float %tmp_141, %tmp_145, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_147 = fmul float %p_2bz, %q_load_13, !dbg !277 ; [#uses=2 type=float] [debug line = 105:3]
  %tmp_148 = fsub float 5.000000e-01, %q2q2, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_149 = fsub float %tmp_148, %q3q3, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_150 = fmul float %p_2bx, %tmp_149, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_151 = fsub float %q1q3, %q0q2, !dbg !277   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_152 = fmul float %p_2bz, %tmp_151, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_153 = fadd float %tmp_150, %tmp_152, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_154 = fsub float %tmp_153, %m_load_3, !dbg !277 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp_155 = fmul float %tmp_147, %tmp_154, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_156 = fsub float %tmp_146, %tmp_155, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_180_to_int = bitcast float %p_2bx to i32, !dbg !277 ; [#uses=1 type=i32] [debug line = 105:3]
  %tmp_180_neg = xor i32 %tmp_180_to_int, -2147483648, !dbg !277 ; [#uses=1 type=i32] [debug line = 105:3]
  %tmp_157 = bitcast i32 %tmp_180_neg to float, !dbg !277 ; [#uses=2 type=float] [debug line = 105:3]
  %tmp_158 = fmul float %q_load_14, %tmp_157, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_159 = fmul float %p_2bz, %q_load_12, !dbg !277 ; [#uses=2 type=float] [debug line = 105:3]
  %tmp_160 = fadd float %tmp_158, %tmp_159, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_161 = fsub float %q1q2, %q0q3, !dbg !277   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_162 = fmul float %p_2bx, %tmp_161, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_163 = fadd float %q0q1, %q2q3, !dbg !277   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_164 = fmul float %p_2bz, %tmp_163, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_165 = fadd float %tmp_162, %tmp_164, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_166 = fsub float %tmp_165, %m_load_4, !dbg !277 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp_167 = fmul float %tmp_160, %tmp_166, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_168 = fadd float %tmp_156, %tmp_167, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_169 = fmul float %p_2bx, %q_load_13, !dbg !277 ; [#uses=2 type=float] [debug line = 105:3]
  %tmp_170 = fadd float %q0q2, %q1q3, !dbg !277   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_171 = fmul float %p_2bx, %tmp_170, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_172 = fsub float 5.000000e-01, %q1q1, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_173 = fsub float %tmp_172, %q2q2, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_174 = fmul float %p_2bz, %tmp_173, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_175 = fadd float %tmp_171, %tmp_174, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp_176 = fsub float %tmp_175, %m_load_5, !dbg !277 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp_177 = fmul float %tmp_169, %tmp_176, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  %s_0 = fadd float %tmp_168, %tmp_177, !dbg !277 ; [#uses=1 type=float] [debug line = 105:3]
  call void @llvm.dbg.value(metadata !{float %s_0}, i64 0, metadata !278), !dbg !277 ; [debug line = 105:3] [debug variable = s[0]]
  %tmp_178 = fmul float %p_2q3, %tmp_140, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_179 = fmul float %p_2q0, %tmp_144, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_180 = fadd float %tmp_178, %tmp_179, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_181 = fmul float %q_load_12, 4.000000e+00, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_182 = fmul float %q1q1, 2.000000e+00, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_183 = fsub float 1.000000e+00, %tmp_182, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_184 = fmul float %q2q2, 2.000000e+00, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_185 = fsub float %tmp_183, %tmp_184, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %a_addr_9 = getelementptr [4 x float]* %a, i64 0, i64 3, !dbg !280 ; [#uses=1 type=float*] [debug line = 107:3]
  %a_load_10 = load float* %a_addr_9, align 4, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_186 = fsub float %tmp_185, %a_load_10, !dbg !280 ; [#uses=2 type=float] [debug line = 107:3]
  %tmp_187 = fmul float %tmp_181, %tmp_186, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_188 = fsub float %tmp_180, %tmp_187, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_189 = fmul float %p_2bz, %q_load_14, !dbg !280 ; [#uses=2 type=float] [debug line = 107:3]
  %tmp_190 = fmul float %tmp_189, %tmp_154, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_191 = fadd float %tmp_188, %tmp_190, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_192 = fmul float %p_2bz, %q_load_11, !dbg !280 ; [#uses=2 type=float] [debug line = 107:3]
  %tmp_193 = fadd float %tmp_169, %tmp_192, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_194 = fmul float %tmp_193, %tmp_166, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_195 = fadd float %tmp_191, %tmp_194, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_196 = fmul float %p_2bx, %q_load_14, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_197 = fmul float %p_4bz, %q_load_12, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_198 = fsub float %tmp_196, %tmp_197, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp_199 = fmul float %tmp_198, %tmp_176, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  %s_1 = fadd float %tmp_195, %tmp_199, !dbg !280 ; [#uses=1 type=float] [debug line = 107:3]
  call void @llvm.dbg.value(metadata !{float %s_1}, i64 0, metadata !281), !dbg !280 ; [debug line = 107:3] [debug variable = s[1]]
  %tmp_225_to_int = bitcast float %p_2q0 to i32, !dbg !282 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_225_neg = xor i32 %tmp_225_to_int, -2147483648, !dbg !282 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_200 = bitcast i32 %tmp_225_neg to float, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_201 = fmul float %tmp_140, %tmp_200, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_202 = fmul float %p_2q3, %tmp_144, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_203 = fadd float %tmp_201, %tmp_202, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_204 = fmul float %q_load_13, 4.000000e+00, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_205 = fmul float %tmp_204, %tmp_186, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_206 = fsub float %tmp_203, %tmp_205, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_232_to_int = bitcast float %p_4bx to i32, !dbg !282 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_232_neg = xor i32 %tmp_232_to_int, -2147483648, !dbg !282 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_207 = bitcast i32 %tmp_232_neg to float, !dbg !282 ; [#uses=2 type=float] [debug line = 109:3]
  %tmp_208 = fmul float %q_load_13, %tmp_207, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_209 = fsub float %tmp_208, %tmp_192, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_210 = fmul float %tmp_209, %tmp_154, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_211 = fadd float %tmp_206, %tmp_210, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_212 = fmul float %p_2bx, %q_load_12, !dbg !282 ; [#uses=2 type=float] [debug line = 109:3]
  %tmp_213 = fadd float %tmp_212, %tmp_189, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_214 = fmul float %tmp_213, %tmp_166, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_215 = fadd float %tmp_211, %tmp_214, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_216 = fmul float %p_2bx, %q_load_11, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_217 = fmul float %p_4bz, %q_load_13, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_218 = fsub float %tmp_216, %tmp_217, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_219 = fmul float %tmp_218, %tmp_176, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  %s_2 = fadd float %tmp_215, %tmp_219, !dbg !282 ; [#uses=1 type=float] [debug line = 109:3]
  call void @llvm.dbg.value(metadata !{float %s_2}, i64 0, metadata !283), !dbg !282 ; [debug line = 109:3] [debug variable = s[2]]
  %tmp_220 = fmul float %p_2q1, %tmp_140, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_221 = fmul float %p_2q2, %tmp_144, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_222 = fadd float %tmp_220, %tmp_221, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_223 = fmul float %q_load_14, %tmp_207, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_224 = fadd float %tmp_223, %tmp_159, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_225 = fmul float %tmp_224, %tmp_154, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_226 = fadd float %tmp_222, %tmp_225, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_227 = fmul float %q_load_11, %tmp_157, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_228 = fadd float %tmp_227, %tmp_147, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_229 = fmul float %tmp_228, %tmp_166, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_230 = fadd float %tmp_226, %tmp_229, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_231 = fmul float %tmp_212, %tmp_176, !dbg !284 ; [#uses=1 type=float] [debug line = 111:3]
  %s_3 = fadd float %tmp_230, %tmp_231, !dbg !284 ; [#uses=2 type=float] [debug line = 111:3]
  call void @llvm.dbg.value(metadata !{float %s_3}, i64 0, metadata !285), !dbg !284 ; [debug line = 111:3] [debug variable = s[3]]
  %call_ret2 = call fastcc { float, float, float } @normalise.1(float %s_0, float %s_1, float %s_2, float %s_3) nounwind, !dbg !286 ; [#uses=3 type={ float, float, float }] [debug line = 114:3]
  %s_2_2 = extractvalue { float, float, float } %call_ret2, 1, !dbg !286 ; [#uses=1 type=float] [debug line = 114:3]
  %s_1_2 = extractvalue { float, float, float } %call_ret2, 0, !dbg !286 ; [#uses=1 type=float] [debug line = 114:3]
  %s_0_2 = extractvalue { float, float, float } %call_ret2, 2, !dbg !286 ; [#uses=1 type=float] [debug line = 114:3]
  call void @llvm.dbg.value(metadata !{float %s_0_2}, i64 0, metadata !278), !dbg !286 ; [debug line = 114:3] [debug variable = s[0]]
  call void @llvm.dbg.value(metadata !{float %s_1_2}, i64 0, metadata !281), !dbg !286 ; [debug line = 114:3] [debug variable = s[1]]
  call void @llvm.dbg.value(metadata !{float %s_2_2}, i64 0, metadata !283), !dbg !286 ; [debug line = 114:3] [debug variable = s[2]]
  %beta_load = load float* @beta, align 4, !dbg !287 ; [#uses=1 type=float] [debug line = 117:3]
  %call_ret = call fastcc { float, float, float, float } @feedbackStep(float %qDot_0, float %qDot_1, float %qDot_2, float %qDot_3, float %beta_load, float %s_0_2, float %s_1_2, float %s_2_2, float %s_3) nounwind, !dbg !287 ; [#uses=4 type={ float, float, float, float }] [debug line = 117:3]
  %qDot_0_2 = extractvalue { float, float, float, float } %call_ret, 0, !dbg !287 ; [#uses=1 type=float] [debug line = 117:3]
  call void @llvm.dbg.value(metadata !{float %qDot_0_2}, i64 0, metadata !214), !dbg !287 ; [debug line = 117:3] [debug variable = qDot[0]]
  %qDot_1_2 = extractvalue { float, float, float, float } %call_ret, 1, !dbg !287 ; [#uses=1 type=float] [debug line = 117:3]
  call void @llvm.dbg.value(metadata !{float %qDot_1_2}, i64 0, metadata !216), !dbg !287 ; [debug line = 117:3] [debug variable = qDot[1]]
  %qDot_2_2 = extractvalue { float, float, float, float } %call_ret, 2, !dbg !287 ; [#uses=1 type=float] [debug line = 117:3]
  call void @llvm.dbg.value(metadata !{float %qDot_2_2}, i64 0, metadata !218), !dbg !287 ; [debug line = 117:3] [debug variable = qDot[2]]
  %qDot_3_2 = extractvalue { float, float, float, float } %call_ret, 3, !dbg !287 ; [#uses=1 type=float] [debug line = 117:3]
  call void @llvm.dbg.value(metadata !{float %qDot_3_2}, i64 0, metadata !220), !dbg !287 ; [debug line = 117:3] [debug variable = qDot[3]]
  br label %._crit_edge5, !dbg !288               ; [debug line = 118:2]

._crit_edge5:                                     ; preds = %._crit_edge3, %5
  %qDot_3_13 = phi float [ %qDot_3, %5 ], [ %qDot_3_2, %._crit_edge3 ] ; [#uses=1 type=float]
  %qDot_2_14 = phi float [ %qDot_2, %5 ], [ %qDot_2_2, %._crit_edge3 ] ; [#uses=1 type=float]
  %qDot_1_15 = phi float [ %qDot_1, %5 ], [ %qDot_1_2, %._crit_edge3 ] ; [#uses=1 type=float]
  %qDot = phi float [ %qDot_0, %5 ], [ %qDot_0_2, %._crit_edge3 ] ; [#uses=1 type=float]
  call fastcc void @integrateQdot([4 x float]* @q, float %qDot, float %qDot_1_15, float %qDot_2_14, float %qDot_3_13) nounwind, !dbg !289 ; [debug line = 121:2]
  call fastcc void @normalise([4 x float]* @q) nounwind, !dbg !290 ; [debug line = 124:2]
  br label %6, !dbg !291                          ; [debug line = 125:1]

; <label>:6                                       ; preds = %._crit_edge5, %3
  ret void, !dbg !291                             ; [debug line = 125:1]
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
!98 = metadata !{i32 786689, metadata !99, metadata !"q", null, i32 237, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 786478, i32 0, metadata !46, metadata !"integrateQdot", metadata !"integrateQdot", metadata !"_Z13integrateQdotPfS_", metadata !46, i32 237, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 237} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !49, metadata !49}
!102 = metadata !{i32 237, i32 26, metadata !99, null}
!103 = metadata !{i32 238, i32 1, metadata !104, null}
!104 = metadata !{i32 786443, metadata !99, i32 237, i32 47, metadata !46, i32 14} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 239, i32 3, metadata !106, null}
!106 = metadata !{i32 786443, metadata !107, i32 238, i32 50, metadata !46, i32 16} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 786443, metadata !104, i32 238, i32 22, metadata !46, i32 15} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 241, i32 1, metadata !104, null}
!109 = metadata !{i32 790533, metadata !110, metadata !"s[3]", null, i32 229, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!110 = metadata !{i32 786689, metadata !111, metadata !"s", null, i32 229, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 786478, i32 0, metadata !46, metadata !"feedbackStep", metadata !"feedbackStep", metadata !"_Z12feedbackStepPffS_", metadata !46, i32 229, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 229} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{null, metadata !49, metadata !50, metadata !49}
!114 = metadata !{i32 229, i32 52, metadata !111, null}
!115 = metadata !{i32 790533, metadata !110, metadata !"s[2]", null, i32 229, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!116 = metadata !{i32 790533, metadata !110, metadata !"s[1]", null, i32 229, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!117 = metadata !{i32 790533, metadata !110, metadata !"s[0]", null, i32 229, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!118 = metadata !{i32 786689, metadata !111, metadata !"beta", metadata !46, i32 33554661, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 229, i32 40, metadata !111, null}
!120 = metadata !{i32 230, i32 1, metadata !121, null}
!121 = metadata !{i32 786443, metadata !111, i32 229, i32 58, metadata !46, i32 11} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 230, i32 3, metadata !123, null}
!123 = metadata !{i32 786443, metadata !124, i32 229, i32 49, metadata !46, i32 13} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !121, i32 229, i32 21, metadata !46, i32 12} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 232, i32 1, metadata !121, null}
!126 = metadata !{i32 786689, metadata !127, metadata !"g", null, i32 130, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 786478, i32 0, metadata !46, metadata !"MadgwickAHRSupdateIMU", metadata !"MadgwickAHRSupdateIMU", metadata !"_Z21MadgwickAHRSupdateIMUPfS_", metadata !46, i32 130, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 130} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 130, i32 34, metadata !127, null}
!129 = metadata !{i32 786689, metadata !127, metadata !"a", null, i32 130, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 130, i32 46, metadata !127, null}
!131 = metadata !{i32 136, i32 2, metadata !132, null}
!132 = metadata !{i32 786443, metadata !127, i32 130, i32 52, metadata !46, i32 3} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 786688, metadata !132, metadata !"qDot[0]", null, i32 132, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 138, i32 2, metadata !132, null}
!135 = metadata !{i32 786688, metadata !132, metadata !"qDot[1]", null, i32 132, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 140, i32 2, metadata !132, null}
!137 = metadata !{i32 786688, metadata !132, metadata !"qDot[2]", null, i32 132, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 142, i32 2, metadata !132, null}
!139 = metadata !{i32 786688, metadata !132, metadata !"qDot[3]", null, i32 132, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 145, i32 2, metadata !132, null}
!141 = metadata !{i32 148, i32 3, metadata !142, null}
!142 = metadata !{i32 786443, metadata !132, i32 145, i32 61, metadata !46, i32 4} ; [ DW_TAG_lexical_block ]
!143 = metadata !{i32 151, i32 3, metadata !142, null}
!144 = metadata !{i32 786688, metadata !132, metadata !"_2q0", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 152, i32 3, metadata !142, null}
!146 = metadata !{i32 786688, metadata !132, metadata !"_2q1", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 153, i32 3, metadata !142, null}
!148 = metadata !{i32 786688, metadata !132, metadata !"_2q2", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 154, i32 3, metadata !142, null}
!150 = metadata !{i32 786688, metadata !132, metadata !"_2q3", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 155, i32 3, metadata !142, null}
!152 = metadata !{i32 786688, metadata !132, metadata !"_4q0", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 156, i32 3, metadata !142, null}
!154 = metadata !{i32 786688, metadata !132, metadata !"_4q1", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 157, i32 3, metadata !142, null}
!156 = metadata !{i32 786688, metadata !132, metadata !"_4q2", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 158, i32 3, metadata !142, null}
!158 = metadata !{i32 786688, metadata !132, metadata !"_8q1", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!159 = metadata !{i32 159, i32 3, metadata !142, null}
!160 = metadata !{i32 786688, metadata !132, metadata !"_8q2", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 160, i32 3, metadata !142, null}
!162 = metadata !{i32 786688, metadata !132, metadata !"q0q0", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 161, i32 3, metadata !142, null}
!164 = metadata !{i32 786688, metadata !132, metadata !"q1q1", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 162, i32 3, metadata !142, null}
!166 = metadata !{i32 786688, metadata !132, metadata !"q2q2", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 163, i32 3, metadata !142, null}
!168 = metadata !{i32 786688, metadata !132, metadata !"q3q3", metadata !46, i32 133, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 167, i32 3, metadata !142, null}
!170 = metadata !{i32 790529, metadata !171, metadata !"s[0]", null, i32 131, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!171 = metadata !{i32 786688, metadata !132, metadata !"s", metadata !46, i32 131, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 169, i32 3, metadata !142, null}
!173 = metadata !{i32 790529, metadata !171, metadata !"s[1]", null, i32 131, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!174 = metadata !{i32 171, i32 3, metadata !142, null}
!175 = metadata !{i32 790529, metadata !171, metadata !"s[2]", null, i32 131, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!176 = metadata !{i32 173, i32 3, metadata !142, null}
!177 = metadata !{i32 790529, metadata !171, metadata !"s[3]", null, i32 131, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!178 = metadata !{i32 176, i32 3, metadata !142, null}
!179 = metadata !{i32 179, i32 3, metadata !142, null}
!180 = metadata !{i32 180, i32 2, metadata !142, null}
!181 = metadata !{i32 183, i32 2, metadata !132, null}
!182 = metadata !{i32 186, i32 2, metadata !132, null}
!183 = metadata !{i32 187, i32 1, metadata !132, null}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 0, i32 31, metadata !186}
!186 = metadata !{metadata !187}
!187 = metadata !{metadata !"g", metadata !34, metadata !"float", i32 0, i32 31}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 0, i32 31, metadata !190}
!190 = metadata !{metadata !191}
!191 = metadata !{metadata !"a", metadata !34, metadata !"float", i32 0, i32 31}
!192 = metadata !{metadata !193}
!193 = metadata !{i32 0, i32 31, metadata !194}
!194 = metadata !{metadata !195}
!195 = metadata !{metadata !"m", metadata !34, metadata !"float", i32 0, i32 31}
!196 = metadata !{i32 786689, metadata !197, metadata !"g", null, i32 36, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 786478, i32 0, metadata !46, metadata !"MadgwickAHRSupdate", metadata !"MadgwickAHRSupdate", metadata !"_Z18MadgwickAHRSupdatePfS_S_", metadata !46, i32 36, metadata !198, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !51, i32 36} ; [ DW_TAG_subprogram ]
!198 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !199, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!199 = metadata !{null, metadata !49, metadata !49, metadata !49}
!200 = metadata !{i32 36, i32 31, metadata !197, null}
!201 = metadata !{i32 786689, metadata !197, metadata !"a", null, i32 36, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!202 = metadata !{i32 36, i32 43, metadata !197, null}
!203 = metadata !{i32 786689, metadata !197, metadata !"m", null, i32 36, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!204 = metadata !{i32 36, i32 55, metadata !197, null}
!205 = metadata !{i32 37, i32 2, metadata !206, null}
!206 = metadata !{i32 786443, metadata !197, i32 36, i32 61, metadata !46, i32 0} ; [ DW_TAG_lexical_block ]
!207 = metadata !{i32 38, i32 2, metadata !206, null}
!208 = metadata !{i32 39, i32 2, metadata !206, null}
!209 = metadata !{i32 46, i32 2, metadata !206, null}
!210 = metadata !{i32 47, i32 3, metadata !211, null}
!211 = metadata !{i32 786443, metadata !206, i32 46, i32 58, metadata !46, i32 1} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 48, i32 3, metadata !211, null}
!213 = metadata !{i32 52, i32 2, metadata !206, null}
!214 = metadata !{i32 786688, metadata !206, metadata !"qDot[0]", null, i32 41, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 54, i32 2, metadata !206, null}
!216 = metadata !{i32 786688, metadata !206, metadata !"qDot[1]", null, i32 41, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!217 = metadata !{i32 56, i32 2, metadata !206, null}
!218 = metadata !{i32 786688, metadata !206, metadata !"qDot[2]", null, i32 41, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!219 = metadata !{i32 58, i32 2, metadata !206, null}
!220 = metadata !{i32 786688, metadata !206, metadata !"qDot[3]", null, i32 41, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!221 = metadata !{i32 62, i32 2, metadata !206, null}
!222 = metadata !{i32 65, i32 3, metadata !223, null}
!223 = metadata !{i32 786443, metadata !206, i32 62, i32 61, metadata !46, i32 2} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 68, i32 3, metadata !223, null}
!225 = metadata !{i32 71, i32 3, metadata !223, null}
!226 = metadata !{i32 786688, metadata !206, metadata !"_2q0mx", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 72, i32 3, metadata !223, null}
!228 = metadata !{i32 786688, metadata !206, metadata !"_2q0my", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 73, i32 3, metadata !223, null}
!230 = metadata !{i32 786688, metadata !206, metadata !"_2q0mz", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 74, i32 3, metadata !223, null}
!232 = metadata !{i32 786688, metadata !206, metadata !"_2q1mx", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 786688, metadata !206, metadata !"_2q0", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 75, i32 3, metadata !223, null}
!235 = metadata !{i32 786688, metadata !206, metadata !"_2q1", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!236 = metadata !{i32 76, i32 3, metadata !223, null}
!237 = metadata !{i32 77, i32 3, metadata !223, null}
!238 = metadata !{i32 786688, metadata !206, metadata !"_2q2", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 78, i32 3, metadata !223, null}
!240 = metadata !{i32 786688, metadata !206, metadata !"_2q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 79, i32 3, metadata !223, null}
!242 = metadata !{i32 786688, metadata !206, metadata !"_2q0q2", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!243 = metadata !{i32 80, i32 3, metadata !223, null}
!244 = metadata !{i32 786688, metadata !206, metadata !"_2q2q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 81, i32 3, metadata !223, null}
!246 = metadata !{i32 786688, metadata !206, metadata !"q0q0", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 82, i32 3, metadata !223, null}
!248 = metadata !{i32 786688, metadata !206, metadata !"q0q1", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 83, i32 3, metadata !223, null}
!250 = metadata !{i32 786688, metadata !206, metadata !"q0q2", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!251 = metadata !{i32 84, i32 3, metadata !223, null}
!252 = metadata !{i32 786688, metadata !206, metadata !"q0q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!253 = metadata !{i32 85, i32 3, metadata !223, null}
!254 = metadata !{i32 786688, metadata !206, metadata !"q1q1", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!255 = metadata !{i32 86, i32 3, metadata !223, null}
!256 = metadata !{i32 786688, metadata !206, metadata !"q1q2", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 87, i32 3, metadata !223, null}
!258 = metadata !{i32 786688, metadata !206, metadata !"q1q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 88, i32 3, metadata !223, null}
!260 = metadata !{i32 786688, metadata !206, metadata !"q2q2", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 89, i32 3, metadata !223, null}
!262 = metadata !{i32 786688, metadata !206, metadata !"q2q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 90, i32 3, metadata !223, null}
!264 = metadata !{i32 786688, metadata !206, metadata !"q3q3", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!265 = metadata !{i32 94, i32 3, metadata !223, null}
!266 = metadata !{i32 786688, metadata !206, metadata !"hx", metadata !46, i32 42, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!267 = metadata !{i32 96, i32 3, metadata !223, null}
!268 = metadata !{i32 786688, metadata !206, metadata !"hy", metadata !46, i32 42, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!269 = metadata !{i32 97, i32 10, metadata !223, null}
!270 = metadata !{i32 786688, metadata !206, metadata !"_2bx", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 99, i32 3, metadata !223, null}
!272 = metadata !{i32 786688, metadata !206, metadata !"_2bz", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!273 = metadata !{i32 100, i32 3, metadata !223, null}
!274 = metadata !{i32 786688, metadata !206, metadata !"_4bx", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!275 = metadata !{i32 101, i32 3, metadata !223, null}
!276 = metadata !{i32 786688, metadata !206, metadata !"_4bz", metadata !46, i32 43, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 105, i32 3, metadata !223, null}
!278 = metadata !{i32 790529, metadata !279, metadata !"s[0]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!279 = metadata !{i32 786688, metadata !206, metadata !"s", metadata !46, i32 40, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!280 = metadata !{i32 107, i32 3, metadata !223, null}
!281 = metadata !{i32 790529, metadata !279, metadata !"s[1]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!282 = metadata !{i32 109, i32 3, metadata !223, null}
!283 = metadata !{i32 790529, metadata !279, metadata !"s[2]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!284 = metadata !{i32 111, i32 3, metadata !223, null}
!285 = metadata !{i32 790529, metadata !279, metadata !"s[3]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!286 = metadata !{i32 114, i32 3, metadata !223, null}
!287 = metadata !{i32 117, i32 3, metadata !223, null}
!288 = metadata !{i32 118, i32 2, metadata !223, null}
!289 = metadata !{i32 121, i32 2, metadata !206, null}
!290 = metadata !{i32 124, i32 2, metadata !206, null}
!291 = metadata !{i32 125, i32 1, metadata !206, null}
