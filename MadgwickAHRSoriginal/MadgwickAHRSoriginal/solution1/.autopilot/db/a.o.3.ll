; ModuleID = '/home/toni/Documents/vivado_projects/MadgwickAHRSoriginal/MadgwickAHRSoriginal/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q3 = global float 0.000000e+00, align 4          ; [#uses=41 type=float*]
@q2 = global float 0.000000e+00, align 4          ; [#uses=43 type=float*]
@q1 = global float 0.000000e+00, align 4          ; [#uses=39 type=float*]
@q0 = global float 1.000000e+00, align 4          ; [#uses=36 type=float*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@beta = global float 0x3FB99999A0000000, align 4  ; [#uses=8 type=float*]
@MadgwickAHRSupdate_s = internal unnamed_addr constant [19 x i8] c"MadgwickAHRSupdate\00" ; [#uses=1 type=[19 x i8]*]

; [#uses=1]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=145]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=9]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=15]
define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

; [#uses=9]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_4
}

; [#uses=7]
define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i31              ; [#uses=1 type=i31]
  ret i31 %empty_5
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
define internal fastcc void @MadgwickAHRSupdateIM(float %gx, float %gy, float %gz, float %ax, float %ay, float %az) nounwind uwtable {
  %az_read = call float @_ssdm_op_Read.ap_auto.float(float %az) nounwind ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %az_read}, i64 0, metadata !211), !dbg !219 ; [debug line = 143:84] [debug variable = az]
  %ay_read = call float @_ssdm_op_Read.ap_auto.float(float %ay) nounwind ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %ay_read}, i64 0, metadata !220), !dbg !221 ; [debug line = 143:74] [debug variable = ay]
  %ax_read = call float @_ssdm_op_Read.ap_auto.float(float %ax) nounwind ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %ax_read}, i64 0, metadata !222), !dbg !223 ; [debug line = 143:64] [debug variable = ax]
  %gz_read = call float @_ssdm_op_Read.ap_auto.float(float %gz) nounwind ; [#uses=4 type=float]
  call void @llvm.dbg.value(metadata !{float %gz_read}, i64 0, metadata !224), !dbg !225 ; [debug line = 143:54] [debug variable = gz]
  %gy_read = call float @_ssdm_op_Read.ap_auto.float(float %gy) nounwind ; [#uses=4 type=float]
  call void @llvm.dbg.value(metadata !{float %gy_read}, i64 0, metadata !226), !dbg !227 ; [debug line = 143:44] [debug variable = gy]
  %gx_read = call float @_ssdm_op_Read.ap_auto.float(float %gx) nounwind ; [#uses=4 type=float]
  call void @llvm.dbg.value(metadata !{float %gx_read}, i64 0, metadata !228), !dbg !229 ; [debug line = 143:34] [debug variable = gx]
  call void @llvm.dbg.value(metadata !{float %gx}, i64 0, metadata !228), !dbg !229 ; [debug line = 143:34] [debug variable = gx]
  call void @llvm.dbg.value(metadata !{float %gy}, i64 0, metadata !226), !dbg !227 ; [debug line = 143:44] [debug variable = gy]
  call void @llvm.dbg.value(metadata !{float %gz}, i64 0, metadata !224), !dbg !225 ; [debug line = 143:54] [debug variable = gz]
  call void @llvm.dbg.value(metadata !{float %ax}, i64 0, metadata !222), !dbg !223 ; [debug line = 143:64] [debug variable = ax]
  call void @llvm.dbg.value(metadata !{float %ay}, i64 0, metadata !220), !dbg !221 ; [debug line = 143:74] [debug variable = ay]
  call void @llvm.dbg.value(metadata !{float %az}, i64 0, metadata !211), !dbg !219 ; [debug line = 143:84] [debug variable = az]
  %q1_load = load volatile float* @q1, align 4, !dbg !230 ; [#uses=1 type=float] [debug line = 150:2]
  %tmp_to_int = bitcast float %q1_load to i32, !dbg !230 ; [#uses=1 type=i32] [debug line = 150:2]
  %tmp_neg = xor i32 %tmp_to_int, -2147483648, !dbg !230 ; [#uses=1 type=i32] [debug line = 150:2]
  %tmp = bitcast i32 %tmp_neg to float, !dbg !230 ; [#uses=1 type=float] [debug line = 150:2]
  %tmp_6 = fmul float %tmp, %gx_read, !dbg !230   ; [#uses=1 type=float] [debug line = 150:2]
  %q2_load = load volatile float* @q2, align 4, !dbg !230 ; [#uses=1 type=float] [debug line = 150:2]
  %tmp_7 = fmul float %q2_load, %gy_read, !dbg !230 ; [#uses=1 type=float] [debug line = 150:2]
  %tmp_8 = fsub float %tmp_6, %tmp_7, !dbg !230   ; [#uses=1 type=float] [debug line = 150:2]
  %q3_load = load volatile float* @q3, align 4, !dbg !230 ; [#uses=1 type=float] [debug line = 150:2]
  %tmp_9 = fmul float %q3_load, %gz_read, !dbg !230 ; [#uses=1 type=float] [debug line = 150:2]
  %tmp_s = fsub float %tmp_8, %tmp_9, !dbg !230   ; [#uses=1 type=float] [debug line = 150:2]
  %qDot1 = fmul float %tmp_s, 5.000000e-01, !dbg !230 ; [#uses=2 type=float] [debug line = 150:2]
  call void @llvm.dbg.value(metadata !{float %qDot1}, i64 0, metadata !232), !dbg !230 ; [debug line = 150:2] [debug variable = qDot1]
  %q0_load = load volatile float* @q0, align 4, !dbg !233 ; [#uses=1 type=float] [debug line = 151:2]
  %tmp_1 = fmul float %q0_load, %gx_read, !dbg !233 ; [#uses=1 type=float] [debug line = 151:2]
  %q2_load_1 = load volatile float* @q2, align 4, !dbg !233 ; [#uses=1 type=float] [debug line = 151:2]
  %tmp_2 = fmul float %q2_load_1, %gz_read, !dbg !233 ; [#uses=1 type=float] [debug line = 151:2]
  %tmp_3 = fadd float %tmp_1, %tmp_2, !dbg !233   ; [#uses=1 type=float] [debug line = 151:2]
  %q3_load_1 = load volatile float* @q3, align 4, !dbg !233 ; [#uses=1 type=float] [debug line = 151:2]
  %tmp_4 = fmul float %q3_load_1, %gy_read, !dbg !233 ; [#uses=1 type=float] [debug line = 151:2]
  %tmp_5 = fsub float %tmp_3, %tmp_4, !dbg !233   ; [#uses=1 type=float] [debug line = 151:2]
  %qDot2 = fmul float %tmp_5, 5.000000e-01, !dbg !233 ; [#uses=2 type=float] [debug line = 151:2]
  call void @llvm.dbg.value(metadata !{float %qDot2}, i64 0, metadata !234), !dbg !233 ; [debug line = 151:2] [debug variable = qDot2]
  %q0_load_1 = load volatile float* @q0, align 4, !dbg !235 ; [#uses=1 type=float] [debug line = 152:2]
  %tmp_10 = fmul float %q0_load_1, %gy_read, !dbg !235 ; [#uses=1 type=float] [debug line = 152:2]
  %q1_load_1 = load volatile float* @q1, align 4, !dbg !235 ; [#uses=1 type=float] [debug line = 152:2]
  %tmp_11 = fmul float %q1_load_1, %gz_read, !dbg !235 ; [#uses=1 type=float] [debug line = 152:2]
  %tmp_12 = fsub float %tmp_10, %tmp_11, !dbg !235 ; [#uses=1 type=float] [debug line = 152:2]
  %q3_load_2 = load volatile float* @q3, align 4, !dbg !235 ; [#uses=1 type=float] [debug line = 152:2]
  %tmp_13 = fmul float %q3_load_2, %gx_read, !dbg !235 ; [#uses=1 type=float] [debug line = 152:2]
  %tmp_14 = fadd float %tmp_12, %tmp_13, !dbg !235 ; [#uses=1 type=float] [debug line = 152:2]
  %qDot3 = fmul float %tmp_14, 5.000000e-01, !dbg !235 ; [#uses=2 type=float] [debug line = 152:2]
  call void @llvm.dbg.value(metadata !{float %qDot3}, i64 0, metadata !236), !dbg !235 ; [debug line = 152:2] [debug variable = qDot3]
  %q0_load_2 = load volatile float* @q0, align 4, !dbg !237 ; [#uses=1 type=float] [debug line = 153:2]
  %tmp_15 = fmul float %q0_load_2, %gz_read, !dbg !237 ; [#uses=1 type=float] [debug line = 153:2]
  %q1_load_2 = load volatile float* @q1, align 4, !dbg !237 ; [#uses=1 type=float] [debug line = 153:2]
  %tmp_16 = fmul float %q1_load_2, %gy_read, !dbg !237 ; [#uses=1 type=float] [debug line = 153:2]
  %tmp_17 = fadd float %tmp_15, %tmp_16, !dbg !237 ; [#uses=1 type=float] [debug line = 153:2]
  %q2_load_2 = load volatile float* @q2, align 4, !dbg !237 ; [#uses=1 type=float] [debug line = 153:2]
  %tmp_18 = fmul float %q2_load_2, %gx_read, !dbg !237 ; [#uses=1 type=float] [debug line = 153:2]
  %tmp_19 = fsub float %tmp_17, %tmp_18, !dbg !237 ; [#uses=1 type=float] [debug line = 153:2]
  %qDot4 = fmul float %tmp_19, 5.000000e-01, !dbg !237 ; [#uses=2 type=float] [debug line = 153:2]
  call void @llvm.dbg.value(metadata !{float %qDot4}, i64 0, metadata !238), !dbg !237 ; [debug line = 153:2] [debug variable = qDot4]
  %ax_to_int = bitcast float %ax_read to i32      ; [#uses=2 type=i32]
  %tmp_20 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ax_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_21 = trunc i32 %ax_to_int to i23           ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_20, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_21, 0                ; [#uses=1 type=i1]
  %tmp_22 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp_27 = fcmp oeq float %ax_read, 0.000000e+00, !dbg !239 ; [#uses=1 type=i1] [debug line = 156:2]
  %tmp_75 = and i1 %tmp_22, %tmp_27, !dbg !239    ; [#uses=1 type=i1] [debug line = 156:2]
  %ay_to_int = bitcast float %ay_read to i32      ; [#uses=2 type=i32]
  %tmp_94 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ay_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_99 = trunc i32 %ay_to_int to i23           ; [#uses=1 type=i23]
  %notlhs4 = icmp ne i8 %tmp_94, -1               ; [#uses=1 type=i1]
  %notrhs5 = icmp eq i23 %tmp_99, 0               ; [#uses=1 type=i1]
  %tmp_100 = or i1 %notrhs5, %notlhs4             ; [#uses=1 type=i1]
  %tmp_101 = fcmp oeq float %ay_read, 0.000000e+00, !dbg !239 ; [#uses=1 type=i1] [debug line = 156:2]
  %tmp_102 = and i1 %tmp_100, %tmp_101, !dbg !239 ; [#uses=1 type=i1] [debug line = 156:2]
  %az_to_int = bitcast float %az_read to i32      ; [#uses=2 type=i32]
  %tmp_103 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %az_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_104 = trunc i32 %az_to_int to i23          ; [#uses=1 type=i23]
  %notlhs6 = icmp ne i8 %tmp_103, -1              ; [#uses=1 type=i1]
  %notrhs7 = icmp eq i23 %tmp_104, 0              ; [#uses=1 type=i1]
  %tmp_105 = or i1 %notrhs7, %notlhs6             ; [#uses=1 type=i1]
  %tmp_106 = fcmp oeq float %az_read, 0.000000e+00, !dbg !239 ; [#uses=1 type=i1] [debug line = 156:2]
  %tmp_107 = and i1 %tmp_105, %tmp_106, !dbg !239 ; [#uses=1 type=i1] [debug line = 156:2]
  %tmp1 = and i1 %tmp_102, %tmp_107, !dbg !239    ; [#uses=1 type=i1] [debug line = 156:2]
  %or_cond1 = and i1 %tmp1, %tmp_75, !dbg !239    ; [#uses=1 type=i1] [debug line = 156:2]
  br i1 %or_cond1, label %._crit_edge, label %1, !dbg !239 ; [debug line = 156:2]

; <label>:1                                       ; preds = %0
  %tmp_23 = fmul float %ax_read, %ax_read, !dbg !240 ; [#uses=1 type=float] [debug line = 159:15]
  %tmp_24 = fmul float %ay_read, %ay_read, !dbg !240 ; [#uses=1 type=float] [debug line = 159:15]
  %tmp_25 = fadd float %tmp_23, %tmp_24, !dbg !240 ; [#uses=1 type=float] [debug line = 159:15]
  %tmp_26 = fmul float %az_read, %az_read, !dbg !240 ; [#uses=1 type=float] [debug line = 159:15]
  %x_assign = fadd float %tmp_25, %tmp_26, !dbg !240 ; [#uses=2 type=float] [debug line = 159:15]
  call void @llvm.dbg.value(metadata !{float %x_assign}, i64 0, metadata !242), !dbg !246 ; [debug line = 215:21@159:15] [debug variable = x]
  %halfx = fmul float %x_assign, 5.000000e-01, !dbg !247 ; [#uses=1 type=float] [debug line = 216:24@159:15]
  call void @llvm.dbg.value(metadata !{float %halfx}, i64 0, metadata !249), !dbg !247 ; [debug line = 216:24@159:15] [debug variable = halfx]
  %y = bitcast float %x_assign to i32, !dbg !250  ; [#uses=1 type=i32] [debug line = 217:13@159:15]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !251), !dbg !250 ; [debug line = 217:13@159:15] [debug variable = y]
  %tmp_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %y, i32 1, i32 31), !dbg !252 ; [#uses=1 type=i31] [debug line = 220:2@159:15]
  %tmp_108 = zext i31 %tmp_i to i32, !dbg !252    ; [#uses=1 type=i32] [debug line = 220:2@159:15]
  %y_1 = sub i32 1597463007, %tmp_108, !dbg !252  ; [#uses=1 type=i32] [debug line = 220:2@159:15]
  call void @llvm.dbg.value(metadata !{i32 %y_1}, i64 0, metadata !251), !dbg !252 ; [debug line = 220:2@159:15] [debug variable = y]
  %tmp_1_i = bitcast i32 %y_1 to float, !dbg !253 ; [#uses=3 type=float] [debug line = 221:2@159:15]
  %tmp_2_i = fmul float %halfx, %tmp_1_i, !dbg !253 ; [#uses=1 type=float] [debug line = 221:2@159:15]
  %tmp_3_i = fmul float %tmp_2_i, %tmp_1_i, !dbg !253 ; [#uses=1 type=float] [debug line = 221:2@159:15]
  %tmp_4_i = fsub float 1.500000e+00, %tmp_3_i, !dbg !253 ; [#uses=1 type=float] [debug line = 221:2@159:15]
  %recipNorm = fmul float %tmp_1_i, %tmp_4_i, !dbg !253 ; [#uses=3 type=float] [debug line = 221:2@159:15]
  call void @llvm.dbg.value(metadata !{float %recipNorm}, i64 0, metadata !254), !dbg !240 ; [debug line = 159:15] [debug variable = recipNorm]
  %ax_assign = fmul float %recipNorm, %ax_read, !dbg !255 ; [#uses=4 type=float] [debug line = 160:3]
  call void @llvm.dbg.value(metadata !{float %ax_assign}, i64 0, metadata !222), !dbg !255 ; [debug line = 160:3] [debug variable = ax]
  %ay_assign = fmul float %recipNorm, %ay_read, !dbg !256 ; [#uses=4 type=float] [debug line = 161:3]
  call void @llvm.dbg.value(metadata !{float %ay_assign}, i64 0, metadata !220), !dbg !256 ; [debug line = 161:3] [debug variable = ay]
  %az_assign = fmul float %recipNorm, %az_read, !dbg !257 ; [#uses=2 type=float] [debug line = 162:3]
  call void @llvm.dbg.value(metadata !{float %az_assign}, i64 0, metadata !211), !dbg !257 ; [debug line = 162:3] [debug variable = az]
  %q0_load_3 = load volatile float* @q0, align 4, !dbg !258 ; [#uses=1 type=float] [debug line = 165:3]
  %p_2q0 = fmul float %q0_load_3, 2.000000e+00, !dbg !258 ; [#uses=2 type=float] [debug line = 165:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0}, i64 0, metadata !259), !dbg !258 ; [debug line = 165:3] [debug variable = _2q0]
  %q1_load_3 = load volatile float* @q1, align 4, !dbg !260 ; [#uses=1 type=float] [debug line = 166:3]
  %p_2q1 = fmul float %q1_load_3, 2.000000e+00, !dbg !260 ; [#uses=2 type=float] [debug line = 166:3]
  call void @llvm.dbg.value(metadata !{float %p_2q1}, i64 0, metadata !261), !dbg !260 ; [debug line = 166:3] [debug variable = _2q1]
  %q2_load_3 = load volatile float* @q2, align 4, !dbg !262 ; [#uses=1 type=float] [debug line = 167:3]
  %p_2q2 = fmul float %q2_load_3, 2.000000e+00, !dbg !262 ; [#uses=2 type=float] [debug line = 167:3]
  call void @llvm.dbg.value(metadata !{float %p_2q2}, i64 0, metadata !263), !dbg !262 ; [debug line = 167:3] [debug variable = _2q2]
  %q3_load_3 = load volatile float* @q3, align 4, !dbg !264 ; [#uses=1 type=float] [debug line = 168:3]
  %p_2q3 = fmul float %q3_load_3, 2.000000e+00, !dbg !264 ; [#uses=2 type=float] [debug line = 168:3]
  call void @llvm.dbg.value(metadata !{float %p_2q3}, i64 0, metadata !265), !dbg !264 ; [debug line = 168:3] [debug variable = _2q3]
  %q0_load_4 = load volatile float* @q0, align 4, !dbg !266 ; [#uses=1 type=float] [debug line = 169:3]
  %p_4q0 = fmul float %q0_load_4, 4.000000e+00, !dbg !266 ; [#uses=2 type=float] [debug line = 169:3]
  call void @llvm.dbg.value(metadata !{float %p_4q0}, i64 0, metadata !267), !dbg !266 ; [debug line = 169:3] [debug variable = _4q0]
  %q1_load_4 = load volatile float* @q1, align 4, !dbg !268 ; [#uses=1 type=float] [debug line = 170:3]
  %p_4q1 = fmul float %q1_load_4, 4.000000e+00, !dbg !268 ; [#uses=3 type=float] [debug line = 170:3]
  call void @llvm.dbg.value(metadata !{float %p_4q1}, i64 0, metadata !269), !dbg !268 ; [debug line = 170:3] [debug variable = _4q1]
  %q2_load_4 = load volatile float* @q2, align 4, !dbg !270 ; [#uses=1 type=float] [debug line = 171:3]
  %p_4q2 = fmul float %q2_load_4, 4.000000e+00, !dbg !270 ; [#uses=3 type=float] [debug line = 171:3]
  call void @llvm.dbg.value(metadata !{float %p_4q2}, i64 0, metadata !271), !dbg !270 ; [debug line = 171:3] [debug variable = _4q2]
  %q1_load_5 = load volatile float* @q1, align 4, !dbg !272 ; [#uses=1 type=float] [debug line = 172:3]
  %p_8q1 = fmul float %q1_load_5, 8.000000e+00, !dbg !272 ; [#uses=2 type=float] [debug line = 172:3]
  call void @llvm.dbg.value(metadata !{float %p_8q1}, i64 0, metadata !273), !dbg !272 ; [debug line = 172:3] [debug variable = _8q1]
  %q2_load_5 = load volatile float* @q2, align 4, !dbg !274 ; [#uses=1 type=float] [debug line = 173:3]
  %p_8q2 = fmul float %q2_load_5, 8.000000e+00, !dbg !274 ; [#uses=2 type=float] [debug line = 173:3]
  call void @llvm.dbg.value(metadata !{float %p_8q2}, i64 0, metadata !275), !dbg !274 ; [debug line = 173:3] [debug variable = _8q2]
  %q0_load_5 = load volatile float* @q0, align 4, !dbg !276 ; [#uses=1 type=float] [debug line = 174:3]
  %q0_load_6 = load volatile float* @q0, align 4, !dbg !276 ; [#uses=1 type=float] [debug line = 174:3]
  %q0q0 = fmul float %q0_load_5, %q0_load_6, !dbg !276 ; [#uses=1 type=float] [debug line = 174:3]
  call void @llvm.dbg.value(metadata !{float %q0q0}, i64 0, metadata !277), !dbg !276 ; [debug line = 174:3] [debug variable = q0q0]
  %q1_load_6 = load volatile float* @q1, align 4, !dbg !278 ; [#uses=1 type=float] [debug line = 175:3]
  %q1_load_7 = load volatile float* @q1, align 4, !dbg !278 ; [#uses=1 type=float] [debug line = 175:3]
  %q1q1 = fmul float %q1_load_6, %q1_load_7, !dbg !278 ; [#uses=4 type=float] [debug line = 175:3]
  call void @llvm.dbg.value(metadata !{float %q1q1}, i64 0, metadata !279), !dbg !278 ; [debug line = 175:3] [debug variable = q1q1]
  %q2_load_6 = load volatile float* @q2, align 4, !dbg !280 ; [#uses=1 type=float] [debug line = 176:3]
  %q2_load_7 = load volatile float* @q2, align 4, !dbg !280 ; [#uses=1 type=float] [debug line = 176:3]
  %q2q2 = fmul float %q2_load_6, %q2_load_7, !dbg !280 ; [#uses=4 type=float] [debug line = 176:3]
  call void @llvm.dbg.value(metadata !{float %q2q2}, i64 0, metadata !281), !dbg !280 ; [debug line = 176:3] [debug variable = q2q2]
  %q3_load_4 = load volatile float* @q3, align 4, !dbg !282 ; [#uses=1 type=float] [debug line = 177:3]
  %q3_load_5 = load volatile float* @q3, align 4, !dbg !282 ; [#uses=1 type=float] [debug line = 177:3]
  %q3q3 = fmul float %q3_load_4, %q3_load_5, !dbg !282 ; [#uses=2 type=float] [debug line = 177:3]
  call void @llvm.dbg.value(metadata !{float %q3q3}, i64 0, metadata !283), !dbg !282 ; [debug line = 177:3] [debug variable = q3q3]
  %tmp_28 = fmul float %p_4q0, %q2q2, !dbg !284   ; [#uses=1 type=float] [debug line = 180:3]
  %tmp_29 = fmul float %p_2q2, %ax_assign, !dbg !284 ; [#uses=1 type=float] [debug line = 180:3]
  %tmp_30 = fadd float %tmp_28, %tmp_29, !dbg !284 ; [#uses=1 type=float] [debug line = 180:3]
  %tmp_31 = fmul float %p_4q0, %q1q1, !dbg !284   ; [#uses=1 type=float] [debug line = 180:3]
  %tmp_32 = fadd float %tmp_30, %tmp_31, !dbg !284 ; [#uses=1 type=float] [debug line = 180:3]
  %tmp_33 = fmul float %p_2q1, %ay_assign, !dbg !284 ; [#uses=1 type=float] [debug line = 180:3]
  %s0 = fsub float %tmp_32, %tmp_33, !dbg !284    ; [#uses=3 type=float] [debug line = 180:3]
  call void @llvm.dbg.value(metadata !{float %s0}, i64 0, metadata !285), !dbg !284 ; [debug line = 180:3] [debug variable = s0]
  %tmp_34 = fmul float %p_4q1, %q3q3, !dbg !286   ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_35 = fmul float %p_2q3, %ax_assign, !dbg !286 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_36 = fsub float %tmp_34, %tmp_35, !dbg !286 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_37 = fmul float %q0q0, 4.000000e+00, !dbg !286 ; [#uses=2 type=float] [debug line = 181:3]
  %q1_load_8 = load volatile float* @q1, align 4, !dbg !286 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_38 = fmul float %tmp_37, %q1_load_8, !dbg !286 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_39 = fadd float %tmp_36, %tmp_38, !dbg !286 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_40 = fmul float %p_2q0, %ay_assign, !dbg !286 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_41 = fsub float %tmp_39, %tmp_40, !dbg !286 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_42 = fsub float %tmp_41, %p_4q1, !dbg !286 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_43 = fmul float %p_8q1, %q1q1, !dbg !286   ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_44 = fadd float %tmp_42, %tmp_43, !dbg !286 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_45 = fmul float %p_8q1, %q2q2, !dbg !286   ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_46 = fadd float %tmp_44, %tmp_45, !dbg !286 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp_47 = fmul float %p_4q1, %az_assign, !dbg !286 ; [#uses=1 type=float] [debug line = 181:3]
  %s1 = fadd float %tmp_46, %tmp_47, !dbg !286    ; [#uses=3 type=float] [debug line = 181:3]
  call void @llvm.dbg.value(metadata !{float %s1}, i64 0, metadata !287), !dbg !286 ; [debug line = 181:3] [debug variable = s1]
  %q2_load_8 = load volatile float* @q2, align 4, !dbg !288 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_48 = fmul float %tmp_37, %q2_load_8, !dbg !288 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_49 = fmul float %p_2q0, %ax_assign, !dbg !288 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_50 = fadd float %tmp_48, %tmp_49, !dbg !288 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_51 = fmul float %p_4q2, %q3q3, !dbg !288   ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_52 = fadd float %tmp_50, %tmp_51, !dbg !288 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_53 = fmul float %p_2q3, %ay_assign, !dbg !288 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_54 = fsub float %tmp_52, %tmp_53, !dbg !288 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_55 = fsub float %tmp_54, %p_4q2, !dbg !288 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_56 = fmul float %p_8q2, %q1q1, !dbg !288   ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_57 = fadd float %tmp_55, %tmp_56, !dbg !288 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_58 = fmul float %p_8q2, %q2q2, !dbg !288   ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_59 = fadd float %tmp_57, %tmp_58, !dbg !288 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp_60 = fmul float %p_4q2, %az_assign, !dbg !288 ; [#uses=1 type=float] [debug line = 182:3]
  %s2 = fadd float %tmp_59, %tmp_60, !dbg !288    ; [#uses=3 type=float] [debug line = 182:3]
  call void @llvm.dbg.value(metadata !{float %s2}, i64 0, metadata !289), !dbg !288 ; [debug line = 182:3] [debug variable = s2]
  %tmp_61 = fmul float %q1q1, 4.000000e+00, !dbg !290 ; [#uses=1 type=float] [debug line = 183:3]
  %q3_load_6 = load volatile float* @q3, align 4, !dbg !290 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp_62 = fmul float %tmp_61, %q3_load_6, !dbg !290 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp_63 = fmul float %p_2q1, %ax_assign, !dbg !290 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp_64 = fsub float %tmp_62, %tmp_63, !dbg !290 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp_65 = fmul float %q2q2, 4.000000e+00, !dbg !290 ; [#uses=1 type=float] [debug line = 183:3]
  %q3_load_7 = load volatile float* @q3, align 4, !dbg !290 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp_66 = fmul float %tmp_65, %q3_load_7, !dbg !290 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp_67 = fadd float %tmp_64, %tmp_66, !dbg !290 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp_68 = fmul float %p_2q2, %ay_assign, !dbg !290 ; [#uses=1 type=float] [debug line = 183:3]
  %s3 = fsub float %tmp_67, %tmp_68, !dbg !290    ; [#uses=3 type=float] [debug line = 183:3]
  call void @llvm.dbg.value(metadata !{float %s3}, i64 0, metadata !291), !dbg !290 ; [debug line = 183:3] [debug variable = s3]
  %tmp_69 = fmul float %s0, %s0, !dbg !292        ; [#uses=1 type=float] [debug line = 184:15]
  %tmp_70 = fmul float %s1, %s1, !dbg !292        ; [#uses=1 type=float] [debug line = 184:15]
  %tmp_71 = fadd float %tmp_69, %tmp_70, !dbg !292 ; [#uses=1 type=float] [debug line = 184:15]
  %tmp_72 = fmul float %s2, %s2, !dbg !292        ; [#uses=1 type=float] [debug line = 184:15]
  %tmp_73 = fadd float %tmp_71, %tmp_72, !dbg !292 ; [#uses=1 type=float] [debug line = 184:15]
  %tmp_74 = fmul float %s3, %s3, !dbg !292        ; [#uses=1 type=float] [debug line = 184:15]
  %x_assign_1 = fadd float %tmp_73, %tmp_74, !dbg !292 ; [#uses=2 type=float] [debug line = 184:15]
  call void @llvm.dbg.value(metadata !{float %x_assign_1}, i64 0, metadata !293), !dbg !294 ; [debug line = 215:21@184:15] [debug variable = x]
  %halfx_1 = fmul float %x_assign_1, 5.000000e-01, !dbg !295 ; [#uses=1 type=float] [debug line = 216:24@184:15]
  call void @llvm.dbg.value(metadata !{float %halfx_1}, i64 0, metadata !296), !dbg !295 ; [debug line = 216:24@184:15] [debug variable = halfx]
  %y_2 = bitcast float %x_assign_1 to i32, !dbg !297 ; [#uses=1 type=i32] [debug line = 217:13@184:15]
  call void @llvm.dbg.value(metadata !{i32 %y_2}, i64 0, metadata !298), !dbg !297 ; [debug line = 217:13@184:15] [debug variable = y]
  %tmp_i3 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %y_2, i32 1, i32 31), !dbg !299 ; [#uses=1 type=i31] [debug line = 220:2@184:15]
  %tmp_109 = zext i31 %tmp_i3 to i32, !dbg !299   ; [#uses=1 type=i32] [debug line = 220:2@184:15]
  %y_3 = sub i32 1597463007, %tmp_109, !dbg !299  ; [#uses=1 type=i32] [debug line = 220:2@184:15]
  call void @llvm.dbg.value(metadata !{i32 %y_3}, i64 0, metadata !298), !dbg !299 ; [debug line = 220:2@184:15] [debug variable = y]
  %tmp_1_i5 = bitcast i32 %y_3 to float, !dbg !300 ; [#uses=3 type=float] [debug line = 221:2@184:15]
  %tmp_2_i6 = fmul float %halfx_1, %tmp_1_i5, !dbg !300 ; [#uses=1 type=float] [debug line = 221:2@184:15]
  %tmp_3_i7 = fmul float %tmp_2_i6, %tmp_1_i5, !dbg !300 ; [#uses=1 type=float] [debug line = 221:2@184:15]
  %tmp_4_i8 = fsub float 1.500000e+00, %tmp_3_i7, !dbg !300 ; [#uses=1 type=float] [debug line = 221:2@184:15]
  %recipNorm_1 = fmul float %tmp_1_i5, %tmp_4_i8, !dbg !300 ; [#uses=4 type=float] [debug line = 221:2@184:15]
  call void @llvm.dbg.value(metadata !{float %recipNorm_1}, i64 0, metadata !254), !dbg !292 ; [debug line = 184:15] [debug variable = recipNorm]
  %s0_1 = fmul float %s0, %recipNorm_1, !dbg !301 ; [#uses=1 type=float] [debug line = 185:3]
  call void @llvm.dbg.value(metadata !{float %s0_1}, i64 0, metadata !285), !dbg !301 ; [debug line = 185:3] [debug variable = s0]
  %s1_1 = fmul float %s1, %recipNorm_1, !dbg !302 ; [#uses=1 type=float] [debug line = 186:3]
  call void @llvm.dbg.value(metadata !{float %s1_1}, i64 0, metadata !287), !dbg !302 ; [debug line = 186:3] [debug variable = s1]
  %s2_1 = fmul float %s2, %recipNorm_1, !dbg !303 ; [#uses=1 type=float] [debug line = 187:3]
  call void @llvm.dbg.value(metadata !{float %s2_1}, i64 0, metadata !289), !dbg !303 ; [debug line = 187:3] [debug variable = s2]
  %s3_1 = fmul float %s3, %recipNorm_1, !dbg !304 ; [#uses=1 type=float] [debug line = 188:3]
  call void @llvm.dbg.value(metadata !{float %s3_1}, i64 0, metadata !291), !dbg !304 ; [debug line = 188:3] [debug variable = s3]
  %beta_load = load volatile float* @beta, align 4, !dbg !305 ; [#uses=1 type=float] [debug line = 191:3]
  %tmp_76 = fmul float %beta_load, %s0_1, !dbg !305 ; [#uses=1 type=float] [debug line = 191:3]
  %qDot1_1 = fsub float %qDot1, %tmp_76, !dbg !305 ; [#uses=1 type=float] [debug line = 191:3]
  call void @llvm.dbg.value(metadata !{float %qDot1_1}, i64 0, metadata !232), !dbg !305 ; [debug line = 191:3] [debug variable = qDot1]
  %beta_load_1 = load volatile float* @beta, align 4, !dbg !306 ; [#uses=1 type=float] [debug line = 192:3]
  %tmp_77 = fmul float %beta_load_1, %s1_1, !dbg !306 ; [#uses=1 type=float] [debug line = 192:3]
  %qDot2_1 = fsub float %qDot2, %tmp_77, !dbg !306 ; [#uses=1 type=float] [debug line = 192:3]
  call void @llvm.dbg.value(metadata !{float %qDot2_1}, i64 0, metadata !234), !dbg !306 ; [debug line = 192:3] [debug variable = qDot2]
  %beta_load_2 = load volatile float* @beta, align 4, !dbg !307 ; [#uses=1 type=float] [debug line = 193:3]
  %tmp_78 = fmul float %beta_load_2, %s2_1, !dbg !307 ; [#uses=1 type=float] [debug line = 193:3]
  %qDot3_1 = fsub float %qDot3, %tmp_78, !dbg !307 ; [#uses=1 type=float] [debug line = 193:3]
  call void @llvm.dbg.value(metadata !{float %qDot3_1}, i64 0, metadata !236), !dbg !307 ; [debug line = 193:3] [debug variable = qDot3]
  %beta_load_3 = load volatile float* @beta, align 4, !dbg !308 ; [#uses=1 type=float] [debug line = 194:3]
  %tmp_79 = fmul float %beta_load_3, %s3_1, !dbg !308 ; [#uses=1 type=float] [debug line = 194:3]
  %qDot4_1 = fsub float %qDot4, %tmp_79, !dbg !308 ; [#uses=1 type=float] [debug line = 194:3]
  call void @llvm.dbg.value(metadata !{float %qDot4_1}, i64 0, metadata !238), !dbg !308 ; [debug line = 194:3] [debug variable = qDot4]
  br label %._crit_edge, !dbg !309                ; [debug line = 195:2]

._crit_edge:                                      ; preds = %1, %0
  %qDot = phi float [ %qDot1_1, %1 ], [ %qDot1, %0 ] ; [#uses=1 type=float]
  %qDot5 = phi float [ %qDot2_1, %1 ], [ %qDot2, %0 ] ; [#uses=1 type=float]
  %qDot6 = phi float [ %qDot3_1, %1 ], [ %qDot3, %0 ] ; [#uses=1 type=float]
  %qDot7 = phi float [ %qDot4_1, %1 ], [ %qDot4, %0 ] ; [#uses=1 type=float]
  %tmp_80 = fmul float %qDot, 1.953125e-03, !dbg !310 ; [#uses=1 type=float] [debug line = 198:2]
  %q0_load_7 = load volatile float* @q0, align 4, !dbg !310 ; [#uses=1 type=float] [debug line = 198:2]
  %tmp_81 = fadd float %q0_load_7, %tmp_80, !dbg !310 ; [#uses=1 type=float] [debug line = 198:2]
  store volatile float %tmp_81, float* @q0, align 4, !dbg !310 ; [debug line = 198:2]
  %tmp_82 = fmul float %qDot5, 1.953125e-03, !dbg !311 ; [#uses=1 type=float] [debug line = 199:2]
  %q1_load_9 = load volatile float* @q1, align 4, !dbg !311 ; [#uses=1 type=float] [debug line = 199:2]
  %tmp_83 = fadd float %q1_load_9, %tmp_82, !dbg !311 ; [#uses=1 type=float] [debug line = 199:2]
  store volatile float %tmp_83, float* @q1, align 4, !dbg !311 ; [debug line = 199:2]
  %tmp_84 = fmul float %qDot6, 1.953125e-03, !dbg !312 ; [#uses=1 type=float] [debug line = 200:2]
  %q2_load_9 = load volatile float* @q2, align 4, !dbg !312 ; [#uses=1 type=float] [debug line = 200:2]
  %tmp_85 = fadd float %q2_load_9, %tmp_84, !dbg !312 ; [#uses=1 type=float] [debug line = 200:2]
  store volatile float %tmp_85, float* @q2, align 4, !dbg !312 ; [debug line = 200:2]
  %tmp_86 = fmul float %qDot7, 1.953125e-03, !dbg !313 ; [#uses=1 type=float] [debug line = 201:2]
  %q3_load_8 = load volatile float* @q3, align 4, !dbg !313 ; [#uses=1 type=float] [debug line = 201:2]
  %tmp_87 = fadd float %q3_load_8, %tmp_86, !dbg !313 ; [#uses=1 type=float] [debug line = 201:2]
  store volatile float %tmp_87, float* @q3, align 4, !dbg !313 ; [debug line = 201:2]
  %q0_load_8 = load volatile float* @q0, align 4, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %q0_load_9 = load volatile float* @q0, align 4, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp_88 = fmul float %q0_load_8, %q0_load_9, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %q1_load_10 = load volatile float* @q1, align 4, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %q1_load_11 = load volatile float* @q1, align 4, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp_89 = fmul float %q1_load_10, %q1_load_11, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp_90 = fadd float %tmp_88, %tmp_89, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %q2_load_10 = load volatile float* @q2, align 4, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %q2_load_11 = load volatile float* @q2, align 4, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp_91 = fmul float %q2_load_10, %q2_load_11, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp_92 = fadd float %tmp_90, %tmp_91, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %q3_load_9 = load volatile float* @q3, align 4, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %q3_load_10 = load volatile float* @q3, align 4, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp_93 = fmul float %q3_load_9, %q3_load_10, !dbg !314 ; [#uses=1 type=float] [debug line = 204:14]
  %x_assign_2 = fadd float %tmp_92, %tmp_93, !dbg !314 ; [#uses=2 type=float] [debug line = 204:14]
  call void @llvm.dbg.value(metadata !{float %x_assign_2}, i64 0, metadata !315), !dbg !316 ; [debug line = 215:21@204:14] [debug variable = x]
  %halfx_2 = fmul float %x_assign_2, 5.000000e-01, !dbg !317 ; [#uses=1 type=float] [debug line = 216:24@204:14]
  call void @llvm.dbg.value(metadata !{float %halfx_2}, i64 0, metadata !318), !dbg !317 ; [debug line = 216:24@204:14] [debug variable = halfx]
  %y_4 = bitcast float %x_assign_2 to i32, !dbg !319 ; [#uses=1 type=i32] [debug line = 217:13@204:14]
  call void @llvm.dbg.value(metadata !{i32 %y_4}, i64 0, metadata !320), !dbg !319 ; [debug line = 217:13@204:14] [debug variable = y]
  %tmp_i1 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %y_4, i32 1, i32 31), !dbg !321 ; [#uses=1 type=i31] [debug line = 220:2@204:14]
  %tmp_110 = zext i31 %tmp_i1 to i32, !dbg !321   ; [#uses=1 type=i32] [debug line = 220:2@204:14]
  %y_5 = sub i32 1597463007, %tmp_110, !dbg !321  ; [#uses=1 type=i32] [debug line = 220:2@204:14]
  call void @llvm.dbg.value(metadata !{i32 %y_5}, i64 0, metadata !320), !dbg !321 ; [debug line = 220:2@204:14] [debug variable = y]
  %tmp_1_i1 = bitcast i32 %y_5 to float, !dbg !322 ; [#uses=3 type=float] [debug line = 221:2@204:14]
  %tmp_2_i1 = fmul float %halfx_2, %tmp_1_i1, !dbg !322 ; [#uses=1 type=float] [debug line = 221:2@204:14]
  %tmp_3_i1 = fmul float %tmp_2_i1, %tmp_1_i1, !dbg !322 ; [#uses=1 type=float] [debug line = 221:2@204:14]
  %tmp_4_i1 = fsub float 1.500000e+00, %tmp_3_i1, !dbg !322 ; [#uses=1 type=float] [debug line = 221:2@204:14]
  %recipNorm_2 = fmul float %tmp_1_i1, %tmp_4_i1, !dbg !322 ; [#uses=4 type=float] [debug line = 221:2@204:14]
  call void @llvm.dbg.value(metadata !{float %recipNorm_2}, i64 0, metadata !254), !dbg !314 ; [debug line = 204:14] [debug variable = recipNorm]
  %q0_load_10 = load volatile float* @q0, align 4, !dbg !323 ; [#uses=1 type=float] [debug line = 205:2]
  %tmp_95 = fmul float %q0_load_10, %recipNorm_2, !dbg !323 ; [#uses=1 type=float] [debug line = 205:2]
  store volatile float %tmp_95, float* @q0, align 4, !dbg !323 ; [debug line = 205:2]
  %q1_load_12 = load volatile float* @q1, align 4, !dbg !324 ; [#uses=1 type=float] [debug line = 206:2]
  %tmp_96 = fmul float %q1_load_12, %recipNorm_2, !dbg !324 ; [#uses=1 type=float] [debug line = 206:2]
  store volatile float %tmp_96, float* @q1, align 4, !dbg !324 ; [debug line = 206:2]
  %q2_load_12 = load volatile float* @q2, align 4, !dbg !325 ; [#uses=1 type=float] [debug line = 207:2]
  %tmp_97 = fmul float %q2_load_12, %recipNorm_2, !dbg !325 ; [#uses=1 type=float] [debug line = 207:2]
  store volatile float %tmp_97, float* @q2, align 4, !dbg !325 ; [debug line = 207:2]
  %q3_load_11 = load volatile float* @q3, align 4, !dbg !326 ; [#uses=1 type=float] [debug line = 208:2]
  %tmp_98 = fmul float %q3_load_11, %recipNorm_2, !dbg !326 ; [#uses=1 type=float] [debug line = 208:2]
  store volatile float %tmp_98, float* @q3, align 4, !dbg !326 ; [debug line = 208:2]
  ret void, !dbg !327                             ; [debug line = 209:1]
}

; [#uses=0]
define void @MadgwickAHRSupdate(float %gx, float %gy, float %gz, float %ax, float %ay, float %az, float %mx, float %my, float %mz) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float %gx) nounwind, !map !328
  call void (...)* @_ssdm_op_SpecBitsMap(float %gy) nounwind, !map !334
  call void (...)* @_ssdm_op_SpecBitsMap(float %gz) nounwind, !map !338
  call void (...)* @_ssdm_op_SpecBitsMap(float %ax) nounwind, !map !342
  call void (...)* @_ssdm_op_SpecBitsMap(float %ay) nounwind, !map !346
  call void (...)* @_ssdm_op_SpecBitsMap(float %az) nounwind, !map !350
  call void (...)* @_ssdm_op_SpecBitsMap(float %mx) nounwind, !map !354
  call void (...)* @_ssdm_op_SpecBitsMap(float %my) nounwind, !map !358
  call void (...)* @_ssdm_op_SpecBitsMap(float %mz) nounwind, !map !362
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @MadgwickAHRSupdate_s) nounwind
  %mz_read = call float @_ssdm_op_Read.ap_auto.float(float %mz) nounwind ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %mz_read}, i64 0, metadata !366), !dbg !370 ; [debug line = 44:111] [debug variable = mz]
  %my_read = call float @_ssdm_op_Read.ap_auto.float(float %my) nounwind ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %my_read}, i64 0, metadata !371), !dbg !372 ; [debug line = 44:101] [debug variable = my]
  %mx_read = call float @_ssdm_op_Read.ap_auto.float(float %mx) nounwind ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %mx_read}, i64 0, metadata !373), !dbg !374 ; [debug line = 44:91] [debug variable = mx]
  %az_read = call float @_ssdm_op_Read.ap_auto.float(float %az) nounwind ; [#uses=6 type=float]
  call void @llvm.dbg.value(metadata !{float %az_read}, i64 0, metadata !375), !dbg !376 ; [debug line = 44:81] [debug variable = az]
  %ay_read = call float @_ssdm_op_Read.ap_auto.float(float %ay) nounwind ; [#uses=6 type=float]
  call void @llvm.dbg.value(metadata !{float %ay_read}, i64 0, metadata !377), !dbg !378 ; [debug line = 44:71] [debug variable = ay]
  %ax_read = call float @_ssdm_op_Read.ap_auto.float(float %ax) nounwind ; [#uses=6 type=float]
  call void @llvm.dbg.value(metadata !{float %ax_read}, i64 0, metadata !379), !dbg !380 ; [debug line = 44:61] [debug variable = ax]
  %gz_read = call float @_ssdm_op_Read.ap_auto.float(float %gz) nounwind ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %gz_read}, i64 0, metadata !381), !dbg !382 ; [debug line = 44:51] [debug variable = gz]
  %gy_read = call float @_ssdm_op_Read.ap_auto.float(float %gy) nounwind ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %gy_read}, i64 0, metadata !383), !dbg !384 ; [debug line = 44:41] [debug variable = gy]
  %gx_read = call float @_ssdm_op_Read.ap_auto.float(float %gx) nounwind ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %gx_read}, i64 0, metadata !385), !dbg !386 ; [debug line = 44:31] [debug variable = gx]
  call void @llvm.dbg.value(metadata !{float %gx}, i64 0, metadata !385), !dbg !386 ; [debug line = 44:31] [debug variable = gx]
  call void @llvm.dbg.value(metadata !{float %gy}, i64 0, metadata !383), !dbg !384 ; [debug line = 44:41] [debug variable = gy]
  call void @llvm.dbg.value(metadata !{float %gz}, i64 0, metadata !381), !dbg !382 ; [debug line = 44:51] [debug variable = gz]
  call void @llvm.dbg.value(metadata !{float %ax}, i64 0, metadata !379), !dbg !380 ; [debug line = 44:61] [debug variable = ax]
  call void @llvm.dbg.value(metadata !{float %ay}, i64 0, metadata !377), !dbg !378 ; [debug line = 44:71] [debug variable = ay]
  call void @llvm.dbg.value(metadata !{float %az}, i64 0, metadata !375), !dbg !376 ; [debug line = 44:81] [debug variable = az]
  call void @llvm.dbg.value(metadata !{float %mx}, i64 0, metadata !373), !dbg !374 ; [debug line = 44:91] [debug variable = mx]
  call void @llvm.dbg.value(metadata !{float %my}, i64 0, metadata !371), !dbg !372 ; [debug line = 44:101] [debug variable = my]
  call void @llvm.dbg.value(metadata !{float %mz}, i64 0, metadata !366), !dbg !370 ; [debug line = 44:111] [debug variable = mz]
  %mx_to_int = bitcast float %mx_read to i32      ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %mx_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_121 = trunc i32 %mx_to_int to i23          ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_121, 0               ; [#uses=1 type=i1]
  %tmp_122 = or i1 %notrhs, %notlhs               ; [#uses=1 type=i1]
  %tmp_123 = fcmp oeq float %mx_read, 0.000000e+00, !dbg !387 ; [#uses=1 type=i1] [debug line = 52:2]
  %tmp_128 = and i1 %tmp_122, %tmp_123, !dbg !387 ; [#uses=1 type=i1] [debug line = 52:2]
  %my_to_int = bitcast float %my_read to i32      ; [#uses=2 type=i32]
  %tmp_133 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %my_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_297 = trunc i32 %my_to_int to i23          ; [#uses=1 type=i23]
  %notlhs8 = icmp ne i8 %tmp_133, -1              ; [#uses=1 type=i1]
  %notrhs9 = icmp eq i23 %tmp_297, 0              ; [#uses=1 type=i1]
  %tmp_316 = or i1 %notrhs9, %notlhs8             ; [#uses=1 type=i1]
  %tmp_319 = fcmp oeq float %my_read, 0.000000e+00, !dbg !387 ; [#uses=1 type=i1] [debug line = 52:2]
  %tmp_320 = and i1 %tmp_316, %tmp_319, !dbg !387 ; [#uses=1 type=i1] [debug line = 52:2]
  %mz_to_int = bitcast float %mz_read to i32      ; [#uses=2 type=i32]
  %tmp_321 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %mz_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_322 = trunc i32 %mz_to_int to i23          ; [#uses=1 type=i23]
  %notlhs1 = icmp ne i8 %tmp_321, -1              ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp_322, 0              ; [#uses=1 type=i1]
  %tmp_323 = or i1 %notrhs1, %notlhs1             ; [#uses=1 type=i1]
  %tmp_324 = fcmp oeq float %mz_read, 0.000000e+00, !dbg !387 ; [#uses=1 type=i1] [debug line = 52:2]
  %tmp_325 = and i1 %tmp_323, %tmp_324, !dbg !387 ; [#uses=1 type=i1] [debug line = 52:2]
  %tmp1 = and i1 %tmp_320, %tmp_325, !dbg !387    ; [#uses=1 type=i1] [debug line = 52:2]
  %or_cond1 = and i1 %tmp1, %tmp_128, !dbg !387   ; [#uses=1 type=i1] [debug line = 52:2]
  br i1 %or_cond1, label %1, label %2, !dbg !387  ; [debug line = 52:2]

; <label>:1                                       ; preds = %0
  call fastcc void @MadgwickAHRSupdateIM(float %gx_read, float %gy_read, float %gz_read, float %ax_read, float %ay_read, float %az_read), !dbg !389 ; [debug line = 53:3]
  br label %4, !dbg !391                          ; [debug line = 54:3]

; <label>:2                                       ; preds = %0
  %q1_load = load volatile float* @q1, align 4, !dbg !392 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_100_to_int = bitcast float %q1_load to i32, !dbg !392 ; [#uses=1 type=i32] [debug line = 58:2]
  %tmp_100_neg = xor i32 %tmp_100_to_int, -2147483648, !dbg !392 ; [#uses=1 type=i32] [debug line = 58:2]
  %tmp_s = bitcast i32 %tmp_100_neg to float, !dbg !392 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_99 = fmul float %tmp_s, %gx_read, !dbg !392 ; [#uses=1 type=float] [debug line = 58:2]
  %q2_load = load volatile float* @q2, align 4, !dbg !392 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_100 = fmul float %q2_load, %gy_read, !dbg !392 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_101 = fsub float %tmp_99, %tmp_100, !dbg !392 ; [#uses=1 type=float] [debug line = 58:2]
  %q3_load = load volatile float* @q3, align 4, !dbg !392 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_102 = fmul float %q3_load, %gz_read, !dbg !392 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp_103 = fsub float %tmp_101, %tmp_102, !dbg !392 ; [#uses=1 type=float] [debug line = 58:2]
  %qDot1 = fmul float %tmp_103, 5.000000e-01, !dbg !392 ; [#uses=2 type=float] [debug line = 58:2]
  call void @llvm.dbg.value(metadata !{float %qDot1}, i64 0, metadata !393), !dbg !392 ; [debug line = 58:2] [debug variable = qDot1]
  %q0_load = load volatile float* @q0, align 4, !dbg !394 ; [#uses=1 type=float] [debug line = 59:2]
  %tmp_104 = fmul float %q0_load, %gx_read, !dbg !394 ; [#uses=1 type=float] [debug line = 59:2]
  %q2_load_13 = load volatile float* @q2, align 4, !dbg !394 ; [#uses=1 type=float] [debug line = 59:2]
  %tmp_105 = fmul float %q2_load_13, %gz_read, !dbg !394 ; [#uses=1 type=float] [debug line = 59:2]
  %tmp_106 = fadd float %tmp_104, %tmp_105, !dbg !394 ; [#uses=1 type=float] [debug line = 59:2]
  %q3_load_12 = load volatile float* @q3, align 4, !dbg !394 ; [#uses=1 type=float] [debug line = 59:2]
  %tmp_107 = fmul float %q3_load_12, %gy_read, !dbg !394 ; [#uses=1 type=float] [debug line = 59:2]
  %tmp_108 = fsub float %tmp_106, %tmp_107, !dbg !394 ; [#uses=1 type=float] [debug line = 59:2]
  %qDot2 = fmul float %tmp_108, 5.000000e-01, !dbg !394 ; [#uses=2 type=float] [debug line = 59:2]
  call void @llvm.dbg.value(metadata !{float %qDot2}, i64 0, metadata !395), !dbg !394 ; [debug line = 59:2] [debug variable = qDot2]
  %q0_load_11 = load volatile float* @q0, align 4, !dbg !396 ; [#uses=1 type=float] [debug line = 60:2]
  %tmp_109 = fmul float %q0_load_11, %gy_read, !dbg !396 ; [#uses=1 type=float] [debug line = 60:2]
  %q1_load_13 = load volatile float* @q1, align 4, !dbg !396 ; [#uses=1 type=float] [debug line = 60:2]
  %tmp_110 = fmul float %q1_load_13, %gz_read, !dbg !396 ; [#uses=1 type=float] [debug line = 60:2]
  %tmp_111 = fsub float %tmp_109, %tmp_110, !dbg !396 ; [#uses=1 type=float] [debug line = 60:2]
  %q3_load_13 = load volatile float* @q3, align 4, !dbg !396 ; [#uses=1 type=float] [debug line = 60:2]
  %tmp_112 = fmul float %q3_load_13, %gx_read, !dbg !396 ; [#uses=1 type=float] [debug line = 60:2]
  %tmp_113 = fadd float %tmp_111, %tmp_112, !dbg !396 ; [#uses=1 type=float] [debug line = 60:2]
  %qDot3 = fmul float %tmp_113, 5.000000e-01, !dbg !396 ; [#uses=2 type=float] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{float %qDot3}, i64 0, metadata !397), !dbg !396 ; [debug line = 60:2] [debug variable = qDot3]
  %q0_load_12 = load volatile float* @q0, align 4, !dbg !398 ; [#uses=1 type=float] [debug line = 61:2]
  %tmp_114 = fmul float %q0_load_12, %gz_read, !dbg !398 ; [#uses=1 type=float] [debug line = 61:2]
  %q1_load_14 = load volatile float* @q1, align 4, !dbg !398 ; [#uses=1 type=float] [debug line = 61:2]
  %tmp_115 = fmul float %q1_load_14, %gy_read, !dbg !398 ; [#uses=1 type=float] [debug line = 61:2]
  %tmp_116 = fadd float %tmp_114, %tmp_115, !dbg !398 ; [#uses=1 type=float] [debug line = 61:2]
  %q2_load_14 = load volatile float* @q2, align 4, !dbg !398 ; [#uses=1 type=float] [debug line = 61:2]
  %tmp_117 = fmul float %q2_load_14, %gx_read, !dbg !398 ; [#uses=1 type=float] [debug line = 61:2]
  %tmp_118 = fsub float %tmp_116, %tmp_117, !dbg !398 ; [#uses=1 type=float] [debug line = 61:2]
  %qDot4 = fmul float %tmp_118, 5.000000e-01, !dbg !398 ; [#uses=2 type=float] [debug line = 61:2]
  call void @llvm.dbg.value(metadata !{float %qDot4}, i64 0, metadata !399), !dbg !398 ; [debug line = 61:2] [debug variable = qDot4]
  %ax_to_int = bitcast float %ax_read to i32      ; [#uses=2 type=i32]
  %tmp_326 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ax_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_327 = trunc i32 %ax_to_int to i23          ; [#uses=1 type=i23]
  %notlhs2 = icmp ne i8 %tmp_326, -1              ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp_327, 0              ; [#uses=1 type=i1]
  %tmp_328 = or i1 %notrhs2, %notlhs2             ; [#uses=1 type=i1]
  %tmp_329 = fcmp oeq float %ax_read, 0.000000e+00, !dbg !400 ; [#uses=1 type=i1] [debug line = 64:2]
  %tmp_330 = and i1 %tmp_328, %tmp_329, !dbg !400 ; [#uses=1 type=i1] [debug line = 64:2]
  %ay_to_int = bitcast float %ay_read to i32      ; [#uses=2 type=i32]
  %tmp_331 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ay_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_332 = trunc i32 %ay_to_int to i23          ; [#uses=1 type=i23]
  %notlhs3 = icmp ne i8 %tmp_331, -1              ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp_332, 0              ; [#uses=1 type=i1]
  %tmp_333 = or i1 %notrhs3, %notlhs3             ; [#uses=1 type=i1]
  %tmp_334 = fcmp oeq float %ay_read, 0.000000e+00, !dbg !400 ; [#uses=1 type=i1] [debug line = 64:2]
  %tmp_335 = and i1 %tmp_333, %tmp_334, !dbg !400 ; [#uses=1 type=i1] [debug line = 64:2]
  %az_to_int = bitcast float %az_read to i32      ; [#uses=2 type=i32]
  %tmp_336 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %az_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_337 = trunc i32 %az_to_int to i23          ; [#uses=1 type=i23]
  %notlhs4 = icmp ne i8 %tmp_336, -1              ; [#uses=1 type=i1]
  %notrhs4 = icmp eq i23 %tmp_337, 0              ; [#uses=1 type=i1]
  %tmp_338 = or i1 %notrhs4, %notlhs4             ; [#uses=1 type=i1]
  %tmp_339 = fcmp oeq float %az_read, 0.000000e+00, !dbg !400 ; [#uses=1 type=i1] [debug line = 64:2]
  %tmp_340 = and i1 %tmp_338, %tmp_339, !dbg !400 ; [#uses=1 type=i1] [debug line = 64:2]
  %tmp2 = and i1 %tmp_335, %tmp_340, !dbg !400    ; [#uses=1 type=i1] [debug line = 64:2]
  %or_cond3 = and i1 %tmp2, %tmp_330, !dbg !400   ; [#uses=1 type=i1] [debug line = 64:2]
  br i1 %or_cond3, label %._crit_edge, label %3, !dbg !400 ; [debug line = 64:2]

; <label>:3                                       ; preds = %2
  %tmp_119 = fmul float %ax_read, %ax_read, !dbg !401 ; [#uses=1 type=float] [debug line = 67:15]
  %tmp_120 = fmul float %ay_read, %ay_read, !dbg !401 ; [#uses=1 type=float] [debug line = 67:15]
  %tmp_124 = fadd float %tmp_119, %tmp_120, !dbg !401 ; [#uses=1 type=float] [debug line = 67:15]
  %tmp_125 = fmul float %az_read, %az_read, !dbg !401 ; [#uses=1 type=float] [debug line = 67:15]
  %x_assign = fadd float %tmp_124, %tmp_125, !dbg !401 ; [#uses=2 type=float] [debug line = 67:15]
  call void @llvm.dbg.value(metadata !{float %x_assign}, i64 0, metadata !403), !dbg !404 ; [debug line = 215:21@67:15] [debug variable = x]
  %halfx = fmul float %x_assign, 5.000000e-01, !dbg !405 ; [#uses=1 type=float] [debug line = 216:24@67:15]
  call void @llvm.dbg.value(metadata !{float %halfx}, i64 0, metadata !406), !dbg !405 ; [debug line = 216:24@67:15] [debug variable = halfx]
  %y = bitcast float %x_assign to i32, !dbg !407  ; [#uses=1 type=i32] [debug line = 217:13@67:15]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !408), !dbg !407 ; [debug line = 217:13@67:15] [debug variable = y]
  %tmp_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %y, i32 1, i32 31), !dbg !409 ; [#uses=1 type=i31] [debug line = 220:2@67:15]
  %tmp_341 = zext i31 %tmp_i to i32, !dbg !409    ; [#uses=1 type=i32] [debug line = 220:2@67:15]
  %y_6 = sub i32 1597463007, %tmp_341, !dbg !409  ; [#uses=1 type=i32] [debug line = 220:2@67:15]
  call void @llvm.dbg.value(metadata !{i32 %y_6}, i64 0, metadata !408), !dbg !409 ; [debug line = 220:2@67:15] [debug variable = y]
  %tmp_1_i = bitcast i32 %y_6 to float, !dbg !410 ; [#uses=3 type=float] [debug line = 221:2@67:15]
  %tmp_2_i = fmul float %halfx, %tmp_1_i, !dbg !410 ; [#uses=1 type=float] [debug line = 221:2@67:15]
  %tmp_3_i = fmul float %tmp_2_i, %tmp_1_i, !dbg !410 ; [#uses=1 type=float] [debug line = 221:2@67:15]
  %tmp_4_i = fsub float 1.500000e+00, %tmp_3_i, !dbg !410 ; [#uses=1 type=float] [debug line = 221:2@67:15]
  %recipNorm = fmul float %tmp_1_i, %tmp_4_i, !dbg !410 ; [#uses=3 type=float] [debug line = 221:2@67:15]
  call void @llvm.dbg.value(metadata !{float %recipNorm}, i64 0, metadata !411), !dbg !401 ; [debug line = 67:15] [debug variable = recipNorm]
  %ax_assign = fmul float %recipNorm, %ax_read, !dbg !412 ; [#uses=1 type=float] [debug line = 68:3]
  call void @llvm.dbg.value(metadata !{float %ax_assign}, i64 0, metadata !379), !dbg !412 ; [debug line = 68:3] [debug variable = ax]
  %ay_assign = fmul float %recipNorm, %ay_read, !dbg !413 ; [#uses=1 type=float] [debug line = 69:3]
  call void @llvm.dbg.value(metadata !{float %ay_assign}, i64 0, metadata !377), !dbg !413 ; [debug line = 69:3] [debug variable = ay]
  %az_assign = fmul float %recipNorm, %az_read, !dbg !414 ; [#uses=1 type=float] [debug line = 70:3]
  call void @llvm.dbg.value(metadata !{float %az_assign}, i64 0, metadata !375), !dbg !414 ; [debug line = 70:3] [debug variable = az]
  %tmp_126 = fmul float %mx_read, %mx_read, !dbg !415 ; [#uses=1 type=float] [debug line = 73:15]
  %tmp_127 = fmul float %my_read, %my_read, !dbg !415 ; [#uses=1 type=float] [debug line = 73:15]
  %tmp_129 = fadd float %tmp_126, %tmp_127, !dbg !415 ; [#uses=1 type=float] [debug line = 73:15]
  %tmp_130 = fmul float %mz_read, %mz_read, !dbg !415 ; [#uses=1 type=float] [debug line = 73:15]
  %x_assign_3 = fadd float %tmp_129, %tmp_130, !dbg !415 ; [#uses=2 type=float] [debug line = 73:15]
  call void @llvm.dbg.value(metadata !{float %x_assign_3}, i64 0, metadata !416), !dbg !417 ; [debug line = 215:21@73:15] [debug variable = x]
  %halfx_3 = fmul float %x_assign_3, 5.000000e-01, !dbg !418 ; [#uses=1 type=float] [debug line = 216:24@73:15]
  call void @llvm.dbg.value(metadata !{float %halfx_3}, i64 0, metadata !419), !dbg !418 ; [debug line = 216:24@73:15] [debug variable = halfx]
  %y_7 = bitcast float %x_assign_3 to i32, !dbg !420 ; [#uses=1 type=i32] [debug line = 217:13@73:15]
  call void @llvm.dbg.value(metadata !{i32 %y_7}, i64 0, metadata !421), !dbg !420 ; [debug line = 217:13@73:15] [debug variable = y]
  %tmp_i3 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %y_7, i32 1, i32 31), !dbg !422 ; [#uses=1 type=i31] [debug line = 220:2@73:15]
  %tmp_342 = zext i31 %tmp_i3 to i32, !dbg !422   ; [#uses=1 type=i32] [debug line = 220:2@73:15]
  %y_8 = sub i32 1597463007, %tmp_342, !dbg !422  ; [#uses=1 type=i32] [debug line = 220:2@73:15]
  call void @llvm.dbg.value(metadata !{i32 %y_8}, i64 0, metadata !421), !dbg !422 ; [debug line = 220:2@73:15] [debug variable = y]
  %tmp_1_i5 = bitcast i32 %y_8 to float, !dbg !423 ; [#uses=3 type=float] [debug line = 221:2@73:15]
  %tmp_2_i6 = fmul float %halfx_3, %tmp_1_i5, !dbg !423 ; [#uses=1 type=float] [debug line = 221:2@73:15]
  %tmp_3_i7 = fmul float %tmp_2_i6, %tmp_1_i5, !dbg !423 ; [#uses=1 type=float] [debug line = 221:2@73:15]
  %tmp_4_i8 = fsub float 1.500000e+00, %tmp_3_i7, !dbg !423 ; [#uses=1 type=float] [debug line = 221:2@73:15]
  %recipNorm_3 = fmul float %tmp_1_i5, %tmp_4_i8, !dbg !423 ; [#uses=3 type=float] [debug line = 221:2@73:15]
  call void @llvm.dbg.value(metadata !{float %recipNorm_3}, i64 0, metadata !411), !dbg !415 ; [debug line = 73:15] [debug variable = recipNorm]
  %mx_assign = fmul float %recipNorm_3, %mx_read, !dbg !424 ; [#uses=7 type=float] [debug line = 74:3]
  call void @llvm.dbg.value(metadata !{float %mx_assign}, i64 0, metadata !373), !dbg !424 ; [debug line = 74:3] [debug variable = mx]
  %my_assign = fmul float %recipNorm_3, %my_read, !dbg !425 ; [#uses=8 type=float] [debug line = 75:3]
  call void @llvm.dbg.value(metadata !{float %my_assign}, i64 0, metadata !371), !dbg !425 ; [debug line = 75:3] [debug variable = my]
  %mz_assign = fmul float %recipNorm_3, %mz_read, !dbg !426 ; [#uses=8 type=float] [debug line = 76:3]
  call void @llvm.dbg.value(metadata !{float %mz_assign}, i64 0, metadata !366), !dbg !426 ; [debug line = 76:3] [debug variable = mz]
  %q0_load_13 = load volatile float* @q0, align 4, !dbg !427 ; [#uses=1 type=float] [debug line = 79:3]
  %tmp_131 = fmul float %q0_load_13, 2.000000e+00, !dbg !427 ; [#uses=1 type=float] [debug line = 79:3]
  %p_2q0mx = fmul float %tmp_131, %mx_assign, !dbg !427 ; [#uses=2 type=float] [debug line = 79:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0mx}, i64 0, metadata !428), !dbg !427 ; [debug line = 79:3] [debug variable = _2q0mx]
  %q0_load_14 = load volatile float* @q0, align 4, !dbg !429 ; [#uses=1 type=float] [debug line = 80:3]
  %tmp_132 = fmul float %q0_load_14, 2.000000e+00, !dbg !429 ; [#uses=1 type=float] [debug line = 80:3]
  %p_2q0my = fmul float %tmp_132, %my_assign, !dbg !429 ; [#uses=2 type=float] [debug line = 80:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0my}, i64 0, metadata !430), !dbg !429 ; [debug line = 80:3] [debug variable = _2q0my]
  %q0_load_15 = load volatile float* @q0, align 4, !dbg !431 ; [#uses=1 type=float] [debug line = 81:3]
  %tmp_134 = fmul float %q0_load_15, 2.000000e+00, !dbg !431 ; [#uses=1 type=float] [debug line = 81:3]
  %p_2q0mz = fmul float %tmp_134, %mz_assign, !dbg !431 ; [#uses=2 type=float] [debug line = 81:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0mz}, i64 0, metadata !432), !dbg !431 ; [debug line = 81:3] [debug variable = _2q0mz]
  %q1_load_15 = load volatile float* @q1, align 4, !dbg !433 ; [#uses=1 type=float] [debug line = 82:3]
  %tmp_135 = fmul float %q1_load_15, 2.000000e+00, !dbg !433 ; [#uses=1 type=float] [debug line = 82:3]
  %p_2q1mx = fmul float %tmp_135, %mx_assign, !dbg !433 ; [#uses=2 type=float] [debug line = 82:3]
  call void @llvm.dbg.value(metadata !{float %p_2q1mx}, i64 0, metadata !434), !dbg !433 ; [debug line = 82:3] [debug variable = _2q1mx]
  %q0_load_16 = load volatile float* @q0, align 4, !dbg !435 ; [#uses=1 type=float] [debug line = 83:3]
  %p_2q0 = fmul float %q0_load_16, 2.000000e+00, !dbg !435 ; [#uses=2 type=float] [debug line = 83:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0}, i64 0, metadata !436), !dbg !435 ; [debug line = 83:3] [debug variable = _2q0]
  %q1_load_16 = load volatile float* @q1, align 4, !dbg !437 ; [#uses=1 type=float] [debug line = 84:3]
  %p_2q1 = fmul float %q1_load_16, 2.000000e+00, !dbg !437 ; [#uses=4 type=float] [debug line = 84:3]
  call void @llvm.dbg.value(metadata !{float %p_2q1}, i64 0, metadata !438), !dbg !437 ; [debug line = 84:3] [debug variable = _2q1]
  %q2_load_15 = load volatile float* @q2, align 4, !dbg !439 ; [#uses=1 type=float] [debug line = 85:3]
  %p_2q2 = fmul float %q2_load_15, 2.000000e+00, !dbg !439 ; [#uses=4 type=float] [debug line = 85:3]
  call void @llvm.dbg.value(metadata !{float %p_2q2}, i64 0, metadata !440), !dbg !439 ; [debug line = 85:3] [debug variable = _2q2]
  %q3_load_14 = load volatile float* @q3, align 4, !dbg !441 ; [#uses=1 type=float] [debug line = 86:3]
  %p_2q3 = fmul float %q3_load_14, 2.000000e+00, !dbg !441 ; [#uses=2 type=float] [debug line = 86:3]
  call void @llvm.dbg.value(metadata !{float %p_2q3}, i64 0, metadata !442), !dbg !441 ; [debug line = 86:3] [debug variable = _2q3]
  %q0_load_17 = load volatile float* @q0, align 4, !dbg !443 ; [#uses=1 type=float] [debug line = 87:3]
  %tmp_136 = fmul float %q0_load_17, 2.000000e+00, !dbg !443 ; [#uses=1 type=float] [debug line = 87:3]
  %q2_load_16 = load volatile float* @q2, align 4, !dbg !443 ; [#uses=1 type=float] [debug line = 87:3]
  %p_2q0q2 = fmul float %tmp_136, %q2_load_16, !dbg !443 ; [#uses=1 type=float] [debug line = 87:3]
  call void @llvm.dbg.value(metadata !{float %p_2q0q2}, i64 0, metadata !444), !dbg !443 ; [debug line = 87:3] [debug variable = _2q0q2]
  %q2_load_17 = load volatile float* @q2, align 4, !dbg !445 ; [#uses=1 type=float] [debug line = 88:3]
  %tmp_137 = fmul float %q2_load_17, 2.000000e+00, !dbg !445 ; [#uses=1 type=float] [debug line = 88:3]
  %q3_load_15 = load volatile float* @q3, align 4, !dbg !445 ; [#uses=1 type=float] [debug line = 88:3]
  %p_2q2q3 = fmul float %tmp_137, %q3_load_15, !dbg !445 ; [#uses=1 type=float] [debug line = 88:3]
  call void @llvm.dbg.value(metadata !{float %p_2q2q3}, i64 0, metadata !446), !dbg !445 ; [debug line = 88:3] [debug variable = _2q2q3]
  %q0_load_18 = load volatile float* @q0, align 4, !dbg !447 ; [#uses=1 type=float] [debug line = 89:3]
  %q0_load_19 = load volatile float* @q0, align 4, !dbg !447 ; [#uses=1 type=float] [debug line = 89:3]
  %q0q0 = fmul float %q0_load_18, %q0_load_19, !dbg !447 ; [#uses=3 type=float] [debug line = 89:3]
  call void @llvm.dbg.value(metadata !{float %q0q0}, i64 0, metadata !448), !dbg !447 ; [debug line = 89:3] [debug variable = q0q0]
  %q0_load_20 = load volatile float* @q0, align 4, !dbg !449 ; [#uses=1 type=float] [debug line = 90:3]
  %q1_load_17 = load volatile float* @q1, align 4, !dbg !449 ; [#uses=1 type=float] [debug line = 90:3]
  %q0q1 = fmul float %q0_load_20, %q1_load_17, !dbg !449 ; [#uses=2 type=float] [debug line = 90:3]
  call void @llvm.dbg.value(metadata !{float %q0q1}, i64 0, metadata !450), !dbg !449 ; [debug line = 90:3] [debug variable = q0q1]
  %q0_load_21 = load volatile float* @q0, align 4, !dbg !451 ; [#uses=1 type=float] [debug line = 91:3]
  %q2_load_18 = load volatile float* @q2, align 4, !dbg !451 ; [#uses=1 type=float] [debug line = 91:3]
  %q0q2 = fmul float %q0_load_21, %q2_load_18, !dbg !451 ; [#uses=2 type=float] [debug line = 91:3]
  call void @llvm.dbg.value(metadata !{float %q0q2}, i64 0, metadata !452), !dbg !451 ; [debug line = 91:3] [debug variable = q0q2]
  %q0_load_22 = load volatile float* @q0, align 4, !dbg !453 ; [#uses=1 type=float] [debug line = 92:3]
  %q3_load_16 = load volatile float* @q3, align 4, !dbg !453 ; [#uses=1 type=float] [debug line = 92:3]
  %q0q3 = fmul float %q0_load_22, %q3_load_16, !dbg !453 ; [#uses=1 type=float] [debug line = 92:3]
  call void @llvm.dbg.value(metadata !{float %q0q3}, i64 0, metadata !454), !dbg !453 ; [debug line = 92:3] [debug variable = q0q3]
  %q1_load_18 = load volatile float* @q1, align 4, !dbg !455 ; [#uses=1 type=float] [debug line = 93:3]
  %q1_load_19 = load volatile float* @q1, align 4, !dbg !455 ; [#uses=1 type=float] [debug line = 93:3]
  %q1q1 = fmul float %q1_load_18, %q1_load_19, !dbg !455 ; [#uses=5 type=float] [debug line = 93:3]
  call void @llvm.dbg.value(metadata !{float %q1q1}, i64 0, metadata !456), !dbg !455 ; [debug line = 93:3] [debug variable = q1q1]
  %q1_load_20 = load volatile float* @q1, align 4, !dbg !457 ; [#uses=1 type=float] [debug line = 94:3]
  %q2_load_19 = load volatile float* @q2, align 4, !dbg !457 ; [#uses=1 type=float] [debug line = 94:3]
  %q1q2 = fmul float %q1_load_20, %q2_load_19, !dbg !457 ; [#uses=1 type=float] [debug line = 94:3]
  call void @llvm.dbg.value(metadata !{float %q1q2}, i64 0, metadata !458), !dbg !457 ; [debug line = 94:3] [debug variable = q1q2]
  %q1_load_21 = load volatile float* @q1, align 4, !dbg !459 ; [#uses=1 type=float] [debug line = 95:3]
  %q3_load_17 = load volatile float* @q3, align 4, !dbg !459 ; [#uses=1 type=float] [debug line = 95:3]
  %q1q3 = fmul float %q1_load_21, %q3_load_17, !dbg !459 ; [#uses=3 type=float] [debug line = 95:3]
  call void @llvm.dbg.value(metadata !{float %q1q3}, i64 0, metadata !460), !dbg !459 ; [debug line = 95:3] [debug variable = q1q3]
  %q2_load_20 = load volatile float* @q2, align 4, !dbg !461 ; [#uses=1 type=float] [debug line = 96:3]
  %q2_load_21 = load volatile float* @q2, align 4, !dbg !461 ; [#uses=1 type=float] [debug line = 96:3]
  %q2q2 = fmul float %q2_load_20, %q2_load_21, !dbg !461 ; [#uses=6 type=float] [debug line = 96:3]
  call void @llvm.dbg.value(metadata !{float %q2q2}, i64 0, metadata !462), !dbg !461 ; [debug line = 96:3] [debug variable = q2q2]
  %q2_load_22 = load volatile float* @q2, align 4, !dbg !463 ; [#uses=1 type=float] [debug line = 97:3]
  %q3_load_18 = load volatile float* @q3, align 4, !dbg !463 ; [#uses=1 type=float] [debug line = 97:3]
  %q2q3 = fmul float %q2_load_22, %q3_load_18, !dbg !463 ; [#uses=1 type=float] [debug line = 97:3]
  call void @llvm.dbg.value(metadata !{float %q2q3}, i64 0, metadata !464), !dbg !463 ; [debug line = 97:3] [debug variable = q2q3]
  %q3_load_19 = load volatile float* @q3, align 4, !dbg !465 ; [#uses=1 type=float] [debug line = 98:3]
  %q3_load_20 = load volatile float* @q3, align 4, !dbg !465 ; [#uses=1 type=float] [debug line = 98:3]
  %q3q3 = fmul float %q3_load_19, %q3_load_20, !dbg !465 ; [#uses=4 type=float] [debug line = 98:3]
  call void @llvm.dbg.value(metadata !{float %q3q3}, i64 0, metadata !466), !dbg !465 ; [debug line = 98:3] [debug variable = q3q3]
  %tmp_138 = fmul float %mx_assign, %q0q0, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %q3_load_21 = load volatile float* @q3, align 4, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_139 = fmul float %p_2q0my, %q3_load_21, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_140 = fsub float %tmp_138, %tmp_139, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %q2_load_23 = load volatile float* @q2, align 4, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_141 = fmul float %p_2q0mz, %q2_load_23, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_142 = fadd float %tmp_140, %tmp_141, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_143 = fmul float %mx_assign, %q1q1, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_144 = fadd float %tmp_142, %tmp_143, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_145 = fmul float %p_2q1, %my_assign, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %q2_load_24 = load volatile float* @q2, align 4, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_146 = fmul float %tmp_145, %q2_load_24, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_147 = fadd float %tmp_144, %tmp_146, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_148 = fmul float %p_2q1, %mz_assign, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %q3_load_22 = load volatile float* @q3, align 4, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_149 = fmul float %tmp_148, %q3_load_22, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_150 = fadd float %tmp_147, %tmp_149, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_151 = fmul float %mx_assign, %q2q2, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_152 = fsub float %tmp_150, %tmp_151, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp_153 = fmul float %mx_assign, %q3q3, !dbg !467 ; [#uses=1 type=float] [debug line = 101:3]
  %hx = fsub float %tmp_152, %tmp_153, !dbg !467  ; [#uses=2 type=float] [debug line = 101:3]
  call void @llvm.dbg.value(metadata !{float %hx}, i64 0, metadata !468), !dbg !467 ; [debug line = 101:3] [debug variable = hx]
  %q3_load_23 = load volatile float* @q3, align 4, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_154 = fmul float %p_2q0mx, %q3_load_23, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_155 = fmul float %my_assign, %q0q0, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_156 = fadd float %tmp_154, %tmp_155, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %q1_load_22 = load volatile float* @q1, align 4, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_157 = fmul float %p_2q0mz, %q1_load_22, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_158 = fsub float %tmp_156, %tmp_157, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %q2_load_25 = load volatile float* @q2, align 4, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_159 = fmul float %p_2q1mx, %q2_load_25, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_160 = fadd float %tmp_158, %tmp_159, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_161 = fmul float %my_assign, %q1q1, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_162 = fsub float %tmp_160, %tmp_161, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_163 = fmul float %my_assign, %q2q2, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_164 = fadd float %tmp_162, %tmp_163, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_165 = fmul float %p_2q2, %mz_assign, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %q3_load_24 = load volatile float* @q3, align 4, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_166 = fmul float %tmp_165, %q3_load_24, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_167 = fadd float %tmp_164, %tmp_166, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp_168 = fmul float %my_assign, %q3q3, !dbg !469 ; [#uses=1 type=float] [debug line = 102:3]
  %hy = fsub float %tmp_167, %tmp_168, !dbg !469  ; [#uses=2 type=float] [debug line = 102:3]
  call void @llvm.dbg.value(metadata !{float %hy}, i64 0, metadata !470), !dbg !469 ; [debug line = 102:3] [debug variable = hy]
  %tmp_169 = fmul float %hx, %hx, !dbg !471       ; [#uses=1 type=float] [debug line = 103:10]
  %tmp_170 = fmul float %hy, %hy, !dbg !471       ; [#uses=1 type=float] [debug line = 103:10]
  %tmp_171 = fadd float %tmp_169, %tmp_170, !dbg !471 ; [#uses=1 type=float] [debug line = 103:10]
  %p_2bx = call float @llvm.sqrt.f32(float %tmp_171), !dbg !471 ; [#uses=11 type=float] [debug line = 103:10]
  call void @llvm.dbg.value(metadata !{float %p_2bx}, i64 0, metadata !472), !dbg !471 ; [debug line = 103:10] [debug variable = _2bx]
  %tmp_174_to_int = bitcast float %p_2q0mx to i32, !dbg !473 ; [#uses=1 type=i32] [debug line = 104:3]
  %tmp_174_neg = xor i32 %tmp_174_to_int, -2147483648, !dbg !473 ; [#uses=1 type=i32] [debug line = 104:3]
  %tmp_172 = bitcast i32 %tmp_174_neg to float, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %q2_load_26 = load volatile float* @q2, align 4, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_173 = fmul float %q2_load_26, %tmp_172, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %q1_load_23 = load volatile float* @q1, align 4, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_174 = fmul float %p_2q0my, %q1_load_23, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_175 = fadd float %tmp_173, %tmp_174, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_176 = fmul float %mz_assign, %q0q0, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_177 = fadd float %tmp_175, %tmp_176, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %q3_load_25 = load volatile float* @q3, align 4, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_178 = fmul float %p_2q1mx, %q3_load_25, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_179 = fadd float %tmp_177, %tmp_178, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_180 = fmul float %mz_assign, %q1q1, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_181 = fsub float %tmp_179, %tmp_180, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_182 = fmul float %p_2q2, %my_assign, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %q3_load_26 = load volatile float* @q3, align 4, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_183 = fmul float %tmp_182, %q3_load_26, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_184 = fadd float %tmp_181, %tmp_183, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_185 = fmul float %mz_assign, %q2q2, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_186 = fsub float %tmp_184, %tmp_185, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp_187 = fmul float %mz_assign, %q3q3, !dbg !473 ; [#uses=1 type=float] [debug line = 104:3]
  %p_2bz = fadd float %tmp_186, %tmp_187, !dbg !473 ; [#uses=12 type=float] [debug line = 104:3]
  call void @llvm.dbg.value(metadata !{float %p_2bz}, i64 0, metadata !474), !dbg !473 ; [debug line = 104:3] [debug variable = _2bz]
  %p_4bx = fmul float %p_2bx, 2.000000e+00, !dbg !475 ; [#uses=1 type=float] [debug line = 105:3]
  call void @llvm.dbg.value(metadata !{float %p_4bx}, i64 0, metadata !476), !dbg !475 ; [debug line = 105:3] [debug variable = _4bx]
  %p_4bz = fmul float %p_2bz, 2.000000e+00, !dbg !477 ; [#uses=2 type=float] [debug line = 106:3]
  call void @llvm.dbg.value(metadata !{float %p_4bz}, i64 0, metadata !478), !dbg !477 ; [debug line = 106:3] [debug variable = _4bz]
  %tmp_190_to_int = bitcast float %p_2q2 to i32, !dbg !479 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_190_neg = xor i32 %tmp_190_to_int, -2147483648, !dbg !479 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_188 = bitcast i32 %tmp_190_neg to float, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_189 = fmul float %q1q3, 2.000000e+00, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_190 = fsub float %tmp_189, %p_2q0q2, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_191 = fsub float %tmp_190, %ax_assign, !dbg !479 ; [#uses=4 type=float] [debug line = 109:3]
  %tmp_192 = fmul float %tmp_191, %tmp_188, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_193 = fmul float %q0q1, 2.000000e+00, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_194 = fadd float %tmp_193, %p_2q2q3, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_195 = fsub float %tmp_194, %ay_assign, !dbg !479 ; [#uses=4 type=float] [debug line = 109:3]
  %tmp_196 = fmul float %p_2q1, %tmp_195, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_197 = fadd float %tmp_192, %tmp_196, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %q2_load_27 = load volatile float* @q2, align 4, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_198 = fmul float %p_2bz, %q2_load_27, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_199 = fsub float 5.000000e-01, %q2q2, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_200 = fsub float %tmp_199, %q3q3, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_201 = fmul float %p_2bx, %tmp_200, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_202 = fsub float %q1q3, %q0q2, !dbg !479   ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_203 = fmul float %p_2bz, %tmp_202, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_204 = fadd float %tmp_201, %tmp_203, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_205 = fsub float %tmp_204, %mx_assign, !dbg !479 ; [#uses=4 type=float] [debug line = 109:3]
  %tmp_206 = fmul float %tmp_198, %tmp_205, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_207 = fsub float %tmp_197, %tmp_206, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_210_to_int = bitcast float %p_2bx to i32, !dbg !479 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_210_neg = xor i32 %tmp_210_to_int, -2147483648, !dbg !479 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp_208 = bitcast i32 %tmp_210_neg to float, !dbg !479 ; [#uses=2 type=float] [debug line = 109:3]
  %q3_load_27 = load volatile float* @q3, align 4, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_209 = fmul float %q3_load_27, %tmp_208, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %q1_load_24 = load volatile float* @q1, align 4, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_210 = fmul float %p_2bz, %q1_load_24, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_211 = fadd float %tmp_209, %tmp_210, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_212 = fsub float %q1q2, %q0q3, !dbg !479   ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_213 = fmul float %p_2bx, %tmp_212, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_214 = fadd float %q0q1, %q2q3, !dbg !479   ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_215 = fmul float %p_2bz, %tmp_214, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_216 = fadd float %tmp_213, %tmp_215, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_217 = fsub float %tmp_216, %my_assign, !dbg !479 ; [#uses=4 type=float] [debug line = 109:3]
  %tmp_218 = fmul float %tmp_211, %tmp_217, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_219 = fadd float %tmp_207, %tmp_218, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %q2_load_28 = load volatile float* @q2, align 4, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_220 = fmul float %p_2bx, %q2_load_28, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_221 = fadd float %q0q2, %q1q3, !dbg !479   ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_222 = fmul float %p_2bx, %tmp_221, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_223 = fsub float 5.000000e-01, %q1q1, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_224 = fsub float %tmp_223, %q2q2, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_225 = fmul float %p_2bz, %tmp_224, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_226 = fadd float %tmp_222, %tmp_225, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp_227 = fsub float %tmp_226, %mz_assign, !dbg !479 ; [#uses=4 type=float] [debug line = 109:3]
  %tmp_228 = fmul float %tmp_220, %tmp_227, !dbg !479 ; [#uses=1 type=float] [debug line = 109:3]
  %s0 = fadd float %tmp_219, %tmp_228, !dbg !479  ; [#uses=3 type=float] [debug line = 109:3]
  call void @llvm.dbg.value(metadata !{float %s0}, i64 0, metadata !480), !dbg !479 ; [debug line = 109:3] [debug variable = s0]
  %tmp_229 = fmul float %p_2q3, %tmp_191, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_230 = fmul float %p_2q0, %tmp_195, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_231 = fadd float %tmp_229, %tmp_230, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %q1_load_25 = load volatile float* @q1, align 4, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_232 = fmul float %q1_load_25, 4.000000e+00, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_233 = fmul float %q1q1, 2.000000e+00, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_234 = fsub float 1.000000e+00, %tmp_233, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_235 = fmul float %q2q2, 2.000000e+00, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_236 = fsub float %tmp_234, %tmp_235, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_237 = fsub float %tmp_236, %az_assign, !dbg !481 ; [#uses=2 type=float] [debug line = 110:3]
  %tmp_238 = fmul float %tmp_232, %tmp_237, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_239 = fsub float %tmp_231, %tmp_238, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %q3_load_28 = load volatile float* @q3, align 4, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_240 = fmul float %p_2bz, %q3_load_28, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_241 = fmul float %tmp_240, %tmp_205, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_242 = fadd float %tmp_239, %tmp_241, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %q2_load_29 = load volatile float* @q2, align 4, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_243 = fmul float %p_2bx, %q2_load_29, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %q0_load_23 = load volatile float* @q0, align 4, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_244 = fmul float %p_2bz, %q0_load_23, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_245 = fadd float %tmp_243, %tmp_244, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_246 = fmul float %tmp_245, %tmp_217, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_247 = fadd float %tmp_242, %tmp_246, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %q3_load_29 = load volatile float* @q3, align 4, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_248 = fmul float %p_2bx, %q3_load_29, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %q1_load_26 = load volatile float* @q1, align 4, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_249 = fmul float %p_4bz, %q1_load_26, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_250 = fsub float %tmp_248, %tmp_249, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp_251 = fmul float %tmp_250, %tmp_227, !dbg !481 ; [#uses=1 type=float] [debug line = 110:3]
  %s1 = fadd float %tmp_247, %tmp_251, !dbg !481  ; [#uses=3 type=float] [debug line = 110:3]
  call void @llvm.dbg.value(metadata !{float %s1}, i64 0, metadata !482), !dbg !481 ; [debug line = 110:3] [debug variable = s1]
  %tmp_254_to_int = bitcast float %p_2q0 to i32, !dbg !483 ; [#uses=1 type=i32] [debug line = 111:3]
  %tmp_254_neg = xor i32 %tmp_254_to_int, -2147483648, !dbg !483 ; [#uses=1 type=i32] [debug line = 111:3]
  %tmp_252 = bitcast i32 %tmp_254_neg to float, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_253 = fmul float %tmp_191, %tmp_252, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_254 = fmul float %p_2q3, %tmp_195, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_255 = fadd float %tmp_253, %tmp_254, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %q2_load_30 = load volatile float* @q2, align 4, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_256 = fmul float %q2_load_30, 4.000000e+00, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_257 = fmul float %tmp_256, %tmp_237, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_258 = fsub float %tmp_255, %tmp_257, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_261_to_int = bitcast float %p_4bx to i32, !dbg !483 ; [#uses=1 type=i32] [debug line = 111:3]
  %tmp_261_neg = xor i32 %tmp_261_to_int, -2147483648, !dbg !483 ; [#uses=1 type=i32] [debug line = 111:3]
  %tmp_259 = bitcast i32 %tmp_261_neg to float, !dbg !483 ; [#uses=2 type=float] [debug line = 111:3]
  %q2_load_31 = load volatile float* @q2, align 4, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_260 = fmul float %q2_load_31, %tmp_259, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %q0_load_24 = load volatile float* @q0, align 4, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_261 = fmul float %p_2bz, %q0_load_24, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_262 = fsub float %tmp_260, %tmp_261, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_263 = fmul float %tmp_262, %tmp_205, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_264 = fadd float %tmp_258, %tmp_263, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %q1_load_27 = load volatile float* @q1, align 4, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_265 = fmul float %p_2bx, %q1_load_27, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %q3_load_30 = load volatile float* @q3, align 4, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_266 = fmul float %p_2bz, %q3_load_30, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_267 = fadd float %tmp_265, %tmp_266, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_268 = fmul float %tmp_267, %tmp_217, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_269 = fadd float %tmp_264, %tmp_268, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %q0_load_25 = load volatile float* @q0, align 4, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_270 = fmul float %p_2bx, %q0_load_25, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %q2_load_32 = load volatile float* @q2, align 4, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_271 = fmul float %p_4bz, %q2_load_32, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_272 = fsub float %tmp_270, %tmp_271, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp_273 = fmul float %tmp_272, %tmp_227, !dbg !483 ; [#uses=1 type=float] [debug line = 111:3]
  %s2 = fadd float %tmp_269, %tmp_273, !dbg !483  ; [#uses=3 type=float] [debug line = 111:3]
  call void @llvm.dbg.value(metadata !{float %s2}, i64 0, metadata !484), !dbg !483 ; [debug line = 111:3] [debug variable = s2]
  %tmp_274 = fmul float %p_2q1, %tmp_191, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_275 = fmul float %p_2q2, %tmp_195, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_276 = fadd float %tmp_274, %tmp_275, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %q3_load_31 = load volatile float* @q3, align 4, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_277 = fmul float %q3_load_31, %tmp_259, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %q1_load_28 = load volatile float* @q1, align 4, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_278 = fmul float %p_2bz, %q1_load_28, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_279 = fadd float %tmp_277, %tmp_278, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_280 = fmul float %tmp_279, %tmp_205, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_281 = fadd float %tmp_276, %tmp_280, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %q0_load_26 = load volatile float* @q0, align 4, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_282 = fmul float %q0_load_26, %tmp_208, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %q2_load_33 = load volatile float* @q2, align 4, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_283 = fmul float %p_2bz, %q2_load_33, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_284 = fadd float %tmp_282, %tmp_283, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_285 = fmul float %tmp_284, %tmp_217, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_286 = fadd float %tmp_281, %tmp_285, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %q1_load_29 = load volatile float* @q1, align 4, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_287 = fmul float %p_2bx, %q1_load_29, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp_288 = fmul float %tmp_287, %tmp_227, !dbg !485 ; [#uses=1 type=float] [debug line = 112:3]
  %s3 = fadd float %tmp_286, %tmp_288, !dbg !485  ; [#uses=3 type=float] [debug line = 112:3]
  call void @llvm.dbg.value(metadata !{float %s3}, i64 0, metadata !486), !dbg !485 ; [debug line = 112:3] [debug variable = s3]
  %tmp_289 = fmul float %s0, %s0, !dbg !487       ; [#uses=1 type=float] [debug line = 113:15]
  %tmp_290 = fmul float %s1, %s1, !dbg !487       ; [#uses=1 type=float] [debug line = 113:15]
  %tmp_291 = fadd float %tmp_289, %tmp_290, !dbg !487 ; [#uses=1 type=float] [debug line = 113:15]
  %tmp_292 = fmul float %s2, %s2, !dbg !487       ; [#uses=1 type=float] [debug line = 113:15]
  %tmp_293 = fadd float %tmp_291, %tmp_292, !dbg !487 ; [#uses=1 type=float] [debug line = 113:15]
  %tmp_294 = fmul float %s3, %s3, !dbg !487       ; [#uses=1 type=float] [debug line = 113:15]
  %x_assign_4 = fadd float %tmp_293, %tmp_294, !dbg !487 ; [#uses=2 type=float] [debug line = 113:15]
  call void @llvm.dbg.value(metadata !{float %x_assign_4}, i64 0, metadata !488), !dbg !489 ; [debug line = 215:21@113:15] [debug variable = x]
  %halfx_4 = fmul float %x_assign_4, 5.000000e-01, !dbg !490 ; [#uses=1 type=float] [debug line = 216:24@113:15]
  call void @llvm.dbg.value(metadata !{float %halfx_4}, i64 0, metadata !491), !dbg !490 ; [debug line = 216:24@113:15] [debug variable = halfx]
  %y_9 = bitcast float %x_assign_4 to i32, !dbg !492 ; [#uses=1 type=i32] [debug line = 217:13@113:15]
  call void @llvm.dbg.value(metadata !{i32 %y_9}, i64 0, metadata !493), !dbg !492 ; [debug line = 217:13@113:15] [debug variable = y]
  %tmp_i2 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %y_9, i32 1, i32 31), !dbg !494 ; [#uses=1 type=i31] [debug line = 220:2@113:15]
  %tmp_343 = zext i31 %tmp_i2 to i32, !dbg !494   ; [#uses=1 type=i32] [debug line = 220:2@113:15]
  %y_10 = sub i32 1597463007, %tmp_343, !dbg !494 ; [#uses=1 type=i32] [debug line = 220:2@113:15]
  call void @llvm.dbg.value(metadata !{i32 %y_10}, i64 0, metadata !493), !dbg !494 ; [debug line = 220:2@113:15] [debug variable = y]
  %tmp_1_i2 = bitcast i32 %y_10 to float, !dbg !495 ; [#uses=3 type=float] [debug line = 221:2@113:15]
  %tmp_2_i2 = fmul float %halfx_4, %tmp_1_i2, !dbg !495 ; [#uses=1 type=float] [debug line = 221:2@113:15]
  %tmp_3_i2 = fmul float %tmp_2_i2, %tmp_1_i2, !dbg !495 ; [#uses=1 type=float] [debug line = 221:2@113:15]
  %tmp_4_i2 = fsub float 1.500000e+00, %tmp_3_i2, !dbg !495 ; [#uses=1 type=float] [debug line = 221:2@113:15]
  %recipNorm_4 = fmul float %tmp_1_i2, %tmp_4_i2, !dbg !495 ; [#uses=4 type=float] [debug line = 221:2@113:15]
  call void @llvm.dbg.value(metadata !{float %recipNorm_4}, i64 0, metadata !411), !dbg !487 ; [debug line = 113:15] [debug variable = recipNorm]
  %s0_2 = fmul float %s0, %recipNorm_4, !dbg !496 ; [#uses=1 type=float] [debug line = 114:3]
  call void @llvm.dbg.value(metadata !{float %s0_2}, i64 0, metadata !480), !dbg !496 ; [debug line = 114:3] [debug variable = s0]
  %s1_2 = fmul float %s1, %recipNorm_4, !dbg !497 ; [#uses=1 type=float] [debug line = 115:3]
  call void @llvm.dbg.value(metadata !{float %s1_2}, i64 0, metadata !482), !dbg !497 ; [debug line = 115:3] [debug variable = s1]
  %s2_2 = fmul float %s2, %recipNorm_4, !dbg !498 ; [#uses=1 type=float] [debug line = 116:3]
  call void @llvm.dbg.value(metadata !{float %s2_2}, i64 0, metadata !484), !dbg !498 ; [debug line = 116:3] [debug variable = s2]
  %s3_2 = fmul float %s3, %recipNorm_4, !dbg !499 ; [#uses=1 type=float] [debug line = 117:3]
  call void @llvm.dbg.value(metadata !{float %s3_2}, i64 0, metadata !486), !dbg !499 ; [debug line = 117:3] [debug variable = s3]
  %beta_load = load volatile float* @beta, align 4, !dbg !500 ; [#uses=1 type=float] [debug line = 120:3]
  %tmp_295 = fmul float %beta_load, %s0_2, !dbg !500 ; [#uses=1 type=float] [debug line = 120:3]
  %qDot1_2 = fsub float %qDot1, %tmp_295, !dbg !500 ; [#uses=1 type=float] [debug line = 120:3]
  call void @llvm.dbg.value(metadata !{float %qDot1_2}, i64 0, metadata !393), !dbg !500 ; [debug line = 120:3] [debug variable = qDot1]
  %beta_load_4 = load volatile float* @beta, align 4, !dbg !501 ; [#uses=1 type=float] [debug line = 121:3]
  %tmp_296 = fmul float %beta_load_4, %s1_2, !dbg !501 ; [#uses=1 type=float] [debug line = 121:3]
  %qDot2_2 = fsub float %qDot2, %tmp_296, !dbg !501 ; [#uses=1 type=float] [debug line = 121:3]
  call void @llvm.dbg.value(metadata !{float %qDot2_2}, i64 0, metadata !395), !dbg !501 ; [debug line = 121:3] [debug variable = qDot2]
  %beta_load_5 = load volatile float* @beta, align 4, !dbg !502 ; [#uses=1 type=float] [debug line = 122:3]
  %tmp_298 = fmul float %beta_load_5, %s2_2, !dbg !502 ; [#uses=1 type=float] [debug line = 122:3]
  %qDot3_2 = fsub float %qDot3, %tmp_298, !dbg !502 ; [#uses=1 type=float] [debug line = 122:3]
  call void @llvm.dbg.value(metadata !{float %qDot3_2}, i64 0, metadata !397), !dbg !502 ; [debug line = 122:3] [debug variable = qDot3]
  %beta_load_6 = load volatile float* @beta, align 4, !dbg !503 ; [#uses=1 type=float] [debug line = 123:3]
  %tmp_299 = fmul float %beta_load_6, %s3_2, !dbg !503 ; [#uses=1 type=float] [debug line = 123:3]
  %qDot4_2 = fsub float %qDot4, %tmp_299, !dbg !503 ; [#uses=1 type=float] [debug line = 123:3]
  call void @llvm.dbg.value(metadata !{float %qDot4_2}, i64 0, metadata !399), !dbg !503 ; [debug line = 123:3] [debug variable = qDot4]
  br label %._crit_edge, !dbg !504                ; [debug line = 124:2]

._crit_edge:                                      ; preds = %3, %2
  %qDot = phi float [ %qDot1_2, %3 ], [ %qDot1, %2 ] ; [#uses=1 type=float]
  %qDot8 = phi float [ %qDot2_2, %3 ], [ %qDot2, %2 ] ; [#uses=1 type=float]
  %qDot9 = phi float [ %qDot3_2, %3 ], [ %qDot3, %2 ] ; [#uses=1 type=float]
  %qDot5 = phi float [ %qDot4_2, %3 ], [ %qDot4, %2 ] ; [#uses=1 type=float]
  %tmp_300 = fmul float %qDot, 1.953125e-03, !dbg !505 ; [#uses=1 type=float] [debug line = 127:2]
  %q0_load_27 = load volatile float* @q0, align 4, !dbg !505 ; [#uses=1 type=float] [debug line = 127:2]
  %tmp_301 = fadd float %q0_load_27, %tmp_300, !dbg !505 ; [#uses=1 type=float] [debug line = 127:2]
  store volatile float %tmp_301, float* @q0, align 4, !dbg !505 ; [debug line = 127:2]
  %tmp_302 = fmul float %qDot8, 1.953125e-03, !dbg !506 ; [#uses=1 type=float] [debug line = 128:2]
  %q1_load_30 = load volatile float* @q1, align 4, !dbg !506 ; [#uses=1 type=float] [debug line = 128:2]
  %tmp_303 = fadd float %q1_load_30, %tmp_302, !dbg !506 ; [#uses=1 type=float] [debug line = 128:2]
  store volatile float %tmp_303, float* @q1, align 4, !dbg !506 ; [debug line = 128:2]
  %tmp_304 = fmul float %qDot9, 1.953125e-03, !dbg !507 ; [#uses=1 type=float] [debug line = 129:2]
  %q2_load_34 = load volatile float* @q2, align 4, !dbg !507 ; [#uses=1 type=float] [debug line = 129:2]
  %tmp_305 = fadd float %q2_load_34, %tmp_304, !dbg !507 ; [#uses=1 type=float] [debug line = 129:2]
  store volatile float %tmp_305, float* @q2, align 4, !dbg !507 ; [debug line = 129:2]
  %tmp_306 = fmul float %qDot5, 1.953125e-03, !dbg !508 ; [#uses=1 type=float] [debug line = 130:2]
  %q3_load_32 = load volatile float* @q3, align 4, !dbg !508 ; [#uses=1 type=float] [debug line = 130:2]
  %tmp_307 = fadd float %q3_load_32, %tmp_306, !dbg !508 ; [#uses=1 type=float] [debug line = 130:2]
  store volatile float %tmp_307, float* @q3, align 4, !dbg !508 ; [debug line = 130:2]
  %q0_load_28 = load volatile float* @q0, align 4, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %q0_load_29 = load volatile float* @q0, align 4, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp_308 = fmul float %q0_load_28, %q0_load_29, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %q1_load_31 = load volatile float* @q1, align 4, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %q1_load_32 = load volatile float* @q1, align 4, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp_309 = fmul float %q1_load_31, %q1_load_32, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp_310 = fadd float %tmp_308, %tmp_309, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %q2_load_35 = load volatile float* @q2, align 4, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %q2_load_36 = load volatile float* @q2, align 4, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp_311 = fmul float %q2_load_35, %q2_load_36, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp_312 = fadd float %tmp_310, %tmp_311, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %q3_load_33 = load volatile float* @q3, align 4, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %q3_load_34 = load volatile float* @q3, align 4, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp_313 = fmul float %q3_load_33, %q3_load_34, !dbg !509 ; [#uses=1 type=float] [debug line = 133:14]
  %x_assign_5 = fadd float %tmp_312, %tmp_313, !dbg !509 ; [#uses=2 type=float] [debug line = 133:14]
  call void @llvm.dbg.value(metadata !{float %x_assign_5}, i64 0, metadata !510), !dbg !511 ; [debug line = 215:21@133:14] [debug variable = x]
  %halfx_5 = fmul float %x_assign_5, 5.000000e-01, !dbg !512 ; [#uses=1 type=float] [debug line = 216:24@133:14]
  call void @llvm.dbg.value(metadata !{float %halfx_5}, i64 0, metadata !513), !dbg !512 ; [debug line = 216:24@133:14] [debug variable = halfx]
  %y_11 = bitcast float %x_assign_5 to i32, !dbg !514 ; [#uses=1 type=i32] [debug line = 217:13@133:14]
  call void @llvm.dbg.value(metadata !{i32 %y_11}, i64 0, metadata !515), !dbg !514 ; [debug line = 217:13@133:14] [debug variable = y]
  %tmp_i4 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %y_11, i32 1, i32 31), !dbg !516 ; [#uses=1 type=i31] [debug line = 220:2@133:14]
  %tmp_344 = zext i31 %tmp_i4 to i32, !dbg !516   ; [#uses=1 type=i32] [debug line = 220:2@133:14]
  %y_12 = sub i32 1597463007, %tmp_344, !dbg !516 ; [#uses=1 type=i32] [debug line = 220:2@133:14]
  call void @llvm.dbg.value(metadata !{i32 %y_12}, i64 0, metadata !515), !dbg !516 ; [debug line = 220:2@133:14] [debug variable = y]
  %tmp_1_i3 = bitcast i32 %y_12 to float, !dbg !517 ; [#uses=3 type=float] [debug line = 221:2@133:14]
  %tmp_2_i3 = fmul float %halfx_5, %tmp_1_i3, !dbg !517 ; [#uses=1 type=float] [debug line = 221:2@133:14]
  %tmp_3_i3 = fmul float %tmp_2_i3, %tmp_1_i3, !dbg !517 ; [#uses=1 type=float] [debug line = 221:2@133:14]
  %tmp_4_i3 = fsub float 1.500000e+00, %tmp_3_i3, !dbg !517 ; [#uses=1 type=float] [debug line = 221:2@133:14]
  %recipNorm_5 = fmul float %tmp_1_i3, %tmp_4_i3, !dbg !517 ; [#uses=4 type=float] [debug line = 221:2@133:14]
  call void @llvm.dbg.value(metadata !{float %recipNorm_5}, i64 0, metadata !411), !dbg !509 ; [debug line = 133:14] [debug variable = recipNorm]
  %q0_load_30 = load volatile float* @q0, align 4, !dbg !518 ; [#uses=1 type=float] [debug line = 134:2]
  %tmp_314 = fmul float %q0_load_30, %recipNorm_5, !dbg !518 ; [#uses=1 type=float] [debug line = 134:2]
  store volatile float %tmp_314, float* @q0, align 4, !dbg !518 ; [debug line = 134:2]
  %q1_load_33 = load volatile float* @q1, align 4, !dbg !519 ; [#uses=1 type=float] [debug line = 135:2]
  %tmp_315 = fmul float %q1_load_33, %recipNorm_5, !dbg !519 ; [#uses=1 type=float] [debug line = 135:2]
  store volatile float %tmp_315, float* @q1, align 4, !dbg !519 ; [debug line = 135:2]
  %q2_load_37 = load volatile float* @q2, align 4, !dbg !520 ; [#uses=1 type=float] [debug line = 136:2]
  %tmp_317 = fmul float %q2_load_37, %recipNorm_5, !dbg !520 ; [#uses=1 type=float] [debug line = 136:2]
  store volatile float %tmp_317, float* @q2, align 4, !dbg !520 ; [debug line = 136:2]
  %q3_load_35 = load volatile float* @q3, align 4, !dbg !521 ; [#uses=1 type=float] [debug line = 137:2]
  %tmp_318 = fmul float %q3_load_35, %recipNorm_5, !dbg !521 ; [#uses=1 type=float] [debug line = 137:2]
  store volatile float %tmp_318, float* @q3, align 4, !dbg !521 ; [debug line = 137:2]
  br label %4, !dbg !522                          ; [debug line = 138:1]

; <label>:4                                       ; preds = %._crit_edge, %1
  ret void, !dbg !522                             ; [debug line = 138:1]
}

!opencl.kernels = !{!0, !0, !7, !7, !0, !0, !13, !7, !0, !19, !21, !0, !21, !0, !24, !0, !27, !27, !30, !33, !37, !40, !46, !46, !50, !53, !0, !57, !63, !66, !66, !70, !73, !75, !0, !0, !80, !83, !86, !0, !0, !89, !91, !93, !93, !95, !97, !93, !99, !99, !93, !99, !93, !93, !0, !102, !102, !0, !104, !107, !107, !104, !109, !109, !0, !107, !107, !0, !111, !111, !113, !115, !115, !0, !0, !117, !118, !120, !122, !0, !124, !126, !126, !0, !128, !128, !0, !130, !133, !136, !136, !0, !0, !139, !73, !75, !0, !0, !0, !0, !66, !141, !141, !66, !141, !66, !66, !89, !89, !0, !142, !145, !145, !148, !150, !153, !24, !30, !155, !118, !83, !0, !93, !93, !93, !93, !157, !0, !158, !160, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !162, !164, !170, !176}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!179, !186, !191, !196, !201, !206}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space"}
!2 = metadata !{metadata !"kernel_arg_access_qual"}
!3 = metadata !{metadata !"kernel_arg_type"}
!4 = metadata !{metadata !"kernel_arg_type_qual"}
!5 = metadata !{metadata !"kernel_arg_name"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"string"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"name"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"inRow", metadata !"inColl"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !20, metadata !6}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"directory"}
!21 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"size_type"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"__n"}
!24 = metadata !{null, metadata !8, metadata !9, metadata !25, metadata !11, metadata !26, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const value_type &"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"__x"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !29, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > *const &"}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"__i"}
!30 = metadata !{null, metadata !14, metadata !15, metadata !31, metadata !17, metadata !32, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"iterator", metadata !"const value_type &"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"__position", metadata !"__x"}
!33 = metadata !{null, metadata !34, metadata !15, metadata !35, metadata !17, metadata !36, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"size_t"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"__p", metadata !"__n"}
!37 = metadata !{null, metadata !34, metadata !15, metadata !38, metadata !17, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"size_type"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"__p", metadata !""}
!40 = metadata !{null, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !6}
!41 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!42 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"allocator<class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > > &"}
!44 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"__first", metadata !"__last", metadata !""}
!46 = metadata !{null, metadata !47, metadata !15, metadata !48, metadata !17, metadata !49, metadata !6}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*"}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"__first", metadata !"__last"}
!50 = metadata !{null, metadata !8, metadata !9, metadata !51, metadata !11, metadata !52, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > &"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"__r"}
!53 = metadata !{null, metadata !54, metadata !9, metadata !55, metadata !11, metadata !56, metadata !6}
!54 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"__pointer"}
!57 = metadata !{null, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !6}
!58 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 0}
!59 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"class std::allocator<class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > > &"}
!61 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"__first", metadata !"__last", metadata !"__result", metadata !"__alloc"}
!63 = metadata !{null, metadata !58, metadata !59, metadata !64, metadata !61, metadata !65, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"allocator<class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > > &"}
!65 = metadata !{metadata !"kernel_arg_name", metadata !"__first", metadata !"__last", metadata !"__result", metadata !""}
!66 = metadata !{null, metadata !67, metadata !42, metadata !68, metadata !44, metadata !69, metadata !6}
!67 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*"}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"__first", metadata !"__last", metadata !"__result"}
!70 = metadata !{null, metadata !34, metadata !15, metadata !71, metadata !17, metadata !72, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >*", metadata !"const class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > &"}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"__p", metadata !"__value"}
!73 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !23, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"size_t"}
!75 = metadata !{null, metadata !76, metadata !15, metadata !77, metadata !78, metadata !79, metadata !6}
!76 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"size_type", metadata !"void*"}
!78 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const"}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"__n", metadata !""}
!80 = metadata !{null, metadata !14, metadata !15, metadata !81, metadata !17, metadata !82, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const __normal_iterator<class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > *, class std::vector<class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >, class std::allocator<class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > > > > &", metadata !"const __normal_iterator<class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > *, class std::vector<class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > >, class std::allocator<class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > > > > &"}
!82 = metadata !{metadata !"kernel_arg_name", metadata !"__lhs", metadata !"__rhs"}
!83 = metadata !{null, metadata !76, metadata !15, metadata !84, metadata !78, metadata !85, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"size_type", metadata !"char*"}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"__n", metadata !"__s"}
!86 = metadata !{null, metadata !14, metadata !15, metadata !87, metadata !17, metadata !88, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ulong &", metadata !"const ulong &"}
!88 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!89 = metadata !{null, metadata !8, metadata !9, metadata !90, metadata !11, metadata !26, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > &"}
!91 = metadata !{null, metadata !58, metadata !59, metadata !92, metadata !61, metadata !65, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"class std::basic_string<char>*", metadata !"class std::basic_string<char>*", metadata !"class std::basic_string<char>*", metadata !"allocator<class std::basic_string<char> > &"}
!93 = metadata !{null, metadata !67, metadata !42, metadata !94, metadata !44, metadata !69, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"class std::basic_string<char>*", metadata !"class std::basic_string<char>*", metadata !"class std::basic_string<char>*"}
!95 = metadata !{null, metadata !8, metadata !9, metadata !96, metadata !11, metadata !52, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"class std::basic_string<char> &"}
!97 = metadata !{null, metadata !34, metadata !15, metadata !98, metadata !17, metadata !72, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"class std::basic_string<char>*", metadata !"const class std::basic_string<char> &"}
!99 = metadata !{null, metadata !54, metadata !9, metadata !100, metadata !11, metadata !101, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"class std::basic_string<char>*"}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"__it"}
!102 = metadata !{null, metadata !8, metadata !9, metadata !103, metadata !11, metadata !29, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"class std::basic_string<char> *const &"}
!104 = metadata !{null, metadata !105, metadata !42, metadata !106, metadata !44, metadata !69, metadata !6}
!105 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"class __gnu_cxx::__normal_iterator<const class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >", metadata !"class __gnu_cxx::__normal_iterator<const class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >", metadata !"class __gnu_cxx::__normal_iterator<class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >"}
!107 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !101, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"class __gnu_cxx::__normal_iterator<const class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >"}
!109 = metadata !{null, metadata !8, metadata !9, metadata !110, metadata !11, metadata !101, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"class __gnu_cxx::__normal_iterator<class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >"}
!111 = metadata !{null, metadata !67, metadata !42, metadata !94, metadata !112, metadata !69, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !"const", metadata !""}
!113 = metadata !{null, metadata !105, metadata !42, metadata !114, metadata !44, metadata !45, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"class __gnu_cxx::__normal_iterator<class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >", metadata !"class __gnu_cxx::__normal_iterator<class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >", metadata !"allocator<class std::basic_string<char> > &"}
!115 = metadata !{null, metadata !14, metadata !15, metadata !116, metadata !17, metadata !49, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"class __gnu_cxx::__normal_iterator<class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >", metadata !"class __gnu_cxx::__normal_iterator<class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >"}
!117 = metadata !{null, metadata !54, metadata !9, metadata !100, metadata !11, metadata !56, metadata !6}
!118 = metadata !{null, metadata !14, metadata !15, metadata !119, metadata !17, metadata !82, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"const __normal_iterator<class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > > &", metadata !"const __normal_iterator<class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > > &"}
!120 = metadata !{null, metadata !34, metadata !15, metadata !121, metadata !17, metadata !36, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"class std::basic_string<char>*", metadata !"size_t"}
!122 = metadata !{null, metadata !34, metadata !15, metadata !123, metadata !17, metadata !39, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"class std::basic_string<char>*", metadata !"size_type"}
!124 = metadata !{null, metadata !41, metadata !42, metadata !125, metadata !44, metadata !45, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"class std::basic_string<char>*", metadata !"class std::basic_string<char>*", metadata !"allocator<class std::basic_string<char> > &"}
!126 = metadata !{null, metadata !47, metadata !15, metadata !127, metadata !17, metadata !49, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"class std::basic_string<char>*", metadata !"class std::basic_string<char>*"}
!128 = metadata !{null, metadata !8, metadata !9, metadata !129, metadata !11, metadata !29, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"const class std::basic_string<char> *const &"}
!130 = metadata !{null, metadata !105, metadata !42, metadata !131, metadata !44, metadata !132, metadata !6}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"size_type", metadata !"class __gnu_cxx::__normal_iterator<const class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >", metadata !"class __gnu_cxx::__normal_iterator<const class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >"}
!132 = metadata !{metadata !"kernel_arg_name", metadata !"__n", metadata !"__first", metadata !"__last"}
!133 = metadata !{null, metadata !134, metadata !59, metadata !135, metadata !61, metadata !65, metadata !6}
!134 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 0}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"class __gnu_cxx::__normal_iterator<const class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >", metadata !"class __gnu_cxx::__normal_iterator<const class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >", metadata !"class std::basic_string<char>*", metadata !"allocator<class std::basic_string<char> > &"}
!136 = metadata !{null, metadata !137, metadata !42, metadata !138, metadata !44, metadata !69, metadata !6}
!137 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"class __gnu_cxx::__normal_iterator<const class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >", metadata !"class __gnu_cxx::__normal_iterator<const class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > >", metadata !"class std::basic_string<char>*"}
!139 = metadata !{null, metadata !14, metadata !15, metadata !140, metadata !17, metadata !82, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"const __normal_iterator<const class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > > &", metadata !"const __normal_iterator<const class std::basic_string<char> *, class std::vector<class std::basic_string<char>, class std::allocator<class std::basic_string<char> > > > &"}
!141 = metadata !{null, metadata !54, metadata !9, metadata !55, metadata !11, metadata !101, metadata !6}
!142 = metadata !{null, metadata !14, metadata !15, metadata !143, metadata !17, metadata !144, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"size_t", metadata !"const allocator_type &"}
!144 = metadata !{metadata !"kernel_arg_name", metadata !"__n", metadata !"__a"}
!145 = metadata !{null, metadata !8, metadata !9, metadata !146, metadata !11, metadata !147, metadata !6}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"const _Tp_alloc_type &"}
!147 = metadata !{metadata !"kernel_arg_name", metadata !"__a"}
!148 = metadata !{null, metadata !8, metadata !9, metadata !149, metadata !11, metadata !147, metadata !6}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"const class std::allocator<class std::basic_string<char> > &"}
!150 = metadata !{null, metadata !8, metadata !9, metadata !151, metadata !11, metadata !152, metadata !6}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"const class __gnu_cxx::new_allocator<class std::basic_string<char> > &"}
!152 = metadata !{metadata !"kernel_arg_name", metadata !""}
!153 = metadata !{null, metadata !34, metadata !15, metadata !71, metadata !17, metadata !154, metadata !6}
!154 = metadata !{metadata !"kernel_arg_name", metadata !"__p", metadata !"__val"}
!155 = metadata !{null, metadata !58, metadata !59, metadata !156, metadata !61, metadata !62, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"class std::basic_string<char>*", metadata !"class std::basic_string<char>*", metadata !"class std::basic_string<char>*", metadata !"class std::allocator<class std::basic_string<char> > &"}
!157 = metadata !{null, metadata !34, metadata !15, metadata !98, metadata !17, metadata !154, metadata !6}
!158 = metadata !{null, metadata !54, metadata !9, metadata !100, metadata !11, metadata !159, metadata !6}
!159 = metadata !{metadata !"kernel_arg_name", metadata !"__pos"}
!160 = metadata !{null, metadata !14, metadata !15, metadata !161, metadata !17, metadata !82, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"const basic_string<char, struct std::char_traits<char>, class std::allocator<char> > &", metadata !"const basic_string<char, struct std::char_traits<char>, class std::allocator<char> > &"}
!162 = metadata !{null, metadata !14, metadata !15, metadata !163, metadata !17, metadata !88, metadata !6}
!163 = metadata !{metadata !"kernel_arg_type", metadata !"enum std::_Ios_Openmode", metadata !"enum std::_Ios_Openmode"}
!164 = metadata !{void (float, float, float, float, float, float, float, float, float)* @MadgwickAHRSupdate, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !6}
!165 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!166 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!167 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float"}
!168 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!169 = metadata !{metadata !"kernel_arg_name", metadata !"gx", metadata !"gy", metadata !"gz", metadata !"ax", metadata !"ay", metadata !"az", metadata !"mx", metadata !"my", metadata !"mz"}
!170 = metadata !{void (float, float, float, float, float, float)* @MadgwickAHRSupdateIM, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !6}
!171 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!172 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float"}
!174 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!175 = metadata !{metadata !"kernel_arg_name", metadata !"gx", metadata !"gy", metadata !"gz", metadata !"ax", metadata !"ay", metadata !"az"}
!176 = metadata !{null, metadata !8, metadata !9, metadata !177, metadata !11, metadata !178, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!178 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!179 = metadata !{metadata !180, float* @q3}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 0, i32 31, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"q3", metadata !184, metadata !"float", i32 0, i32 31}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 0, i32 0, i32 1}
!186 = metadata !{metadata !187, float* @q2}
!187 = metadata !{metadata !188}
!188 = metadata !{i32 0, i32 31, metadata !189}
!189 = metadata !{metadata !190}
!190 = metadata !{metadata !"q2", metadata !184, metadata !"float", i32 0, i32 31}
!191 = metadata !{metadata !192, float* @q1}
!192 = metadata !{metadata !193}
!193 = metadata !{i32 0, i32 31, metadata !194}
!194 = metadata !{metadata !195}
!195 = metadata !{metadata !"q1", metadata !184, metadata !"float", i32 0, i32 31}
!196 = metadata !{metadata !197, float* @q0}
!197 = metadata !{metadata !198}
!198 = metadata !{i32 0, i32 31, metadata !199}
!199 = metadata !{metadata !200}
!200 = metadata !{metadata !"q0", metadata !184, metadata !"float", i32 0, i32 31}
!201 = metadata !{metadata !202, [1 x i32]* @llvm_global_ctors_0}
!202 = metadata !{metadata !203}
!203 = metadata !{i32 0, i32 31, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"llvm.global_ctors.0", metadata !184, metadata !"", i32 0, i32 31}
!206 = metadata !{metadata !207, float* @beta}
!207 = metadata !{metadata !208}
!208 = metadata !{i32 0, i32 31, metadata !209}
!209 = metadata !{metadata !210}
!210 = metadata !{metadata !"beta", metadata !184, metadata !"float", i32 0, i32 31}
!211 = metadata !{i32 786689, metadata !212, metadata !"az", metadata !213, i32 100663439, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 786478, i32 0, metadata !213, metadata !"MadgwickAHRSupdateIMU", metadata !"MadgwickAHRSupdateIMU", metadata !"_Z21MadgwickAHRSupdateIMUffffff", metadata !213, i32 143, metadata !214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float, float, float, float, float, float)* @MadgwickAHRSupdateIM, null, null, metadata !217, i32 143} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786473, metadata !"MadgwickAHRS.cpp", metadata !"/home/toni/Documents/vivado_projects/MadgwickAHRSoriginal", null} ; [ DW_TAG_file_type ]
!214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!215 = metadata !{null, metadata !216, metadata !216, metadata !216, metadata !216, metadata !216, metadata !216}
!216 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!217 = metadata !{metadata !218}
!218 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!219 = metadata !{i32 143, i32 84, metadata !212, null}
!220 = metadata !{i32 786689, metadata !212, metadata !"ay", metadata !213, i32 83886223, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!221 = metadata !{i32 143, i32 74, metadata !212, null}
!222 = metadata !{i32 786689, metadata !212, metadata !"ax", metadata !213, i32 67109007, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 143, i32 64, metadata !212, null}
!224 = metadata !{i32 786689, metadata !212, metadata !"gz", metadata !213, i32 50331791, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!225 = metadata !{i32 143, i32 54, metadata !212, null}
!226 = metadata !{i32 786689, metadata !212, metadata !"gy", metadata !213, i32 33554575, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!227 = metadata !{i32 143, i32 44, metadata !212, null}
!228 = metadata !{i32 786689, metadata !212, metadata !"gx", metadata !213, i32 16777359, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!229 = metadata !{i32 143, i32 34, metadata !212, null}
!230 = metadata !{i32 150, i32 2, metadata !231, null}
!231 = metadata !{i32 786443, metadata !212, i32 143, i32 88, metadata !213, i32 3} ; [ DW_TAG_lexical_block ]
!232 = metadata !{i32 786688, metadata !231, metadata !"qDot1", metadata !213, i32 146, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 151, i32 2, metadata !231, null}
!234 = metadata !{i32 786688, metadata !231, metadata !"qDot2", metadata !213, i32 146, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!235 = metadata !{i32 152, i32 2, metadata !231, null}
!236 = metadata !{i32 786688, metadata !231, metadata !"qDot3", metadata !213, i32 146, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!237 = metadata !{i32 153, i32 2, metadata !231, null}
!238 = metadata !{i32 786688, metadata !231, metadata !"qDot4", metadata !213, i32 146, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 156, i32 2, metadata !231, null}
!240 = metadata !{i32 159, i32 15, metadata !241, null}
!241 = metadata !{i32 786443, metadata !231, i32 156, i32 54, metadata !213, i32 4} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 786689, metadata !243, metadata !"x", metadata !213, i32 16777431, metadata !216, i32 0, metadata !240} ; [ DW_TAG_arg_variable ]
!243 = metadata !{i32 786478, i32 0, metadata !213, metadata !"invSqrt", metadata !"invSqrt", metadata !"_Z7invSqrtf", metadata !213, i32 215, metadata !244, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !217, i32 215} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!245 = metadata !{metadata !216, metadata !216}
!246 = metadata !{i32 215, i32 21, metadata !243, metadata !240}
!247 = metadata !{i32 216, i32 24, metadata !248, metadata !240}
!248 = metadata !{i32 786443, metadata !243, i32 215, i32 24, metadata !213, i32 5} ; [ DW_TAG_lexical_block ]
!249 = metadata !{i32 786688, metadata !248, metadata !"halfx", metadata !213, i32 216, metadata !216, i32 0, metadata !240} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 217, i32 13, metadata !248, metadata !240}
!251 = metadata !{i32 786688, metadata !248, metadata !"y", metadata !213, i32 217, metadata !216, i32 0, metadata !240} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 220, i32 2, metadata !248, metadata !240}
!253 = metadata !{i32 221, i32 2, metadata !248, metadata !240}
!254 = metadata !{i32 786688, metadata !231, metadata !"recipNorm", metadata !213, i32 144, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!255 = metadata !{i32 160, i32 3, metadata !241, null}
!256 = metadata !{i32 161, i32 3, metadata !241, null}
!257 = metadata !{i32 162, i32 3, metadata !241, null}
!258 = metadata !{i32 165, i32 3, metadata !241, null}
!259 = metadata !{i32 786688, metadata !231, metadata !"_2q0", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 166, i32 3, metadata !241, null}
!261 = metadata !{i32 786688, metadata !231, metadata !"_2q1", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 167, i32 3, metadata !241, null}
!263 = metadata !{i32 786688, metadata !231, metadata !"_2q2", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 168, i32 3, metadata !241, null}
!265 = metadata !{i32 786688, metadata !231, metadata !"_2q3", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 169, i32 3, metadata !241, null}
!267 = metadata !{i32 786688, metadata !231, metadata !"_4q0", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!268 = metadata !{i32 170, i32 3, metadata !241, null}
!269 = metadata !{i32 786688, metadata !231, metadata !"_4q1", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 171, i32 3, metadata !241, null}
!271 = metadata !{i32 786688, metadata !231, metadata !"_4q2", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 172, i32 3, metadata !241, null}
!273 = metadata !{i32 786688, metadata !231, metadata !"_8q1", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 173, i32 3, metadata !241, null}
!275 = metadata !{i32 786688, metadata !231, metadata !"_8q2", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 174, i32 3, metadata !241, null}
!277 = metadata !{i32 786688, metadata !231, metadata !"q0q0", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!278 = metadata !{i32 175, i32 3, metadata !241, null}
!279 = metadata !{i32 786688, metadata !231, metadata !"q1q1", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!280 = metadata !{i32 176, i32 3, metadata !241, null}
!281 = metadata !{i32 786688, metadata !231, metadata !"q2q2", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!282 = metadata !{i32 177, i32 3, metadata !241, null}
!283 = metadata !{i32 786688, metadata !231, metadata !"q3q3", metadata !213, i32 147, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!284 = metadata !{i32 180, i32 3, metadata !241, null}
!285 = metadata !{i32 786688, metadata !231, metadata !"s0", metadata !213, i32 145, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 181, i32 3, metadata !241, null}
!287 = metadata !{i32 786688, metadata !231, metadata !"s1", metadata !213, i32 145, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!288 = metadata !{i32 182, i32 3, metadata !241, null}
!289 = metadata !{i32 786688, metadata !231, metadata !"s2", metadata !213, i32 145, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!290 = metadata !{i32 183, i32 3, metadata !241, null}
!291 = metadata !{i32 786688, metadata !231, metadata !"s3", metadata !213, i32 145, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!292 = metadata !{i32 184, i32 15, metadata !241, null}
!293 = metadata !{i32 786689, metadata !243, metadata !"x", metadata !213, i32 16777431, metadata !216, i32 0, metadata !292} ; [ DW_TAG_arg_variable ]
!294 = metadata !{i32 215, i32 21, metadata !243, metadata !292}
!295 = metadata !{i32 216, i32 24, metadata !248, metadata !292}
!296 = metadata !{i32 786688, metadata !248, metadata !"halfx", metadata !213, i32 216, metadata !216, i32 0, metadata !292} ; [ DW_TAG_auto_variable ]
!297 = metadata !{i32 217, i32 13, metadata !248, metadata !292}
!298 = metadata !{i32 786688, metadata !248, metadata !"y", metadata !213, i32 217, metadata !216, i32 0, metadata !292} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 220, i32 2, metadata !248, metadata !292}
!300 = metadata !{i32 221, i32 2, metadata !248, metadata !292}
!301 = metadata !{i32 185, i32 3, metadata !241, null}
!302 = metadata !{i32 186, i32 3, metadata !241, null}
!303 = metadata !{i32 187, i32 3, metadata !241, null}
!304 = metadata !{i32 188, i32 3, metadata !241, null}
!305 = metadata !{i32 191, i32 3, metadata !241, null}
!306 = metadata !{i32 192, i32 3, metadata !241, null}
!307 = metadata !{i32 193, i32 3, metadata !241, null}
!308 = metadata !{i32 194, i32 3, metadata !241, null}
!309 = metadata !{i32 195, i32 2, metadata !241, null}
!310 = metadata !{i32 198, i32 2, metadata !231, null}
!311 = metadata !{i32 199, i32 2, metadata !231, null}
!312 = metadata !{i32 200, i32 2, metadata !231, null}
!313 = metadata !{i32 201, i32 2, metadata !231, null}
!314 = metadata !{i32 204, i32 14, metadata !231, null}
!315 = metadata !{i32 786689, metadata !243, metadata !"x", metadata !213, i32 16777431, metadata !216, i32 0, metadata !314} ; [ DW_TAG_arg_variable ]
!316 = metadata !{i32 215, i32 21, metadata !243, metadata !314}
!317 = metadata !{i32 216, i32 24, metadata !248, metadata !314}
!318 = metadata !{i32 786688, metadata !248, metadata !"halfx", metadata !213, i32 216, metadata !216, i32 0, metadata !314} ; [ DW_TAG_auto_variable ]
!319 = metadata !{i32 217, i32 13, metadata !248, metadata !314}
!320 = metadata !{i32 786688, metadata !248, metadata !"y", metadata !213, i32 217, metadata !216, i32 0, metadata !314} ; [ DW_TAG_auto_variable ]
!321 = metadata !{i32 220, i32 2, metadata !248, metadata !314}
!322 = metadata !{i32 221, i32 2, metadata !248, metadata !314}
!323 = metadata !{i32 205, i32 2, metadata !231, null}
!324 = metadata !{i32 206, i32 2, metadata !231, null}
!325 = metadata !{i32 207, i32 2, metadata !231, null}
!326 = metadata !{i32 208, i32 2, metadata !231, null}
!327 = metadata !{i32 209, i32 1, metadata !231, null}
!328 = metadata !{metadata !329}
!329 = metadata !{i32 0, i32 31, metadata !330}
!330 = metadata !{metadata !331}
!331 = metadata !{metadata !"gx", metadata !332, metadata !"float", i32 0, i32 31}
!332 = metadata !{metadata !333}
!333 = metadata !{i32 0, i32 0, i32 0}
!334 = metadata !{metadata !335}
!335 = metadata !{i32 0, i32 31, metadata !336}
!336 = metadata !{metadata !337}
!337 = metadata !{metadata !"gy", metadata !332, metadata !"float", i32 0, i32 31}
!338 = metadata !{metadata !339}
!339 = metadata !{i32 0, i32 31, metadata !340}
!340 = metadata !{metadata !341}
!341 = metadata !{metadata !"gz", metadata !332, metadata !"float", i32 0, i32 31}
!342 = metadata !{metadata !343}
!343 = metadata !{i32 0, i32 31, metadata !344}
!344 = metadata !{metadata !345}
!345 = metadata !{metadata !"ax", metadata !332, metadata !"float", i32 0, i32 31}
!346 = metadata !{metadata !347}
!347 = metadata !{i32 0, i32 31, metadata !348}
!348 = metadata !{metadata !349}
!349 = metadata !{metadata !"ay", metadata !332, metadata !"float", i32 0, i32 31}
!350 = metadata !{metadata !351}
!351 = metadata !{i32 0, i32 31, metadata !352}
!352 = metadata !{metadata !353}
!353 = metadata !{metadata !"az", metadata !332, metadata !"float", i32 0, i32 31}
!354 = metadata !{metadata !355}
!355 = metadata !{i32 0, i32 31, metadata !356}
!356 = metadata !{metadata !357}
!357 = metadata !{metadata !"mx", metadata !332, metadata !"float", i32 0, i32 31}
!358 = metadata !{metadata !359}
!359 = metadata !{i32 0, i32 31, metadata !360}
!360 = metadata !{metadata !361}
!361 = metadata !{metadata !"my", metadata !332, metadata !"float", i32 0, i32 31}
!362 = metadata !{metadata !363}
!363 = metadata !{i32 0, i32 31, metadata !364}
!364 = metadata !{metadata !365}
!365 = metadata !{metadata !"mz", metadata !332, metadata !"float", i32 0, i32 31}
!366 = metadata !{i32 786689, metadata !367, metadata !"mz", metadata !213, i32 150994988, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!367 = metadata !{i32 786478, i32 0, metadata !213, metadata !"MadgwickAHRSupdate", metadata !"MadgwickAHRSupdate", metadata !"_Z18MadgwickAHRSupdatefffffffff", metadata !213, i32 44, metadata !368, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float, float, float, float, float, float, float, float, float)* @MadgwickAHRSupdate, null, null, metadata !217, i32 44} ; [ DW_TAG_subprogram ]
!368 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !369, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!369 = metadata !{null, metadata !216, metadata !216, metadata !216, metadata !216, metadata !216, metadata !216, metadata !216, metadata !216, metadata !216}
!370 = metadata !{i32 44, i32 111, metadata !367, null}
!371 = metadata !{i32 786689, metadata !367, metadata !"my", metadata !213, i32 134217772, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!372 = metadata !{i32 44, i32 101, metadata !367, null}
!373 = metadata !{i32 786689, metadata !367, metadata !"mx", metadata !213, i32 117440556, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!374 = metadata !{i32 44, i32 91, metadata !367, null}
!375 = metadata !{i32 786689, metadata !367, metadata !"az", metadata !213, i32 100663340, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!376 = metadata !{i32 44, i32 81, metadata !367, null}
!377 = metadata !{i32 786689, metadata !367, metadata !"ay", metadata !213, i32 83886124, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!378 = metadata !{i32 44, i32 71, metadata !367, null}
!379 = metadata !{i32 786689, metadata !367, metadata !"ax", metadata !213, i32 67108908, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!380 = metadata !{i32 44, i32 61, metadata !367, null}
!381 = metadata !{i32 786689, metadata !367, metadata !"gz", metadata !213, i32 50331692, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!382 = metadata !{i32 44, i32 51, metadata !367, null}
!383 = metadata !{i32 786689, metadata !367, metadata !"gy", metadata !213, i32 33554476, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!384 = metadata !{i32 44, i32 41, metadata !367, null}
!385 = metadata !{i32 786689, metadata !367, metadata !"gx", metadata !213, i32 16777260, metadata !216, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!386 = metadata !{i32 44, i32 31, metadata !367, null}
!387 = metadata !{i32 52, i32 2, metadata !388, null}
!388 = metadata !{i32 786443, metadata !367, i32 44, i32 115, metadata !213, i32 0} ; [ DW_TAG_lexical_block ]
!389 = metadata !{i32 53, i32 3, metadata !390, null}
!390 = metadata !{i32 786443, metadata !388, i32 52, i32 51, metadata !213, i32 1} ; [ DW_TAG_lexical_block ]
!391 = metadata !{i32 54, i32 3, metadata !390, null}
!392 = metadata !{i32 58, i32 2, metadata !388, null}
!393 = metadata !{i32 786688, metadata !388, metadata !"qDot1", metadata !213, i32 47, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!394 = metadata !{i32 59, i32 2, metadata !388, null}
!395 = metadata !{i32 786688, metadata !388, metadata !"qDot2", metadata !213, i32 47, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!396 = metadata !{i32 60, i32 2, metadata !388, null}
!397 = metadata !{i32 786688, metadata !388, metadata !"qDot3", metadata !213, i32 47, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!398 = metadata !{i32 61, i32 2, metadata !388, null}
!399 = metadata !{i32 786688, metadata !388, metadata !"qDot4", metadata !213, i32 47, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!400 = metadata !{i32 64, i32 2, metadata !388, null}
!401 = metadata !{i32 67, i32 15, metadata !402, null}
!402 = metadata !{i32 786443, metadata !388, i32 64, i32 54, metadata !213, i32 2} ; [ DW_TAG_lexical_block ]
!403 = metadata !{i32 786689, metadata !243, metadata !"x", metadata !213, i32 16777431, metadata !216, i32 0, metadata !401} ; [ DW_TAG_arg_variable ]
!404 = metadata !{i32 215, i32 21, metadata !243, metadata !401}
!405 = metadata !{i32 216, i32 24, metadata !248, metadata !401}
!406 = metadata !{i32 786688, metadata !248, metadata !"halfx", metadata !213, i32 216, metadata !216, i32 0, metadata !401} ; [ DW_TAG_auto_variable ]
!407 = metadata !{i32 217, i32 13, metadata !248, metadata !401}
!408 = metadata !{i32 786688, metadata !248, metadata !"y", metadata !213, i32 217, metadata !216, i32 0, metadata !401} ; [ DW_TAG_auto_variable ]
!409 = metadata !{i32 220, i32 2, metadata !248, metadata !401}
!410 = metadata !{i32 221, i32 2, metadata !248, metadata !401}
!411 = metadata !{i32 786688, metadata !388, metadata !"recipNorm", metadata !213, i32 45, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!412 = metadata !{i32 68, i32 3, metadata !402, null}
!413 = metadata !{i32 69, i32 3, metadata !402, null}
!414 = metadata !{i32 70, i32 3, metadata !402, null}
!415 = metadata !{i32 73, i32 15, metadata !402, null}
!416 = metadata !{i32 786689, metadata !243, metadata !"x", metadata !213, i32 16777431, metadata !216, i32 0, metadata !415} ; [ DW_TAG_arg_variable ]
!417 = metadata !{i32 215, i32 21, metadata !243, metadata !415}
!418 = metadata !{i32 216, i32 24, metadata !248, metadata !415}
!419 = metadata !{i32 786688, metadata !248, metadata !"halfx", metadata !213, i32 216, metadata !216, i32 0, metadata !415} ; [ DW_TAG_auto_variable ]
!420 = metadata !{i32 217, i32 13, metadata !248, metadata !415}
!421 = metadata !{i32 786688, metadata !248, metadata !"y", metadata !213, i32 217, metadata !216, i32 0, metadata !415} ; [ DW_TAG_auto_variable ]
!422 = metadata !{i32 220, i32 2, metadata !248, metadata !415}
!423 = metadata !{i32 221, i32 2, metadata !248, metadata !415}
!424 = metadata !{i32 74, i32 3, metadata !402, null}
!425 = metadata !{i32 75, i32 3, metadata !402, null}
!426 = metadata !{i32 76, i32 3, metadata !402, null}
!427 = metadata !{i32 79, i32 3, metadata !402, null}
!428 = metadata !{i32 786688, metadata !388, metadata !"_2q0mx", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!429 = metadata !{i32 80, i32 3, metadata !402, null}
!430 = metadata !{i32 786688, metadata !388, metadata !"_2q0my", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!431 = metadata !{i32 81, i32 3, metadata !402, null}
!432 = metadata !{i32 786688, metadata !388, metadata !"_2q0mz", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!433 = metadata !{i32 82, i32 3, metadata !402, null}
!434 = metadata !{i32 786688, metadata !388, metadata !"_2q1mx", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!435 = metadata !{i32 83, i32 3, metadata !402, null}
!436 = metadata !{i32 786688, metadata !388, metadata !"_2q0", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!437 = metadata !{i32 84, i32 3, metadata !402, null}
!438 = metadata !{i32 786688, metadata !388, metadata !"_2q1", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!439 = metadata !{i32 85, i32 3, metadata !402, null}
!440 = metadata !{i32 786688, metadata !388, metadata !"_2q2", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!441 = metadata !{i32 86, i32 3, metadata !402, null}
!442 = metadata !{i32 786688, metadata !388, metadata !"_2q3", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!443 = metadata !{i32 87, i32 3, metadata !402, null}
!444 = metadata !{i32 786688, metadata !388, metadata !"_2q0q2", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!445 = metadata !{i32 88, i32 3, metadata !402, null}
!446 = metadata !{i32 786688, metadata !388, metadata !"_2q2q3", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!447 = metadata !{i32 89, i32 3, metadata !402, null}
!448 = metadata !{i32 786688, metadata !388, metadata !"q0q0", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!449 = metadata !{i32 90, i32 3, metadata !402, null}
!450 = metadata !{i32 786688, metadata !388, metadata !"q0q1", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!451 = metadata !{i32 91, i32 3, metadata !402, null}
!452 = metadata !{i32 786688, metadata !388, metadata !"q0q2", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!453 = metadata !{i32 92, i32 3, metadata !402, null}
!454 = metadata !{i32 786688, metadata !388, metadata !"q0q3", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!455 = metadata !{i32 93, i32 3, metadata !402, null}
!456 = metadata !{i32 786688, metadata !388, metadata !"q1q1", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!457 = metadata !{i32 94, i32 3, metadata !402, null}
!458 = metadata !{i32 786688, metadata !388, metadata !"q1q2", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!459 = metadata !{i32 95, i32 3, metadata !402, null}
!460 = metadata !{i32 786688, metadata !388, metadata !"q1q3", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!461 = metadata !{i32 96, i32 3, metadata !402, null}
!462 = metadata !{i32 786688, metadata !388, metadata !"q2q2", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!463 = metadata !{i32 97, i32 3, metadata !402, null}
!464 = metadata !{i32 786688, metadata !388, metadata !"q2q3", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!465 = metadata !{i32 98, i32 3, metadata !402, null}
!466 = metadata !{i32 786688, metadata !388, metadata !"q3q3", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!467 = metadata !{i32 101, i32 3, metadata !402, null}
!468 = metadata !{i32 786688, metadata !388, metadata !"hx", metadata !213, i32 48, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!469 = metadata !{i32 102, i32 3, metadata !402, null}
!470 = metadata !{i32 786688, metadata !388, metadata !"hy", metadata !213, i32 48, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!471 = metadata !{i32 103, i32 10, metadata !402, null}
!472 = metadata !{i32 786688, metadata !388, metadata !"_2bx", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!473 = metadata !{i32 104, i32 3, metadata !402, null}
!474 = metadata !{i32 786688, metadata !388, metadata !"_2bz", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!475 = metadata !{i32 105, i32 3, metadata !402, null}
!476 = metadata !{i32 786688, metadata !388, metadata !"_4bx", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!477 = metadata !{i32 106, i32 3, metadata !402, null}
!478 = metadata !{i32 786688, metadata !388, metadata !"_4bz", metadata !213, i32 49, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!479 = metadata !{i32 109, i32 3, metadata !402, null}
!480 = metadata !{i32 786688, metadata !388, metadata !"s0", metadata !213, i32 46, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!481 = metadata !{i32 110, i32 3, metadata !402, null}
!482 = metadata !{i32 786688, metadata !388, metadata !"s1", metadata !213, i32 46, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!483 = metadata !{i32 111, i32 3, metadata !402, null}
!484 = metadata !{i32 786688, metadata !388, metadata !"s2", metadata !213, i32 46, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!485 = metadata !{i32 112, i32 3, metadata !402, null}
!486 = metadata !{i32 786688, metadata !388, metadata !"s3", metadata !213, i32 46, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!487 = metadata !{i32 113, i32 15, metadata !402, null}
!488 = metadata !{i32 786689, metadata !243, metadata !"x", metadata !213, i32 16777431, metadata !216, i32 0, metadata !487} ; [ DW_TAG_arg_variable ]
!489 = metadata !{i32 215, i32 21, metadata !243, metadata !487}
!490 = metadata !{i32 216, i32 24, metadata !248, metadata !487}
!491 = metadata !{i32 786688, metadata !248, metadata !"halfx", metadata !213, i32 216, metadata !216, i32 0, metadata !487} ; [ DW_TAG_auto_variable ]
!492 = metadata !{i32 217, i32 13, metadata !248, metadata !487}
!493 = metadata !{i32 786688, metadata !248, metadata !"y", metadata !213, i32 217, metadata !216, i32 0, metadata !487} ; [ DW_TAG_auto_variable ]
!494 = metadata !{i32 220, i32 2, metadata !248, metadata !487}
!495 = metadata !{i32 221, i32 2, metadata !248, metadata !487}
!496 = metadata !{i32 114, i32 3, metadata !402, null}
!497 = metadata !{i32 115, i32 3, metadata !402, null}
!498 = metadata !{i32 116, i32 3, metadata !402, null}
!499 = metadata !{i32 117, i32 3, metadata !402, null}
!500 = metadata !{i32 120, i32 3, metadata !402, null}
!501 = metadata !{i32 121, i32 3, metadata !402, null}
!502 = metadata !{i32 122, i32 3, metadata !402, null}
!503 = metadata !{i32 123, i32 3, metadata !402, null}
!504 = metadata !{i32 124, i32 2, metadata !402, null}
!505 = metadata !{i32 127, i32 2, metadata !388, null}
!506 = metadata !{i32 128, i32 2, metadata !388, null}
!507 = metadata !{i32 129, i32 2, metadata !388, null}
!508 = metadata !{i32 130, i32 2, metadata !388, null}
!509 = metadata !{i32 133, i32 14, metadata !388, null}
!510 = metadata !{i32 786689, metadata !243, metadata !"x", metadata !213, i32 16777431, metadata !216, i32 0, metadata !509} ; [ DW_TAG_arg_variable ]
!511 = metadata !{i32 215, i32 21, metadata !243, metadata !509}
!512 = metadata !{i32 216, i32 24, metadata !248, metadata !509}
!513 = metadata !{i32 786688, metadata !248, metadata !"halfx", metadata !213, i32 216, metadata !216, i32 0, metadata !509} ; [ DW_TAG_auto_variable ]
!514 = metadata !{i32 217, i32 13, metadata !248, metadata !509}
!515 = metadata !{i32 786688, metadata !248, metadata !"y", metadata !213, i32 217, metadata !216, i32 0, metadata !509} ; [ DW_TAG_auto_variable ]
!516 = metadata !{i32 220, i32 2, metadata !248, metadata !509}
!517 = metadata !{i32 221, i32 2, metadata !248, metadata !509}
!518 = metadata !{i32 134, i32 2, metadata !388, null}
!519 = metadata !{i32 135, i32 2, metadata !388, null}
!520 = metadata !{i32 136, i32 2, metadata !388, null}
!521 = metadata !{i32 137, i32 2, metadata !388, null}
!522 = metadata !{i32 138, i32 1, metadata !388, null}
