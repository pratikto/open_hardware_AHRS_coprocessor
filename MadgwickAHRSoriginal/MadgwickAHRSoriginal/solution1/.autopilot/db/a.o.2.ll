; ModuleID = '/home/toni/Documents/vivado_projects/MadgwickAHRSoriginal/MadgwickAHRSoriginal/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q3 = global float 0.000000e+00, align 4          ; [#uses=41 type=float*]
@q2 = global float 0.000000e+00, align 4          ; [#uses=43 type=float*]
@q1 = global float 0.000000e+00, align 4          ; [#uses=39 type=float*]
@q0 = global float 1.000000e+00, align 4          ; [#uses=36 type=float*]
@llvm.global_ctors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm.global_ctors.0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@beta = global float 0x3FB99999A0000000, align 4  ; [#uses=8 type=float*]
@MadgwickAHRSupdate.str = internal unnamed_addr constant [19 x i8] c"MadgwickAHRSupdate\00" ; [#uses=1 type=[19 x i8]*]

; [#uses=1]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=130]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=9]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
define internal fastcc void @MadgwickAHRSupdateIMU(float %gx, float %gy, float %gz, float %ax, float %ay, float %az) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{float %gx}, i64 0, metadata !222), !dbg !229 ; [debug line = 143:34] [debug variable = gx]
  call void @llvm.dbg.value(metadata !{float %gy}, i64 0, metadata !230), !dbg !231 ; [debug line = 143:44] [debug variable = gy]
  call void @llvm.dbg.value(metadata !{float %gz}, i64 0, metadata !232), !dbg !233 ; [debug line = 143:54] [debug variable = gz]
  call void @llvm.dbg.value(metadata !{float %ax}, i64 0, metadata !234), !dbg !235 ; [debug line = 143:64] [debug variable = ax]
  call void @llvm.dbg.value(metadata !{float %ay}, i64 0, metadata !236), !dbg !237 ; [debug line = 143:74] [debug variable = ay]
  call void @llvm.dbg.value(metadata !{float %az}, i64 0, metadata !238), !dbg !239 ; [debug line = 143:84] [debug variable = az]
  %q1.load = load volatile float* @q1, align 4, !dbg !240 ; [#uses=1 type=float] [debug line = 150:2]
  %tmp_to_int = bitcast float %q1.load to i32, !dbg !240 ; [#uses=1 type=i32] [debug line = 150:2]
  %tmp_neg = xor i32 %tmp_to_int, -2147483648, !dbg !240 ; [#uses=1 type=i32] [debug line = 150:2]
  %tmp = bitcast i32 %tmp_neg to float, !dbg !240 ; [#uses=1 type=float] [debug line = 150:2]
  %tmp.6 = fmul float %tmp, %gx, !dbg !240        ; [#uses=1 type=float] [debug line = 150:2]
  %q2.load = load volatile float* @q2, align 4, !dbg !240 ; [#uses=1 type=float] [debug line = 150:2]
  %tmp.7 = fmul float %q2.load, %gy, !dbg !240    ; [#uses=1 type=float] [debug line = 150:2]
  %tmp.8 = fsub float %tmp.6, %tmp.7, !dbg !240   ; [#uses=1 type=float] [debug line = 150:2]
  %q3.load = load volatile float* @q3, align 4, !dbg !240 ; [#uses=1 type=float] [debug line = 150:2]
  %tmp.9 = fmul float %q3.load, %gz, !dbg !240    ; [#uses=1 type=float] [debug line = 150:2]
  %tmp. = fsub float %tmp.8, %tmp.9, !dbg !240    ; [#uses=1 type=float] [debug line = 150:2]
  %qDot1 = fmul float %tmp., 5.000000e-01, !dbg !240 ; [#uses=2 type=float] [debug line = 150:2]
  call void @llvm.dbg.value(metadata !{float %qDot1}, i64 0, metadata !242), !dbg !240 ; [debug line = 150:2] [debug variable = qDot1]
  %q0.load = load volatile float* @q0, align 4, !dbg !243 ; [#uses=1 type=float] [debug line = 151:2]
  %tmp.1 = fmul float %q0.load, %gx, !dbg !243    ; [#uses=1 type=float] [debug line = 151:2]
  %q2.load.1 = load volatile float* @q2, align 4, !dbg !243 ; [#uses=1 type=float] [debug line = 151:2]
  %tmp.2 = fmul float %q2.load.1, %gz, !dbg !243  ; [#uses=1 type=float] [debug line = 151:2]
  %tmp.3 = fadd float %tmp.1, %tmp.2, !dbg !243   ; [#uses=1 type=float] [debug line = 151:2]
  %q3.load.1 = load volatile float* @q3, align 4, !dbg !243 ; [#uses=1 type=float] [debug line = 151:2]
  %tmp.4 = fmul float %q3.load.1, %gy, !dbg !243  ; [#uses=1 type=float] [debug line = 151:2]
  %tmp.5 = fsub float %tmp.3, %tmp.4, !dbg !243   ; [#uses=1 type=float] [debug line = 151:2]
  %qDot2 = fmul float %tmp.5, 5.000000e-01, !dbg !243 ; [#uses=2 type=float] [debug line = 151:2]
  call void @llvm.dbg.value(metadata !{float %qDot2}, i64 0, metadata !244), !dbg !243 ; [debug line = 151:2] [debug variable = qDot2]
  %q0.load.1 = load volatile float* @q0, align 4, !dbg !245 ; [#uses=1 type=float] [debug line = 152:2]
  %tmp.10 = fmul float %q0.load.1, %gy, !dbg !245 ; [#uses=1 type=float] [debug line = 152:2]
  %q1.load.1 = load volatile float* @q1, align 4, !dbg !245 ; [#uses=1 type=float] [debug line = 152:2]
  %tmp.11 = fmul float %q1.load.1, %gz, !dbg !245 ; [#uses=1 type=float] [debug line = 152:2]
  %tmp.12 = fsub float %tmp.10, %tmp.11, !dbg !245 ; [#uses=1 type=float] [debug line = 152:2]
  %q3.load.2 = load volatile float* @q3, align 4, !dbg !245 ; [#uses=1 type=float] [debug line = 152:2]
  %tmp.13 = fmul float %q3.load.2, %gx, !dbg !245 ; [#uses=1 type=float] [debug line = 152:2]
  %tmp.14 = fadd float %tmp.12, %tmp.13, !dbg !245 ; [#uses=1 type=float] [debug line = 152:2]
  %qDot3 = fmul float %tmp.14, 5.000000e-01, !dbg !245 ; [#uses=2 type=float] [debug line = 152:2]
  call void @llvm.dbg.value(metadata !{float %qDot3}, i64 0, metadata !246), !dbg !245 ; [debug line = 152:2] [debug variable = qDot3]
  %q0.load.2 = load volatile float* @q0, align 4, !dbg !247 ; [#uses=1 type=float] [debug line = 153:2]
  %tmp.15 = fmul float %q0.load.2, %gz, !dbg !247 ; [#uses=1 type=float] [debug line = 153:2]
  %q1.load.2 = load volatile float* @q1, align 4, !dbg !247 ; [#uses=1 type=float] [debug line = 153:2]
  %tmp.16 = fmul float %q1.load.2, %gy, !dbg !247 ; [#uses=1 type=float] [debug line = 153:2]
  %tmp.17 = fadd float %tmp.15, %tmp.16, !dbg !247 ; [#uses=1 type=float] [debug line = 153:2]
  %q2.load.2 = load volatile float* @q2, align 4, !dbg !247 ; [#uses=1 type=float] [debug line = 153:2]
  %tmp.18 = fmul float %q2.load.2, %gx, !dbg !247 ; [#uses=1 type=float] [debug line = 153:2]
  %tmp.19 = fsub float %tmp.17, %tmp.18, !dbg !247 ; [#uses=1 type=float] [debug line = 153:2]
  %qDot4 = fmul float %tmp.19, 5.000000e-01, !dbg !247 ; [#uses=2 type=float] [debug line = 153:2]
  call void @llvm.dbg.value(metadata !{float %qDot4}, i64 0, metadata !248), !dbg !247 ; [debug line = 153:2] [debug variable = qDot4]
  %ax_to_int = bitcast float %ax to i32           ; [#uses=2 type=i32]
  %tmp.20 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ax_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.21 = trunc i32 %ax_to_int to i23           ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.20, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.21, 0                ; [#uses=1 type=i1]
  %tmp.22 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp.27 = fcmp oeq float %ax, 0.000000e+00, !dbg !249 ; [#uses=1 type=i1] [debug line = 156:2]
  %tmp.75 = and i1 %tmp.22, %tmp.27, !dbg !249    ; [#uses=1 type=i1] [debug line = 156:2]
  %ay_to_int = bitcast float %ay to i32           ; [#uses=2 type=i32]
  %tmp.94 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ay_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.99 = trunc i32 %ay_to_int to i23           ; [#uses=1 type=i23]
  %notlhs4 = icmp ne i8 %tmp.94, -1               ; [#uses=1 type=i1]
  %notrhs5 = icmp eq i23 %tmp.99, 0               ; [#uses=1 type=i1]
  %tmp.100 = or i1 %notrhs5, %notlhs4             ; [#uses=1 type=i1]
  %tmp.101 = fcmp oeq float %ay, 0.000000e+00, !dbg !249 ; [#uses=1 type=i1] [debug line = 156:2]
  %tmp.102 = and i1 %tmp.100, %tmp.101, !dbg !249 ; [#uses=1 type=i1] [debug line = 156:2]
  %az_to_int = bitcast float %az to i32           ; [#uses=2 type=i32]
  %tmp.103 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %az_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.104 = trunc i32 %az_to_int to i23          ; [#uses=1 type=i23]
  %notlhs6 = icmp ne i8 %tmp.103, -1              ; [#uses=1 type=i1]
  %notrhs7 = icmp eq i23 %tmp.104, 0              ; [#uses=1 type=i1]
  %tmp.105 = or i1 %notrhs7, %notlhs6             ; [#uses=1 type=i1]
  %tmp.106 = fcmp oeq float %az, 0.000000e+00, !dbg !249 ; [#uses=1 type=i1] [debug line = 156:2]
  %tmp.107 = and i1 %tmp.105, %tmp.106, !dbg !249 ; [#uses=1 type=i1] [debug line = 156:2]
  %tmp1 = and i1 %tmp.102, %tmp.107, !dbg !249    ; [#uses=1 type=i1] [debug line = 156:2]
  %or.cond1 = and i1 %tmp1, %tmp.75, !dbg !249    ; [#uses=1 type=i1] [debug line = 156:2]
  br i1 %or.cond1, label %._crit_edge, label %1, !dbg !249 ; [debug line = 156:2]

; <label>:1                                       ; preds = %0
  %tmp.23 = fmul float %ax, %ax, !dbg !250        ; [#uses=1 type=float] [debug line = 159:15]
  %tmp.24 = fmul float %ay, %ay, !dbg !250        ; [#uses=1 type=float] [debug line = 159:15]
  %tmp.25 = fadd float %tmp.23, %tmp.24, !dbg !250 ; [#uses=1 type=float] [debug line = 159:15]
  %tmp.26 = fmul float %az, %az, !dbg !250        ; [#uses=1 type=float] [debug line = 159:15]
  %x.assign = fadd float %tmp.25, %tmp.26, !dbg !250 ; [#uses=2 type=float] [debug line = 159:15]
  call void @llvm.dbg.value(metadata !{float %x.assign}, i64 0, metadata !252), !dbg !256 ; [debug line = 215:21@159:15] [debug variable = x]
  %halfx = fmul float %x.assign, 5.000000e-01, !dbg !257 ; [#uses=1 type=float] [debug line = 216:24@159:15]
  call void @llvm.dbg.value(metadata !{float %halfx}, i64 0, metadata !259), !dbg !257 ; [debug line = 216:24@159:15] [debug variable = halfx]
  %y = bitcast float %x.assign to i32, !dbg !260  ; [#uses=1 type=i32] [debug line = 217:13@159:15]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !261), !dbg !260 ; [debug line = 217:13@159:15] [debug variable = y]
  %tmp.i = lshr i32 %y, 1, !dbg !262              ; [#uses=1 type=i32] [debug line = 220:2@159:15]
  %y.1 = sub i32 1597463007, %tmp.i, !dbg !262    ; [#uses=1 type=i32] [debug line = 220:2@159:15]
  call void @llvm.dbg.value(metadata !{i32 %y.1}, i64 0, metadata !261), !dbg !262 ; [debug line = 220:2@159:15] [debug variable = y]
  %tmp.1.i = bitcast i32 %y.1 to float, !dbg !263 ; [#uses=3 type=float] [debug line = 221:2@159:15]
  %tmp.2.i = fmul float %halfx, %tmp.1.i, !dbg !263 ; [#uses=1 type=float] [debug line = 221:2@159:15]
  %tmp.3.i = fmul float %tmp.2.i, %tmp.1.i, !dbg !263 ; [#uses=1 type=float] [debug line = 221:2@159:15]
  %tmp.4.i = fsub float 1.500000e+00, %tmp.3.i, !dbg !263 ; [#uses=1 type=float] [debug line = 221:2@159:15]
  %recipNorm = fmul float %tmp.1.i, %tmp.4.i, !dbg !263 ; [#uses=3 type=float] [debug line = 221:2@159:15]
  call void @llvm.dbg.value(metadata !{float %recipNorm}, i64 0, metadata !264), !dbg !250 ; [debug line = 159:15] [debug variable = recipNorm]
  %ax.assign = fmul float %recipNorm, %ax, !dbg !265 ; [#uses=4 type=float] [debug line = 160:3]
  call void @llvm.dbg.value(metadata !{float %ax.assign}, i64 0, metadata !234), !dbg !265 ; [debug line = 160:3] [debug variable = ax]
  %ay.assign = fmul float %recipNorm, %ay, !dbg !266 ; [#uses=4 type=float] [debug line = 161:3]
  call void @llvm.dbg.value(metadata !{float %ay.assign}, i64 0, metadata !236), !dbg !266 ; [debug line = 161:3] [debug variable = ay]
  %az.assign = fmul float %recipNorm, %az, !dbg !267 ; [#uses=2 type=float] [debug line = 162:3]
  call void @llvm.dbg.value(metadata !{float %az.assign}, i64 0, metadata !238), !dbg !267 ; [debug line = 162:3] [debug variable = az]
  %q0.load.3 = load volatile float* @q0, align 4, !dbg !268 ; [#uses=1 type=float] [debug line = 165:3]
  %_2q0 = fmul float %q0.load.3, 2.000000e+00, !dbg !268 ; [#uses=2 type=float] [debug line = 165:3]
  call void @llvm.dbg.value(metadata !{float %_2q0}, i64 0, metadata !269), !dbg !268 ; [debug line = 165:3] [debug variable = _2q0]
  %q1.load.3 = load volatile float* @q1, align 4, !dbg !270 ; [#uses=1 type=float] [debug line = 166:3]
  %_2q1 = fmul float %q1.load.3, 2.000000e+00, !dbg !270 ; [#uses=2 type=float] [debug line = 166:3]
  call void @llvm.dbg.value(metadata !{float %_2q1}, i64 0, metadata !271), !dbg !270 ; [debug line = 166:3] [debug variable = _2q1]
  %q2.load.3 = load volatile float* @q2, align 4, !dbg !272 ; [#uses=1 type=float] [debug line = 167:3]
  %_2q2 = fmul float %q2.load.3, 2.000000e+00, !dbg !272 ; [#uses=2 type=float] [debug line = 167:3]
  call void @llvm.dbg.value(metadata !{float %_2q2}, i64 0, metadata !273), !dbg !272 ; [debug line = 167:3] [debug variable = _2q2]
  %q3.load.3 = load volatile float* @q3, align 4, !dbg !274 ; [#uses=1 type=float] [debug line = 168:3]
  %_2q3 = fmul float %q3.load.3, 2.000000e+00, !dbg !274 ; [#uses=2 type=float] [debug line = 168:3]
  call void @llvm.dbg.value(metadata !{float %_2q3}, i64 0, metadata !275), !dbg !274 ; [debug line = 168:3] [debug variable = _2q3]
  %q0.load.4 = load volatile float* @q0, align 4, !dbg !276 ; [#uses=1 type=float] [debug line = 169:3]
  %_4q0 = fmul float %q0.load.4, 4.000000e+00, !dbg !276 ; [#uses=2 type=float] [debug line = 169:3]
  call void @llvm.dbg.value(metadata !{float %_4q0}, i64 0, metadata !277), !dbg !276 ; [debug line = 169:3] [debug variable = _4q0]
  %q1.load.4 = load volatile float* @q1, align 4, !dbg !278 ; [#uses=1 type=float] [debug line = 170:3]
  %_4q1 = fmul float %q1.load.4, 4.000000e+00, !dbg !278 ; [#uses=3 type=float] [debug line = 170:3]
  call void @llvm.dbg.value(metadata !{float %_4q1}, i64 0, metadata !279), !dbg !278 ; [debug line = 170:3] [debug variable = _4q1]
  %q2.load.4 = load volatile float* @q2, align 4, !dbg !280 ; [#uses=1 type=float] [debug line = 171:3]
  %_4q2 = fmul float %q2.load.4, 4.000000e+00, !dbg !280 ; [#uses=3 type=float] [debug line = 171:3]
  call void @llvm.dbg.value(metadata !{float %_4q2}, i64 0, metadata !281), !dbg !280 ; [debug line = 171:3] [debug variable = _4q2]
  %q1.load.5 = load volatile float* @q1, align 4, !dbg !282 ; [#uses=1 type=float] [debug line = 172:3]
  %_8q1 = fmul float %q1.load.5, 8.000000e+00, !dbg !282 ; [#uses=2 type=float] [debug line = 172:3]
  call void @llvm.dbg.value(metadata !{float %_8q1}, i64 0, metadata !283), !dbg !282 ; [debug line = 172:3] [debug variable = _8q1]
  %q2.load.5 = load volatile float* @q2, align 4, !dbg !284 ; [#uses=1 type=float] [debug line = 173:3]
  %_8q2 = fmul float %q2.load.5, 8.000000e+00, !dbg !284 ; [#uses=2 type=float] [debug line = 173:3]
  call void @llvm.dbg.value(metadata !{float %_8q2}, i64 0, metadata !285), !dbg !284 ; [debug line = 173:3] [debug variable = _8q2]
  %q0.load.5 = load volatile float* @q0, align 4, !dbg !286 ; [#uses=1 type=float] [debug line = 174:3]
  %q0.load.6 = load volatile float* @q0, align 4, !dbg !286 ; [#uses=1 type=float] [debug line = 174:3]
  %q0q0 = fmul float %q0.load.5, %q0.load.6, !dbg !286 ; [#uses=1 type=float] [debug line = 174:3]
  call void @llvm.dbg.value(metadata !{float %q0q0}, i64 0, metadata !287), !dbg !286 ; [debug line = 174:3] [debug variable = q0q0]
  %q1.load.6 = load volatile float* @q1, align 4, !dbg !288 ; [#uses=1 type=float] [debug line = 175:3]
  %q1.load.7 = load volatile float* @q1, align 4, !dbg !288 ; [#uses=1 type=float] [debug line = 175:3]
  %q1q1 = fmul float %q1.load.6, %q1.load.7, !dbg !288 ; [#uses=4 type=float] [debug line = 175:3]
  call void @llvm.dbg.value(metadata !{float %q1q1}, i64 0, metadata !289), !dbg !288 ; [debug line = 175:3] [debug variable = q1q1]
  %q2.load.6 = load volatile float* @q2, align 4, !dbg !290 ; [#uses=1 type=float] [debug line = 176:3]
  %q2.load.7 = load volatile float* @q2, align 4, !dbg !290 ; [#uses=1 type=float] [debug line = 176:3]
  %q2q2 = fmul float %q2.load.6, %q2.load.7, !dbg !290 ; [#uses=4 type=float] [debug line = 176:3]
  call void @llvm.dbg.value(metadata !{float %q2q2}, i64 0, metadata !291), !dbg !290 ; [debug line = 176:3] [debug variable = q2q2]
  %q3.load.4 = load volatile float* @q3, align 4, !dbg !292 ; [#uses=1 type=float] [debug line = 177:3]
  %q3.load.5 = load volatile float* @q3, align 4, !dbg !292 ; [#uses=1 type=float] [debug line = 177:3]
  %q3q3 = fmul float %q3.load.4, %q3.load.5, !dbg !292 ; [#uses=2 type=float] [debug line = 177:3]
  call void @llvm.dbg.value(metadata !{float %q3q3}, i64 0, metadata !293), !dbg !292 ; [debug line = 177:3] [debug variable = q3q3]
  %tmp.28 = fmul float %_4q0, %q2q2, !dbg !294    ; [#uses=1 type=float] [debug line = 180:3]
  %tmp.29 = fmul float %_2q2, %ax.assign, !dbg !294 ; [#uses=1 type=float] [debug line = 180:3]
  %tmp.30 = fadd float %tmp.28, %tmp.29, !dbg !294 ; [#uses=1 type=float] [debug line = 180:3]
  %tmp.31 = fmul float %_4q0, %q1q1, !dbg !294    ; [#uses=1 type=float] [debug line = 180:3]
  %tmp.32 = fadd float %tmp.30, %tmp.31, !dbg !294 ; [#uses=1 type=float] [debug line = 180:3]
  %tmp.33 = fmul float %_2q1, %ay.assign, !dbg !294 ; [#uses=1 type=float] [debug line = 180:3]
  %s0 = fsub float %tmp.32, %tmp.33, !dbg !294    ; [#uses=3 type=float] [debug line = 180:3]
  call void @llvm.dbg.value(metadata !{float %s0}, i64 0, metadata !295), !dbg !294 ; [debug line = 180:3] [debug variable = s0]
  %tmp.34 = fmul float %_4q1, %q3q3, !dbg !296    ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.35 = fmul float %_2q3, %ax.assign, !dbg !296 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.36 = fsub float %tmp.34, %tmp.35, !dbg !296 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.37 = fmul float %q0q0, 4.000000e+00, !dbg !296 ; [#uses=2 type=float] [debug line = 181:3]
  %q1.load.8 = load volatile float* @q1, align 4, !dbg !296 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.38 = fmul float %tmp.37, %q1.load.8, !dbg !296 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.39 = fadd float %tmp.36, %tmp.38, !dbg !296 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.40 = fmul float %_2q0, %ay.assign, !dbg !296 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.41 = fsub float %tmp.39, %tmp.40, !dbg !296 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.42 = fsub float %tmp.41, %_4q1, !dbg !296  ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.43 = fmul float %_8q1, %q1q1, !dbg !296    ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.44 = fadd float %tmp.42, %tmp.43, !dbg !296 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.45 = fmul float %_8q1, %q2q2, !dbg !296    ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.46 = fadd float %tmp.44, %tmp.45, !dbg !296 ; [#uses=1 type=float] [debug line = 181:3]
  %tmp.47 = fmul float %_4q1, %az.assign, !dbg !296 ; [#uses=1 type=float] [debug line = 181:3]
  %s1 = fadd float %tmp.46, %tmp.47, !dbg !296    ; [#uses=3 type=float] [debug line = 181:3]
  call void @llvm.dbg.value(metadata !{float %s1}, i64 0, metadata !297), !dbg !296 ; [debug line = 181:3] [debug variable = s1]
  %q2.load.8 = load volatile float* @q2, align 4, !dbg !298 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.48 = fmul float %tmp.37, %q2.load.8, !dbg !298 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.49 = fmul float %_2q0, %ax.assign, !dbg !298 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.50 = fadd float %tmp.48, %tmp.49, !dbg !298 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.51 = fmul float %_4q2, %q3q3, !dbg !298    ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.52 = fadd float %tmp.50, %tmp.51, !dbg !298 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.53 = fmul float %_2q3, %ay.assign, !dbg !298 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.54 = fsub float %tmp.52, %tmp.53, !dbg !298 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.55 = fsub float %tmp.54, %_4q2, !dbg !298  ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.56 = fmul float %_8q2, %q1q1, !dbg !298    ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.57 = fadd float %tmp.55, %tmp.56, !dbg !298 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.58 = fmul float %_8q2, %q2q2, !dbg !298    ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.59 = fadd float %tmp.57, %tmp.58, !dbg !298 ; [#uses=1 type=float] [debug line = 182:3]
  %tmp.60 = fmul float %_4q2, %az.assign, !dbg !298 ; [#uses=1 type=float] [debug line = 182:3]
  %s2 = fadd float %tmp.59, %tmp.60, !dbg !298    ; [#uses=3 type=float] [debug line = 182:3]
  call void @llvm.dbg.value(metadata !{float %s2}, i64 0, metadata !299), !dbg !298 ; [debug line = 182:3] [debug variable = s2]
  %tmp.61 = fmul float %q1q1, 4.000000e+00, !dbg !300 ; [#uses=1 type=float] [debug line = 183:3]
  %q3.load.6 = load volatile float* @q3, align 4, !dbg !300 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp.62 = fmul float %tmp.61, %q3.load.6, !dbg !300 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp.63 = fmul float %_2q1, %ax.assign, !dbg !300 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp.64 = fsub float %tmp.62, %tmp.63, !dbg !300 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp.65 = fmul float %q2q2, 4.000000e+00, !dbg !300 ; [#uses=1 type=float] [debug line = 183:3]
  %q3.load.7 = load volatile float* @q3, align 4, !dbg !300 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp.66 = fmul float %tmp.65, %q3.load.7, !dbg !300 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp.67 = fadd float %tmp.64, %tmp.66, !dbg !300 ; [#uses=1 type=float] [debug line = 183:3]
  %tmp.68 = fmul float %_2q2, %ay.assign, !dbg !300 ; [#uses=1 type=float] [debug line = 183:3]
  %s3 = fsub float %tmp.67, %tmp.68, !dbg !300    ; [#uses=3 type=float] [debug line = 183:3]
  call void @llvm.dbg.value(metadata !{float %s3}, i64 0, metadata !301), !dbg !300 ; [debug line = 183:3] [debug variable = s3]
  %tmp.69 = fmul float %s0, %s0, !dbg !302        ; [#uses=1 type=float] [debug line = 184:15]
  %tmp.70 = fmul float %s1, %s1, !dbg !302        ; [#uses=1 type=float] [debug line = 184:15]
  %tmp.71 = fadd float %tmp.69, %tmp.70, !dbg !302 ; [#uses=1 type=float] [debug line = 184:15]
  %tmp.72 = fmul float %s2, %s2, !dbg !302        ; [#uses=1 type=float] [debug line = 184:15]
  %tmp.73 = fadd float %tmp.71, %tmp.72, !dbg !302 ; [#uses=1 type=float] [debug line = 184:15]
  %tmp.74 = fmul float %s3, %s3, !dbg !302        ; [#uses=1 type=float] [debug line = 184:15]
  %x.assign.1 = fadd float %tmp.73, %tmp.74, !dbg !302 ; [#uses=2 type=float] [debug line = 184:15]
  call void @llvm.dbg.value(metadata !{float %x.assign.1}, i64 0, metadata !303), !dbg !304 ; [debug line = 215:21@184:15] [debug variable = x]
  %halfx.1 = fmul float %x.assign.1, 5.000000e-01, !dbg !305 ; [#uses=1 type=float] [debug line = 216:24@184:15]
  call void @llvm.dbg.value(metadata !{float %halfx.1}, i64 0, metadata !306), !dbg !305 ; [debug line = 216:24@184:15] [debug variable = halfx]
  %y.2 = bitcast float %x.assign.1 to i32, !dbg !307 ; [#uses=1 type=i32] [debug line = 217:13@184:15]
  call void @llvm.dbg.value(metadata !{i32 %y.2}, i64 0, metadata !308), !dbg !307 ; [debug line = 217:13@184:15] [debug variable = y]
  %tmp.i3 = lshr i32 %y.2, 1, !dbg !309           ; [#uses=1 type=i32] [debug line = 220:2@184:15]
  %y.3 = sub i32 1597463007, %tmp.i3, !dbg !309   ; [#uses=1 type=i32] [debug line = 220:2@184:15]
  call void @llvm.dbg.value(metadata !{i32 %y.3}, i64 0, metadata !308), !dbg !309 ; [debug line = 220:2@184:15] [debug variable = y]
  %tmp.1.i5 = bitcast i32 %y.3 to float, !dbg !310 ; [#uses=3 type=float] [debug line = 221:2@184:15]
  %tmp.2.i6 = fmul float %halfx.1, %tmp.1.i5, !dbg !310 ; [#uses=1 type=float] [debug line = 221:2@184:15]
  %tmp.3.i7 = fmul float %tmp.2.i6, %tmp.1.i5, !dbg !310 ; [#uses=1 type=float] [debug line = 221:2@184:15]
  %tmp.4.i8 = fsub float 1.500000e+00, %tmp.3.i7, !dbg !310 ; [#uses=1 type=float] [debug line = 221:2@184:15]
  %recipNorm.1 = fmul float %tmp.1.i5, %tmp.4.i8, !dbg !310 ; [#uses=4 type=float] [debug line = 221:2@184:15]
  call void @llvm.dbg.value(metadata !{float %recipNorm.1}, i64 0, metadata !264), !dbg !302 ; [debug line = 184:15] [debug variable = recipNorm]
  %s0.1 = fmul float %s0, %recipNorm.1, !dbg !311 ; [#uses=1 type=float] [debug line = 185:3]
  call void @llvm.dbg.value(metadata !{float %s0.1}, i64 0, metadata !295), !dbg !311 ; [debug line = 185:3] [debug variable = s0]
  %s1.1 = fmul float %s1, %recipNorm.1, !dbg !312 ; [#uses=1 type=float] [debug line = 186:3]
  call void @llvm.dbg.value(metadata !{float %s1.1}, i64 0, metadata !297), !dbg !312 ; [debug line = 186:3] [debug variable = s1]
  %s2.1 = fmul float %s2, %recipNorm.1, !dbg !313 ; [#uses=1 type=float] [debug line = 187:3]
  call void @llvm.dbg.value(metadata !{float %s2.1}, i64 0, metadata !299), !dbg !313 ; [debug line = 187:3] [debug variable = s2]
  %s3.1 = fmul float %s3, %recipNorm.1, !dbg !314 ; [#uses=1 type=float] [debug line = 188:3]
  call void @llvm.dbg.value(metadata !{float %s3.1}, i64 0, metadata !301), !dbg !314 ; [debug line = 188:3] [debug variable = s3]
  %beta.load = load volatile float* @beta, align 4, !dbg !315 ; [#uses=1 type=float] [debug line = 191:3]
  %tmp.76 = fmul float %beta.load, %s0.1, !dbg !315 ; [#uses=1 type=float] [debug line = 191:3]
  %qDot1.1 = fsub float %qDot1, %tmp.76, !dbg !315 ; [#uses=1 type=float] [debug line = 191:3]
  call void @llvm.dbg.value(metadata !{float %qDot1.1}, i64 0, metadata !242), !dbg !315 ; [debug line = 191:3] [debug variable = qDot1]
  %beta.load.1 = load volatile float* @beta, align 4, !dbg !316 ; [#uses=1 type=float] [debug line = 192:3]
  %tmp.77 = fmul float %beta.load.1, %s1.1, !dbg !316 ; [#uses=1 type=float] [debug line = 192:3]
  %qDot2.1 = fsub float %qDot2, %tmp.77, !dbg !316 ; [#uses=1 type=float] [debug line = 192:3]
  call void @llvm.dbg.value(metadata !{float %qDot2.1}, i64 0, metadata !244), !dbg !316 ; [debug line = 192:3] [debug variable = qDot2]
  %beta.load.2 = load volatile float* @beta, align 4, !dbg !317 ; [#uses=1 type=float] [debug line = 193:3]
  %tmp.78 = fmul float %beta.load.2, %s2.1, !dbg !317 ; [#uses=1 type=float] [debug line = 193:3]
  %qDot3.1 = fsub float %qDot3, %tmp.78, !dbg !317 ; [#uses=1 type=float] [debug line = 193:3]
  call void @llvm.dbg.value(metadata !{float %qDot3.1}, i64 0, metadata !246), !dbg !317 ; [debug line = 193:3] [debug variable = qDot3]
  %beta.load.3 = load volatile float* @beta, align 4, !dbg !318 ; [#uses=1 type=float] [debug line = 194:3]
  %tmp.79 = fmul float %beta.load.3, %s3.1, !dbg !318 ; [#uses=1 type=float] [debug line = 194:3]
  %qDot4.1 = fsub float %qDot4, %tmp.79, !dbg !318 ; [#uses=1 type=float] [debug line = 194:3]
  call void @llvm.dbg.value(metadata !{float %qDot4.1}, i64 0, metadata !248), !dbg !318 ; [debug line = 194:3] [debug variable = qDot4]
  br label %._crit_edge, !dbg !319                ; [debug line = 195:2]

._crit_edge:                                      ; preds = %1, %0
  %qDot = phi float [ %qDot1.1, %1 ], [ %qDot1, %0 ] ; [#uses=1 type=float]
  %qDot5 = phi float [ %qDot2.1, %1 ], [ %qDot2, %0 ] ; [#uses=1 type=float]
  %qDot6 = phi float [ %qDot3.1, %1 ], [ %qDot3, %0 ] ; [#uses=1 type=float]
  %qDot7 = phi float [ %qDot4.1, %1 ], [ %qDot4, %0 ] ; [#uses=1 type=float]
  %tmp.80 = fmul float %qDot, 1.953125e-03, !dbg !320 ; [#uses=1 type=float] [debug line = 198:2]
  %q0.load.7 = load volatile float* @q0, align 4, !dbg !320 ; [#uses=1 type=float] [debug line = 198:2]
  %tmp.81 = fadd float %q0.load.7, %tmp.80, !dbg !320 ; [#uses=1 type=float] [debug line = 198:2]
  store volatile float %tmp.81, float* @q0, align 4, !dbg !320 ; [debug line = 198:2]
  %tmp.82 = fmul float %qDot5, 1.953125e-03, !dbg !321 ; [#uses=1 type=float] [debug line = 199:2]
  %q1.load.9 = load volatile float* @q1, align 4, !dbg !321 ; [#uses=1 type=float] [debug line = 199:2]
  %tmp.83 = fadd float %q1.load.9, %tmp.82, !dbg !321 ; [#uses=1 type=float] [debug line = 199:2]
  store volatile float %tmp.83, float* @q1, align 4, !dbg !321 ; [debug line = 199:2]
  %tmp.84 = fmul float %qDot6, 1.953125e-03, !dbg !322 ; [#uses=1 type=float] [debug line = 200:2]
  %q2.load.9 = load volatile float* @q2, align 4, !dbg !322 ; [#uses=1 type=float] [debug line = 200:2]
  %tmp.85 = fadd float %q2.load.9, %tmp.84, !dbg !322 ; [#uses=1 type=float] [debug line = 200:2]
  store volatile float %tmp.85, float* @q2, align 4, !dbg !322 ; [debug line = 200:2]
  %tmp.86 = fmul float %qDot7, 1.953125e-03, !dbg !323 ; [#uses=1 type=float] [debug line = 201:2]
  %q3.load.8 = load volatile float* @q3, align 4, !dbg !323 ; [#uses=1 type=float] [debug line = 201:2]
  %tmp.87 = fadd float %q3.load.8, %tmp.86, !dbg !323 ; [#uses=1 type=float] [debug line = 201:2]
  store volatile float %tmp.87, float* @q3, align 4, !dbg !323 ; [debug line = 201:2]
  %q0.load.8 = load volatile float* @q0, align 4, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %q0.load.9 = load volatile float* @q0, align 4, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp.88 = fmul float %q0.load.8, %q0.load.9, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %q1.load.10 = load volatile float* @q1, align 4, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %q1.load.11 = load volatile float* @q1, align 4, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp.89 = fmul float %q1.load.10, %q1.load.11, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp.90 = fadd float %tmp.88, %tmp.89, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %q2.load.10 = load volatile float* @q2, align 4, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %q2.load.11 = load volatile float* @q2, align 4, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp.91 = fmul float %q2.load.10, %q2.load.11, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp.92 = fadd float %tmp.90, %tmp.91, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %q3.load.9 = load volatile float* @q3, align 4, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %q3.load.10 = load volatile float* @q3, align 4, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %tmp.93 = fmul float %q3.load.9, %q3.load.10, !dbg !324 ; [#uses=1 type=float] [debug line = 204:14]
  %x.assign.2 = fadd float %tmp.92, %tmp.93, !dbg !324 ; [#uses=2 type=float] [debug line = 204:14]
  call void @llvm.dbg.value(metadata !{float %x.assign.2}, i64 0, metadata !325), !dbg !326 ; [debug line = 215:21@204:14] [debug variable = x]
  %halfx.2 = fmul float %x.assign.2, 5.000000e-01, !dbg !327 ; [#uses=1 type=float] [debug line = 216:24@204:14]
  call void @llvm.dbg.value(metadata !{float %halfx.2}, i64 0, metadata !328), !dbg !327 ; [debug line = 216:24@204:14] [debug variable = halfx]
  %y.4 = bitcast float %x.assign.2 to i32, !dbg !329 ; [#uses=1 type=i32] [debug line = 217:13@204:14]
  call void @llvm.dbg.value(metadata !{i32 %y.4}, i64 0, metadata !330), !dbg !329 ; [debug line = 217:13@204:14] [debug variable = y]
  %tmp.i1 = lshr i32 %y.4, 1, !dbg !331           ; [#uses=1 type=i32] [debug line = 220:2@204:14]
  %y.5 = sub i32 1597463007, %tmp.i1, !dbg !331   ; [#uses=1 type=i32] [debug line = 220:2@204:14]
  call void @llvm.dbg.value(metadata !{i32 %y.5}, i64 0, metadata !330), !dbg !331 ; [debug line = 220:2@204:14] [debug variable = y]
  %tmp.1.i1 = bitcast i32 %y.5 to float, !dbg !332 ; [#uses=3 type=float] [debug line = 221:2@204:14]
  %tmp.2.i1 = fmul float %halfx.2, %tmp.1.i1, !dbg !332 ; [#uses=1 type=float] [debug line = 221:2@204:14]
  %tmp.3.i1 = fmul float %tmp.2.i1, %tmp.1.i1, !dbg !332 ; [#uses=1 type=float] [debug line = 221:2@204:14]
  %tmp.4.i1 = fsub float 1.500000e+00, %tmp.3.i1, !dbg !332 ; [#uses=1 type=float] [debug line = 221:2@204:14]
  %recipNorm.2 = fmul float %tmp.1.i1, %tmp.4.i1, !dbg !332 ; [#uses=4 type=float] [debug line = 221:2@204:14]
  call void @llvm.dbg.value(metadata !{float %recipNorm.2}, i64 0, metadata !264), !dbg !324 ; [debug line = 204:14] [debug variable = recipNorm]
  %q0.load.10 = load volatile float* @q0, align 4, !dbg !333 ; [#uses=1 type=float] [debug line = 205:2]
  %tmp.95 = fmul float %q0.load.10, %recipNorm.2, !dbg !333 ; [#uses=1 type=float] [debug line = 205:2]
  store volatile float %tmp.95, float* @q0, align 4, !dbg !333 ; [debug line = 205:2]
  %q1.load.12 = load volatile float* @q1, align 4, !dbg !334 ; [#uses=1 type=float] [debug line = 206:2]
  %tmp.96 = fmul float %q1.load.12, %recipNorm.2, !dbg !334 ; [#uses=1 type=float] [debug line = 206:2]
  store volatile float %tmp.96, float* @q1, align 4, !dbg !334 ; [debug line = 206:2]
  %q2.load.12 = load volatile float* @q2, align 4, !dbg !335 ; [#uses=1 type=float] [debug line = 207:2]
  %tmp.97 = fmul float %q2.load.12, %recipNorm.2, !dbg !335 ; [#uses=1 type=float] [debug line = 207:2]
  store volatile float %tmp.97, float* @q2, align 4, !dbg !335 ; [debug line = 207:2]
  %q3.load.11 = load volatile float* @q3, align 4, !dbg !336 ; [#uses=1 type=float] [debug line = 208:2]
  %tmp.98 = fmul float %q3.load.11, %recipNorm.2, !dbg !336 ; [#uses=1 type=float] [debug line = 208:2]
  store volatile float %tmp.98, float* @q3, align 4, !dbg !336 ; [debug line = 208:2]
  ret void, !dbg !337                             ; [debug line = 209:1]
}

; [#uses=0]
define void @MadgwickAHRSupdate(float %gx, float %gy, float %gz, float %ax, float %ay, float %az, float %mx, float %my, float %mz) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float %gx) nounwind, !map !338
  call void (...)* @_ssdm_op_SpecBitsMap(float %gy) nounwind, !map !344
  call void (...)* @_ssdm_op_SpecBitsMap(float %gz) nounwind, !map !348
  call void (...)* @_ssdm_op_SpecBitsMap(float %ax) nounwind, !map !352
  call void (...)* @_ssdm_op_SpecBitsMap(float %ay) nounwind, !map !356
  call void (...)* @_ssdm_op_SpecBitsMap(float %az) nounwind, !map !360
  call void (...)* @_ssdm_op_SpecBitsMap(float %mx) nounwind, !map !364
  call void (...)* @_ssdm_op_SpecBitsMap(float %my) nounwind, !map !368
  call void (...)* @_ssdm_op_SpecBitsMap(float %mz) nounwind, !map !372
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @MadgwickAHRSupdate.str) nounwind
  call void @llvm.dbg.value(metadata !{float %gx}, i64 0, metadata !376), !dbg !380 ; [debug line = 44:31] [debug variable = gx]
  call void @llvm.dbg.value(metadata !{float %gy}, i64 0, metadata !381), !dbg !382 ; [debug line = 44:41] [debug variable = gy]
  call void @llvm.dbg.value(metadata !{float %gz}, i64 0, metadata !383), !dbg !384 ; [debug line = 44:51] [debug variable = gz]
  call void @llvm.dbg.value(metadata !{float %ax}, i64 0, metadata !385), !dbg !386 ; [debug line = 44:61] [debug variable = ax]
  call void @llvm.dbg.value(metadata !{float %ay}, i64 0, metadata !387), !dbg !388 ; [debug line = 44:71] [debug variable = ay]
  call void @llvm.dbg.value(metadata !{float %az}, i64 0, metadata !389), !dbg !390 ; [debug line = 44:81] [debug variable = az]
  call void @llvm.dbg.value(metadata !{float %mx}, i64 0, metadata !391), !dbg !392 ; [debug line = 44:91] [debug variable = mx]
  call void @llvm.dbg.value(metadata !{float %my}, i64 0, metadata !393), !dbg !394 ; [debug line = 44:101] [debug variable = my]
  call void @llvm.dbg.value(metadata !{float %mz}, i64 0, metadata !395), !dbg !396 ; [debug line = 44:111] [debug variable = mz]
  %mx_to_int = bitcast float %mx to i32           ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %mx_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.121 = trunc i32 %mx_to_int to i23          ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.121, 0               ; [#uses=1 type=i1]
  %tmp.122 = or i1 %notrhs, %notlhs               ; [#uses=1 type=i1]
  %tmp.123 = fcmp oeq float %mx, 0.000000e+00, !dbg !397 ; [#uses=1 type=i1] [debug line = 52:2]
  %tmp.128 = and i1 %tmp.122, %tmp.123, !dbg !397 ; [#uses=1 type=i1] [debug line = 52:2]
  %my_to_int = bitcast float %my to i32           ; [#uses=2 type=i32]
  %tmp.133 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %my_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.297 = trunc i32 %my_to_int to i23          ; [#uses=1 type=i23]
  %notlhs8 = icmp ne i8 %tmp.133, -1              ; [#uses=1 type=i1]
  %notrhs9 = icmp eq i23 %tmp.297, 0              ; [#uses=1 type=i1]
  %tmp.316 = or i1 %notrhs9, %notlhs8             ; [#uses=1 type=i1]
  %tmp.321 = fcmp oeq float %my, 0.000000e+00, !dbg !397 ; [#uses=1 type=i1] [debug line = 52:2]
  %tmp.322 = and i1 %tmp.316, %tmp.321, !dbg !397 ; [#uses=1 type=i1] [debug line = 52:2]
  %mz_to_int = bitcast float %mz to i32           ; [#uses=2 type=i32]
  %tmp.323 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %mz_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.324 = trunc i32 %mz_to_int to i23          ; [#uses=1 type=i23]
  %notlhs1 = icmp ne i8 %tmp.323, -1              ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp.324, 0              ; [#uses=1 type=i1]
  %tmp.325 = or i1 %notrhs1, %notlhs1             ; [#uses=1 type=i1]
  %tmp.326 = fcmp oeq float %mz, 0.000000e+00, !dbg !397 ; [#uses=1 type=i1] [debug line = 52:2]
  %tmp.327 = and i1 %tmp.325, %tmp.326, !dbg !397 ; [#uses=1 type=i1] [debug line = 52:2]
  %tmp1 = and i1 %tmp.322, %tmp.327, !dbg !397    ; [#uses=1 type=i1] [debug line = 52:2]
  %or.cond1 = and i1 %tmp1, %tmp.128, !dbg !397   ; [#uses=1 type=i1] [debug line = 52:2]
  br i1 %or.cond1, label %1, label %2, !dbg !397  ; [debug line = 52:2]

; <label>:1                                       ; preds = %0
  call fastcc void @MadgwickAHRSupdateIMU(float %gx, float %gy, float %gz, float %ax, float %ay, float %az), !dbg !399 ; [debug line = 53:3]
  br label %4, !dbg !401                          ; [debug line = 54:3]

; <label>:2                                       ; preds = %0
  %q1.load = load volatile float* @q1, align 4, !dbg !402 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp.100_to_int = bitcast float %q1.load to i32, !dbg !402 ; [#uses=1 type=i32] [debug line = 58:2]
  %tmp.100_neg = xor i32 %tmp.100_to_int, -2147483648, !dbg !402 ; [#uses=1 type=i32] [debug line = 58:2]
  %tmp. = bitcast i32 %tmp.100_neg to float, !dbg !402 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp.99 = fmul float %tmp., %gx, !dbg !402      ; [#uses=1 type=float] [debug line = 58:2]
  %q2.load = load volatile float* @q2, align 4, !dbg !402 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp.100 = fmul float %q2.load, %gy, !dbg !402  ; [#uses=1 type=float] [debug line = 58:2]
  %tmp.101 = fsub float %tmp.99, %tmp.100, !dbg !402 ; [#uses=1 type=float] [debug line = 58:2]
  %q3.load = load volatile float* @q3, align 4, !dbg !402 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp.102 = fmul float %q3.load, %gz, !dbg !402  ; [#uses=1 type=float] [debug line = 58:2]
  %tmp.103 = fsub float %tmp.101, %tmp.102, !dbg !402 ; [#uses=1 type=float] [debug line = 58:2]
  %qDot1 = fmul float %tmp.103, 5.000000e-01, !dbg !402 ; [#uses=2 type=float] [debug line = 58:2]
  call void @llvm.dbg.value(metadata !{float %qDot1}, i64 0, metadata !403), !dbg !402 ; [debug line = 58:2] [debug variable = qDot1]
  %q0.load = load volatile float* @q0, align 4, !dbg !404 ; [#uses=1 type=float] [debug line = 59:2]
  %tmp.104 = fmul float %q0.load, %gx, !dbg !404  ; [#uses=1 type=float] [debug line = 59:2]
  %q2.load.13 = load volatile float* @q2, align 4, !dbg !404 ; [#uses=1 type=float] [debug line = 59:2]
  %tmp.105 = fmul float %q2.load.13, %gz, !dbg !404 ; [#uses=1 type=float] [debug line = 59:2]
  %tmp.106 = fadd float %tmp.104, %tmp.105, !dbg !404 ; [#uses=1 type=float] [debug line = 59:2]
  %q3.load.12 = load volatile float* @q3, align 4, !dbg !404 ; [#uses=1 type=float] [debug line = 59:2]
  %tmp.107 = fmul float %q3.load.12, %gy, !dbg !404 ; [#uses=1 type=float] [debug line = 59:2]
  %tmp.108 = fsub float %tmp.106, %tmp.107, !dbg !404 ; [#uses=1 type=float] [debug line = 59:2]
  %qDot2 = fmul float %tmp.108, 5.000000e-01, !dbg !404 ; [#uses=2 type=float] [debug line = 59:2]
  call void @llvm.dbg.value(metadata !{float %qDot2}, i64 0, metadata !405), !dbg !404 ; [debug line = 59:2] [debug variable = qDot2]
  %q0.load.11 = load volatile float* @q0, align 4, !dbg !406 ; [#uses=1 type=float] [debug line = 60:2]
  %tmp.109 = fmul float %q0.load.11, %gy, !dbg !406 ; [#uses=1 type=float] [debug line = 60:2]
  %q1.load.13 = load volatile float* @q1, align 4, !dbg !406 ; [#uses=1 type=float] [debug line = 60:2]
  %tmp.110 = fmul float %q1.load.13, %gz, !dbg !406 ; [#uses=1 type=float] [debug line = 60:2]
  %tmp.111 = fsub float %tmp.109, %tmp.110, !dbg !406 ; [#uses=1 type=float] [debug line = 60:2]
  %q3.load.13 = load volatile float* @q3, align 4, !dbg !406 ; [#uses=1 type=float] [debug line = 60:2]
  %tmp.112 = fmul float %q3.load.13, %gx, !dbg !406 ; [#uses=1 type=float] [debug line = 60:2]
  %tmp.113 = fadd float %tmp.111, %tmp.112, !dbg !406 ; [#uses=1 type=float] [debug line = 60:2]
  %qDot3 = fmul float %tmp.113, 5.000000e-01, !dbg !406 ; [#uses=2 type=float] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{float %qDot3}, i64 0, metadata !407), !dbg !406 ; [debug line = 60:2] [debug variable = qDot3]
  %q0.load.12 = load volatile float* @q0, align 4, !dbg !408 ; [#uses=1 type=float] [debug line = 61:2]
  %tmp.114 = fmul float %q0.load.12, %gz, !dbg !408 ; [#uses=1 type=float] [debug line = 61:2]
  %q1.load.14 = load volatile float* @q1, align 4, !dbg !408 ; [#uses=1 type=float] [debug line = 61:2]
  %tmp.115 = fmul float %q1.load.14, %gy, !dbg !408 ; [#uses=1 type=float] [debug line = 61:2]
  %tmp.116 = fadd float %tmp.114, %tmp.115, !dbg !408 ; [#uses=1 type=float] [debug line = 61:2]
  %q2.load.14 = load volatile float* @q2, align 4, !dbg !408 ; [#uses=1 type=float] [debug line = 61:2]
  %tmp.117 = fmul float %q2.load.14, %gx, !dbg !408 ; [#uses=1 type=float] [debug line = 61:2]
  %tmp.118 = fsub float %tmp.116, %tmp.117, !dbg !408 ; [#uses=1 type=float] [debug line = 61:2]
  %qDot4 = fmul float %tmp.118, 5.000000e-01, !dbg !408 ; [#uses=2 type=float] [debug line = 61:2]
  call void @llvm.dbg.value(metadata !{float %qDot4}, i64 0, metadata !409), !dbg !408 ; [debug line = 61:2] [debug variable = qDot4]
  %ax_to_int = bitcast float %ax to i32           ; [#uses=2 type=i32]
  %tmp.328 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ax_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.329 = trunc i32 %ax_to_int to i23          ; [#uses=1 type=i23]
  %notlhs2 = icmp ne i8 %tmp.328, -1              ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp.329, 0              ; [#uses=1 type=i1]
  %tmp.330 = or i1 %notrhs2, %notlhs2             ; [#uses=1 type=i1]
  %tmp.331 = fcmp oeq float %ax, 0.000000e+00, !dbg !410 ; [#uses=1 type=i1] [debug line = 64:2]
  %tmp.332 = and i1 %tmp.330, %tmp.331, !dbg !410 ; [#uses=1 type=i1] [debug line = 64:2]
  %ay_to_int = bitcast float %ay to i32           ; [#uses=2 type=i32]
  %tmp.333 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %ay_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.334 = trunc i32 %ay_to_int to i23          ; [#uses=1 type=i23]
  %notlhs3 = icmp ne i8 %tmp.333, -1              ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp.334, 0              ; [#uses=1 type=i1]
  %tmp.335 = or i1 %notrhs3, %notlhs3             ; [#uses=1 type=i1]
  %tmp.336 = fcmp oeq float %ay, 0.000000e+00, !dbg !410 ; [#uses=1 type=i1] [debug line = 64:2]
  %tmp.337 = and i1 %tmp.335, %tmp.336, !dbg !410 ; [#uses=1 type=i1] [debug line = 64:2]
  %az_to_int = bitcast float %az to i32           ; [#uses=2 type=i32]
  %tmp.338 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %az_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.339 = trunc i32 %az_to_int to i23          ; [#uses=1 type=i23]
  %notlhs4 = icmp ne i8 %tmp.338, -1              ; [#uses=1 type=i1]
  %notrhs4 = icmp eq i23 %tmp.339, 0              ; [#uses=1 type=i1]
  %tmp.340 = or i1 %notrhs4, %notlhs4             ; [#uses=1 type=i1]
  %tmp.341 = fcmp oeq float %az, 0.000000e+00, !dbg !410 ; [#uses=1 type=i1] [debug line = 64:2]
  %tmp.342 = and i1 %tmp.340, %tmp.341, !dbg !410 ; [#uses=1 type=i1] [debug line = 64:2]
  %tmp2 = and i1 %tmp.337, %tmp.342, !dbg !410    ; [#uses=1 type=i1] [debug line = 64:2]
  %or.cond3 = and i1 %tmp2, %tmp.332, !dbg !410   ; [#uses=1 type=i1] [debug line = 64:2]
  br i1 %or.cond3, label %._crit_edge, label %3, !dbg !410 ; [debug line = 64:2]

; <label>:3                                       ; preds = %2
  %tmp.119 = fmul float %ax, %ax, !dbg !411       ; [#uses=1 type=float] [debug line = 67:15]
  %tmp.120 = fmul float %ay, %ay, !dbg !411       ; [#uses=1 type=float] [debug line = 67:15]
  %tmp.124 = fadd float %tmp.119, %tmp.120, !dbg !411 ; [#uses=1 type=float] [debug line = 67:15]
  %tmp.125 = fmul float %az, %az, !dbg !411       ; [#uses=1 type=float] [debug line = 67:15]
  %x.assign = fadd float %tmp.124, %tmp.125, !dbg !411 ; [#uses=2 type=float] [debug line = 67:15]
  call void @llvm.dbg.value(metadata !{float %x.assign}, i64 0, metadata !413), !dbg !414 ; [debug line = 215:21@67:15] [debug variable = x]
  %halfx = fmul float %x.assign, 5.000000e-01, !dbg !415 ; [#uses=1 type=float] [debug line = 216:24@67:15]
  call void @llvm.dbg.value(metadata !{float %halfx}, i64 0, metadata !416), !dbg !415 ; [debug line = 216:24@67:15] [debug variable = halfx]
  %y = bitcast float %x.assign to i32, !dbg !417  ; [#uses=1 type=i32] [debug line = 217:13@67:15]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !418), !dbg !417 ; [debug line = 217:13@67:15] [debug variable = y]
  %tmp.i = lshr i32 %y, 1, !dbg !419              ; [#uses=1 type=i32] [debug line = 220:2@67:15]
  %y.6 = sub i32 1597463007, %tmp.i, !dbg !419    ; [#uses=1 type=i32] [debug line = 220:2@67:15]
  call void @llvm.dbg.value(metadata !{i32 %y.6}, i64 0, metadata !418), !dbg !419 ; [debug line = 220:2@67:15] [debug variable = y]
  %tmp.1.i = bitcast i32 %y.6 to float, !dbg !420 ; [#uses=3 type=float] [debug line = 221:2@67:15]
  %tmp.2.i = fmul float %halfx, %tmp.1.i, !dbg !420 ; [#uses=1 type=float] [debug line = 221:2@67:15]
  %tmp.3.i = fmul float %tmp.2.i, %tmp.1.i, !dbg !420 ; [#uses=1 type=float] [debug line = 221:2@67:15]
  %tmp.4.i = fsub float 1.500000e+00, %tmp.3.i, !dbg !420 ; [#uses=1 type=float] [debug line = 221:2@67:15]
  %recipNorm = fmul float %tmp.1.i, %tmp.4.i, !dbg !420 ; [#uses=3 type=float] [debug line = 221:2@67:15]
  call void @llvm.dbg.value(metadata !{float %recipNorm}, i64 0, metadata !421), !dbg !411 ; [debug line = 67:15] [debug variable = recipNorm]
  %ax.assign = fmul float %recipNorm, %ax, !dbg !422 ; [#uses=1 type=float] [debug line = 68:3]
  call void @llvm.dbg.value(metadata !{float %ax.assign}, i64 0, metadata !385), !dbg !422 ; [debug line = 68:3] [debug variable = ax]
  %ay.assign = fmul float %recipNorm, %ay, !dbg !423 ; [#uses=1 type=float] [debug line = 69:3]
  call void @llvm.dbg.value(metadata !{float %ay.assign}, i64 0, metadata !387), !dbg !423 ; [debug line = 69:3] [debug variable = ay]
  %az.assign = fmul float %recipNorm, %az, !dbg !424 ; [#uses=1 type=float] [debug line = 70:3]
  call void @llvm.dbg.value(metadata !{float %az.assign}, i64 0, metadata !389), !dbg !424 ; [debug line = 70:3] [debug variable = az]
  %tmp.126 = fmul float %mx, %mx, !dbg !425       ; [#uses=1 type=float] [debug line = 73:15]
  %tmp.127 = fmul float %my, %my, !dbg !425       ; [#uses=1 type=float] [debug line = 73:15]
  %tmp.129 = fadd float %tmp.126, %tmp.127, !dbg !425 ; [#uses=1 type=float] [debug line = 73:15]
  %tmp.130 = fmul float %mz, %mz, !dbg !425       ; [#uses=1 type=float] [debug line = 73:15]
  %x.assign.3 = fadd float %tmp.129, %tmp.130, !dbg !425 ; [#uses=2 type=float] [debug line = 73:15]
  call void @llvm.dbg.value(metadata !{float %x.assign.3}, i64 0, metadata !426), !dbg !427 ; [debug line = 215:21@73:15] [debug variable = x]
  %halfx.3 = fmul float %x.assign.3, 5.000000e-01, !dbg !428 ; [#uses=1 type=float] [debug line = 216:24@73:15]
  call void @llvm.dbg.value(metadata !{float %halfx.3}, i64 0, metadata !429), !dbg !428 ; [debug line = 216:24@73:15] [debug variable = halfx]
  %y.7 = bitcast float %x.assign.3 to i32, !dbg !430 ; [#uses=1 type=i32] [debug line = 217:13@73:15]
  call void @llvm.dbg.value(metadata !{i32 %y.7}, i64 0, metadata !431), !dbg !430 ; [debug line = 217:13@73:15] [debug variable = y]
  %tmp.i3 = lshr i32 %y.7, 1, !dbg !432           ; [#uses=1 type=i32] [debug line = 220:2@73:15]
  %y.8 = sub i32 1597463007, %tmp.i3, !dbg !432   ; [#uses=1 type=i32] [debug line = 220:2@73:15]
  call void @llvm.dbg.value(metadata !{i32 %y.8}, i64 0, metadata !431), !dbg !432 ; [debug line = 220:2@73:15] [debug variable = y]
  %tmp.1.i5 = bitcast i32 %y.8 to float, !dbg !433 ; [#uses=3 type=float] [debug line = 221:2@73:15]
  %tmp.2.i6 = fmul float %halfx.3, %tmp.1.i5, !dbg !433 ; [#uses=1 type=float] [debug line = 221:2@73:15]
  %tmp.3.i7 = fmul float %tmp.2.i6, %tmp.1.i5, !dbg !433 ; [#uses=1 type=float] [debug line = 221:2@73:15]
  %tmp.4.i8 = fsub float 1.500000e+00, %tmp.3.i7, !dbg !433 ; [#uses=1 type=float] [debug line = 221:2@73:15]
  %recipNorm.3 = fmul float %tmp.1.i5, %tmp.4.i8, !dbg !433 ; [#uses=3 type=float] [debug line = 221:2@73:15]
  call void @llvm.dbg.value(metadata !{float %recipNorm.3}, i64 0, metadata !421), !dbg !425 ; [debug line = 73:15] [debug variable = recipNorm]
  %mx.assign = fmul float %recipNorm.3, %mx, !dbg !434 ; [#uses=7 type=float] [debug line = 74:3]
  call void @llvm.dbg.value(metadata !{float %mx.assign}, i64 0, metadata !391), !dbg !434 ; [debug line = 74:3] [debug variable = mx]
  %my.assign = fmul float %recipNorm.3, %my, !dbg !435 ; [#uses=8 type=float] [debug line = 75:3]
  call void @llvm.dbg.value(metadata !{float %my.assign}, i64 0, metadata !393), !dbg !435 ; [debug line = 75:3] [debug variable = my]
  %mz.assign = fmul float %recipNorm.3, %mz, !dbg !436 ; [#uses=8 type=float] [debug line = 76:3]
  call void @llvm.dbg.value(metadata !{float %mz.assign}, i64 0, metadata !395), !dbg !436 ; [debug line = 76:3] [debug variable = mz]
  %q0.load.13 = load volatile float* @q0, align 4, !dbg !437 ; [#uses=1 type=float] [debug line = 79:3]
  %tmp.131 = fmul float %q0.load.13, 2.000000e+00, !dbg !437 ; [#uses=1 type=float] [debug line = 79:3]
  %_2q0mx = fmul float %tmp.131, %mx.assign, !dbg !437 ; [#uses=2 type=float] [debug line = 79:3]
  call void @llvm.dbg.value(metadata !{float %_2q0mx}, i64 0, metadata !438), !dbg !437 ; [debug line = 79:3] [debug variable = _2q0mx]
  %q0.load.14 = load volatile float* @q0, align 4, !dbg !439 ; [#uses=1 type=float] [debug line = 80:3]
  %tmp.132 = fmul float %q0.load.14, 2.000000e+00, !dbg !439 ; [#uses=1 type=float] [debug line = 80:3]
  %_2q0my = fmul float %tmp.132, %my.assign, !dbg !439 ; [#uses=2 type=float] [debug line = 80:3]
  call void @llvm.dbg.value(metadata !{float %_2q0my}, i64 0, metadata !440), !dbg !439 ; [debug line = 80:3] [debug variable = _2q0my]
  %q0.load.15 = load volatile float* @q0, align 4, !dbg !441 ; [#uses=1 type=float] [debug line = 81:3]
  %tmp.134 = fmul float %q0.load.15, 2.000000e+00, !dbg !441 ; [#uses=1 type=float] [debug line = 81:3]
  %_2q0mz = fmul float %tmp.134, %mz.assign, !dbg !441 ; [#uses=2 type=float] [debug line = 81:3]
  call void @llvm.dbg.value(metadata !{float %_2q0mz}, i64 0, metadata !442), !dbg !441 ; [debug line = 81:3] [debug variable = _2q0mz]
  %q1.load.15 = load volatile float* @q1, align 4, !dbg !443 ; [#uses=1 type=float] [debug line = 82:3]
  %tmp.135 = fmul float %q1.load.15, 2.000000e+00, !dbg !443 ; [#uses=1 type=float] [debug line = 82:3]
  %_2q1mx = fmul float %tmp.135, %mx.assign, !dbg !443 ; [#uses=2 type=float] [debug line = 82:3]
  call void @llvm.dbg.value(metadata !{float %_2q1mx}, i64 0, metadata !444), !dbg !443 ; [debug line = 82:3] [debug variable = _2q1mx]
  %q0.load.16 = load volatile float* @q0, align 4, !dbg !445 ; [#uses=1 type=float] [debug line = 83:3]
  %_2q0 = fmul float %q0.load.16, 2.000000e+00, !dbg !445 ; [#uses=2 type=float] [debug line = 83:3]
  call void @llvm.dbg.value(metadata !{float %_2q0}, i64 0, metadata !446), !dbg !445 ; [debug line = 83:3] [debug variable = _2q0]
  %q1.load.16 = load volatile float* @q1, align 4, !dbg !447 ; [#uses=1 type=float] [debug line = 84:3]
  %_2q1 = fmul float %q1.load.16, 2.000000e+00, !dbg !447 ; [#uses=4 type=float] [debug line = 84:3]
  call void @llvm.dbg.value(metadata !{float %_2q1}, i64 0, metadata !448), !dbg !447 ; [debug line = 84:3] [debug variable = _2q1]
  %q2.load.15 = load volatile float* @q2, align 4, !dbg !449 ; [#uses=1 type=float] [debug line = 85:3]
  %_2q2 = fmul float %q2.load.15, 2.000000e+00, !dbg !449 ; [#uses=4 type=float] [debug line = 85:3]
  call void @llvm.dbg.value(metadata !{float %_2q2}, i64 0, metadata !450), !dbg !449 ; [debug line = 85:3] [debug variable = _2q2]
  %q3.load.14 = load volatile float* @q3, align 4, !dbg !451 ; [#uses=1 type=float] [debug line = 86:3]
  %_2q3 = fmul float %q3.load.14, 2.000000e+00, !dbg !451 ; [#uses=2 type=float] [debug line = 86:3]
  call void @llvm.dbg.value(metadata !{float %_2q3}, i64 0, metadata !452), !dbg !451 ; [debug line = 86:3] [debug variable = _2q3]
  %q0.load.17 = load volatile float* @q0, align 4, !dbg !453 ; [#uses=1 type=float] [debug line = 87:3]
  %tmp.136 = fmul float %q0.load.17, 2.000000e+00, !dbg !453 ; [#uses=1 type=float] [debug line = 87:3]
  %q2.load.16 = load volatile float* @q2, align 4, !dbg !453 ; [#uses=1 type=float] [debug line = 87:3]
  %_2q0q2 = fmul float %tmp.136, %q2.load.16, !dbg !453 ; [#uses=1 type=float] [debug line = 87:3]
  call void @llvm.dbg.value(metadata !{float %_2q0q2}, i64 0, metadata !454), !dbg !453 ; [debug line = 87:3] [debug variable = _2q0q2]
  %q2.load.17 = load volatile float* @q2, align 4, !dbg !455 ; [#uses=1 type=float] [debug line = 88:3]
  %tmp.137 = fmul float %q2.load.17, 2.000000e+00, !dbg !455 ; [#uses=1 type=float] [debug line = 88:3]
  %q3.load.15 = load volatile float* @q3, align 4, !dbg !455 ; [#uses=1 type=float] [debug line = 88:3]
  %_2q2q3 = fmul float %tmp.137, %q3.load.15, !dbg !455 ; [#uses=1 type=float] [debug line = 88:3]
  call void @llvm.dbg.value(metadata !{float %_2q2q3}, i64 0, metadata !456), !dbg !455 ; [debug line = 88:3] [debug variable = _2q2q3]
  %q0.load.18 = load volatile float* @q0, align 4, !dbg !457 ; [#uses=1 type=float] [debug line = 89:3]
  %q0.load.19 = load volatile float* @q0, align 4, !dbg !457 ; [#uses=1 type=float] [debug line = 89:3]
  %q0q0 = fmul float %q0.load.18, %q0.load.19, !dbg !457 ; [#uses=3 type=float] [debug line = 89:3]
  call void @llvm.dbg.value(metadata !{float %q0q0}, i64 0, metadata !458), !dbg !457 ; [debug line = 89:3] [debug variable = q0q0]
  %q0.load.20 = load volatile float* @q0, align 4, !dbg !459 ; [#uses=1 type=float] [debug line = 90:3]
  %q1.load.17 = load volatile float* @q1, align 4, !dbg !459 ; [#uses=1 type=float] [debug line = 90:3]
  %q0q1 = fmul float %q0.load.20, %q1.load.17, !dbg !459 ; [#uses=2 type=float] [debug line = 90:3]
  call void @llvm.dbg.value(metadata !{float %q0q1}, i64 0, metadata !460), !dbg !459 ; [debug line = 90:3] [debug variable = q0q1]
  %q0.load.21 = load volatile float* @q0, align 4, !dbg !461 ; [#uses=1 type=float] [debug line = 91:3]
  %q2.load.18 = load volatile float* @q2, align 4, !dbg !461 ; [#uses=1 type=float] [debug line = 91:3]
  %q0q2 = fmul float %q0.load.21, %q2.load.18, !dbg !461 ; [#uses=2 type=float] [debug line = 91:3]
  call void @llvm.dbg.value(metadata !{float %q0q2}, i64 0, metadata !462), !dbg !461 ; [debug line = 91:3] [debug variable = q0q2]
  %q0.load.22 = load volatile float* @q0, align 4, !dbg !463 ; [#uses=1 type=float] [debug line = 92:3]
  %q3.load.16 = load volatile float* @q3, align 4, !dbg !463 ; [#uses=1 type=float] [debug line = 92:3]
  %q0q3 = fmul float %q0.load.22, %q3.load.16, !dbg !463 ; [#uses=1 type=float] [debug line = 92:3]
  call void @llvm.dbg.value(metadata !{float %q0q3}, i64 0, metadata !464), !dbg !463 ; [debug line = 92:3] [debug variable = q0q3]
  %q1.load.18 = load volatile float* @q1, align 4, !dbg !465 ; [#uses=1 type=float] [debug line = 93:3]
  %q1.load.19 = load volatile float* @q1, align 4, !dbg !465 ; [#uses=1 type=float] [debug line = 93:3]
  %q1q1 = fmul float %q1.load.18, %q1.load.19, !dbg !465 ; [#uses=5 type=float] [debug line = 93:3]
  call void @llvm.dbg.value(metadata !{float %q1q1}, i64 0, metadata !466), !dbg !465 ; [debug line = 93:3] [debug variable = q1q1]
  %q1.load.20 = load volatile float* @q1, align 4, !dbg !467 ; [#uses=1 type=float] [debug line = 94:3]
  %q2.load.19 = load volatile float* @q2, align 4, !dbg !467 ; [#uses=1 type=float] [debug line = 94:3]
  %q1q2 = fmul float %q1.load.20, %q2.load.19, !dbg !467 ; [#uses=1 type=float] [debug line = 94:3]
  call void @llvm.dbg.value(metadata !{float %q1q2}, i64 0, metadata !468), !dbg !467 ; [debug line = 94:3] [debug variable = q1q2]
  %q1.load.21 = load volatile float* @q1, align 4, !dbg !469 ; [#uses=1 type=float] [debug line = 95:3]
  %q3.load.17 = load volatile float* @q3, align 4, !dbg !469 ; [#uses=1 type=float] [debug line = 95:3]
  %q1q3 = fmul float %q1.load.21, %q3.load.17, !dbg !469 ; [#uses=3 type=float] [debug line = 95:3]
  call void @llvm.dbg.value(metadata !{float %q1q3}, i64 0, metadata !470), !dbg !469 ; [debug line = 95:3] [debug variable = q1q3]
  %q2.load.20 = load volatile float* @q2, align 4, !dbg !471 ; [#uses=1 type=float] [debug line = 96:3]
  %q2.load.21 = load volatile float* @q2, align 4, !dbg !471 ; [#uses=1 type=float] [debug line = 96:3]
  %q2q2 = fmul float %q2.load.20, %q2.load.21, !dbg !471 ; [#uses=6 type=float] [debug line = 96:3]
  call void @llvm.dbg.value(metadata !{float %q2q2}, i64 0, metadata !472), !dbg !471 ; [debug line = 96:3] [debug variable = q2q2]
  %q2.load.22 = load volatile float* @q2, align 4, !dbg !473 ; [#uses=1 type=float] [debug line = 97:3]
  %q3.load.18 = load volatile float* @q3, align 4, !dbg !473 ; [#uses=1 type=float] [debug line = 97:3]
  %q2q3 = fmul float %q2.load.22, %q3.load.18, !dbg !473 ; [#uses=1 type=float] [debug line = 97:3]
  call void @llvm.dbg.value(metadata !{float %q2q3}, i64 0, metadata !474), !dbg !473 ; [debug line = 97:3] [debug variable = q2q3]
  %q3.load.19 = load volatile float* @q3, align 4, !dbg !475 ; [#uses=1 type=float] [debug line = 98:3]
  %q3.load.20 = load volatile float* @q3, align 4, !dbg !475 ; [#uses=1 type=float] [debug line = 98:3]
  %q3q3 = fmul float %q3.load.19, %q3.load.20, !dbg !475 ; [#uses=4 type=float] [debug line = 98:3]
  call void @llvm.dbg.value(metadata !{float %q3q3}, i64 0, metadata !476), !dbg !475 ; [debug line = 98:3] [debug variable = q3q3]
  %tmp.138 = fmul float %mx.assign, %q0q0, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %q3.load.21 = load volatile float* @q3, align 4, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.139 = fmul float %_2q0my, %q3.load.21, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.140 = fsub float %tmp.138, %tmp.139, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %q2.load.23 = load volatile float* @q2, align 4, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.141 = fmul float %_2q0mz, %q2.load.23, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.142 = fadd float %tmp.140, %tmp.141, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.143 = fmul float %mx.assign, %q1q1, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.144 = fadd float %tmp.142, %tmp.143, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.145 = fmul float %_2q1, %my.assign, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %q2.load.24 = load volatile float* @q2, align 4, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.146 = fmul float %tmp.145, %q2.load.24, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.147 = fadd float %tmp.144, %tmp.146, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.148 = fmul float %_2q1, %mz.assign, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %q3.load.22 = load volatile float* @q3, align 4, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.149 = fmul float %tmp.148, %q3.load.22, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.150 = fadd float %tmp.147, %tmp.149, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.151 = fmul float %mx.assign, %q2q2, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.152 = fsub float %tmp.150, %tmp.151, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %tmp.153 = fmul float %mx.assign, %q3q3, !dbg !477 ; [#uses=1 type=float] [debug line = 101:3]
  %hx = fsub float %tmp.152, %tmp.153, !dbg !477  ; [#uses=2 type=float] [debug line = 101:3]
  call void @llvm.dbg.value(metadata !{float %hx}, i64 0, metadata !478), !dbg !477 ; [debug line = 101:3] [debug variable = hx]
  %q3.load.23 = load volatile float* @q3, align 4, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.154 = fmul float %_2q0mx, %q3.load.23, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.155 = fmul float %my.assign, %q0q0, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.156 = fadd float %tmp.154, %tmp.155, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %q1.load.22 = load volatile float* @q1, align 4, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.157 = fmul float %_2q0mz, %q1.load.22, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.158 = fsub float %tmp.156, %tmp.157, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %q2.load.25 = load volatile float* @q2, align 4, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.159 = fmul float %_2q1mx, %q2.load.25, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.160 = fadd float %tmp.158, %tmp.159, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.161 = fmul float %my.assign, %q1q1, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.162 = fsub float %tmp.160, %tmp.161, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.163 = fmul float %my.assign, %q2q2, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.164 = fadd float %tmp.162, %tmp.163, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.165 = fmul float %_2q2, %mz.assign, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %q3.load.24 = load volatile float* @q3, align 4, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.166 = fmul float %tmp.165, %q3.load.24, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.167 = fadd float %tmp.164, %tmp.166, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %tmp.168 = fmul float %my.assign, %q3q3, !dbg !479 ; [#uses=1 type=float] [debug line = 102:3]
  %hy = fsub float %tmp.167, %tmp.168, !dbg !479  ; [#uses=2 type=float] [debug line = 102:3]
  call void @llvm.dbg.value(metadata !{float %hy}, i64 0, metadata !480), !dbg !479 ; [debug line = 102:3] [debug variable = hy]
  %tmp.169 = fmul float %hx, %hx, !dbg !481       ; [#uses=1 type=float] [debug line = 103:10]
  %tmp.170 = fmul float %hy, %hy, !dbg !481       ; [#uses=1 type=float] [debug line = 103:10]
  %tmp.171 = fadd float %tmp.169, %tmp.170, !dbg !481 ; [#uses=1 type=float] [debug line = 103:10]
  %_2bx = call float @llvm.sqrt.f32(float %tmp.171), !dbg !481 ; [#uses=11 type=float] [debug line = 103:10]
  call void @llvm.dbg.value(metadata !{float %_2bx}, i64 0, metadata !482), !dbg !481 ; [debug line = 103:10] [debug variable = _2bx]
  %tmp.174_to_int = bitcast float %_2q0mx to i32, !dbg !483 ; [#uses=1 type=i32] [debug line = 104:3]
  %tmp.174_neg = xor i32 %tmp.174_to_int, -2147483648, !dbg !483 ; [#uses=1 type=i32] [debug line = 104:3]
  %tmp.172 = bitcast i32 %tmp.174_neg to float, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %q2.load.26 = load volatile float* @q2, align 4, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.173 = fmul float %q2.load.26, %tmp.172, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %q1.load.23 = load volatile float* @q1, align 4, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.174 = fmul float %_2q0my, %q1.load.23, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.175 = fadd float %tmp.173, %tmp.174, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.176 = fmul float %mz.assign, %q0q0, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.177 = fadd float %tmp.175, %tmp.176, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %q3.load.25 = load volatile float* @q3, align 4, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.178 = fmul float %_2q1mx, %q3.load.25, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.179 = fadd float %tmp.177, %tmp.178, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.180 = fmul float %mz.assign, %q1q1, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.181 = fsub float %tmp.179, %tmp.180, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.182 = fmul float %_2q2, %my.assign, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %q3.load.26 = load volatile float* @q3, align 4, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.183 = fmul float %tmp.182, %q3.load.26, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.184 = fadd float %tmp.181, %tmp.183, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.185 = fmul float %mz.assign, %q2q2, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.186 = fsub float %tmp.184, %tmp.185, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %tmp.187 = fmul float %mz.assign, %q3q3, !dbg !483 ; [#uses=1 type=float] [debug line = 104:3]
  %_2bz = fadd float %tmp.186, %tmp.187, !dbg !483 ; [#uses=12 type=float] [debug line = 104:3]
  call void @llvm.dbg.value(metadata !{float %_2bz}, i64 0, metadata !484), !dbg !483 ; [debug line = 104:3] [debug variable = _2bz]
  %_4bx = fmul float %_2bx, 2.000000e+00, !dbg !485 ; [#uses=1 type=float] [debug line = 105:3]
  call void @llvm.dbg.value(metadata !{float %_4bx}, i64 0, metadata !486), !dbg !485 ; [debug line = 105:3] [debug variable = _4bx]
  %_4bz = fmul float %_2bz, 2.000000e+00, !dbg !487 ; [#uses=2 type=float] [debug line = 106:3]
  call void @llvm.dbg.value(metadata !{float %_4bz}, i64 0, metadata !488), !dbg !487 ; [debug line = 106:3] [debug variable = _4bz]
  %tmp.190_to_int = bitcast float %_2q2 to i32, !dbg !489 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp.190_neg = xor i32 %tmp.190_to_int, -2147483648, !dbg !489 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp.188 = bitcast i32 %tmp.190_neg to float, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.189 = fmul float %q1q3, 2.000000e+00, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.190 = fsub float %tmp.189, %_2q0q2, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.191 = fsub float %tmp.190, %ax.assign, !dbg !489 ; [#uses=4 type=float] [debug line = 109:3]
  %tmp.192 = fmul float %tmp.191, %tmp.188, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.193 = fmul float %q0q1, 2.000000e+00, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.194 = fadd float %tmp.193, %_2q2q3, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.195 = fsub float %tmp.194, %ay.assign, !dbg !489 ; [#uses=4 type=float] [debug line = 109:3]
  %tmp.196 = fmul float %_2q1, %tmp.195, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.197 = fadd float %tmp.192, %tmp.196, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %q2.load.27 = load volatile float* @q2, align 4, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.198 = fmul float %_2bz, %q2.load.27, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.199 = fsub float 5.000000e-01, %q2q2, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.200 = fsub float %tmp.199, %q3q3, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.201 = fmul float %_2bx, %tmp.200, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.202 = fsub float %q1q3, %q0q2, !dbg !489   ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.203 = fmul float %_2bz, %tmp.202, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.204 = fadd float %tmp.201, %tmp.203, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.205 = fsub float %tmp.204, %mx.assign, !dbg !489 ; [#uses=4 type=float] [debug line = 109:3]
  %tmp.206 = fmul float %tmp.198, %tmp.205, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.207 = fsub float %tmp.197, %tmp.206, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.210_to_int = bitcast float %_2bx to i32, !dbg !489 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp.210_neg = xor i32 %tmp.210_to_int, -2147483648, !dbg !489 ; [#uses=1 type=i32] [debug line = 109:3]
  %tmp.208 = bitcast i32 %tmp.210_neg to float, !dbg !489 ; [#uses=2 type=float] [debug line = 109:3]
  %q3.load.27 = load volatile float* @q3, align 4, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.209 = fmul float %q3.load.27, %tmp.208, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %q1.load.24 = load volatile float* @q1, align 4, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.210 = fmul float %_2bz, %q1.load.24, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.211 = fadd float %tmp.209, %tmp.210, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.212 = fsub float %q1q2, %q0q3, !dbg !489   ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.213 = fmul float %_2bx, %tmp.212, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.214 = fadd float %q0q1, %q2q3, !dbg !489   ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.215 = fmul float %_2bz, %tmp.214, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.216 = fadd float %tmp.213, %tmp.215, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.217 = fsub float %tmp.216, %my.assign, !dbg !489 ; [#uses=4 type=float] [debug line = 109:3]
  %tmp.218 = fmul float %tmp.211, %tmp.217, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.219 = fadd float %tmp.207, %tmp.218, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %q2.load.28 = load volatile float* @q2, align 4, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.220 = fmul float %_2bx, %q2.load.28, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.221 = fadd float %q0q2, %q1q3, !dbg !489   ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.222 = fmul float %_2bx, %tmp.221, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.223 = fsub float 5.000000e-01, %q1q1, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.224 = fsub float %tmp.223, %q2q2, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.225 = fmul float %_2bz, %tmp.224, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.226 = fadd float %tmp.222, %tmp.225, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.227 = fsub float %tmp.226, %mz.assign, !dbg !489 ; [#uses=4 type=float] [debug line = 109:3]
  %tmp.228 = fmul float %tmp.220, %tmp.227, !dbg !489 ; [#uses=1 type=float] [debug line = 109:3]
  %s0 = fadd float %tmp.219, %tmp.228, !dbg !489  ; [#uses=3 type=float] [debug line = 109:3]
  call void @llvm.dbg.value(metadata !{float %s0}, i64 0, metadata !490), !dbg !489 ; [debug line = 109:3] [debug variable = s0]
  %tmp.229 = fmul float %_2q3, %tmp.191, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.230 = fmul float %_2q0, %tmp.195, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.231 = fadd float %tmp.229, %tmp.230, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %q1.load.25 = load volatile float* @q1, align 4, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.232 = fmul float %q1.load.25, 4.000000e+00, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.233 = fmul float %q1q1, 2.000000e+00, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.234 = fsub float 1.000000e+00, %tmp.233, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.235 = fmul float %q2q2, 2.000000e+00, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.236 = fsub float %tmp.234, %tmp.235, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.237 = fsub float %tmp.236, %az.assign, !dbg !491 ; [#uses=2 type=float] [debug line = 110:3]
  %tmp.238 = fmul float %tmp.232, %tmp.237, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.239 = fsub float %tmp.231, %tmp.238, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %q3.load.28 = load volatile float* @q3, align 4, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.240 = fmul float %_2bz, %q3.load.28, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.241 = fmul float %tmp.240, %tmp.205, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.242 = fadd float %tmp.239, %tmp.241, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %q2.load.29 = load volatile float* @q2, align 4, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.243 = fmul float %_2bx, %q2.load.29, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %q0.load.23 = load volatile float* @q0, align 4, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.244 = fmul float %_2bz, %q0.load.23, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.245 = fadd float %tmp.243, %tmp.244, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.246 = fmul float %tmp.245, %tmp.217, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.247 = fadd float %tmp.242, %tmp.246, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %q3.load.29 = load volatile float* @q3, align 4, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.248 = fmul float %_2bx, %q3.load.29, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %q1.load.26 = load volatile float* @q1, align 4, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.249 = fmul float %_4bz, %q1.load.26, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.250 = fsub float %tmp.248, %tmp.249, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %tmp.251 = fmul float %tmp.250, %tmp.227, !dbg !491 ; [#uses=1 type=float] [debug line = 110:3]
  %s1 = fadd float %tmp.247, %tmp.251, !dbg !491  ; [#uses=3 type=float] [debug line = 110:3]
  call void @llvm.dbg.value(metadata !{float %s1}, i64 0, metadata !492), !dbg !491 ; [debug line = 110:3] [debug variable = s1]
  %tmp.254_to_int = bitcast float %_2q0 to i32, !dbg !493 ; [#uses=1 type=i32] [debug line = 111:3]
  %tmp.254_neg = xor i32 %tmp.254_to_int, -2147483648, !dbg !493 ; [#uses=1 type=i32] [debug line = 111:3]
  %tmp.252 = bitcast i32 %tmp.254_neg to float, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.253 = fmul float %tmp.191, %tmp.252, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.254 = fmul float %_2q3, %tmp.195, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.255 = fadd float %tmp.253, %tmp.254, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %q2.load.30 = load volatile float* @q2, align 4, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.256 = fmul float %q2.load.30, 4.000000e+00, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.257 = fmul float %tmp.256, %tmp.237, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.258 = fsub float %tmp.255, %tmp.257, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.261_to_int = bitcast float %_4bx to i32, !dbg !493 ; [#uses=1 type=i32] [debug line = 111:3]
  %tmp.261_neg = xor i32 %tmp.261_to_int, -2147483648, !dbg !493 ; [#uses=1 type=i32] [debug line = 111:3]
  %tmp.259 = bitcast i32 %tmp.261_neg to float, !dbg !493 ; [#uses=2 type=float] [debug line = 111:3]
  %q2.load.31 = load volatile float* @q2, align 4, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.260 = fmul float %q2.load.31, %tmp.259, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %q0.load.24 = load volatile float* @q0, align 4, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.261 = fmul float %_2bz, %q0.load.24, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.262 = fsub float %tmp.260, %tmp.261, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.263 = fmul float %tmp.262, %tmp.205, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.264 = fadd float %tmp.258, %tmp.263, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %q1.load.27 = load volatile float* @q1, align 4, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.265 = fmul float %_2bx, %q1.load.27, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %q3.load.30 = load volatile float* @q3, align 4, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.266 = fmul float %_2bz, %q3.load.30, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.267 = fadd float %tmp.265, %tmp.266, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.268 = fmul float %tmp.267, %tmp.217, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.269 = fadd float %tmp.264, %tmp.268, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %q0.load.25 = load volatile float* @q0, align 4, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.270 = fmul float %_2bx, %q0.load.25, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %q2.load.32 = load volatile float* @q2, align 4, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.271 = fmul float %_4bz, %q2.load.32, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.272 = fsub float %tmp.270, %tmp.271, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.273 = fmul float %tmp.272, %tmp.227, !dbg !493 ; [#uses=1 type=float] [debug line = 111:3]
  %s2 = fadd float %tmp.269, %tmp.273, !dbg !493  ; [#uses=3 type=float] [debug line = 111:3]
  call void @llvm.dbg.value(metadata !{float %s2}, i64 0, metadata !494), !dbg !493 ; [debug line = 111:3] [debug variable = s2]
  %tmp.274 = fmul float %_2q1, %tmp.191, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.275 = fmul float %_2q2, %tmp.195, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.276 = fadd float %tmp.274, %tmp.275, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %q3.load.31 = load volatile float* @q3, align 4, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.277 = fmul float %q3.load.31, %tmp.259, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %q1.load.28 = load volatile float* @q1, align 4, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.278 = fmul float %_2bz, %q1.load.28, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.279 = fadd float %tmp.277, %tmp.278, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.280 = fmul float %tmp.279, %tmp.205, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.281 = fadd float %tmp.276, %tmp.280, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %q0.load.26 = load volatile float* @q0, align 4, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.282 = fmul float %q0.load.26, %tmp.208, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %q2.load.33 = load volatile float* @q2, align 4, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.283 = fmul float %_2bz, %q2.load.33, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.284 = fadd float %tmp.282, %tmp.283, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.285 = fmul float %tmp.284, %tmp.217, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.286 = fadd float %tmp.281, %tmp.285, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %q1.load.29 = load volatile float* @q1, align 4, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.287 = fmul float %_2bx, %q1.load.29, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %tmp.288 = fmul float %tmp.287, %tmp.227, !dbg !495 ; [#uses=1 type=float] [debug line = 112:3]
  %s3 = fadd float %tmp.286, %tmp.288, !dbg !495  ; [#uses=3 type=float] [debug line = 112:3]
  call void @llvm.dbg.value(metadata !{float %s3}, i64 0, metadata !496), !dbg !495 ; [debug line = 112:3] [debug variable = s3]
  %tmp.289 = fmul float %s0, %s0, !dbg !497       ; [#uses=1 type=float] [debug line = 113:15]
  %tmp.290 = fmul float %s1, %s1, !dbg !497       ; [#uses=1 type=float] [debug line = 113:15]
  %tmp.291 = fadd float %tmp.289, %tmp.290, !dbg !497 ; [#uses=1 type=float] [debug line = 113:15]
  %tmp.292 = fmul float %s2, %s2, !dbg !497       ; [#uses=1 type=float] [debug line = 113:15]
  %tmp.293 = fadd float %tmp.291, %tmp.292, !dbg !497 ; [#uses=1 type=float] [debug line = 113:15]
  %tmp.294 = fmul float %s3, %s3, !dbg !497       ; [#uses=1 type=float] [debug line = 113:15]
  %x.assign.4 = fadd float %tmp.293, %tmp.294, !dbg !497 ; [#uses=2 type=float] [debug line = 113:15]
  call void @llvm.dbg.value(metadata !{float %x.assign.4}, i64 0, metadata !498), !dbg !499 ; [debug line = 215:21@113:15] [debug variable = x]
  %halfx.4 = fmul float %x.assign.4, 5.000000e-01, !dbg !500 ; [#uses=1 type=float] [debug line = 216:24@113:15]
  call void @llvm.dbg.value(metadata !{float %halfx.4}, i64 0, metadata !501), !dbg !500 ; [debug line = 216:24@113:15] [debug variable = halfx]
  %y.9 = bitcast float %x.assign.4 to i32, !dbg !502 ; [#uses=1 type=i32] [debug line = 217:13@113:15]
  call void @llvm.dbg.value(metadata !{i32 %y.9}, i64 0, metadata !503), !dbg !502 ; [debug line = 217:13@113:15] [debug variable = y]
  %tmp.i2 = lshr i32 %y.9, 1, !dbg !504           ; [#uses=1 type=i32] [debug line = 220:2@113:15]
  %y.10 = sub i32 1597463007, %tmp.i2, !dbg !504  ; [#uses=1 type=i32] [debug line = 220:2@113:15]
  call void @llvm.dbg.value(metadata !{i32 %y.10}, i64 0, metadata !503), !dbg !504 ; [debug line = 220:2@113:15] [debug variable = y]
  %tmp.1.i2 = bitcast i32 %y.10 to float, !dbg !505 ; [#uses=3 type=float] [debug line = 221:2@113:15]
  %tmp.2.i2 = fmul float %halfx.4, %tmp.1.i2, !dbg !505 ; [#uses=1 type=float] [debug line = 221:2@113:15]
  %tmp.3.i2 = fmul float %tmp.2.i2, %tmp.1.i2, !dbg !505 ; [#uses=1 type=float] [debug line = 221:2@113:15]
  %tmp.4.i2 = fsub float 1.500000e+00, %tmp.3.i2, !dbg !505 ; [#uses=1 type=float] [debug line = 221:2@113:15]
  %recipNorm.4 = fmul float %tmp.1.i2, %tmp.4.i2, !dbg !505 ; [#uses=4 type=float] [debug line = 221:2@113:15]
  call void @llvm.dbg.value(metadata !{float %recipNorm.4}, i64 0, metadata !421), !dbg !497 ; [debug line = 113:15] [debug variable = recipNorm]
  %s0.2 = fmul float %s0, %recipNorm.4, !dbg !506 ; [#uses=1 type=float] [debug line = 114:3]
  call void @llvm.dbg.value(metadata !{float %s0.2}, i64 0, metadata !490), !dbg !506 ; [debug line = 114:3] [debug variable = s0]
  %s1.2 = fmul float %s1, %recipNorm.4, !dbg !507 ; [#uses=1 type=float] [debug line = 115:3]
  call void @llvm.dbg.value(metadata !{float %s1.2}, i64 0, metadata !492), !dbg !507 ; [debug line = 115:3] [debug variable = s1]
  %s2.2 = fmul float %s2, %recipNorm.4, !dbg !508 ; [#uses=1 type=float] [debug line = 116:3]
  call void @llvm.dbg.value(metadata !{float %s2.2}, i64 0, metadata !494), !dbg !508 ; [debug line = 116:3] [debug variable = s2]
  %s3.2 = fmul float %s3, %recipNorm.4, !dbg !509 ; [#uses=1 type=float] [debug line = 117:3]
  call void @llvm.dbg.value(metadata !{float %s3.2}, i64 0, metadata !496), !dbg !509 ; [debug line = 117:3] [debug variable = s3]
  %beta.load = load volatile float* @beta, align 4, !dbg !510 ; [#uses=1 type=float] [debug line = 120:3]
  %tmp.295 = fmul float %beta.load, %s0.2, !dbg !510 ; [#uses=1 type=float] [debug line = 120:3]
  %qDot1.2 = fsub float %qDot1, %tmp.295, !dbg !510 ; [#uses=1 type=float] [debug line = 120:3]
  call void @llvm.dbg.value(metadata !{float %qDot1.2}, i64 0, metadata !403), !dbg !510 ; [debug line = 120:3] [debug variable = qDot1]
  %beta.load.4 = load volatile float* @beta, align 4, !dbg !511 ; [#uses=1 type=float] [debug line = 121:3]
  %tmp.296 = fmul float %beta.load.4, %s1.2, !dbg !511 ; [#uses=1 type=float] [debug line = 121:3]
  %qDot2.2 = fsub float %qDot2, %tmp.296, !dbg !511 ; [#uses=1 type=float] [debug line = 121:3]
  call void @llvm.dbg.value(metadata !{float %qDot2.2}, i64 0, metadata !405), !dbg !511 ; [debug line = 121:3] [debug variable = qDot2]
  %beta.load.5 = load volatile float* @beta, align 4, !dbg !512 ; [#uses=1 type=float] [debug line = 122:3]
  %tmp.298 = fmul float %beta.load.5, %s2.2, !dbg !512 ; [#uses=1 type=float] [debug line = 122:3]
  %qDot3.2 = fsub float %qDot3, %tmp.298, !dbg !512 ; [#uses=1 type=float] [debug line = 122:3]
  call void @llvm.dbg.value(metadata !{float %qDot3.2}, i64 0, metadata !407), !dbg !512 ; [debug line = 122:3] [debug variable = qDot3]
  %beta.load.6 = load volatile float* @beta, align 4, !dbg !513 ; [#uses=1 type=float] [debug line = 123:3]
  %tmp.299 = fmul float %beta.load.6, %s3.2, !dbg !513 ; [#uses=1 type=float] [debug line = 123:3]
  %qDot4.2 = fsub float %qDot4, %tmp.299, !dbg !513 ; [#uses=1 type=float] [debug line = 123:3]
  call void @llvm.dbg.value(metadata !{float %qDot4.2}, i64 0, metadata !409), !dbg !513 ; [debug line = 123:3] [debug variable = qDot4]
  br label %._crit_edge, !dbg !514                ; [debug line = 124:2]

._crit_edge:                                      ; preds = %3, %2
  %qDot = phi float [ %qDot1.2, %3 ], [ %qDot1, %2 ] ; [#uses=1 type=float]
  %qDot8 = phi float [ %qDot2.2, %3 ], [ %qDot2, %2 ] ; [#uses=1 type=float]
  %qDot9 = phi float [ %qDot3.2, %3 ], [ %qDot3, %2 ] ; [#uses=1 type=float]
  %qDot5 = phi float [ %qDot4.2, %3 ], [ %qDot4, %2 ] ; [#uses=1 type=float]
  %tmp.300 = fmul float %qDot, 1.953125e-03, !dbg !515 ; [#uses=1 type=float] [debug line = 127:2]
  %q0.load.27 = load volatile float* @q0, align 4, !dbg !515 ; [#uses=1 type=float] [debug line = 127:2]
  %tmp.301 = fadd float %q0.load.27, %tmp.300, !dbg !515 ; [#uses=1 type=float] [debug line = 127:2]
  store volatile float %tmp.301, float* @q0, align 4, !dbg !515 ; [debug line = 127:2]
  %tmp.302 = fmul float %qDot8, 1.953125e-03, !dbg !516 ; [#uses=1 type=float] [debug line = 128:2]
  %q1.load.30 = load volatile float* @q1, align 4, !dbg !516 ; [#uses=1 type=float] [debug line = 128:2]
  %tmp.303 = fadd float %q1.load.30, %tmp.302, !dbg !516 ; [#uses=1 type=float] [debug line = 128:2]
  store volatile float %tmp.303, float* @q1, align 4, !dbg !516 ; [debug line = 128:2]
  %tmp.304 = fmul float %qDot9, 1.953125e-03, !dbg !517 ; [#uses=1 type=float] [debug line = 129:2]
  %q2.load.34 = load volatile float* @q2, align 4, !dbg !517 ; [#uses=1 type=float] [debug line = 129:2]
  %tmp.305 = fadd float %q2.load.34, %tmp.304, !dbg !517 ; [#uses=1 type=float] [debug line = 129:2]
  store volatile float %tmp.305, float* @q2, align 4, !dbg !517 ; [debug line = 129:2]
  %tmp.306 = fmul float %qDot5, 1.953125e-03, !dbg !518 ; [#uses=1 type=float] [debug line = 130:2]
  %q3.load.32 = load volatile float* @q3, align 4, !dbg !518 ; [#uses=1 type=float] [debug line = 130:2]
  %tmp.307 = fadd float %q3.load.32, %tmp.306, !dbg !518 ; [#uses=1 type=float] [debug line = 130:2]
  store volatile float %tmp.307, float* @q3, align 4, !dbg !518 ; [debug line = 130:2]
  %q0.load.28 = load volatile float* @q0, align 4, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %q0.load.29 = load volatile float* @q0, align 4, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp.308 = fmul float %q0.load.28, %q0.load.29, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %q1.load.31 = load volatile float* @q1, align 4, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %q1.load.32 = load volatile float* @q1, align 4, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp.309 = fmul float %q1.load.31, %q1.load.32, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp.310 = fadd float %tmp.308, %tmp.309, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %q2.load.35 = load volatile float* @q2, align 4, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %q2.load.36 = load volatile float* @q2, align 4, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp.311 = fmul float %q2.load.35, %q2.load.36, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp.312 = fadd float %tmp.310, %tmp.311, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %q3.load.33 = load volatile float* @q3, align 4, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %q3.load.34 = load volatile float* @q3, align 4, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %tmp.313 = fmul float %q3.load.33, %q3.load.34, !dbg !519 ; [#uses=1 type=float] [debug line = 133:14]
  %x.assign.5 = fadd float %tmp.312, %tmp.313, !dbg !519 ; [#uses=2 type=float] [debug line = 133:14]
  call void @llvm.dbg.value(metadata !{float %x.assign.5}, i64 0, metadata !520), !dbg !521 ; [debug line = 215:21@133:14] [debug variable = x]
  %halfx.5 = fmul float %x.assign.5, 5.000000e-01, !dbg !522 ; [#uses=1 type=float] [debug line = 216:24@133:14]
  call void @llvm.dbg.value(metadata !{float %halfx.5}, i64 0, metadata !523), !dbg !522 ; [debug line = 216:24@133:14] [debug variable = halfx]
  %y.11 = bitcast float %x.assign.5 to i32, !dbg !524 ; [#uses=1 type=i32] [debug line = 217:13@133:14]
  call void @llvm.dbg.value(metadata !{i32 %y.11}, i64 0, metadata !525), !dbg !524 ; [debug line = 217:13@133:14] [debug variable = y]
  %tmp.i4 = lshr i32 %y.11, 1, !dbg !526          ; [#uses=1 type=i32] [debug line = 220:2@133:14]
  %y.12 = sub i32 1597463007, %tmp.i4, !dbg !526  ; [#uses=1 type=i32] [debug line = 220:2@133:14]
  call void @llvm.dbg.value(metadata !{i32 %y.12}, i64 0, metadata !525), !dbg !526 ; [debug line = 220:2@133:14] [debug variable = y]
  %tmp.1.i3 = bitcast i32 %y.12 to float, !dbg !527 ; [#uses=3 type=float] [debug line = 221:2@133:14]
  %tmp.2.i3 = fmul float %halfx.5, %tmp.1.i3, !dbg !527 ; [#uses=1 type=float] [debug line = 221:2@133:14]
  %tmp.3.i3 = fmul float %tmp.2.i3, %tmp.1.i3, !dbg !527 ; [#uses=1 type=float] [debug line = 221:2@133:14]
  %tmp.4.i3 = fsub float 1.500000e+00, %tmp.3.i3, !dbg !527 ; [#uses=1 type=float] [debug line = 221:2@133:14]
  %recipNorm.5 = fmul float %tmp.1.i3, %tmp.4.i3, !dbg !527 ; [#uses=4 type=float] [debug line = 221:2@133:14]
  call void @llvm.dbg.value(metadata !{float %recipNorm.5}, i64 0, metadata !421), !dbg !519 ; [debug line = 133:14] [debug variable = recipNorm]
  %q0.load.30 = load volatile float* @q0, align 4, !dbg !528 ; [#uses=1 type=float] [debug line = 134:2]
  %tmp.314 = fmul float %q0.load.30, %recipNorm.5, !dbg !528 ; [#uses=1 type=float] [debug line = 134:2]
  store volatile float %tmp.314, float* @q0, align 4, !dbg !528 ; [debug line = 134:2]
  %q1.load.33 = load volatile float* @q1, align 4, !dbg !529 ; [#uses=1 type=float] [debug line = 135:2]
  %tmp.315 = fmul float %q1.load.33, %recipNorm.5, !dbg !529 ; [#uses=1 type=float] [debug line = 135:2]
  store volatile float %tmp.315, float* @q1, align 4, !dbg !529 ; [debug line = 135:2]
  %q2.load.37 = load volatile float* @q2, align 4, !dbg !530 ; [#uses=1 type=float] [debug line = 136:2]
  %tmp.317 = fmul float %q2.load.37, %recipNorm.5, !dbg !530 ; [#uses=1 type=float] [debug line = 136:2]
  store volatile float %tmp.317, float* @q2, align 4, !dbg !530 ; [debug line = 136:2]
  %q3.load.35 = load volatile float* @q3, align 4, !dbg !531 ; [#uses=1 type=float] [debug line = 137:2]
  %tmp.318 = fmul float %q3.load.35, %recipNorm.5, !dbg !531 ; [#uses=1 type=float] [debug line = 137:2]
  store volatile float %tmp.318, float* @q3, align 4, !dbg !531 ; [debug line = 137:2]
  br label %4, !dbg !532                          ; [debug line = 138:1]

; <label>:4                                       ; preds = %._crit_edge, %1
  ret void, !dbg !532                             ; [debug line = 138:1]
}

!opencl.kernels = !{!0, !0, !7, !7, !0, !0, !13, !7, !0, !19, !21, !0, !21, !0, !24, !0, !27, !27, !30, !33, !37, !40, !46, !46, !50, !53, !0, !57, !63, !66, !66, !70, !73, !75, !0, !0, !80, !83, !86, !0, !0, !89, !91, !93, !93, !95, !97, !93, !99, !99, !93, !99, !93, !93, !0, !102, !102, !0, !104, !107, !107, !104, !109, !109, !0, !107, !107, !0, !111, !111, !113, !115, !115, !0, !0, !117, !118, !120, !122, !0, !124, !126, !126, !0, !128, !128, !0, !130, !133, !136, !136, !0, !0, !139, !73, !75, !0, !0, !0, !0, !66, !141, !141, !66, !141, !66, !66, !89, !89, !0, !142, !145, !145, !148, !150, !153, !24, !30, !155, !118, !83, !0, !93, !93, !93, !93, !157, !0, !158, !160, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !162, !164, !170, !176}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!179, !186, !191, !196, !201, !206}
!llvm.dbg.cu = !{!211}

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
!170 = metadata !{void (float, float, float, float, float, float)* @MadgwickAHRSupdateIMU, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !6}
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
!201 = metadata !{metadata !202, [1 x i32]* @llvm.global_ctors.0}
!202 = metadata !{metadata !203}
!203 = metadata !{i32 0, i32 31, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"llvm.global_ctors.0", metadata !184, metadata !"", i32 0, i32 31}
!206 = metadata !{metadata !207, float* @beta}
!207 = metadata !{metadata !208}
!208 = metadata !{i32 0, i32 31, metadata !209}
!209 = metadata !{metadata !210}
!210 = metadata !{metadata !"beta", metadata !184, metadata !"float", i32 0, i32 31}
!211 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/toni/Documents/vivado_projects/MadgwickAHRSoriginal/MadgwickAHRSoriginal/solution1/.autopilot/db/MadgwickAHRS.pragma.2.cpp", metadata !"/home/toni/Documents/vivado_projects/MadgwickAHRSoriginal", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !212} ; [ DW_TAG_compile_unit ]
!212 = metadata !{metadata !213}
!213 = metadata !{metadata !214, metadata !218, metadata !219, metadata !220, metadata !221}
!214 = metadata !{i32 786484, i32 0, null, metadata !"q1", metadata !"q1", metadata !"", metadata !215, i32 20, metadata !216, i32 0, i32 1, float* @q1} ; [ DW_TAG_variable ]
!215 = metadata !{i32 786473, metadata !"./MadgwickAHRS.h", metadata !"/home/toni/Documents/vivado_projects/MadgwickAHRSoriginal", null} ; [ DW_TAG_file_type ]
!216 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !217} ; [ DW_TAG_volatile_type ]
!217 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!218 = metadata !{i32 786484, i32 0, null, metadata !"q2", metadata !"q2", metadata !"", metadata !215, i32 20, metadata !216, i32 0, i32 1, float* @q2} ; [ DW_TAG_variable ]
!219 = metadata !{i32 786484, i32 0, null, metadata !"q0", metadata !"q0", metadata !"", metadata !215, i32 20, metadata !216, i32 0, i32 1, float* @q0} ; [ DW_TAG_variable ]
!220 = metadata !{i32 786484, i32 0, null, metadata !"q3", metadata !"q3", metadata !"", metadata !215, i32 20, metadata !216, i32 0, i32 1, float* @q3} ; [ DW_TAG_variable ]
!221 = metadata !{i32 786484, i32 0, null, metadata !"beta", metadata !"beta", metadata !"", metadata !215, i32 19, metadata !216, i32 0, i32 1, float* @beta} ; [ DW_TAG_variable ]
!222 = metadata !{i32 786689, metadata !223, metadata !"gx", metadata !224, i32 16777359, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 786478, i32 0, metadata !224, metadata !"MadgwickAHRSupdateIMU", metadata !"MadgwickAHRSupdateIMU", metadata !"_Z21MadgwickAHRSupdateIMUffffff", metadata !224, i32 143, metadata !225, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float, float, float, float, float, float)* @MadgwickAHRSupdateIMU, null, null, metadata !227, i32 143} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 786473, metadata !"MadgwickAHRS.cpp", metadata !"/home/toni/Documents/vivado_projects/MadgwickAHRSoriginal", null} ; [ DW_TAG_file_type ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{null, metadata !217, metadata !217, metadata !217, metadata !217, metadata !217, metadata !217}
!227 = metadata !{metadata !228}
!228 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!229 = metadata !{i32 143, i32 34, metadata !223, null}
!230 = metadata !{i32 786689, metadata !223, metadata !"gy", metadata !224, i32 33554575, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!231 = metadata !{i32 143, i32 44, metadata !223, null}
!232 = metadata !{i32 786689, metadata !223, metadata !"gz", metadata !224, i32 50331791, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!233 = metadata !{i32 143, i32 54, metadata !223, null}
!234 = metadata !{i32 786689, metadata !223, metadata !"ax", metadata !224, i32 67109007, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!235 = metadata !{i32 143, i32 64, metadata !223, null}
!236 = metadata !{i32 786689, metadata !223, metadata !"ay", metadata !224, i32 83886223, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!237 = metadata !{i32 143, i32 74, metadata !223, null}
!238 = metadata !{i32 786689, metadata !223, metadata !"az", metadata !224, i32 100663439, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!239 = metadata !{i32 143, i32 84, metadata !223, null}
!240 = metadata !{i32 150, i32 2, metadata !241, null}
!241 = metadata !{i32 786443, metadata !223, i32 143, i32 88, metadata !224, i32 3} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 786688, metadata !241, metadata !"qDot1", metadata !224, i32 146, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!243 = metadata !{i32 151, i32 2, metadata !241, null}
!244 = metadata !{i32 786688, metadata !241, metadata !"qDot2", metadata !224, i32 146, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 152, i32 2, metadata !241, null}
!246 = metadata !{i32 786688, metadata !241, metadata !"qDot3", metadata !224, i32 146, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 153, i32 2, metadata !241, null}
!248 = metadata !{i32 786688, metadata !241, metadata !"qDot4", metadata !224, i32 146, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 156, i32 2, metadata !241, null}
!250 = metadata !{i32 159, i32 15, metadata !251, null}
!251 = metadata !{i32 786443, metadata !241, i32 156, i32 54, metadata !224, i32 4} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 786689, metadata !253, metadata !"x", metadata !224, i32 16777431, metadata !217, i32 0, metadata !250} ; [ DW_TAG_arg_variable ]
!253 = metadata !{i32 786478, i32 0, metadata !224, metadata !"invSqrt", metadata !"invSqrt", metadata !"_Z7invSqrtf", metadata !224, i32 215, metadata !254, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !227, i32 215} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{metadata !217, metadata !217}
!256 = metadata !{i32 215, i32 21, metadata !253, metadata !250}
!257 = metadata !{i32 216, i32 24, metadata !258, metadata !250}
!258 = metadata !{i32 786443, metadata !253, i32 215, i32 24, metadata !224, i32 5} ; [ DW_TAG_lexical_block ]
!259 = metadata !{i32 786688, metadata !258, metadata !"halfx", metadata !224, i32 216, metadata !217, i32 0, metadata !250} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 217, i32 13, metadata !258, metadata !250}
!261 = metadata !{i32 786688, metadata !258, metadata !"y", metadata !224, i32 217, metadata !217, i32 0, metadata !250} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 220, i32 2, metadata !258, metadata !250}
!263 = metadata !{i32 221, i32 2, metadata !258, metadata !250}
!264 = metadata !{i32 786688, metadata !241, metadata !"recipNorm", metadata !224, i32 144, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!265 = metadata !{i32 160, i32 3, metadata !251, null}
!266 = metadata !{i32 161, i32 3, metadata !251, null}
!267 = metadata !{i32 162, i32 3, metadata !251, null}
!268 = metadata !{i32 165, i32 3, metadata !251, null}
!269 = metadata !{i32 786688, metadata !241, metadata !"_2q0", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 166, i32 3, metadata !251, null}
!271 = metadata !{i32 786688, metadata !241, metadata !"_2q1", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 167, i32 3, metadata !251, null}
!273 = metadata !{i32 786688, metadata !241, metadata !"_2q2", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 168, i32 3, metadata !251, null}
!275 = metadata !{i32 786688, metadata !241, metadata !"_2q3", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 169, i32 3, metadata !251, null}
!277 = metadata !{i32 786688, metadata !241, metadata !"_4q0", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!278 = metadata !{i32 170, i32 3, metadata !251, null}
!279 = metadata !{i32 786688, metadata !241, metadata !"_4q1", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!280 = metadata !{i32 171, i32 3, metadata !251, null}
!281 = metadata !{i32 786688, metadata !241, metadata !"_4q2", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!282 = metadata !{i32 172, i32 3, metadata !251, null}
!283 = metadata !{i32 786688, metadata !241, metadata !"_8q1", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!284 = metadata !{i32 173, i32 3, metadata !251, null}
!285 = metadata !{i32 786688, metadata !241, metadata !"_8q2", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 174, i32 3, metadata !251, null}
!287 = metadata !{i32 786688, metadata !241, metadata !"q0q0", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!288 = metadata !{i32 175, i32 3, metadata !251, null}
!289 = metadata !{i32 786688, metadata !241, metadata !"q1q1", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!290 = metadata !{i32 176, i32 3, metadata !251, null}
!291 = metadata !{i32 786688, metadata !241, metadata !"q2q2", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!292 = metadata !{i32 177, i32 3, metadata !251, null}
!293 = metadata !{i32 786688, metadata !241, metadata !"q3q3", metadata !224, i32 147, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 180, i32 3, metadata !251, null}
!295 = metadata !{i32 786688, metadata !241, metadata !"s0", metadata !224, i32 145, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!296 = metadata !{i32 181, i32 3, metadata !251, null}
!297 = metadata !{i32 786688, metadata !241, metadata !"s1", metadata !224, i32 145, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!298 = metadata !{i32 182, i32 3, metadata !251, null}
!299 = metadata !{i32 786688, metadata !241, metadata !"s2", metadata !224, i32 145, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!300 = metadata !{i32 183, i32 3, metadata !251, null}
!301 = metadata !{i32 786688, metadata !241, metadata !"s3", metadata !224, i32 145, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!302 = metadata !{i32 184, i32 15, metadata !251, null}
!303 = metadata !{i32 786689, metadata !253, metadata !"x", metadata !224, i32 16777431, metadata !217, i32 0, metadata !302} ; [ DW_TAG_arg_variable ]
!304 = metadata !{i32 215, i32 21, metadata !253, metadata !302}
!305 = metadata !{i32 216, i32 24, metadata !258, metadata !302}
!306 = metadata !{i32 786688, metadata !258, metadata !"halfx", metadata !224, i32 216, metadata !217, i32 0, metadata !302} ; [ DW_TAG_auto_variable ]
!307 = metadata !{i32 217, i32 13, metadata !258, metadata !302}
!308 = metadata !{i32 786688, metadata !258, metadata !"y", metadata !224, i32 217, metadata !217, i32 0, metadata !302} ; [ DW_TAG_auto_variable ]
!309 = metadata !{i32 220, i32 2, metadata !258, metadata !302}
!310 = metadata !{i32 221, i32 2, metadata !258, metadata !302}
!311 = metadata !{i32 185, i32 3, metadata !251, null}
!312 = metadata !{i32 186, i32 3, metadata !251, null}
!313 = metadata !{i32 187, i32 3, metadata !251, null}
!314 = metadata !{i32 188, i32 3, metadata !251, null}
!315 = metadata !{i32 191, i32 3, metadata !251, null}
!316 = metadata !{i32 192, i32 3, metadata !251, null}
!317 = metadata !{i32 193, i32 3, metadata !251, null}
!318 = metadata !{i32 194, i32 3, metadata !251, null}
!319 = metadata !{i32 195, i32 2, metadata !251, null}
!320 = metadata !{i32 198, i32 2, metadata !241, null}
!321 = metadata !{i32 199, i32 2, metadata !241, null}
!322 = metadata !{i32 200, i32 2, metadata !241, null}
!323 = metadata !{i32 201, i32 2, metadata !241, null}
!324 = metadata !{i32 204, i32 14, metadata !241, null}
!325 = metadata !{i32 786689, metadata !253, metadata !"x", metadata !224, i32 16777431, metadata !217, i32 0, metadata !324} ; [ DW_TAG_arg_variable ]
!326 = metadata !{i32 215, i32 21, metadata !253, metadata !324}
!327 = metadata !{i32 216, i32 24, metadata !258, metadata !324}
!328 = metadata !{i32 786688, metadata !258, metadata !"halfx", metadata !224, i32 216, metadata !217, i32 0, metadata !324} ; [ DW_TAG_auto_variable ]
!329 = metadata !{i32 217, i32 13, metadata !258, metadata !324}
!330 = metadata !{i32 786688, metadata !258, metadata !"y", metadata !224, i32 217, metadata !217, i32 0, metadata !324} ; [ DW_TAG_auto_variable ]
!331 = metadata !{i32 220, i32 2, metadata !258, metadata !324}
!332 = metadata !{i32 221, i32 2, metadata !258, metadata !324}
!333 = metadata !{i32 205, i32 2, metadata !241, null}
!334 = metadata !{i32 206, i32 2, metadata !241, null}
!335 = metadata !{i32 207, i32 2, metadata !241, null}
!336 = metadata !{i32 208, i32 2, metadata !241, null}
!337 = metadata !{i32 209, i32 1, metadata !241, null}
!338 = metadata !{metadata !339}
!339 = metadata !{i32 0, i32 31, metadata !340}
!340 = metadata !{metadata !341}
!341 = metadata !{metadata !"gx", metadata !342, metadata !"float", i32 0, i32 31}
!342 = metadata !{metadata !343}
!343 = metadata !{i32 0, i32 0, i32 0}
!344 = metadata !{metadata !345}
!345 = metadata !{i32 0, i32 31, metadata !346}
!346 = metadata !{metadata !347}
!347 = metadata !{metadata !"gy", metadata !342, metadata !"float", i32 0, i32 31}
!348 = metadata !{metadata !349}
!349 = metadata !{i32 0, i32 31, metadata !350}
!350 = metadata !{metadata !351}
!351 = metadata !{metadata !"gz", metadata !342, metadata !"float", i32 0, i32 31}
!352 = metadata !{metadata !353}
!353 = metadata !{i32 0, i32 31, metadata !354}
!354 = metadata !{metadata !355}
!355 = metadata !{metadata !"ax", metadata !342, metadata !"float", i32 0, i32 31}
!356 = metadata !{metadata !357}
!357 = metadata !{i32 0, i32 31, metadata !358}
!358 = metadata !{metadata !359}
!359 = metadata !{metadata !"ay", metadata !342, metadata !"float", i32 0, i32 31}
!360 = metadata !{metadata !361}
!361 = metadata !{i32 0, i32 31, metadata !362}
!362 = metadata !{metadata !363}
!363 = metadata !{metadata !"az", metadata !342, metadata !"float", i32 0, i32 31}
!364 = metadata !{metadata !365}
!365 = metadata !{i32 0, i32 31, metadata !366}
!366 = metadata !{metadata !367}
!367 = metadata !{metadata !"mx", metadata !342, metadata !"float", i32 0, i32 31}
!368 = metadata !{metadata !369}
!369 = metadata !{i32 0, i32 31, metadata !370}
!370 = metadata !{metadata !371}
!371 = metadata !{metadata !"my", metadata !342, metadata !"float", i32 0, i32 31}
!372 = metadata !{metadata !373}
!373 = metadata !{i32 0, i32 31, metadata !374}
!374 = metadata !{metadata !375}
!375 = metadata !{metadata !"mz", metadata !342, metadata !"float", i32 0, i32 31}
!376 = metadata !{i32 786689, metadata !377, metadata !"gx", metadata !224, i32 16777260, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!377 = metadata !{i32 786478, i32 0, metadata !224, metadata !"MadgwickAHRSupdate", metadata !"MadgwickAHRSupdate", metadata !"_Z18MadgwickAHRSupdatefffffffff", metadata !224, i32 44, metadata !378, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float, float, float, float, float, float, float, float, float)* @MadgwickAHRSupdate, null, null, metadata !227, i32 44} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!379 = metadata !{null, metadata !217, metadata !217, metadata !217, metadata !217, metadata !217, metadata !217, metadata !217, metadata !217, metadata !217}
!380 = metadata !{i32 44, i32 31, metadata !377, null}
!381 = metadata !{i32 786689, metadata !377, metadata !"gy", metadata !224, i32 33554476, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!382 = metadata !{i32 44, i32 41, metadata !377, null}
!383 = metadata !{i32 786689, metadata !377, metadata !"gz", metadata !224, i32 50331692, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!384 = metadata !{i32 44, i32 51, metadata !377, null}
!385 = metadata !{i32 786689, metadata !377, metadata !"ax", metadata !224, i32 67108908, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!386 = metadata !{i32 44, i32 61, metadata !377, null}
!387 = metadata !{i32 786689, metadata !377, metadata !"ay", metadata !224, i32 83886124, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!388 = metadata !{i32 44, i32 71, metadata !377, null}
!389 = metadata !{i32 786689, metadata !377, metadata !"az", metadata !224, i32 100663340, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!390 = metadata !{i32 44, i32 81, metadata !377, null}
!391 = metadata !{i32 786689, metadata !377, metadata !"mx", metadata !224, i32 117440556, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!392 = metadata !{i32 44, i32 91, metadata !377, null}
!393 = metadata !{i32 786689, metadata !377, metadata !"my", metadata !224, i32 134217772, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!394 = metadata !{i32 44, i32 101, metadata !377, null}
!395 = metadata !{i32 786689, metadata !377, metadata !"mz", metadata !224, i32 150994988, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!396 = metadata !{i32 44, i32 111, metadata !377, null}
!397 = metadata !{i32 52, i32 2, metadata !398, null}
!398 = metadata !{i32 786443, metadata !377, i32 44, i32 115, metadata !224, i32 0} ; [ DW_TAG_lexical_block ]
!399 = metadata !{i32 53, i32 3, metadata !400, null}
!400 = metadata !{i32 786443, metadata !398, i32 52, i32 51, metadata !224, i32 1} ; [ DW_TAG_lexical_block ]
!401 = metadata !{i32 54, i32 3, metadata !400, null}
!402 = metadata !{i32 58, i32 2, metadata !398, null}
!403 = metadata !{i32 786688, metadata !398, metadata !"qDot1", metadata !224, i32 47, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!404 = metadata !{i32 59, i32 2, metadata !398, null}
!405 = metadata !{i32 786688, metadata !398, metadata !"qDot2", metadata !224, i32 47, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!406 = metadata !{i32 60, i32 2, metadata !398, null}
!407 = metadata !{i32 786688, metadata !398, metadata !"qDot3", metadata !224, i32 47, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!408 = metadata !{i32 61, i32 2, metadata !398, null}
!409 = metadata !{i32 786688, metadata !398, metadata !"qDot4", metadata !224, i32 47, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!410 = metadata !{i32 64, i32 2, metadata !398, null}
!411 = metadata !{i32 67, i32 15, metadata !412, null}
!412 = metadata !{i32 786443, metadata !398, i32 64, i32 54, metadata !224, i32 2} ; [ DW_TAG_lexical_block ]
!413 = metadata !{i32 786689, metadata !253, metadata !"x", metadata !224, i32 16777431, metadata !217, i32 0, metadata !411} ; [ DW_TAG_arg_variable ]
!414 = metadata !{i32 215, i32 21, metadata !253, metadata !411}
!415 = metadata !{i32 216, i32 24, metadata !258, metadata !411}
!416 = metadata !{i32 786688, metadata !258, metadata !"halfx", metadata !224, i32 216, metadata !217, i32 0, metadata !411} ; [ DW_TAG_auto_variable ]
!417 = metadata !{i32 217, i32 13, metadata !258, metadata !411}
!418 = metadata !{i32 786688, metadata !258, metadata !"y", metadata !224, i32 217, metadata !217, i32 0, metadata !411} ; [ DW_TAG_auto_variable ]
!419 = metadata !{i32 220, i32 2, metadata !258, metadata !411}
!420 = metadata !{i32 221, i32 2, metadata !258, metadata !411}
!421 = metadata !{i32 786688, metadata !398, metadata !"recipNorm", metadata !224, i32 45, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!422 = metadata !{i32 68, i32 3, metadata !412, null}
!423 = metadata !{i32 69, i32 3, metadata !412, null}
!424 = metadata !{i32 70, i32 3, metadata !412, null}
!425 = metadata !{i32 73, i32 15, metadata !412, null}
!426 = metadata !{i32 786689, metadata !253, metadata !"x", metadata !224, i32 16777431, metadata !217, i32 0, metadata !425} ; [ DW_TAG_arg_variable ]
!427 = metadata !{i32 215, i32 21, metadata !253, metadata !425}
!428 = metadata !{i32 216, i32 24, metadata !258, metadata !425}
!429 = metadata !{i32 786688, metadata !258, metadata !"halfx", metadata !224, i32 216, metadata !217, i32 0, metadata !425} ; [ DW_TAG_auto_variable ]
!430 = metadata !{i32 217, i32 13, metadata !258, metadata !425}
!431 = metadata !{i32 786688, metadata !258, metadata !"y", metadata !224, i32 217, metadata !217, i32 0, metadata !425} ; [ DW_TAG_auto_variable ]
!432 = metadata !{i32 220, i32 2, metadata !258, metadata !425}
!433 = metadata !{i32 221, i32 2, metadata !258, metadata !425}
!434 = metadata !{i32 74, i32 3, metadata !412, null}
!435 = metadata !{i32 75, i32 3, metadata !412, null}
!436 = metadata !{i32 76, i32 3, metadata !412, null}
!437 = metadata !{i32 79, i32 3, metadata !412, null}
!438 = metadata !{i32 786688, metadata !398, metadata !"_2q0mx", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!439 = metadata !{i32 80, i32 3, metadata !412, null}
!440 = metadata !{i32 786688, metadata !398, metadata !"_2q0my", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!441 = metadata !{i32 81, i32 3, metadata !412, null}
!442 = metadata !{i32 786688, metadata !398, metadata !"_2q0mz", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!443 = metadata !{i32 82, i32 3, metadata !412, null}
!444 = metadata !{i32 786688, metadata !398, metadata !"_2q1mx", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!445 = metadata !{i32 83, i32 3, metadata !412, null}
!446 = metadata !{i32 786688, metadata !398, metadata !"_2q0", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!447 = metadata !{i32 84, i32 3, metadata !412, null}
!448 = metadata !{i32 786688, metadata !398, metadata !"_2q1", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!449 = metadata !{i32 85, i32 3, metadata !412, null}
!450 = metadata !{i32 786688, metadata !398, metadata !"_2q2", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!451 = metadata !{i32 86, i32 3, metadata !412, null}
!452 = metadata !{i32 786688, metadata !398, metadata !"_2q3", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!453 = metadata !{i32 87, i32 3, metadata !412, null}
!454 = metadata !{i32 786688, metadata !398, metadata !"_2q0q2", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!455 = metadata !{i32 88, i32 3, metadata !412, null}
!456 = metadata !{i32 786688, metadata !398, metadata !"_2q2q3", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!457 = metadata !{i32 89, i32 3, metadata !412, null}
!458 = metadata !{i32 786688, metadata !398, metadata !"q0q0", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!459 = metadata !{i32 90, i32 3, metadata !412, null}
!460 = metadata !{i32 786688, metadata !398, metadata !"q0q1", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!461 = metadata !{i32 91, i32 3, metadata !412, null}
!462 = metadata !{i32 786688, metadata !398, metadata !"q0q2", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!463 = metadata !{i32 92, i32 3, metadata !412, null}
!464 = metadata !{i32 786688, metadata !398, metadata !"q0q3", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!465 = metadata !{i32 93, i32 3, metadata !412, null}
!466 = metadata !{i32 786688, metadata !398, metadata !"q1q1", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!467 = metadata !{i32 94, i32 3, metadata !412, null}
!468 = metadata !{i32 786688, metadata !398, metadata !"q1q2", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!469 = metadata !{i32 95, i32 3, metadata !412, null}
!470 = metadata !{i32 786688, metadata !398, metadata !"q1q3", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!471 = metadata !{i32 96, i32 3, metadata !412, null}
!472 = metadata !{i32 786688, metadata !398, metadata !"q2q2", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!473 = metadata !{i32 97, i32 3, metadata !412, null}
!474 = metadata !{i32 786688, metadata !398, metadata !"q2q3", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!475 = metadata !{i32 98, i32 3, metadata !412, null}
!476 = metadata !{i32 786688, metadata !398, metadata !"q3q3", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!477 = metadata !{i32 101, i32 3, metadata !412, null}
!478 = metadata !{i32 786688, metadata !398, metadata !"hx", metadata !224, i32 48, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!479 = metadata !{i32 102, i32 3, metadata !412, null}
!480 = metadata !{i32 786688, metadata !398, metadata !"hy", metadata !224, i32 48, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!481 = metadata !{i32 103, i32 10, metadata !412, null}
!482 = metadata !{i32 786688, metadata !398, metadata !"_2bx", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!483 = metadata !{i32 104, i32 3, metadata !412, null}
!484 = metadata !{i32 786688, metadata !398, metadata !"_2bz", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!485 = metadata !{i32 105, i32 3, metadata !412, null}
!486 = metadata !{i32 786688, metadata !398, metadata !"_4bx", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!487 = metadata !{i32 106, i32 3, metadata !412, null}
!488 = metadata !{i32 786688, metadata !398, metadata !"_4bz", metadata !224, i32 49, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!489 = metadata !{i32 109, i32 3, metadata !412, null}
!490 = metadata !{i32 786688, metadata !398, metadata !"s0", metadata !224, i32 46, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!491 = metadata !{i32 110, i32 3, metadata !412, null}
!492 = metadata !{i32 786688, metadata !398, metadata !"s1", metadata !224, i32 46, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!493 = metadata !{i32 111, i32 3, metadata !412, null}
!494 = metadata !{i32 786688, metadata !398, metadata !"s2", metadata !224, i32 46, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!495 = metadata !{i32 112, i32 3, metadata !412, null}
!496 = metadata !{i32 786688, metadata !398, metadata !"s3", metadata !224, i32 46, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!497 = metadata !{i32 113, i32 15, metadata !412, null}
!498 = metadata !{i32 786689, metadata !253, metadata !"x", metadata !224, i32 16777431, metadata !217, i32 0, metadata !497} ; [ DW_TAG_arg_variable ]
!499 = metadata !{i32 215, i32 21, metadata !253, metadata !497}
!500 = metadata !{i32 216, i32 24, metadata !258, metadata !497}
!501 = metadata !{i32 786688, metadata !258, metadata !"halfx", metadata !224, i32 216, metadata !217, i32 0, metadata !497} ; [ DW_TAG_auto_variable ]
!502 = metadata !{i32 217, i32 13, metadata !258, metadata !497}
!503 = metadata !{i32 786688, metadata !258, metadata !"y", metadata !224, i32 217, metadata !217, i32 0, metadata !497} ; [ DW_TAG_auto_variable ]
!504 = metadata !{i32 220, i32 2, metadata !258, metadata !497}
!505 = metadata !{i32 221, i32 2, metadata !258, metadata !497}
!506 = metadata !{i32 114, i32 3, metadata !412, null}
!507 = metadata !{i32 115, i32 3, metadata !412, null}
!508 = metadata !{i32 116, i32 3, metadata !412, null}
!509 = metadata !{i32 117, i32 3, metadata !412, null}
!510 = metadata !{i32 120, i32 3, metadata !412, null}
!511 = metadata !{i32 121, i32 3, metadata !412, null}
!512 = metadata !{i32 122, i32 3, metadata !412, null}
!513 = metadata !{i32 123, i32 3, metadata !412, null}
!514 = metadata !{i32 124, i32 2, metadata !412, null}
!515 = metadata !{i32 127, i32 2, metadata !398, null}
!516 = metadata !{i32 128, i32 2, metadata !398, null}
!517 = metadata !{i32 129, i32 2, metadata !398, null}
!518 = metadata !{i32 130, i32 2, metadata !398, null}
!519 = metadata !{i32 133, i32 14, metadata !398, null}
!520 = metadata !{i32 786689, metadata !253, metadata !"x", metadata !224, i32 16777431, metadata !217, i32 0, metadata !519} ; [ DW_TAG_arg_variable ]
!521 = metadata !{i32 215, i32 21, metadata !253, metadata !519}
!522 = metadata !{i32 216, i32 24, metadata !258, metadata !519}
!523 = metadata !{i32 786688, metadata !258, metadata !"halfx", metadata !224, i32 216, metadata !217, i32 0, metadata !519} ; [ DW_TAG_auto_variable ]
!524 = metadata !{i32 217, i32 13, metadata !258, metadata !519}
!525 = metadata !{i32 786688, metadata !258, metadata !"y", metadata !224, i32 217, metadata !217, i32 0, metadata !519} ; [ DW_TAG_auto_variable ]
!526 = metadata !{i32 220, i32 2, metadata !258, metadata !519}
!527 = metadata !{i32 221, i32 2, metadata !258, metadata !519}
!528 = metadata !{i32 134, i32 2, metadata !398, null}
!529 = metadata !{i32 135, i32 2, metadata !398, null}
!530 = metadata !{i32 136, i32 2, metadata !398, null}
!531 = metadata !{i32 137, i32 2, metadata !398, null}
!532 = metadata !{i32 138, i32 1, metadata !398, null}
