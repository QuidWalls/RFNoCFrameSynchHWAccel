; ModuleID = '/home/alex/Documents/RFNoCFrameSynchHWAccel/correlatorDev/correlator/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phaseClass_V = internal global i4 0
@newVal_V = internal global i1 false
@loadCount_V = internal global i32 0
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@currentState = internal unnamed_addr global i1 false, align 1
@correlateTop_str = internal unnamed_addr constant [13 x i8] c"correlateTop\00"
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @correlateTop(i32* %i_data_V_data_V, i1* %i_data_V_last_V, i32* %o_data_V_data_V, i1* %o_data_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %i_data_V_data_V), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %i_data_V_last_V), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %o_data_V_data_V), !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %o_data_V_last_V), !map !99
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @correlateTop_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %o_data_V_data_V, i1* %o_data_V_last_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %i_data_V_data_V, i1* %i_data_V_last_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecReset(i1* @newVal_V, i32 1, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32 1, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @loadCount_V, i32 1, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32 1, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32 1, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecReset(i4* @phaseClass_V, i32 1, [1 x i8]* @p_str2) nounwind
  %currentState_load = load i1* @currentState, align 1
  call void (...)* @_ssdm_op_SpecReset(i1* @currentState, i32 1, [1 x i8]* @p_str2) nounwind
  %phaseClass_V_load = load i4* @phaseClass_V, align 1
  br i1 %currentState_load, label %1, label %0

; <label>:0                                       ; preds = %codeRepl
  store i32 0, i32* @loadCount_V, align 4
  store i4 0, i4* @phaseClass_V, align 1
  store i1 true, i1* @currentState, align 1
  br label %._crit_edge130

; <label>:1                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i32P.i1P(i32* %i_data_V_data_V, i1* %i_data_V_last_V, i32 1)
  br i1 %tmp, label %._crit_edge132, label %._crit_edge131

._crit_edge132:                                   ; preds = %1
  %empty = call { i32, i1 } @_ssdm_op_Read.axis.volatile.i32P.i1P(i32* %i_data_V_data_V, i1* %i_data_V_last_V)
  %tmp_data_V = extractvalue { i32, i1 } %empty, 0
  %tmp_last_V = extractvalue { i32, i1 } %empty, 1
  store i1 false, i1* @newVal_V, align 1
  %loadCount_V_load = load i32* @loadCount_V, align 4
  %tmp_3 = add i32 %loadCount_V_load, 1
  store i32 %tmp_3, i32* @loadCount_V, align 4
  %tmp_5 = add i4 %phaseClass_V_load, 1
  store i4 %tmp_5, i4* @phaseClass_V, align 1
  call void @_ssdm_op_Write.axis.volatile.i32P.i1P(i32* %o_data_V_data_V, i1* %o_data_V_last_V, i32 %tmp_data_V, i1 %tmp_last_V)
  store i1 true, i1* @currentState, align 1
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %._crit_edge132, %1
  br label %._crit_edge130

._crit_edge130:                                   ; preds = %._crit_edge131, %0
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i32P.i1P(i32*, i1*, i32, i1) {
entry:
  store i32 %2, i32* %0
  store i1 %3, i1* %1
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecReset(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i32, i1 } @_ssdm_op_Read.axis.volatile.i32P.i1P(i32*, i1*) {
entry:
  %empty = load i32* %0
  %empty_3 = load i1* %1
  %mrv_0 = insertvalue { i32, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i1 } %mrv_0, i1 %empty_3, 1
  ret { i32, i1 } %mrv1
}

define weak i1 @_ssdm_op_NbReadReq.axis.i32P.i1P(i32*, i1*, i32) {
entry:
  ret i1 true
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !10, !16, !16, !16, !19, !25, !19, !19, !19, !19, !19, !25, !28, !28, !19, !19, !19, !25, !29, !29, !29, !25, !31, !34, !34, !36, !38, !38, !40, !42, !42, !44, !44, !28, !19, !46, !49, !49, !19, !19, !51, !54, !19, !19, !56, !56, !57, !57, !59, !36, !49, !49, !19, !60, !62, !64, !64, !66, !68, !70, !19, !19, !72, !72, !74, !72, !72, !76, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !72, !72, !19, !19, !78, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!80}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<rfnoc_axis>", metadata !"hls::stream<rfnoc_axis>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"i_data", metadata !"o_data"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"cor_t", metadata !"ap_uint<4>"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"newValue", metadata !"phaseClass"}
!10 = metadata !{null, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !6}
!11 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!12 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!13 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<4>"}
!14 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"phaseClass"}
!16 = metadata !{null, metadata !11, metadata !12, metadata !17, metadata !14, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 44, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space"}
!21 = metadata !{metadata !"kernel_arg_access_qual"}
!22 = metadata !{metadata !"kernel_arg_type"}
!23 = metadata !{metadata !"kernel_arg_type_qual"}
!24 = metadata !{metadata !"kernel_arg_name"}
!25 = metadata !{null, metadata !11, metadata !12, metadata !26, metadata !14, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 22, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!28 = metadata !{null, metadata !11, metadata !12, metadata !26, metadata !14, metadata !18, metadata !6}
!29 = metadata !{null, metadata !11, metadata !12, metadata !30, metadata !14, metadata !18, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 23, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!31 = metadata !{null, metadata !1, metadata !2, metadata !32, metadata !4, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2, true> &", metadata !"int"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!34 = metadata !{null, metadata !11, metadata !12, metadata !35, metadata !14, metadata !18, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!36 = metadata !{null, metadata !11, metadata !12, metadata !37, metadata !14, metadata !27, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!38 = metadata !{null, metadata !11, metadata !12, metadata !35, metadata !14, metadata !39, metadata !6}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!40 = metadata !{null, metadata !11, metadata !12, metadata !35, metadata !14, metadata !41, metadata !6}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!42 = metadata !{null, metadata !11, metadata !12, metadata !35, metadata !14, metadata !43, metadata !6}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!44 = metadata !{null, metadata !11, metadata !12, metadata !45, metadata !14, metadata !18, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!46 = metadata !{null, metadata !11, metadata !12, metadata !47, metadata !14, metadata !48, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const struct rfnoc_axis &"}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!49 = metadata !{null, metadata !11, metadata !12, metadata !50, metadata !14, metadata !18, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!51 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !53, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"int"}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!54 = metadata !{null, metadata !1, metadata !2, metadata !55, metadata !4, metadata !33, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"const ap_int_base<32, true> &"}
!56 = metadata !{null, metadata !11, metadata !12, metadata !37, metadata !14, metadata !18, metadata !6}
!57 = metadata !{null, metadata !11, metadata !12, metadata !58, metadata !14, metadata !18, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!59 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !33, metadata !6}
!60 = metadata !{null, metadata !1, metadata !2, metadata !61, metadata !4, metadata !53, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!62 = metadata !{null, metadata !1, metadata !2, metadata !63, metadata !4, metadata !33, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, true> &"}
!64 = metadata !{null, metadata !11, metadata !12, metadata !65, metadata !14, metadata !18, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 11, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!66 = metadata !{null, metadata !11, metadata !12, metadata !67, metadata !14, metadata !18, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 11, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!68 = metadata !{null, metadata !11, metadata !12, metadata !69, metadata !14, metadata !18, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 22, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!70 = metadata !{null, metadata !11, metadata !12, metadata !71, metadata !14, metadata !27, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!72 = metadata !{null, metadata !11, metadata !12, metadata !35, metadata !14, metadata !73, metadata !6}
!73 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!74 = metadata !{null, metadata !11, metadata !12, metadata !75, metadata !14, metadata !27, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!76 = metadata !{null, metadata !11, metadata !12, metadata !77, metadata !14, metadata !27, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<32> &"}
!78 = metadata !{null, metadata !11, metadata !12, metadata !47, metadata !14, metadata !79, metadata !6}
!79 = metadata !{metadata !"kernel_arg_name", metadata !""}
!80 = metadata !{metadata !81, [1 x i32]* @llvm_global_ctors_0}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 31, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"llvm.global_ctors.0", metadata !85, metadata !"", i32 0, i32 31}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 0, i32 1}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 31, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"i_data.V.data.V", metadata !85, metadata !"int32", i32 0, i32 31}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 0, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"i_data.V.last.V", metadata !85, metadata !"uint1", i32 0, i32 0}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 31, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"o_data.V.data.V", metadata !85, metadata !"int32", i32 0, i32 31}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 0, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"o_data.V.last.V", metadata !85, metadata !"uint1", i32 0, i32 0}
