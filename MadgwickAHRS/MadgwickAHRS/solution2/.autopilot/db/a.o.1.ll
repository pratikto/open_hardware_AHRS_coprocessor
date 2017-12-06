; ModuleID = '/home/toni/Documents/vivado_projects/MadgwickAHRS/MadgwickAHRS/solution2/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q = global [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16 ; [#uses=4 type=[4 x float]*]
@beta = global float 0x3FB99999A0000000, align 4  ; [#uses=2 type=float*]
@MadgwickAHRSupdate.str = internal unnamed_addr constant [19 x i8] c"MadgwickAHRSupdate\00" ; [#uses=1 type=[19 x i8]*]
@.str4 = private unnamed_addr constant [19 x i8] c"loop_integrateQdot\00", align 1 ; [#uses=1 type=[19 x i8]*]
@.str3 = private unnamed_addr constant [17 x i8] c"loopfeedbackStep\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [15 x i8] c"calculateQ1to3\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str = private unnamed_addr constant [12 x i8] c"SumOfSquare\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=7]
define internal fastcc void @normalise(float* %in) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{float* %in}, i64 0, metadata !66), !dbg !67 ; [debug line = 206:22] [debug variable = in]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %in, i32 4) nounwind, !dbg !68 ; [debug line = 206:30]
  br label %1, !dbg !70                           ; [debug line = 209:29]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 1, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %SumOfSquare = phi float [ 0.000000e+00, %0 ], [ %SumOfSquare.2, %2 ] ; [#uses=2 type=float]
  %exitcond1 = icmp eq i32 %i, 4, !dbg !70        ; [#uses=1 type=i1] [debug line = 209:29]
  br i1 %exitcond1, label %3, label %2, !dbg !70  ; [debug line = 209:29]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !72 ; [debug line = 209:44]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 209:44]
  %tmp.1 = sext i32 %i to i64, !dbg !74           ; [#uses=1 type=i64] [debug line = 210:3]
  %in.addr = getelementptr inbounds float* %in, i64 %tmp.1, !dbg !74 ; [#uses=1 type=float*] [debug line = 210:3]
  %in.load.1 = load float* %in.addr, align 4, !dbg !74 ; [#uses=4 type=float] [debug line = 210:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in.load.1) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in.load.1) nounwind
  %tmp.2 = fmul float %in.load.1, %in.load.1, !dbg !74 ; [#uses=1 type=float] [debug line = 210:3]
  %SumOfSquare.2 = fadd float %SumOfSquare, %tmp.2, !dbg !74 ; [#uses=1 type=float] [debug line = 210:3]
  call void @llvm.dbg.value(metadata !{float %SumOfSquare.2}, i64 0, metadata !75), !dbg !74 ; [debug line = 210:3] [debug variable = SumOfSquare]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !76 ; [#uses=0 type=i32] [debug line = 211:2]
  %i.1 = add nsw i32 %i, 1, !dbg !77              ; [#uses=1 type=i32] [debug line = 209:38]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !78), !dbg !77 ; [debug line = 209:38] [debug variable = i]
  br label %1, !dbg !77                           ; [debug line = 209:38]

; <label>:3                                       ; preds = %1
  %SumOfSquare.0.lcssa = phi float [ %SumOfSquare, %1 ] ; [#uses=2 type=float]
  %in.load = load float* %in, align 4, !dbg !79   ; [#uses=6 type=float] [debug line = 212:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in.load) nounwind
  %tmp = fcmp une float %in.load, 0.000000e+00, !dbg !79 ; [#uses=1 type=i1] [debug line = 212:2]
  br i1 %tmp, label %4, label %._crit_edge, !dbg !79 ; [debug line = 212:2]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in.load) nounwind
  %tmp.5 = fmul float %in.load, %in.load, !dbg !80 ; [#uses=1 type=float] [debug line = 213:3]
  %SumOfSquare.3 = fadd float %SumOfSquare.0.lcssa, %tmp.5, !dbg !80 ; [#uses=1 type=float] [debug line = 213:3]
  call void @llvm.dbg.value(metadata !{float %SumOfSquare.3}, i64 0, metadata !75), !dbg !80 ; [debug line = 213:3] [debug variable = SumOfSquare]
  br label %._crit_edge, !dbg !80                 ; [debug line = 213:3]

._crit_edge:                                      ; preds = %4, %3
  %SumOfSquare.1 = phi float [ %SumOfSquare.3, %4 ], [ %SumOfSquare.0.lcssa, %3 ] ; [#uses=1 type=float]
  %recipNorm = call fastcc float @invSqrt(float %SumOfSquare.1), !dbg !81 ; [#uses=2 type=float] [debug line = 215:14]
  call void @llvm.dbg.value(metadata !{float %recipNorm}, i64 0, metadata !82), !dbg !81 ; [debug line = 215:14] [debug variable = recipNorm]
  br label %5, !dbg !83                           ; [debug line = 216:33]

; <label>:5                                       ; preds = %6, %._crit_edge
  %i1 = phi i32 [ 1, %._crit_edge ], [ %i.2, %6 ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i1, 3, !dbg !83        ; [#uses=1 type=i1] [debug line = 216:33]
  br i1 %exitcond, label %7, label %6, !dbg !83   ; [debug line = 216:33]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !85 ; [debug line = 216:48]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !85 ; [#uses=1 type=i32] [debug line = 216:48]
  %tmp.9 = sext i32 %i1 to i64, !dbg !87          ; [#uses=1 type=i64] [debug line = 217:3]
  %in.addr.1 = getelementptr inbounds float* %in, i64 %tmp.9, !dbg !87 ; [#uses=2 type=float*] [debug line = 217:3]
  %in.load.3 = load float* %in.addr.1, align 4, !dbg !87 ; [#uses=2 type=float] [debug line = 217:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in.load.3) nounwind
  %tmp.10 = fmul float %in.load.3, %recipNorm, !dbg !87 ; [#uses=1 type=float] [debug line = 217:3]
  store float %tmp.10, float* %in.addr.1, align 4, !dbg !87 ; [debug line = 217:3]
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !88 ; [#uses=0 type=i32] [debug line = 218:2]
  %i.2 = add nsw i32 %i1, 1, !dbg !89             ; [#uses=1 type=i32] [debug line = 216:42]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !90), !dbg !89 ; [debug line = 216:42] [debug variable = i]
  br label %5, !dbg !89                           ; [debug line = 216:42]

; <label>:7                                       ; preds = %5
  %in.load.2 = load float* %in, align 4, !dbg !91 ; [#uses=4 type=float] [debug line = 219:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in.load.2) nounwind
  %tmp.8 = fcmp une float %in.load.2, 0.000000e+00, !dbg !91 ; [#uses=1 type=i1] [debug line = 219:2]
  br i1 %tmp.8, label %8, label %._crit_edge2, !dbg !91 ; [debug line = 219:2]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in.load.2) nounwind
  %tmp.12 = fmul float %in.load.2, %recipNorm, !dbg !92 ; [#uses=1 type=float] [debug line = 220:3]
  br label %._crit_edge2, !dbg !92                ; [debug line = 220:3]

._crit_edge2:                                     ; preds = %8, %7
  %storemerge = phi float [ %tmp.12, %8 ], [ 0.000000e+00, %7 ] ; [#uses=1 type=float]
  store float %storemerge, float* %in, align 4, !dbg !93 ; [debug line = 222:3]
  ret void, !dbg !94                              ; [debug line = 224:1]
}

; [#uses=1]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=61]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc float @invSqrt(float %x) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !95), !dbg !96 ; [debug line = 193:21] [debug variable = x]
  %halfx = fmul float %x, 5.000000e-01, !dbg !97  ; [#uses=1 type=float] [debug line = 194:24]
  call void @llvm.dbg.value(metadata !{float %halfx}, i64 0, metadata !99), !dbg !97 ; [debug line = 194:24] [debug variable = halfx]
  %y = bitcast float %x to i32, !dbg !100         ; [#uses=1 type=i32] [debug line = 195:13]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !101), !dbg !100 ; [debug line = 195:13] [debug variable = y]
  %tmp = lshr i32 %y, 1, !dbg !102                ; [#uses=1 type=i32] [debug line = 198:2]
  %y.1 = sub i32 1597463007, %tmp, !dbg !102      ; [#uses=1 type=i32] [debug line = 198:2]
  call void @llvm.dbg.value(metadata !{i32 %y.1}, i64 0, metadata !101), !dbg !102 ; [debug line = 198:2] [debug variable = y]
  %tmp.13 = bitcast i32 %y.1 to float, !dbg !103  ; [#uses=3 type=float] [debug line = 199:2]
  %tmp.14 = fmul float %halfx, %tmp.13, !dbg !103 ; [#uses=1 type=float] [debug line = 199:2]
  %tmp.15 = fmul float %tmp.14, %tmp.13, !dbg !103 ; [#uses=1 type=float] [debug line = 199:2]
  %tmp.16 = fsub float 1.500000e+00, %tmp.15, !dbg !103 ; [#uses=1 type=float] [debug line = 199:2]
  %tmp.17 = fmul float %tmp.13, %tmp.16, !dbg !103 ; [#uses=1 type=float] [debug line = 199:2]
  ret float %tmp.17, !dbg !104                    ; [debug line = 200:2]
}

; [#uses=2]
define internal fastcc void @integrateQdot(float* %q, float* %qDot) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{float* %q}, i64 0, metadata !105), !dbg !106 ; [debug line = 237:26] [debug variable = q]
  call void @llvm.dbg.value(metadata !{float* %qDot}, i64 0, metadata !107), !dbg !108 ; [debug line = 237:38] [debug variable = qDot]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %q, i32 4) nounwind, !dbg !109 ; [debug line = 237:48]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %qDot, i32 4) nounwind, !dbg !111 ; [debug line = 237:76]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !112 ; [debug line = 238:1]
  br label %1, !dbg !113                          ; [debug line = 238:36]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.3, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 4, !dbg !113        ; [#uses=1 type=i1] [debug line = 238:36]
  br i1 %exitcond, label %3, label %2, !dbg !113  ; [debug line = 238:36]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !115 ; [debug line = 238:51]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !115 ; [#uses=1 type=i32] [debug line = 238:51]
  %tmp = sext i32 %i to i64, !dbg !117            ; [#uses=2 type=i64] [debug line = 239:3]
  %qDot.addr = getelementptr inbounds float* %qDot, i64 %tmp, !dbg !117 ; [#uses=1 type=float*] [debug line = 239:3]
  %qDot.load = load float* %qDot.addr, align 4, !dbg !117 ; [#uses=2 type=float] [debug line = 239:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %qDot.load) nounwind
  %tmp.18 = fmul float %qDot.load, 1.953125e-03, !dbg !117 ; [#uses=1 type=float] [debug line = 239:3]
  %q.addr = getelementptr inbounds float* %q, i64 %tmp, !dbg !117 ; [#uses=2 type=float*] [debug line = 239:3]
  %q.load = load float* %q.addr, align 4, !dbg !117 ; [#uses=2 type=float] [debug line = 239:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load) nounwind
  %tmp.19 = fadd float %q.load, %tmp.18, !dbg !117 ; [#uses=1 type=float] [debug line = 239:3]
  store float %tmp.19, float* %q.addr, align 4, !dbg !117 ; [debug line = 239:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !118 ; [#uses=0 type=i32] [debug line = 240:2]
  %i.3 = add nsw i32 %i, 1, !dbg !119             ; [#uses=1 type=i32] [debug line = 238:45]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !120), !dbg !119 ; [debug line = 238:45] [debug variable = i]
  br label %1, !dbg !119                          ; [debug line = 238:45]

; <label>:3                                       ; preds = %1
  ret void, !dbg !121                             ; [debug line = 241:1]
}

; [#uses=2]
define internal fastcc void @feedbackStep(float* %qDot, float %beta, float* %s) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{float* %qDot}, i64 0, metadata !122), !dbg !123 ; [debug line = 229:25] [debug variable = qDot]
  call void @llvm.dbg.value(metadata !{float %beta}, i64 0, metadata !124), !dbg !125 ; [debug line = 229:40] [debug variable = beta]
  call void @llvm.dbg.value(metadata !{float* %s}, i64 0, metadata !126), !dbg !127 ; [debug line = 229:52] [debug variable = s]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %s, i32 4) nounwind, !dbg !128 ; [debug line = 229:59]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %qDot, i32 4) nounwind, !dbg !130 ; [debug line = 229:87]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !131 ; [debug line = 230:1]
  br label %1, !dbg !132                          ; [debug line = 229:35]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.4, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 4, !dbg !132        ; [#uses=1 type=i1] [debug line = 229:35]
  br i1 %exitcond, label %3, label %2, !dbg !132  ; [debug line = 229:35]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !134 ; [debug line = 229:50]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !134 ; [#uses=1 type=i32] [debug line = 229:50]
  %tmp = sext i32 %i to i64, !dbg !136            ; [#uses=2 type=i64] [debug line = 230:3]
  %s.addr = getelementptr inbounds float* %s, i64 %tmp, !dbg !136 ; [#uses=1 type=float*] [debug line = 230:3]
  %s.load = load float* %s.addr, align 4, !dbg !136 ; [#uses=2 type=float] [debug line = 230:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %s.load) nounwind
  %tmp.21 = fmul float %s.load, %beta, !dbg !136  ; [#uses=1 type=float] [debug line = 230:3]
  %qDot.addr = getelementptr inbounds float* %qDot, i64 %tmp, !dbg !136 ; [#uses=2 type=float*] [debug line = 230:3]
  %qDot.load = load float* %qDot.addr, align 4, !dbg !136 ; [#uses=2 type=float] [debug line = 230:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %qDot.load) nounwind
  %tmp.22 = fsub float %qDot.load, %tmp.21, !dbg !136 ; [#uses=1 type=float] [debug line = 230:3]
  store float %tmp.22, float* %qDot.addr, align 4, !dbg !136 ; [debug line = 230:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !137 ; [#uses=0 type=i32] [debug line = 231:2]
  %i.4 = add nsw i32 %i, 1, !dbg !138             ; [#uses=1 type=i32] [debug line = 229:44]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !139), !dbg !138 ; [debug line = 229:44] [debug variable = i]
  br label %1, !dbg !138                          ; [debug line = 229:44]

; <label>:3                                       ; preds = %1
  ret void, !dbg !140                             ; [debug line = 232:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=208]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=10]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
define internal fastcc void @MadgwickAHRSupdateIMU(float* %g, float* %a) nounwind uwtable {
  %s = alloca [4 x float], align 16               ; [#uses=4 type=[4 x float]*]
  %qDot = alloca [4 x float], align 16            ; [#uses=4 type=[4 x float]*]
  call void @llvm.dbg.value(metadata !{float* %g}, i64 0, metadata !141), !dbg !142 ; [debug line = 130:34] [debug variable = g]
  call void @llvm.dbg.value(metadata !{float* %a}, i64 0, metadata !143), !dbg !144 ; [debug line = 130:46] [debug variable = a]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %a, i32 4) nounwind, !dbg !145 ; [debug line = 130:53]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %g, i32 4) nounwind, !dbg !147 ; [debug line = 130:81]
  call void @llvm.dbg.declare(metadata !{[4 x float]* %s}, metadata !148), !dbg !149 ; [debug line = 131:8] [debug variable = s]
  call void @llvm.dbg.declare(metadata !{[4 x float]* %qDot}, metadata !150), !dbg !151 ; [debug line = 132:8] [debug variable = qDot]
  %q.load = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !152 ; [#uses=6 type=float] [debug line = 136:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load) nounwind
  %tmp = fsub float -0.000000e+00, %q.load, !dbg !152 ; [#uses=1 type=float] [debug line = 136:2]
  %g.addr = getelementptr inbounds float* %g, i64 1, !dbg !152 ; [#uses=1 type=float*] [debug line = 136:2]
  %g.load = load float* %g.addr, align 4, !dbg !152 ; [#uses=8 type=float] [debug line = 136:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load) nounwind
  %tmp.24 = fmul float %g.load, %tmp, !dbg !152   ; [#uses=1 type=float] [debug line = 136:2]
  %q.load.1 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !152 ; [#uses=6 type=float] [debug line = 136:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.1) nounwind
  %g.addr.1 = getelementptr inbounds float* %g, i64 2, !dbg !152 ; [#uses=1 type=float*] [debug line = 136:2]
  %g.load.1 = load float* %g.addr.1, align 4, !dbg !152 ; [#uses=8 type=float] [debug line = 136:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.1) nounwind
  %tmp.25 = fmul float %q.load.1, %g.load.1, !dbg !152 ; [#uses=1 type=float] [debug line = 136:2]
  %tmp.26 = fsub float %tmp.24, %tmp.25, !dbg !152 ; [#uses=1 type=float] [debug line = 136:2]
  %q.load.2 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !152 ; [#uses=6 type=float] [debug line = 136:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.2) nounwind
  %g.addr.2 = getelementptr inbounds float* %g, i64 3, !dbg !152 ; [#uses=1 type=float*] [debug line = 136:2]
  %g.load.2 = load float* %g.addr.2, align 4, !dbg !152 ; [#uses=8 type=float] [debug line = 136:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.2) nounwind
  %tmp.27 = fmul float %q.load.2, %g.load.2, !dbg !152 ; [#uses=1 type=float] [debug line = 136:2]
  %tmp.28 = fsub float %tmp.26, %tmp.27, !dbg !152 ; [#uses=1 type=float] [debug line = 136:2]
  %tmp.29 = fmul float %tmp.28, 5.000000e-01, !dbg !152 ; [#uses=1 type=float] [debug line = 136:2]
  %qDot.addr = getelementptr inbounds [4 x float]* %qDot, i64 0, i64 0, !dbg !152 ; [#uses=3 type=float*] [debug line = 136:2]
  store float %tmp.29, float* %qDot.addr, align 16, !dbg !152 ; [debug line = 136:2]
  %q.load.3 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !153 ; [#uses=6 type=float] [debug line = 138:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.3) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load) nounwind
  %tmp.30 = fmul float %q.load.3, %g.load, !dbg !153 ; [#uses=1 type=float] [debug line = 138:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.1) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.2) nounwind
  %tmp.31 = fmul float %q.load.1, %g.load.2, !dbg !153 ; [#uses=1 type=float] [debug line = 138:2]
  %tmp.32 = fadd float %tmp.30, %tmp.31, !dbg !153 ; [#uses=1 type=float] [debug line = 138:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.2) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.1) nounwind
  %tmp.33 = fmul float %q.load.2, %g.load.1, !dbg !153 ; [#uses=1 type=float] [debug line = 138:2]
  %tmp.34 = fsub float %tmp.32, %tmp.33, !dbg !153 ; [#uses=1 type=float] [debug line = 138:2]
  %tmp.35 = fmul float %tmp.34, 5.000000e-01, !dbg !153 ; [#uses=1 type=float] [debug line = 138:2]
  %qDot.addr.1 = getelementptr inbounds [4 x float]* %qDot, i64 0, i64 1, !dbg !153 ; [#uses=1 type=float*] [debug line = 138:2]
  store float %tmp.35, float* %qDot.addr.1, align 4, !dbg !153 ; [debug line = 138:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.3) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.1) nounwind
  %tmp.36 = fmul float %q.load.3, %g.load.1, !dbg !154 ; [#uses=1 type=float] [debug line = 140:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.2) nounwind
  %tmp.37 = fmul float %q.load, %g.load.2, !dbg !154 ; [#uses=1 type=float] [debug line = 140:2]
  %tmp.38 = fsub float %tmp.36, %tmp.37, !dbg !154 ; [#uses=1 type=float] [debug line = 140:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.2) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load) nounwind
  %tmp.39 = fmul float %q.load.2, %g.load, !dbg !154 ; [#uses=1 type=float] [debug line = 140:2]
  %tmp.40 = fadd float %tmp.38, %tmp.39, !dbg !154 ; [#uses=1 type=float] [debug line = 140:2]
  %tmp.41 = fmul float %tmp.40, 5.000000e-01, !dbg !154 ; [#uses=1 type=float] [debug line = 140:2]
  %qDot.addr.2 = getelementptr inbounds [4 x float]* %qDot, i64 0, i64 2, !dbg !154 ; [#uses=1 type=float*] [debug line = 140:2]
  store float %tmp.41, float* %qDot.addr.2, align 8, !dbg !154 ; [debug line = 140:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.3) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.2) nounwind
  %tmp.42 = fmul float %q.load.3, %g.load.2, !dbg !155 ; [#uses=1 type=float] [debug line = 142:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.1) nounwind
  %tmp.43 = fmul float %q.load, %g.load.1, !dbg !155 ; [#uses=1 type=float] [debug line = 142:2]
  %tmp.44 = fadd float %tmp.42, %tmp.43, !dbg !155 ; [#uses=1 type=float] [debug line = 142:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.1) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load) nounwind
  %tmp.45 = fmul float %q.load.1, %g.load, !dbg !155 ; [#uses=1 type=float] [debug line = 142:2]
  %tmp.46 = fsub float %tmp.44, %tmp.45, !dbg !155 ; [#uses=1 type=float] [debug line = 142:2]
  %tmp.47 = fmul float %tmp.46, 5.000000e-01, !dbg !155 ; [#uses=1 type=float] [debug line = 142:2]
  %qDot.addr.3 = getelementptr inbounds [4 x float]* %qDot, i64 0, i64 3, !dbg !155 ; [#uses=1 type=float*] [debug line = 142:2]
  store float %tmp.47, float* %qDot.addr.3, align 4, !dbg !155 ; [debug line = 142:2]
  %a.addr = getelementptr inbounds float* %a, i64 1, !dbg !156 ; [#uses=2 type=float*] [debug line = 145:2]
  %a.load = load float* %a.addr, align 4, !dbg !156 ; [#uses=2 type=float] [debug line = 145:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load) nounwind
  %tmp.48 = fcmp oeq float %a.load, 0.000000e+00, !dbg !156 ; [#uses=1 type=i1] [debug line = 145:2]
  br i1 %tmp.48, label %1, label %._crit_edge, !dbg !156 ; [debug line = 145:2]

; <label>:1                                       ; preds = %0
  %a.addr.1 = getelementptr inbounds float* %a, i64 2, !dbg !156 ; [#uses=1 type=float*] [debug line = 145:2]
  %a.load.1 = load float* %a.addr.1, align 4, !dbg !156 ; [#uses=2 type=float] [debug line = 145:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.1) nounwind
  %tmp.49 = fcmp oeq float %a.load.1, 0.000000e+00, !dbg !156 ; [#uses=1 type=i1] [debug line = 145:2]
  br i1 %tmp.49, label %2, label %._crit_edge, !dbg !156 ; [debug line = 145:2]

; <label>:2                                       ; preds = %1
  %a.addr.2 = getelementptr inbounds float* %a, i64 3, !dbg !156 ; [#uses=1 type=float*] [debug line = 145:2]
  %a.load.2 = load float* %a.addr.2, align 4, !dbg !156 ; [#uses=2 type=float] [debug line = 145:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.2) nounwind
  %tmp.50 = fcmp oeq float %a.load.2, 0.000000e+00, !dbg !156 ; [#uses=1 type=i1] [debug line = 145:2]
  br i1 %tmp.50, label %._crit_edge2, label %._crit_edge, !dbg !156 ; [debug line = 145:2]

._crit_edge:                                      ; preds = %2, %1, %0
  call fastcc void @normalise(float* %a), !dbg !157 ; [debug line = 148:3]
  %q.load.4 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !159 ; [#uses=8 type=float] [debug line = 151:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.4) nounwind
  %_2q0 = fmul float %q.load.4, 2.000000e+00, !dbg !159 ; [#uses=2 type=float] [debug line = 151:3]
  call void @llvm.dbg.value(metadata !{float %_2q0}, i64 0, metadata !160), !dbg !159 ; [debug line = 151:3] [debug variable = _2q0]
  %q.load.5 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !161 ; [#uses=12 type=float] [debug line = 152:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.5) nounwind
  %_2q1 = fmul float %q.load.5, 2.000000e+00, !dbg !161 ; [#uses=2 type=float] [debug line = 152:3]
  call void @llvm.dbg.value(metadata !{float %_2q1}, i64 0, metadata !162), !dbg !161 ; [debug line = 152:3] [debug variable = _2q1]
  %q.load.6 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !163 ; [#uses=12 type=float] [debug line = 153:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.6) nounwind
  %_2q2 = fmul float %q.load.6, 2.000000e+00, !dbg !163 ; [#uses=2 type=float] [debug line = 153:3]
  call void @llvm.dbg.value(metadata !{float %_2q2}, i64 0, metadata !164), !dbg !163 ; [debug line = 153:3] [debug variable = _2q2]
  %q.load.7 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !165 ; [#uses=10 type=float] [debug line = 154:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.7) nounwind
  %_2q3 = fmul float %q.load.7, 2.000000e+00, !dbg !165 ; [#uses=2 type=float] [debug line = 154:3]
  call void @llvm.dbg.value(metadata !{float %_2q3}, i64 0, metadata !166), !dbg !165 ; [debug line = 154:3] [debug variable = _2q3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.4) nounwind
  %_4q0 = fmul float %q.load.4, 4.000000e+00, !dbg !167 ; [#uses=2 type=float] [debug line = 155:3]
  call void @llvm.dbg.value(metadata !{float %_4q0}, i64 0, metadata !168), !dbg !167 ; [debug line = 155:3] [debug variable = _4q0]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.5) nounwind
  %_4q1 = fmul float %q.load.5, 4.000000e+00, !dbg !169 ; [#uses=3 type=float] [debug line = 156:3]
  call void @llvm.dbg.value(metadata !{float %_4q1}, i64 0, metadata !170), !dbg !169 ; [debug line = 156:3] [debug variable = _4q1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.6) nounwind
  %_4q2 = fmul float %q.load.6, 4.000000e+00, !dbg !171 ; [#uses=3 type=float] [debug line = 157:3]
  call void @llvm.dbg.value(metadata !{float %_4q2}, i64 0, metadata !172), !dbg !171 ; [debug line = 157:3] [debug variable = _4q2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.5) nounwind
  %_8q1 = fmul float %q.load.5, 8.000000e+00, !dbg !173 ; [#uses=2 type=float] [debug line = 158:3]
  call void @llvm.dbg.value(metadata !{float %_8q1}, i64 0, metadata !174), !dbg !173 ; [debug line = 158:3] [debug variable = _8q1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.6) nounwind
  %_8q2 = fmul float %q.load.6, 8.000000e+00, !dbg !175 ; [#uses=2 type=float] [debug line = 159:3]
  call void @llvm.dbg.value(metadata !{float %_8q2}, i64 0, metadata !176), !dbg !175 ; [debug line = 159:3] [debug variable = _8q2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.4) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.4) nounwind
  %q0q0 = fmul float %q.load.4, %q.load.4, !dbg !177 ; [#uses=1 type=float] [debug line = 160:3]
  call void @llvm.dbg.value(metadata !{float %q0q0}, i64 0, metadata !178), !dbg !177 ; [debug line = 160:3] [debug variable = q0q0]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.5) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.5) nounwind
  %q1q1 = fmul float %q.load.5, %q.load.5, !dbg !179 ; [#uses=4 type=float] [debug line = 161:3]
  call void @llvm.dbg.value(metadata !{float %q1q1}, i64 0, metadata !180), !dbg !179 ; [debug line = 161:3] [debug variable = q1q1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.6) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.6) nounwind
  %q2q2 = fmul float %q.load.6, %q.load.6, !dbg !181 ; [#uses=4 type=float] [debug line = 162:3]
  call void @llvm.dbg.value(metadata !{float %q2q2}, i64 0, metadata !182), !dbg !181 ; [debug line = 162:3] [debug variable = q2q2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.7) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.7) nounwind
  %q3q3 = fmul float %q.load.7, %q.load.7, !dbg !183 ; [#uses=2 type=float] [debug line = 163:3]
  call void @llvm.dbg.value(metadata !{float %q3q3}, i64 0, metadata !184), !dbg !183 ; [debug line = 163:3] [debug variable = q3q3]
  %tmp.51 = fmul float %_4q0, %q2q2, !dbg !185    ; [#uses=1 type=float] [debug line = 167:3]
  %a.load.3 = load float* %a.addr, align 4, !dbg !185 ; [#uses=8 type=float] [debug line = 167:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.3) nounwind
  %tmp.52 = fmul float %_2q2, %a.load.3, !dbg !185 ; [#uses=1 type=float] [debug line = 167:3]
  %tmp.53 = fadd float %tmp.51, %tmp.52, !dbg !185 ; [#uses=1 type=float] [debug line = 167:3]
  %tmp.54 = fmul float %_4q0, %q1q1, !dbg !185    ; [#uses=1 type=float] [debug line = 167:3]
  %tmp.55 = fadd float %tmp.53, %tmp.54, !dbg !185 ; [#uses=1 type=float] [debug line = 167:3]
  %a.addr.3 = getelementptr inbounds float* %a, i64 2, !dbg !185 ; [#uses=1 type=float*] [debug line = 167:3]
  %a.load.4 = load float* %a.addr.3, align 4, !dbg !185 ; [#uses=8 type=float] [debug line = 167:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.4) nounwind
  %tmp.56 = fmul float %_2q1, %a.load.4, !dbg !185 ; [#uses=1 type=float] [debug line = 167:3]
  %tmp.57 = fsub float %tmp.55, %tmp.56, !dbg !185 ; [#uses=1 type=float] [debug line = 167:3]
  %s.addr = getelementptr inbounds [4 x float]* %s, i64 0, i64 0, !dbg !185 ; [#uses=3 type=float*] [debug line = 167:3]
  store float %tmp.57, float* %s.addr, align 16, !dbg !185 ; [debug line = 167:3]
  %tmp.58 = fmul float %_4q1, %q3q3, !dbg !186    ; [#uses=1 type=float] [debug line = 169:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.3) nounwind
  %tmp.59 = fmul float %_2q3, %a.load.3, !dbg !186 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp.60 = fsub float %tmp.58, %tmp.59, !dbg !186 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp.61 = fmul float %q0q0, 4.000000e+00, !dbg !186 ; [#uses=2 type=float] [debug line = 169:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.5) nounwind
  %tmp.62 = fmul float %tmp.61, %q.load.5, !dbg !186 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp.63 = fadd float %tmp.60, %tmp.62, !dbg !186 ; [#uses=1 type=float] [debug line = 169:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.4) nounwind
  %tmp.64 = fmul float %_2q0, %a.load.4, !dbg !186 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp.65 = fsub float %tmp.63, %tmp.64, !dbg !186 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp.66 = fsub float %tmp.65, %_4q1, !dbg !186  ; [#uses=1 type=float] [debug line = 169:3]
  %tmp.67 = fmul float %_8q1, %q1q1, !dbg !186    ; [#uses=1 type=float] [debug line = 169:3]
  %tmp.68 = fadd float %tmp.66, %tmp.67, !dbg !186 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp.69 = fmul float %_8q1, %q2q2, !dbg !186    ; [#uses=1 type=float] [debug line = 169:3]
  %tmp.70 = fadd float %tmp.68, %tmp.69, !dbg !186 ; [#uses=1 type=float] [debug line = 169:3]
  %a.addr.4 = getelementptr inbounds float* %a, i64 3, !dbg !186 ; [#uses=1 type=float*] [debug line = 169:3]
  %a.load.5 = load float* %a.addr.4, align 4, !dbg !186 ; [#uses=4 type=float] [debug line = 169:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.5) nounwind
  %tmp.71 = fmul float %_4q1, %a.load.5, !dbg !186 ; [#uses=1 type=float] [debug line = 169:3]
  %tmp.72 = fadd float %tmp.70, %tmp.71, !dbg !186 ; [#uses=1 type=float] [debug line = 169:3]
  %s.addr.1 = getelementptr inbounds [4 x float]* %s, i64 0, i64 1, !dbg !186 ; [#uses=1 type=float*] [debug line = 169:3]
  store float %tmp.72, float* %s.addr.1, align 4, !dbg !186 ; [debug line = 169:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.6) nounwind
  %tmp.73 = fmul float %tmp.61, %q.load.6, !dbg !187 ; [#uses=1 type=float] [debug line = 171:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.3) nounwind
  %tmp.74 = fmul float %_2q0, %a.load.3, !dbg !187 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp.75 = fadd float %tmp.73, %tmp.74, !dbg !187 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp.76 = fmul float %_4q2, %q3q3, !dbg !187    ; [#uses=1 type=float] [debug line = 171:3]
  %tmp.77 = fadd float %tmp.75, %tmp.76, !dbg !187 ; [#uses=1 type=float] [debug line = 171:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.4) nounwind
  %tmp.78 = fmul float %_2q3, %a.load.4, !dbg !187 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp.79 = fsub float %tmp.77, %tmp.78, !dbg !187 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp.80 = fsub float %tmp.79, %_4q2, !dbg !187  ; [#uses=1 type=float] [debug line = 171:3]
  %tmp.81 = fmul float %_8q2, %q1q1, !dbg !187    ; [#uses=1 type=float] [debug line = 171:3]
  %tmp.82 = fadd float %tmp.80, %tmp.81, !dbg !187 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp.83 = fmul float %_8q2, %q2q2, !dbg !187    ; [#uses=1 type=float] [debug line = 171:3]
  %tmp.84 = fadd float %tmp.82, %tmp.83, !dbg !187 ; [#uses=1 type=float] [debug line = 171:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.5) nounwind
  %tmp.85 = fmul float %_4q2, %a.load.5, !dbg !187 ; [#uses=1 type=float] [debug line = 171:3]
  %tmp.86 = fadd float %tmp.84, %tmp.85, !dbg !187 ; [#uses=1 type=float] [debug line = 171:3]
  %s.addr.2 = getelementptr inbounds [4 x float]* %s, i64 0, i64 2, !dbg !187 ; [#uses=1 type=float*] [debug line = 171:3]
  store float %tmp.86, float* %s.addr.2, align 8, !dbg !187 ; [debug line = 171:3]
  %tmp.87 = fmul float %q1q1, 4.000000e+00, !dbg !188 ; [#uses=1 type=float] [debug line = 173:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.7) nounwind
  %tmp.88 = fmul float %tmp.87, %q.load.7, !dbg !188 ; [#uses=1 type=float] [debug line = 173:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.3) nounwind
  %tmp.89 = fmul float %_2q1, %a.load.3, !dbg !188 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp.90 = fsub float %tmp.88, %tmp.89, !dbg !188 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp.91 = fmul float %q2q2, 4.000000e+00, !dbg !188 ; [#uses=1 type=float] [debug line = 173:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.7) nounwind
  %tmp.92 = fmul float %tmp.91, %q.load.7, !dbg !188 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp.93 = fadd float %tmp.90, %tmp.92, !dbg !188 ; [#uses=1 type=float] [debug line = 173:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.4) nounwind
  %tmp.94 = fmul float %_2q2, %a.load.4, !dbg !188 ; [#uses=1 type=float] [debug line = 173:3]
  %tmp.95 = fsub float %tmp.93, %tmp.94, !dbg !188 ; [#uses=1 type=float] [debug line = 173:3]
  %s.addr.3 = getelementptr inbounds [4 x float]* %s, i64 0, i64 3, !dbg !188 ; [#uses=1 type=float*] [debug line = 173:3]
  store float %tmp.95, float* %s.addr.3, align 4, !dbg !188 ; [debug line = 173:3]
  call fastcc void @normalise(float* %s.addr), !dbg !189 ; [debug line = 176:3]
  %beta.load = load float* @beta, align 4, !dbg !190 ; [#uses=1 type=float] [debug line = 179:3]
  call fastcc void @feedbackStep(float* %qDot.addr, float %beta.load, float* %s.addr), !dbg !190 ; [debug line = 179:3]
  br label %._crit_edge2, !dbg !191               ; [debug line = 180:2]

._crit_edge2:                                     ; preds = %._crit_edge, %2
  call fastcc void @integrateQdot(float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), float* %qDot.addr), !dbg !192 ; [debug line = 183:2]
  call fastcc void @normalise(float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0)), !dbg !193 ; [debug line = 186:2]
  ret void, !dbg !194                             ; [debug line = 187:1]
}

; [#uses=0]
define void @MadgwickAHRSupdate(float* %g, float* %a, float* %m) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @MadgwickAHRSupdate.str) nounwind
  %s = alloca [4 x float], align 16               ; [#uses=4 type=[4 x float]*]
  %qDot = alloca [4 x float], align 16            ; [#uses=4 type=[4 x float]*]
  call void @llvm.dbg.value(metadata !{float* %g}, i64 0, metadata !195), !dbg !196 ; [debug line = 36:31] [debug variable = g]
  call void @llvm.dbg.value(metadata !{float* %a}, i64 0, metadata !197), !dbg !198 ; [debug line = 36:43] [debug variable = a]
  call void @llvm.dbg.value(metadata !{float* %m}, i64 0, metadata !199), !dbg !200 ; [debug line = 36:55] [debug variable = m]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %a, i32 4) nounwind, !dbg !201 ; [debug line = 36:62]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %g, i32 4) nounwind, !dbg !203 ; [debug line = 36:90]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %m, i32 4) nounwind, !dbg !204 ; [debug line = 36:118]
  store float 0.000000e+00, float* %g, align 4, !dbg !205 ; [debug line = 37:2]
  store float 0.000000e+00, float* %a, align 4, !dbg !206 ; [debug line = 38:2]
  store float 0.000000e+00, float* %m, align 4, !dbg !207 ; [debug line = 39:2]
  call void @llvm.dbg.declare(metadata !{[4 x float]* %s}, metadata !208), !dbg !209 ; [debug line = 40:8] [debug variable = s]
  call void @llvm.dbg.declare(metadata !{[4 x float]* %qDot}, metadata !210), !dbg !211 ; [debug line = 41:8] [debug variable = qDot]
  %m.addr = getelementptr inbounds float* %m, i64 1, !dbg !212 ; [#uses=2 type=float*] [debug line = 46:2]
  %m.load = load float* %m.addr, align 4, !dbg !212 ; [#uses=2 type=float] [debug line = 46:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load) nounwind
  %tmp = fcmp oeq float %m.load, 0.000000e+00, !dbg !212 ; [#uses=1 type=i1] [debug line = 46:2]
  br i1 %tmp, label %1, label %._crit_edge, !dbg !212 ; [debug line = 46:2]

; <label>:1                                       ; preds = %0
  %m.addr.1 = getelementptr inbounds float* %m, i64 2, !dbg !212 ; [#uses=1 type=float*] [debug line = 46:2]
  %m.load.1 = load float* %m.addr.1, align 4, !dbg !212 ; [#uses=2 type=float] [debug line = 46:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.1) nounwind
  %tmp.96 = fcmp oeq float %m.load.1, 0.000000e+00, !dbg !212 ; [#uses=1 type=i1] [debug line = 46:2]
  br i1 %tmp.96, label %2, label %._crit_edge, !dbg !212 ; [debug line = 46:2]

; <label>:2                                       ; preds = %1
  %m.addr.2 = getelementptr inbounds float* %m, i64 3, !dbg !212 ; [#uses=1 type=float*] [debug line = 46:2]
  %m.load.2 = load float* %m.addr.2, align 4, !dbg !212 ; [#uses=2 type=float] [debug line = 46:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.2) nounwind
  %tmp.97 = fcmp oeq float %m.load.2, 0.000000e+00, !dbg !212 ; [#uses=1 type=i1] [debug line = 46:2]
  br i1 %tmp.97, label %3, label %._crit_edge, !dbg !212 ; [debug line = 46:2]

; <label>:3                                       ; preds = %2
  call fastcc void @MadgwickAHRSupdateIMU(float* %g, float* %a), !dbg !213 ; [debug line = 47:3]
  br label %6, !dbg !215                          ; [debug line = 48:3]

._crit_edge:                                      ; preds = %2, %1, %0
  %q.load = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !216 ; [#uses=8 type=float] [debug line = 52:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load) nounwind
  %tmp.98 = fsub float -0.000000e+00, %q.load, !dbg !216 ; [#uses=1 type=float] [debug line = 52:2]
  %g.addr = getelementptr inbounds float* %g, i64 1, !dbg !216 ; [#uses=1 type=float*] [debug line = 52:2]
  %g.load = load float* %g.addr, align 4, !dbg !216 ; [#uses=8 type=float] [debug line = 52:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load) nounwind
  %tmp.99 = fmul float %g.load, %tmp.98, !dbg !216 ; [#uses=1 type=float] [debug line = 52:2]
  %q.load.8 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !216 ; [#uses=6 type=float] [debug line = 52:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.8) nounwind
  %g.addr.3 = getelementptr inbounds float* %g, i64 2, !dbg !216 ; [#uses=1 type=float*] [debug line = 52:2]
  %g.load.3 = load float* %g.addr.3, align 4, !dbg !216 ; [#uses=8 type=float] [debug line = 52:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.3) nounwind
  %tmp.100 = fmul float %q.load.8, %g.load.3, !dbg !216 ; [#uses=1 type=float] [debug line = 52:2]
  %tmp.101 = fsub float %tmp.99, %tmp.100, !dbg !216 ; [#uses=1 type=float] [debug line = 52:2]
  %q.load.9 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !216 ; [#uses=6 type=float] [debug line = 52:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.9) nounwind
  %g.addr.4 = getelementptr inbounds float* %g, i64 3, !dbg !216 ; [#uses=1 type=float*] [debug line = 52:2]
  %g.load.4 = load float* %g.addr.4, align 4, !dbg !216 ; [#uses=8 type=float] [debug line = 52:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.4) nounwind
  %tmp.102 = fmul float %q.load.9, %g.load.4, !dbg !216 ; [#uses=1 type=float] [debug line = 52:2]
  %tmp.103 = fsub float %tmp.101, %tmp.102, !dbg !216 ; [#uses=1 type=float] [debug line = 52:2]
  %tmp.104 = fmul float %tmp.103, 5.000000e-01, !dbg !216 ; [#uses=1 type=float] [debug line = 52:2]
  %qDot.addr = getelementptr inbounds [4 x float]* %qDot, i64 0, i64 0, !dbg !216 ; [#uses=3 type=float*] [debug line = 52:2]
  store float %tmp.104, float* %qDot.addr, align 16, !dbg !216 ; [debug line = 52:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load) nounwind
  %tmp.105 = fmul float %q.load, %g.load, !dbg !217 ; [#uses=1 type=float] [debug line = 54:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.8) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.4) nounwind
  %tmp.106 = fmul float %q.load.8, %g.load.4, !dbg !217 ; [#uses=1 type=float] [debug line = 54:2]
  %tmp.107 = fadd float %tmp.105, %tmp.106, !dbg !217 ; [#uses=1 type=float] [debug line = 54:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.9) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.3) nounwind
  %tmp.108 = fmul float %q.load.9, %g.load.3, !dbg !217 ; [#uses=1 type=float] [debug line = 54:2]
  %tmp.109 = fsub float %tmp.107, %tmp.108, !dbg !217 ; [#uses=1 type=float] [debug line = 54:2]
  %tmp.110 = fmul float %tmp.109, 5.000000e-01, !dbg !217 ; [#uses=1 type=float] [debug line = 54:2]
  %qDot.addr.4 = getelementptr inbounds [4 x float]* %qDot, i64 0, i64 1, !dbg !217 ; [#uses=1 type=float*] [debug line = 54:2]
  store float %tmp.110, float* %qDot.addr.4, align 4, !dbg !217 ; [debug line = 54:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.3) nounwind
  %tmp.111 = fmul float %q.load, %g.load.3, !dbg !218 ; [#uses=1 type=float] [debug line = 56:2]
  %q.load.10 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !218 ; [#uses=4 type=float] [debug line = 56:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.10) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.4) nounwind
  %tmp.112 = fmul float %q.load.10, %g.load.4, !dbg !218 ; [#uses=1 type=float] [debug line = 56:2]
  %tmp.113 = fsub float %tmp.111, %tmp.112, !dbg !218 ; [#uses=1 type=float] [debug line = 56:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.9) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load) nounwind
  %tmp.114 = fmul float %q.load.9, %g.load, !dbg !218 ; [#uses=1 type=float] [debug line = 56:2]
  %tmp.115 = fadd float %tmp.113, %tmp.114, !dbg !218 ; [#uses=1 type=float] [debug line = 56:2]
  %tmp.116 = fmul float %tmp.115, 5.000000e-01, !dbg !218 ; [#uses=1 type=float] [debug line = 56:2]
  %qDot.addr.5 = getelementptr inbounds [4 x float]* %qDot, i64 0, i64 2, !dbg !218 ; [#uses=1 type=float*] [debug line = 56:2]
  store float %tmp.116, float* %qDot.addr.5, align 8, !dbg !218 ; [debug line = 56:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.4) nounwind
  %tmp.117 = fmul float %q.load, %g.load.4, !dbg !219 ; [#uses=1 type=float] [debug line = 58:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.10) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load.3) nounwind
  %tmp.118 = fmul float %q.load.10, %g.load.3, !dbg !219 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp.119 = fadd float %tmp.117, %tmp.118, !dbg !219 ; [#uses=1 type=float] [debug line = 58:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.8) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %g.load) nounwind
  %tmp.120 = fmul float %q.load.8, %g.load, !dbg !219 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp.121 = fsub float %tmp.119, %tmp.120, !dbg !219 ; [#uses=1 type=float] [debug line = 58:2]
  %tmp.122 = fmul float %tmp.121, 5.000000e-01, !dbg !219 ; [#uses=1 type=float] [debug line = 58:2]
  %qDot.addr.6 = getelementptr inbounds [4 x float]* %qDot, i64 0, i64 3, !dbg !219 ; [#uses=1 type=float*] [debug line = 58:2]
  store float %tmp.122, float* %qDot.addr.6, align 4, !dbg !219 ; [debug line = 58:2]
  %a.addr = getelementptr inbounds float* %a, i64 1, !dbg !220 ; [#uses=2 type=float*] [debug line = 62:2]
  %a.load = load float* %a.addr, align 4, !dbg !220 ; [#uses=2 type=float] [debug line = 62:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load) nounwind
  %tmp.123 = fcmp oeq float %a.load, 0.000000e+00, !dbg !220 ; [#uses=1 type=i1] [debug line = 62:2]
  br i1 %tmp.123, label %4, label %._crit_edge3, !dbg !220 ; [debug line = 62:2]

; <label>:4                                       ; preds = %._crit_edge
  %a.addr.5 = getelementptr inbounds float* %a, i64 2, !dbg !220 ; [#uses=1 type=float*] [debug line = 62:2]
  %a.load.6 = load float* %a.addr.5, align 4, !dbg !220 ; [#uses=2 type=float] [debug line = 62:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.6) nounwind
  %tmp.124 = fcmp oeq float %a.load.6, 0.000000e+00, !dbg !220 ; [#uses=1 type=i1] [debug line = 62:2]
  br i1 %tmp.124, label %5, label %._crit_edge3, !dbg !220 ; [debug line = 62:2]

; <label>:5                                       ; preds = %4
  %a.addr.6 = getelementptr inbounds float* %a, i64 3, !dbg !220 ; [#uses=1 type=float*] [debug line = 62:2]
  %a.load.7 = load float* %a.addr.6, align 4, !dbg !220 ; [#uses=2 type=float] [debug line = 62:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.7) nounwind
  %tmp.125 = fcmp oeq float %a.load.7, 0.000000e+00, !dbg !220 ; [#uses=1 type=i1] [debug line = 62:2]
  br i1 %tmp.125, label %._crit_edge5, label %._crit_edge3, !dbg !220 ; [debug line = 62:2]

._crit_edge3:                                     ; preds = %5, %4, %._crit_edge
  call fastcc void @normalise(float* %a), !dbg !221 ; [debug line = 65:3]
  call fastcc void @normalise(float* %m), !dbg !223 ; [debug line = 68:3]
  %q.load.11 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), align 16, !dbg !224 ; [#uses=23 type=float] [debug line = 71:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  %_2q0 = fmul float %q.load.11, 2.000000e+00, !dbg !224 ; [#uses=6 type=float] [debug line = 71:3]
  %m.load.3 = load float* %m.addr, align 4, !dbg !224 ; [#uses=17 type=float] [debug line = 71:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.3) nounwind
  %_2q0mx = fmul float %_2q0, %m.load.3, !dbg !224 ; [#uses=2 type=float] [debug line = 71:3]
  call void @llvm.dbg.value(metadata !{float %_2q0mx}, i64 0, metadata !225), !dbg !224 ; [debug line = 71:3] [debug variable = _2q0mx]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  %m.addr.3 = getelementptr inbounds float* %m, i64 2, !dbg !226 ; [#uses=1 type=float*] [debug line = 72:3]
  %m.load.4 = load float* %m.addr.3, align 4, !dbg !226 ; [#uses=19 type=float] [debug line = 72:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.4) nounwind
  %_2q0my = fmul float %_2q0, %m.load.4, !dbg !226 ; [#uses=2 type=float] [debug line = 72:3]
  call void @llvm.dbg.value(metadata !{float %_2q0my}, i64 0, metadata !227), !dbg !226 ; [debug line = 72:3] [debug variable = _2q0my]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  %m.addr.4 = getelementptr inbounds float* %m, i64 3, !dbg !228 ; [#uses=1 type=float*] [debug line = 73:3]
  %m.load.5 = load float* %m.addr.4, align 4, !dbg !228 ; [#uses=19 type=float] [debug line = 73:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.5) nounwind
  %_2q0mz = fmul float %_2q0, %m.load.5, !dbg !228 ; [#uses=2 type=float] [debug line = 73:3]
  call void @llvm.dbg.value(metadata !{float %_2q0mz}, i64 0, metadata !229), !dbg !228 ; [debug line = 73:3] [debug variable = _2q0mz]
  %q.load.12 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 1), align 4, !dbg !230 ; [#uses=27 type=float] [debug line = 74:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  %_2q1 = fmul float %q.load.12, 2.000000e+00, !dbg !230 ; [#uses=5 type=float] [debug line = 74:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.3) nounwind
  %_2q1mx = fmul float %_2q1, %m.load.3, !dbg !230 ; [#uses=2 type=float] [debug line = 74:3]
  call void @llvm.dbg.value(metadata !{float %_2q1mx}, i64 0, metadata !231), !dbg !230 ; [debug line = 74:3] [debug variable = _2q1mx]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  call void @llvm.dbg.value(metadata !{float %_2q0}, i64 0, metadata !232), !dbg !233 ; [debug line = 75:3] [debug variable = _2q0]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  call void @llvm.dbg.value(metadata !{float %_2q1}, i64 0, metadata !234), !dbg !235 ; [debug line = 76:3] [debug variable = _2q1]
  %q.load.13 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 2), align 8, !dbg !236 ; [#uses=35 type=float] [debug line = 77:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %_2q2 = fmul float %q.load.13, 2.000000e+00, !dbg !236 ; [#uses=5 type=float] [debug line = 77:3]
  call void @llvm.dbg.value(metadata !{float %_2q2}, i64 0, metadata !237), !dbg !236 ; [debug line = 77:3] [debug variable = _2q2]
  %q.load.14 = load float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 3), align 4, !dbg !238 ; [#uses=35 type=float] [debug line = 78:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %_2q3 = fmul float %q.load.14, 2.000000e+00, !dbg !238 ; [#uses=2 type=float] [debug line = 78:3]
  call void @llvm.dbg.value(metadata !{float %_2q3}, i64 0, metadata !239), !dbg !238 ; [debug line = 78:3] [debug variable = _2q3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %_2q0q2 = fmul float %_2q0, %q.load.13, !dbg !240 ; [#uses=1 type=float] [debug line = 79:3]
  call void @llvm.dbg.value(metadata !{float %_2q0q2}, i64 0, metadata !241), !dbg !240 ; [debug line = 79:3] [debug variable = _2q0q2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %_2q2q3 = fmul float %_2q2, %q.load.14, !dbg !242 ; [#uses=1 type=float] [debug line = 80:3]
  call void @llvm.dbg.value(metadata !{float %_2q2q3}, i64 0, metadata !243), !dbg !242 ; [debug line = 80:3] [debug variable = _2q2q3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  %q0q0 = fmul float %q.load.11, %q.load.11, !dbg !244 ; [#uses=3 type=float] [debug line = 81:3]
  call void @llvm.dbg.value(metadata !{float %q0q0}, i64 0, metadata !245), !dbg !244 ; [debug line = 81:3] [debug variable = q0q0]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  %q0q1 = fmul float %q.load.11, %q.load.12, !dbg !246 ; [#uses=2 type=float] [debug line = 82:3]
  call void @llvm.dbg.value(metadata !{float %q0q1}, i64 0, metadata !247), !dbg !246 ; [debug line = 82:3] [debug variable = q0q1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %q0q2 = fmul float %q.load.11, %q.load.13, !dbg !248 ; [#uses=2 type=float] [debug line = 83:3]
  call void @llvm.dbg.value(metadata !{float %q0q2}, i64 0, metadata !249), !dbg !248 ; [debug line = 83:3] [debug variable = q0q2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %q0q3 = fmul float %q.load.11, %q.load.14, !dbg !250 ; [#uses=1 type=float] [debug line = 84:3]
  call void @llvm.dbg.value(metadata !{float %q0q3}, i64 0, metadata !251), !dbg !250 ; [debug line = 84:3] [debug variable = q0q3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  %q1q1 = fmul float %q.load.12, %q.load.12, !dbg !252 ; [#uses=5 type=float] [debug line = 85:3]
  call void @llvm.dbg.value(metadata !{float %q1q1}, i64 0, metadata !253), !dbg !252 ; [debug line = 85:3] [debug variable = q1q1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %q1q2 = fmul float %q.load.12, %q.load.13, !dbg !254 ; [#uses=1 type=float] [debug line = 86:3]
  call void @llvm.dbg.value(metadata !{float %q1q2}, i64 0, metadata !255), !dbg !254 ; [debug line = 86:3] [debug variable = q1q2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %q1q3 = fmul float %q.load.12, %q.load.14, !dbg !256 ; [#uses=3 type=float] [debug line = 87:3]
  call void @llvm.dbg.value(metadata !{float %q1q3}, i64 0, metadata !257), !dbg !256 ; [debug line = 87:3] [debug variable = q1q3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %q2q2 = fmul float %q.load.13, %q.load.13, !dbg !258 ; [#uses=6 type=float] [debug line = 88:3]
  call void @llvm.dbg.value(metadata !{float %q2q2}, i64 0, metadata !259), !dbg !258 ; [debug line = 88:3] [debug variable = q2q2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %q2q3 = fmul float %q.load.13, %q.load.14, !dbg !260 ; [#uses=1 type=float] [debug line = 89:3]
  call void @llvm.dbg.value(metadata !{float %q2q3}, i64 0, metadata !261), !dbg !260 ; [debug line = 89:3] [debug variable = q2q3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %q3q3 = fmul float %q.load.14, %q.load.14, !dbg !262 ; [#uses=4 type=float] [debug line = 90:3]
  call void @llvm.dbg.value(metadata !{float %q3q3}, i64 0, metadata !263), !dbg !262 ; [debug line = 90:3] [debug variable = q3q3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.3) nounwind
  %tmp.128 = fmul float %m.load.3, %q0q0, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %tmp.129 = fmul float %_2q0my, %q.load.14, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp.130 = fsub float %tmp.128, %tmp.129, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %tmp.131 = fmul float %_2q0mz, %q.load.13, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp.132 = fadd float %tmp.130, %tmp.131, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.3) nounwind
  %tmp.133 = fmul float %m.load.3, %q1q1, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp.134 = fadd float %tmp.132, %tmp.133, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.4) nounwind
  %tmp.135 = fmul float %_2q1, %m.load.4, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %tmp.136 = fmul float %tmp.135, %q.load.13, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp.137 = fadd float %tmp.134, %tmp.136, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.5) nounwind
  %tmp.138 = fmul float %_2q1, %m.load.5, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %tmp.139 = fmul float %tmp.138, %q.load.14, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp.140 = fadd float %tmp.137, %tmp.139, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.3) nounwind
  %tmp.141 = fmul float %m.load.3, %q2q2, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  %tmp.142 = fsub float %tmp.140, %tmp.141, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.3) nounwind
  %tmp.143 = fmul float %m.load.3, %q3q3, !dbg !264 ; [#uses=1 type=float] [debug line = 94:3]
  %hx = fsub float %tmp.142, %tmp.143, !dbg !264  ; [#uses=2 type=float] [debug line = 94:3]
  call void @llvm.dbg.value(metadata !{float %hx}, i64 0, metadata !265), !dbg !264 ; [debug line = 94:3] [debug variable = hx]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %tmp.144 = fmul float %_2q0mx, %q.load.14, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.4) nounwind
  %tmp.145 = fmul float %m.load.4, %q0q0, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp.146 = fadd float %tmp.144, %tmp.145, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  %tmp.147 = fmul float %_2q0mz, %q.load.12, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp.148 = fsub float %tmp.146, %tmp.147, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %tmp.149 = fmul float %_2q1mx, %q.load.13, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp.150 = fadd float %tmp.148, %tmp.149, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.4) nounwind
  %tmp.151 = fmul float %m.load.4, %q1q1, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp.152 = fsub float %tmp.150, %tmp.151, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.4) nounwind
  %tmp.153 = fmul float %m.load.4, %q2q2, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp.154 = fadd float %tmp.152, %tmp.153, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.5) nounwind
  %tmp.155 = fmul float %_2q2, %m.load.5, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %tmp.156 = fmul float %tmp.155, %q.load.14, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  %tmp.157 = fadd float %tmp.154, %tmp.156, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.4) nounwind
  %tmp.158 = fmul float %m.load.4, %q3q3, !dbg !266 ; [#uses=1 type=float] [debug line = 96:3]
  %hy = fsub float %tmp.157, %tmp.158, !dbg !266  ; [#uses=2 type=float] [debug line = 96:3]
  call void @llvm.dbg.value(metadata !{float %hy}, i64 0, metadata !267), !dbg !266 ; [debug line = 96:3] [debug variable = hy]
  %tmp.159 = fmul float %hx, %hx, !dbg !268       ; [#uses=1 type=float] [debug line = 97:10]
  %tmp.160 = fmul float %hy, %hy, !dbg !268       ; [#uses=1 type=float] [debug line = 97:10]
  %tmp.161 = fadd float %tmp.159, %tmp.160, !dbg !268 ; [#uses=1 type=float] [debug line = 97:10]
  %_2bx = call float @llvm.sqrt.f32(float %tmp.161), !dbg !268 ; [#uses=9 type=float] [debug line = 97:10]
  call void @llvm.dbg.value(metadata !{float %_2bx}, i64 0, metadata !269), !dbg !268 ; [debug line = 97:10] [debug variable = _2bx]
  %tmp.162 = fsub float -0.000000e+00, %_2q0mx, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %tmp.163 = fmul float %q.load.13, %tmp.162, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  %tmp.164 = fmul float %_2q0my, %q.load.12, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp.165 = fadd float %tmp.163, %tmp.164, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.5) nounwind
  %tmp.166 = fmul float %m.load.5, %q0q0, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp.167 = fadd float %tmp.165, %tmp.166, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %tmp.168 = fmul float %_2q1mx, %q.load.14, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp.169 = fadd float %tmp.167, %tmp.168, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.5) nounwind
  %tmp.170 = fmul float %m.load.5, %q1q1, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp.171 = fsub float %tmp.169, %tmp.170, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.4) nounwind
  %tmp.172 = fmul float %_2q2, %m.load.4, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %tmp.173 = fmul float %tmp.172, %q.load.14, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp.174 = fadd float %tmp.171, %tmp.173, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.5) nounwind
  %tmp.175 = fmul float %m.load.5, %q2q2, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  %tmp.176 = fsub float %tmp.174, %tmp.175, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.5) nounwind
  %tmp.177 = fmul float %m.load.5, %q3q3, !dbg !270 ; [#uses=1 type=float] [debug line = 99:3]
  %_2bz = fadd float %tmp.176, %tmp.177, !dbg !270 ; [#uses=8 type=float] [debug line = 99:3]
  call void @llvm.dbg.value(metadata !{float %_2bz}, i64 0, metadata !271), !dbg !270 ; [debug line = 99:3] [debug variable = _2bz]
  %_4bx = fmul float %_2bx, 2.000000e+00, !dbg !272 ; [#uses=1 type=float] [debug line = 100:3]
  call void @llvm.dbg.value(metadata !{float %_4bx}, i64 0, metadata !273), !dbg !272 ; [debug line = 100:3] [debug variable = _4bx]
  %_4bz = fmul float %_2bz, 2.000000e+00, !dbg !274 ; [#uses=2 type=float] [debug line = 101:3]
  call void @llvm.dbg.value(metadata !{float %_4bz}, i64 0, metadata !275), !dbg !274 ; [debug line = 101:3] [debug variable = _4bz]
  %tmp.178 = fsub float -0.000000e+00, %_2q2, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.179 = fmul float %q1q3, 2.000000e+00, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.180 = fsub float %tmp.179, %_2q0q2, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %a.load.8 = load float* %a.addr, align 4, !dbg !276 ; [#uses=5 type=float] [debug line = 105:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.8) nounwind
  %tmp.181 = fsub float %tmp.180, %a.load.8, !dbg !276 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp.182 = fmul float %tmp.181, %tmp.178, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.183 = fmul float %q0q1, 2.000000e+00, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.184 = fadd float %tmp.183, %_2q2q3, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %a.addr.7 = getelementptr inbounds float* %a, i64 2, !dbg !276 ; [#uses=1 type=float*] [debug line = 105:3]
  %a.load.9 = load float* %a.addr.7, align 4, !dbg !276 ; [#uses=5 type=float] [debug line = 105:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.9) nounwind
  %tmp.185 = fsub float %tmp.184, %a.load.9, !dbg !276 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp.186 = fmul float %_2q1, %tmp.185, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.187 = fadd float %tmp.182, %tmp.186, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %tmp.188 = fmul float %_2bz, %q.load.13, !dbg !276 ; [#uses=2 type=float] [debug line = 105:3]
  %tmp.189 = fsub float 5.000000e-01, %q2q2, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.190 = fsub float %tmp.189, %q3q3, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.191 = fmul float %_2bx, %tmp.190, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.192 = fsub float %q1q3, %q0q2, !dbg !276   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.193 = fmul float %_2bz, %tmp.192, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.194 = fadd float %tmp.191, %tmp.193, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.3) nounwind
  %tmp.195 = fsub float %tmp.194, %m.load.3, !dbg !276 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp.196 = fmul float %tmp.188, %tmp.195, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.197 = fsub float %tmp.187, %tmp.196, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.198 = fsub float -0.000000e+00, %_2bx, !dbg !276 ; [#uses=2 type=float] [debug line = 105:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %tmp.199 = fmul float %q.load.14, %tmp.198, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  %tmp.200 = fmul float %_2bz, %q.load.12, !dbg !276 ; [#uses=2 type=float] [debug line = 105:3]
  %tmp.201 = fadd float %tmp.199, %tmp.200, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.202 = fsub float %q1q2, %q0q3, !dbg !276   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.203 = fmul float %_2bx, %tmp.202, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.204 = fadd float %q0q1, %q2q3, !dbg !276   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.205 = fmul float %_2bz, %tmp.204, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.206 = fadd float %tmp.203, %tmp.205, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.4) nounwind
  %tmp.207 = fsub float %tmp.206, %m.load.4, !dbg !276 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp.208 = fmul float %tmp.201, %tmp.207, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.209 = fadd float %tmp.197, %tmp.208, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %tmp.210 = fmul float %_2bx, %q.load.13, !dbg !276 ; [#uses=2 type=float] [debug line = 105:3]
  %tmp.211 = fadd float %q0q2, %q1q3, !dbg !276   ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.212 = fmul float %_2bx, %tmp.211, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.213 = fsub float 5.000000e-01, %q1q1, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.214 = fsub float %tmp.213, %q2q2, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.215 = fmul float %_2bz, %tmp.214, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.216 = fadd float %tmp.212, %tmp.215, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.5) nounwind
  %tmp.217 = fsub float %tmp.216, %m.load.5, !dbg !276 ; [#uses=4 type=float] [debug line = 105:3]
  %tmp.218 = fmul float %tmp.210, %tmp.217, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %tmp.219 = fadd float %tmp.209, %tmp.218, !dbg !276 ; [#uses=1 type=float] [debug line = 105:3]
  %s.addr = getelementptr inbounds [4 x float]* %s, i64 0, i64 0, !dbg !276 ; [#uses=3 type=float*] [debug line = 105:3]
  store float %tmp.219, float* %s.addr, align 16, !dbg !276 ; [debug line = 105:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.8) nounwind
  %tmp.220 = fmul float %_2q3, %tmp.181, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.9) nounwind
  %tmp.221 = fmul float %_2q0, %tmp.185, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp.222 = fadd float %tmp.220, %tmp.221, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  %tmp.223 = fmul float %q.load.12, 4.000000e+00, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp.224 = fmul float %q1q1, 2.000000e+00, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp.225 = fsub float 1.000000e+00, %tmp.224, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp.226 = fmul float %q2q2, 2.000000e+00, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp.227 = fsub float %tmp.225, %tmp.226, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %a.addr.8 = getelementptr inbounds float* %a, i64 3, !dbg !277 ; [#uses=1 type=float*] [debug line = 107:3]
  %a.load.10 = load float* %a.addr.8, align 4, !dbg !277 ; [#uses=3 type=float] [debug line = 107:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.10) nounwind
  %tmp.228 = fsub float %tmp.227, %a.load.10, !dbg !277 ; [#uses=2 type=float] [debug line = 107:3]
  %tmp.229 = fmul float %tmp.223, %tmp.228, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp.230 = fsub float %tmp.222, %tmp.229, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %tmp.231 = fmul float %_2bz, %q.load.14, !dbg !277 ; [#uses=2 type=float] [debug line = 107:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.3) nounwind
  %tmp.232 = fmul float %tmp.231, %tmp.195, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp.233 = fadd float %tmp.230, %tmp.232, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  %tmp.234 = fmul float %_2bz, %q.load.11, !dbg !277 ; [#uses=2 type=float] [debug line = 107:3]
  %tmp.235 = fadd float %tmp.210, %tmp.234, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.4) nounwind
  %tmp.236 = fmul float %tmp.235, %tmp.207, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp.237 = fadd float %tmp.233, %tmp.236, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %tmp.238 = fmul float %_2bx, %q.load.14, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  %tmp.239 = fmul float %_4bz, %q.load.12, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp.240 = fsub float %tmp.238, %tmp.239, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.5) nounwind
  %tmp.241 = fmul float %tmp.240, %tmp.217, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %tmp.242 = fadd float %tmp.237, %tmp.241, !dbg !277 ; [#uses=1 type=float] [debug line = 107:3]
  %s.addr.4 = getelementptr inbounds [4 x float]* %s, i64 0, i64 1, !dbg !277 ; [#uses=1 type=float*] [debug line = 107:3]
  store float %tmp.242, float* %s.addr.4, align 4, !dbg !277 ; [debug line = 107:3]
  %tmp.243 = fsub float -0.000000e+00, %_2q0, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.8) nounwind
  %tmp.244 = fmul float %tmp.181, %tmp.243, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.9) nounwind
  %tmp.245 = fmul float %_2q3, %tmp.185, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.246 = fadd float %tmp.244, %tmp.245, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %tmp.247 = fmul float %q.load.13, 4.000000e+00, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.10) nounwind
  %tmp.248 = fmul float %tmp.247, %tmp.228, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.249 = fsub float %tmp.246, %tmp.248, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.250 = fsub float -0.000000e+00, %_4bx, !dbg !278 ; [#uses=2 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %tmp.251 = fmul float %q.load.13, %tmp.250, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  %tmp.252 = fsub float %tmp.251, %tmp.234, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.3) nounwind
  %tmp.253 = fmul float %tmp.252, %tmp.195, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.254 = fadd float %tmp.249, %tmp.253, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  %tmp.255 = fmul float %_2bx, %q.load.12, !dbg !278 ; [#uses=2 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %tmp.256 = fadd float %tmp.255, %tmp.231, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.4) nounwind
  %tmp.257 = fmul float %tmp.256, %tmp.207, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.258 = fadd float %tmp.254, %tmp.257, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  %tmp.259 = fmul float %_2bx, %q.load.11, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %tmp.260 = fmul float %_4bz, %q.load.13, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.261 = fsub float %tmp.259, %tmp.260, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.5) nounwind
  %tmp.262 = fmul float %tmp.261, %tmp.217, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  %tmp.263 = fadd float %tmp.258, %tmp.262, !dbg !278 ; [#uses=1 type=float] [debug line = 109:3]
  %s.addr.5 = getelementptr inbounds [4 x float]* %s, i64 0, i64 2, !dbg !278 ; [#uses=1 type=float*] [debug line = 109:3]
  store float %tmp.263, float* %s.addr.5, align 8, !dbg !278 ; [debug line = 109:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.8) nounwind
  %tmp.264 = fmul float %_2q1, %tmp.181, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a.load.9) nounwind
  %tmp.265 = fmul float %_2q2, %tmp.185, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.266 = fadd float %tmp.264, %tmp.265, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.14) nounwind
  %tmp.267 = fmul float %q.load.14, %tmp.250, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  %tmp.268 = fadd float %tmp.267, %tmp.200, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.3) nounwind
  %tmp.269 = fmul float %tmp.268, %tmp.195, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.270 = fadd float %tmp.266, %tmp.269, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.11) nounwind
  %tmp.271 = fmul float %q.load.11, %tmp.198, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.13) nounwind
  %tmp.272 = fadd float %tmp.271, %tmp.188, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.4) nounwind
  %tmp.273 = fmul float %tmp.272, %tmp.207, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.274 = fadd float %tmp.270, %tmp.273, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %q.load.12) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %m.load.5) nounwind
  %tmp.275 = fmul float %tmp.255, %tmp.217, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  %tmp.276 = fadd float %tmp.274, %tmp.275, !dbg !279 ; [#uses=1 type=float] [debug line = 111:3]
  %s.addr.6 = getelementptr inbounds [4 x float]* %s, i64 0, i64 3, !dbg !279 ; [#uses=1 type=float*] [debug line = 111:3]
  store float %tmp.276, float* %s.addr.6, align 4, !dbg !279 ; [debug line = 111:3]
  call fastcc void @normalise(float* %s.addr), !dbg !280 ; [debug line = 114:3]
  %beta.load = load float* @beta, align 4, !dbg !281 ; [#uses=1 type=float] [debug line = 117:3]
  call fastcc void @feedbackStep(float* %qDot.addr, float %beta.load, float* %s.addr), !dbg !281 ; [debug line = 117:3]
  br label %._crit_edge5, !dbg !282               ; [debug line = 118:2]

._crit_edge5:                                     ; preds = %._crit_edge3, %5
  call fastcc void @integrateQdot(float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0), float* %qDot.addr), !dbg !283 ; [debug line = 121:2]
  call fastcc void @normalise(float* getelementptr inbounds ([4 x float]* @q, i64 0, i64 0)), !dbg !284 ; [debug line = 124:2]
  br label %6, !dbg !285                          ; [debug line = 125:1]

; <label>:6                                       ; preds = %._crit_edge5, %3
  ret void, !dbg !285                             ; [debug line = 125:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!37, !44, !50, !56, !60, !64}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/toni/Documents/vivado_projects/MadgwickAHRS/MadgwickAHRS/solution2/.autopilot/db/MadgwickAHRS.pragma.2.cpp", metadata !"/home/toni/Documents/vivado_projects/MadgwickAHRS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !26} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !16, metadata !19, metadata !22, metadata !25}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"MadgwickAHRSupdate", metadata !"MadgwickAHRSupdate", metadata !"_Z18MadgwickAHRSupdatePfS_S_", metadata !6, i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @MadgwickAHRSupdate, null, null, metadata !11, i32 36} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"MadgwickAHRS.cpp", metadata !"/home/toni/Documents/vivado_projects/MadgwickAHRS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"MadgwickAHRSupdateIMU", metadata !"MadgwickAHRSupdateIMU", metadata !"_Z21MadgwickAHRSupdateIMUPfS_", metadata !6, i32 130, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*)* @MadgwickAHRSupdateIMU, null, null, metadata !11, i32 130} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !9, metadata !9}
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"invSqrt", metadata !"invSqrt", metadata !"_Z7invSqrtf", metadata !6, i32 193, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float)* @invSqrt, null, null, metadata !11, i32 193} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{metadata !10, metadata !10}
!19 = metadata !{i32 786478, i32 0, metadata !6, metadata !"normalise", metadata !"normalise", metadata !"_Z9normalisePf", metadata !6, i32 206, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*)* @normalise, null, null, metadata !11, i32 206} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !9}
!22 = metadata !{i32 786478, i32 0, metadata !6, metadata !"feedbackStep", metadata !"feedbackStep", metadata !"_Z12feedbackStepPffS_", metadata !6, i32 229, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float, float*)* @feedbackStep, null, null, metadata !11, i32 229} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !9, metadata !10, metadata !9}
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"integrateQdot", metadata !"integrateQdot", metadata !"_Z13integrateQdotPfS_", metadata !6, i32 237, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*)* @integrateQdot, null, null, metadata !11, i32 237} ; [ DW_TAG_subprogram ]
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !28, metadata !30, metadata !34}
!28 = metadata !{i32 786484, i32 0, null, metadata !"beta", metadata !"beta", metadata !"", metadata !29, i32 26, metadata !10, i32 0, i32 1, float* @beta} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786473, metadata !"./MadgwickAHRS.h", metadata !"/home/toni/Documents/vivado_projects/MadgwickAHRS", null} ; [ DW_TAG_file_type ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"q", metadata !"q", metadata !"", metadata !29, i32 27, metadata !31, i32 0, i32 1, [4 x float]* @q} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !10, metadata !32, i32 0, i32 0} ; [ DW_TAG_array_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!34 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !35, i32 168, metadata !36, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/toni/Documents/vivado_projects/MadgwickAHRS", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!37 = metadata !{void (float*, float*, float*)* @MadgwickAHRSupdate, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!38 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!39 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"float*"}
!41 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"g", metadata !"a", metadata !"m"}
!43 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!44 = metadata !{void (float*, float*)* @MadgwickAHRSupdateIMU, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !43}
!45 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!46 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*"}
!48 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"g", metadata !"a"}
!50 = metadata !{float (float)* @invSqrt, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !43}
!51 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!52 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!54 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!56 = metadata !{void (float*)* @normalise, metadata !57, metadata !52, metadata !58, metadata !54, metadata !59, metadata !43}
!57 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"float*"}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"in"}
!60 = metadata !{void (float*, float, float*)* @feedbackStep, metadata !61, metadata !39, metadata !62, metadata !41, metadata !63, metadata !43}
!61 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 1}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float", metadata !"float*"}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"qDot", metadata !"beta", metadata !"s"}
!64 = metadata !{void (float*, float*)* @integrateQdot, metadata !45, metadata !46, metadata !47, metadata !48, metadata !65, metadata !43}
!65 = metadata !{metadata !"kernel_arg_name", metadata !"q", metadata !"qDot"}
!66 = metadata !{i32 786689, metadata !19, metadata !"in", metadata !6, i32 16777422, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 206, i32 22, metadata !19, null}
!68 = metadata !{i32 206, i32 30, metadata !69, null}
!69 = metadata !{i32 786443, metadata !19, i32 206, i32 29, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 209, i32 29, metadata !71, null}
!71 = metadata !{i32 786443, metadata !69, i32 209, i32 15, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 209, i32 44, metadata !73, null}
!73 = metadata !{i32 786443, metadata !71, i32 209, i32 43, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 210, i32 3, metadata !73, null}
!75 = metadata !{i32 786688, metadata !69, metadata !"SumOfSquare", metadata !6, i32 208, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 211, i32 2, metadata !73, null}
!77 = metadata !{i32 209, i32 38, metadata !71, null}
!78 = metadata !{i32 786688, metadata !71, metadata !"i", metadata !6, i32 209, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 212, i32 2, metadata !69, null}
!80 = metadata !{i32 213, i32 3, metadata !69, null}
!81 = metadata !{i32 215, i32 14, metadata !69, null}
!82 = metadata !{i32 786688, metadata !69, metadata !"recipNorm", metadata !6, i32 207, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 216, i32 33, metadata !84, null}
!84 = metadata !{i32 786443, metadata !69, i32 216, i32 19, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 216, i32 48, metadata !86, null}
!86 = metadata !{i32 786443, metadata !84, i32 216, i32 47, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 217, i32 3, metadata !86, null}
!88 = metadata !{i32 218, i32 2, metadata !86, null}
!89 = metadata !{i32 216, i32 42, metadata !84, null}
!90 = metadata !{i32 786688, metadata !84, metadata !"i", metadata !6, i32 216, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 219, i32 2, metadata !69, null}
!92 = metadata !{i32 220, i32 3, metadata !69, null}
!93 = metadata !{i32 222, i32 3, metadata !69, null}
!94 = metadata !{i32 224, i32 1, metadata !69, null}
!95 = metadata !{i32 786689, metadata !16, metadata !"x", metadata !6, i32 16777409, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 193, i32 21, metadata !16, null}
!97 = metadata !{i32 194, i32 24, metadata !98, null}
!98 = metadata !{i32 786443, metadata !16, i32 193, i32 24, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786688, metadata !98, metadata !"halfx", metadata !6, i32 194, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 195, i32 13, metadata !98, null}
!101 = metadata !{i32 786688, metadata !98, metadata !"y", metadata !6, i32 195, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 198, i32 2, metadata !98, null}
!103 = metadata !{i32 199, i32 2, metadata !98, null}
!104 = metadata !{i32 200, i32 2, metadata !98, null}
!105 = metadata !{i32 786689, metadata !25, metadata !"q", metadata !6, i32 16777453, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 237, i32 26, metadata !25, null}
!107 = metadata !{i32 786689, metadata !25, metadata !"qDot", metadata !6, i32 33554669, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 237, i32 38, metadata !25, null}
!109 = metadata !{i32 237, i32 48, metadata !110, null}
!110 = metadata !{i32 786443, metadata !25, i32 237, i32 47, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 237, i32 76, metadata !110, null}
!112 = metadata !{i32 238, i32 1, metadata !110, null}
!113 = metadata !{i32 238, i32 36, metadata !114, null}
!114 = metadata !{i32 786443, metadata !110, i32 238, i32 22, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 238, i32 51, metadata !116, null}
!116 = metadata !{i32 786443, metadata !114, i32 238, i32 50, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 239, i32 3, metadata !116, null}
!118 = metadata !{i32 240, i32 2, metadata !116, null}
!119 = metadata !{i32 238, i32 45, metadata !114, null}
!120 = metadata !{i32 786688, metadata !114, metadata !"i", metadata !6, i32 238, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 241, i32 1, metadata !110, null}
!122 = metadata !{i32 786689, metadata !22, metadata !"qDot", metadata !6, i32 16777445, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 229, i32 25, metadata !22, null}
!124 = metadata !{i32 786689, metadata !22, metadata !"beta", metadata !6, i32 33554661, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 229, i32 40, metadata !22, null}
!126 = metadata !{i32 786689, metadata !22, metadata !"s", metadata !6, i32 50331877, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 229, i32 52, metadata !22, null}
!128 = metadata !{i32 229, i32 59, metadata !129, null}
!129 = metadata !{i32 786443, metadata !22, i32 229, i32 58, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 229, i32 87, metadata !129, null}
!131 = metadata !{i32 230, i32 1, metadata !129, null}
!132 = metadata !{i32 229, i32 35, metadata !133, null}
!133 = metadata !{i32 786443, metadata !129, i32 229, i32 21, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 229, i32 50, metadata !135, null}
!135 = metadata !{i32 786443, metadata !133, i32 229, i32 49, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 230, i32 3, metadata !135, null}
!137 = metadata !{i32 231, i32 2, metadata !135, null}
!138 = metadata !{i32 229, i32 44, metadata !133, null}
!139 = metadata !{i32 786688, metadata !133, metadata !"i", metadata !6, i32 229, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 232, i32 1, metadata !129, null}
!141 = metadata !{i32 786689, metadata !13, metadata !"g", metadata !6, i32 16777346, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 130, i32 34, metadata !13, null}
!143 = metadata !{i32 786689, metadata !13, metadata !"a", metadata !6, i32 33554562, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 130, i32 46, metadata !13, null}
!145 = metadata !{i32 130, i32 53, metadata !146, null}
!146 = metadata !{i32 786443, metadata !13, i32 130, i32 52, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 130, i32 81, metadata !146, null}
!148 = metadata !{i32 786688, metadata !146, metadata !"s", metadata !6, i32 131, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 131, i32 8, metadata !146, null}
!150 = metadata !{i32 786688, metadata !146, metadata !"qDot", metadata !6, i32 132, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 132, i32 8, metadata !146, null}
!152 = metadata !{i32 136, i32 2, metadata !146, null}
!153 = metadata !{i32 138, i32 2, metadata !146, null}
!154 = metadata !{i32 140, i32 2, metadata !146, null}
!155 = metadata !{i32 142, i32 2, metadata !146, null}
!156 = metadata !{i32 145, i32 2, metadata !146, null}
!157 = metadata !{i32 148, i32 3, metadata !158, null}
!158 = metadata !{i32 786443, metadata !146, i32 145, i32 61, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 151, i32 3, metadata !158, null}
!160 = metadata !{i32 786688, metadata !146, metadata !"_2q0", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 152, i32 3, metadata !158, null}
!162 = metadata !{i32 786688, metadata !146, metadata !"_2q1", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 153, i32 3, metadata !158, null}
!164 = metadata !{i32 786688, metadata !146, metadata !"_2q2", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 154, i32 3, metadata !158, null}
!166 = metadata !{i32 786688, metadata !146, metadata !"_2q3", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 155, i32 3, metadata !158, null}
!168 = metadata !{i32 786688, metadata !146, metadata !"_4q0", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 156, i32 3, metadata !158, null}
!170 = metadata !{i32 786688, metadata !146, metadata !"_4q1", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 157, i32 3, metadata !158, null}
!172 = metadata !{i32 786688, metadata !146, metadata !"_4q2", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 158, i32 3, metadata !158, null}
!174 = metadata !{i32 786688, metadata !146, metadata !"_8q1", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 159, i32 3, metadata !158, null}
!176 = metadata !{i32 786688, metadata !146, metadata !"_8q2", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 160, i32 3, metadata !158, null}
!178 = metadata !{i32 786688, metadata !146, metadata !"q0q0", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 161, i32 3, metadata !158, null}
!180 = metadata !{i32 786688, metadata !146, metadata !"q1q1", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 162, i32 3, metadata !158, null}
!182 = metadata !{i32 786688, metadata !146, metadata !"q2q2", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 163, i32 3, metadata !158, null}
!184 = metadata !{i32 786688, metadata !146, metadata !"q3q3", metadata !6, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!185 = metadata !{i32 167, i32 3, metadata !158, null}
!186 = metadata !{i32 169, i32 3, metadata !158, null}
!187 = metadata !{i32 171, i32 3, metadata !158, null}
!188 = metadata !{i32 173, i32 3, metadata !158, null}
!189 = metadata !{i32 176, i32 3, metadata !158, null}
!190 = metadata !{i32 179, i32 3, metadata !158, null}
!191 = metadata !{i32 180, i32 2, metadata !158, null}
!192 = metadata !{i32 183, i32 2, metadata !146, null}
!193 = metadata !{i32 186, i32 2, metadata !146, null}
!194 = metadata !{i32 187, i32 1, metadata !146, null}
!195 = metadata !{i32 786689, metadata !5, metadata !"g", metadata !6, i32 16777252, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!196 = metadata !{i32 36, i32 31, metadata !5, null}
!197 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 33554468, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 36, i32 43, metadata !5, null}
!199 = metadata !{i32 786689, metadata !5, metadata !"m", metadata !6, i32 50331684, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 36, i32 55, metadata !5, null}
!201 = metadata !{i32 36, i32 62, metadata !202, null}
!202 = metadata !{i32 786443, metadata !5, i32 36, i32 61, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 36, i32 90, metadata !202, null}
!204 = metadata !{i32 36, i32 118, metadata !202, null}
!205 = metadata !{i32 37, i32 2, metadata !202, null}
!206 = metadata !{i32 38, i32 2, metadata !202, null}
!207 = metadata !{i32 39, i32 2, metadata !202, null}
!208 = metadata !{i32 786688, metadata !202, metadata !"s", metadata !6, i32 40, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 40, i32 8, metadata !202, null}
!210 = metadata !{i32 786688, metadata !202, metadata !"qDot", metadata !6, i32 41, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!211 = metadata !{i32 41, i32 8, metadata !202, null}
!212 = metadata !{i32 46, i32 2, metadata !202, null}
!213 = metadata !{i32 47, i32 3, metadata !214, null}
!214 = metadata !{i32 786443, metadata !202, i32 46, i32 58, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!215 = metadata !{i32 48, i32 3, metadata !214, null}
!216 = metadata !{i32 52, i32 2, metadata !202, null}
!217 = metadata !{i32 54, i32 2, metadata !202, null}
!218 = metadata !{i32 56, i32 2, metadata !202, null}
!219 = metadata !{i32 58, i32 2, metadata !202, null}
!220 = metadata !{i32 62, i32 2, metadata !202, null}
!221 = metadata !{i32 65, i32 3, metadata !222, null}
!222 = metadata !{i32 786443, metadata !202, i32 62, i32 61, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 68, i32 3, metadata !222, null}
!224 = metadata !{i32 71, i32 3, metadata !222, null}
!225 = metadata !{i32 786688, metadata !202, metadata !"_2q0mx", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 72, i32 3, metadata !222, null}
!227 = metadata !{i32 786688, metadata !202, metadata !"_2q0my", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 73, i32 3, metadata !222, null}
!229 = metadata !{i32 786688, metadata !202, metadata !"_2q0mz", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 74, i32 3, metadata !222, null}
!231 = metadata !{i32 786688, metadata !202, metadata !"_2q1mx", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!232 = metadata !{i32 786688, metadata !202, metadata !"_2q0", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 75, i32 3, metadata !222, null}
!234 = metadata !{i32 786688, metadata !202, metadata !"_2q1", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!235 = metadata !{i32 76, i32 3, metadata !222, null}
!236 = metadata !{i32 77, i32 3, metadata !222, null}
!237 = metadata !{i32 786688, metadata !202, metadata !"_2q2", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!238 = metadata !{i32 78, i32 3, metadata !222, null}
!239 = metadata !{i32 786688, metadata !202, metadata !"_2q3", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!240 = metadata !{i32 79, i32 3, metadata !222, null}
!241 = metadata !{i32 786688, metadata !202, metadata !"_2q0q2", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!242 = metadata !{i32 80, i32 3, metadata !222, null}
!243 = metadata !{i32 786688, metadata !202, metadata !"_2q2q3", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 81, i32 3, metadata !222, null}
!245 = metadata !{i32 786688, metadata !202, metadata !"q0q0", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!246 = metadata !{i32 82, i32 3, metadata !222, null}
!247 = metadata !{i32 786688, metadata !202, metadata !"q0q1", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 83, i32 3, metadata !222, null}
!249 = metadata !{i32 786688, metadata !202, metadata !"q0q2", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 84, i32 3, metadata !222, null}
!251 = metadata !{i32 786688, metadata !202, metadata !"q0q3", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 85, i32 3, metadata !222, null}
!253 = metadata !{i32 786688, metadata !202, metadata !"q1q1", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!254 = metadata !{i32 86, i32 3, metadata !222, null}
!255 = metadata !{i32 786688, metadata !202, metadata !"q1q2", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 87, i32 3, metadata !222, null}
!257 = metadata !{i32 786688, metadata !202, metadata !"q1q3", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 88, i32 3, metadata !222, null}
!259 = metadata !{i32 786688, metadata !202, metadata !"q2q2", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 89, i32 3, metadata !222, null}
!261 = metadata !{i32 786688, metadata !202, metadata !"q2q3", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 90, i32 3, metadata !222, null}
!263 = metadata !{i32 786688, metadata !202, metadata !"q3q3", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 94, i32 3, metadata !222, null}
!265 = metadata !{i32 786688, metadata !202, metadata !"hx", metadata !6, i32 42, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 96, i32 3, metadata !222, null}
!267 = metadata !{i32 786688, metadata !202, metadata !"hy", metadata !6, i32 42, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!268 = metadata !{i32 97, i32 10, metadata !222, null}
!269 = metadata !{i32 786688, metadata !202, metadata !"_2bx", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 99, i32 3, metadata !222, null}
!271 = metadata !{i32 786688, metadata !202, metadata !"_2bz", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 100, i32 3, metadata !222, null}
!273 = metadata !{i32 786688, metadata !202, metadata !"_4bx", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 101, i32 3, metadata !222, null}
!275 = metadata !{i32 786688, metadata !202, metadata !"_4bz", metadata !6, i32 43, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 105, i32 3, metadata !222, null}
!277 = metadata !{i32 107, i32 3, metadata !222, null}
!278 = metadata !{i32 109, i32 3, metadata !222, null}
!279 = metadata !{i32 111, i32 3, metadata !222, null}
!280 = metadata !{i32 114, i32 3, metadata !222, null}
!281 = metadata !{i32 117, i32 3, metadata !222, null}
!282 = metadata !{i32 118, i32 2, metadata !222, null}
!283 = metadata !{i32 121, i32 2, metadata !202, null}
!284 = metadata !{i32 124, i32 2, metadata !202, null}
!285 = metadata !{i32 125, i32 1, metadata !202, null}
