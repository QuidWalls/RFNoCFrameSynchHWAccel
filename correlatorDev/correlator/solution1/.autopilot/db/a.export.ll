; ModuleID = '/home/alex/Documents/RFNoCFrameSynchHWAccel/correlatorDev/correlator/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phaseClass0_V_9 = internal unnamed_addr global i16 0
@phaseClass0_V_8 = internal unnamed_addr global i16 0
@phaseClass0_V_7 = internal unnamed_addr global i16 0
@phaseClass0_V_6 = internal unnamed_addr global i16 0
@phaseClass0_V_5 = internal unnamed_addr global i16 0
@phaseClass0_V_4 = internal unnamed_addr global i16 0
@phaseClass0_V_3 = internal unnamed_addr global i16 0
@phaseClass0_V_2 = internal unnamed_addr global i16 0
@phaseClass0_V_15 = internal unnamed_addr global i16 0
@phaseClass0_V_14 = internal unnamed_addr global i16 0
@phaseClass0_V_13 = internal unnamed_addr global i16 0
@phaseClass0_V_12 = internal unnamed_addr global i16 0
@phaseClass0_V_11 = internal unnamed_addr global i16 0
@phaseClass0_V_10 = internal unnamed_addr global i16 0
@phaseClass0_V_1 = internal unnamed_addr global i16 0
@phaseClass0_V_0 = internal unnamed_addr global i16 0
@newVal_V = internal global i16 0
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@currentState = internal unnamed_addr global i2 0, align 1
@correlator_str = internal unnamed_addr constant [11 x i8] c"correlator\00"
@corHelperI_V = internal global i16 0
@Phase0_V_9 = internal unnamed_addr global i16 0
@Phase0_V_8 = internal unnamed_addr global i16 0
@Phase0_V_7 = internal unnamed_addr global i16 0
@Phase0_V_6 = internal unnamed_addr global i16 0
@Phase0_V_5 = internal unnamed_addr global i16 0
@Phase0_V_4 = internal unnamed_addr global i16 0
@Phase0_V_3 = internal unnamed_addr global i16 0
@Phase0_V_2 = internal unnamed_addr global i16 0
@Phase0_V_10 = internal unnamed_addr global i16 0
@Phase0_V_1 = internal unnamed_addr global i16 0
@Phase0_V_0 = internal unnamed_addr global i16 0
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i32 @llvm.part.set.i32.i16(i32, i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @correlator(i32* %i_data_V_data_V, i1* %i_data_V_last_V, i32* %o_data_V_data_V, i1* %o_data_V_last_V, i1 %start_V, i4 %phaseClass_V) {
.preheader578.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %i_data_V_data_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %i_data_V_last_V), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %o_data_V_data_V), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %o_data_V_last_V), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %start_V), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %phaseClass_V), !map !93
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @correlator_str) nounwind
  %start_V_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %start_V)
  call void (...)* @_ssdm_op_SpecResource(i32* %o_data_V_data_V, i1* %o_data_V_last_V, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %o_data_V_data_V, i1* %o_data_V_last_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %i_data_V_data_V, i1* %i_data_V_last_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecReset(i16* @newVal_V, i32 1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32 1, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecReset(i32 1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32 1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32 1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecReset(i16* @corHelperI_V, i32 1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32 1, [1 x i8]* @p_str) nounwind
  %currentState_load = load i2* @currentState, align 1
  %phaseClass0_V_14_loa = load i16* @phaseClass0_V_14, align 2
  %phaseClass0_V_13_loa = load i16* @phaseClass0_V_13, align 2
  %phaseClass0_V_12_loa = load i16* @phaseClass0_V_12, align 2
  %phaseClass0_V_11_loa = load i16* @phaseClass0_V_11, align 2
  %phaseClass0_V_10_loa = load i16* @phaseClass0_V_10, align 2
  %phaseClass0_V_9_load = load i16* @phaseClass0_V_9, align 2
  %phaseClass0_V_8_load = load i16* @phaseClass0_V_8, align 2
  %phaseClass0_V_7_load = load i16* @phaseClass0_V_7, align 2
  %phaseClass0_V_6_load = load i16* @phaseClass0_V_6, align 2
  %phaseClass0_V_5_load = load i16* @phaseClass0_V_5, align 2
  %phaseClass0_V_4_load = load i16* @phaseClass0_V_4, align 2
  %phaseClass0_V_3_load = load i16* @phaseClass0_V_3, align 2
  %phaseClass0_V_2_load = load i16* @phaseClass0_V_2, align 2
  %phaseClass0_V_1_load = load i16* @phaseClass0_V_1, align 2
  %phaseClass0_V_0_load = load i16* @phaseClass0_V_0, align 2
  switch i2 %currentState_load, label %.loopexit [
    i2 0, label %0
    i2 1, label %2
    i2 -2, label %.loopexit.loopexit
  ]

; <label>:0                                       ; preds = %.preheader578.preheader
  br i1 %start_V_read, label %1, label %._crit_edge828

; <label>:1                                       ; preds = %0
  store i2 1, i2* @currentState, align 1
  br label %._crit_edge828

._crit_edge828:                                   ; preds = %1, %0
  br label %.loopexit

; <label>:2                                       ; preds = %.preheader578.preheader
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i32P.i1P(i32* %i_data_V_data_V, i1* %i_data_V_last_V, i32 1)
  br i1 %tmp, label %._crit_edge829.0, label %.loopexit436

._crit_edge829.0:                                 ; preds = %2
  %empty = call { i32, i1 } @_ssdm_op_Read.axis.volatile.i32P.i1P(i32* %i_data_V_data_V, i1* %i_data_V_last_V)
  %tmp_data_V_3 = extractvalue { i32, i1 } %empty, 0
  %tmp_15 = trunc i32 %tmp_data_V_3 to i16
  store i16 %tmp_15, i16* @newVal_V, align 2
  store i16 %phaseClass0_V_14_loa, i16* @phaseClass0_V_15, align 2
  store i16 %phaseClass0_V_13_loa, i16* @phaseClass0_V_14, align 4
  store i16 %phaseClass0_V_12_loa, i16* @phaseClass0_V_13, align 2
  store i16 %phaseClass0_V_11_loa, i16* @phaseClass0_V_12, align 8
  store i16 %phaseClass0_V_10_loa, i16* @phaseClass0_V_11, align 2
  store i16 %phaseClass0_V_9_load, i16* @phaseClass0_V_10, align 4
  store i16 %phaseClass0_V_8_load, i16* @phaseClass0_V_9, align 2
  store i16 %phaseClass0_V_7_load, i16* @phaseClass0_V_8, align 16
  store i16 %phaseClass0_V_6_load, i16* @phaseClass0_V_7, align 2
  store i16 %phaseClass0_V_5_load, i16* @phaseClass0_V_6, align 4
  store i16 %phaseClass0_V_4_load, i16* @phaseClass0_V_5, align 2
  store i16 %phaseClass0_V_3_load, i16* @phaseClass0_V_4, align 8
  store i16 %phaseClass0_V_2_load, i16* @phaseClass0_V_3, align 2
  store i16 %phaseClass0_V_1_load, i16* @phaseClass0_V_2, align 4
  store i16 %phaseClass0_V_0_load, i16* @phaseClass0_V_1, align 2
  store i16 %tmp_15, i16* @phaseClass0_V_0, align 16
  br label %.loopexit436

.loopexit436:                                     ; preds = %._crit_edge829.0, %2
  %storemerge = phi i2 [ -2, %._crit_edge829.0 ], [ 1, %2 ]
  store i2 %storemerge, i2* @currentState, align 1
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader578.preheader
  %phaseClass0_V_15_loa = load i16* @phaseClass0_V_15, align 2
  %Phase0_V_8_load = load i16* @Phase0_V_8, align 16
  store i16 %Phase0_V_8_load, i16* @Phase0_V_9, align 2
  %Phase0_V_7_load = load i16* @Phase0_V_7, align 2
  store i16 %Phase0_V_7_load, i16* @Phase0_V_8, align 16
  %Phase0_V_6_load = load i16* @Phase0_V_6, align 4
  store i16 %Phase0_V_6_load, i16* @Phase0_V_7, align 2
  %Phase0_V_5_load = load i16* @Phase0_V_5, align 2
  store i16 %Phase0_V_5_load, i16* @Phase0_V_6, align 4
  %Phase0_V_4_load = load i16* @Phase0_V_4, align 8
  store i16 %Phase0_V_4_load, i16* @Phase0_V_5, align 2
  %Phase0_V_3_load = load i16* @Phase0_V_3, align 2
  store i16 %Phase0_V_3_load, i16* @Phase0_V_4, align 8
  %Phase0_V_2_load = load i16* @Phase0_V_2, align 4
  store i16 %Phase0_V_2_load, i16* @Phase0_V_3, align 2
  %Phase0_V_1_load = load i16* @Phase0_V_1, align 2
  store i16 %Phase0_V_1_load, i16* @Phase0_V_2, align 4
  %Phase0_V_0_load = load i16* @Phase0_V_0, align 16
  store i16 %Phase0_V_0_load, i16* @Phase0_V_1, align 2
  %tmp1 = add i16 %phaseClass0_V_2_load, %phaseClass0_V_1_load
  %tmp2 = add i16 %phaseClass0_V_3_load, %phaseClass0_V_4_load
  %tmp3 = add i16 %tmp2, %tmp1
  %tmp4 = add i16 %phaseClass0_V_7_load, %phaseClass0_V_8_load
  %tmp5 = add i16 %phaseClass0_V_5_load, %phaseClass0_V_6_load
  %tmp6 = add i16 %tmp5, %tmp4
  %tmp7 = add i16 %tmp6, %tmp3
  %tmp8 = add i16 %phaseClass0_V_15_loa, %phaseClass0_V_13_loa
  %tmp9 = add i16 %phaseClass0_V_14_loa, %phaseClass0_V_11_loa
  %tmp10 = add i16 %tmp9, %tmp8
  %tmp11 = add i16 %phaseClass0_V_12_loa, %phaseClass0_V_9_load
  %tmp12 = add i16 %phaseClass0_V_10_loa, %phaseClass0_V_0_load
  %tmp13 = add i16 %tmp12, %tmp11
  %tmp14 = add i16 %tmp13, %tmp10
  %p_Val2_3_s = add i16 %tmp14, %tmp7
  store i16 %p_Val2_3_s, i16* @corHelperI_V, align 2
  store i16 %p_Val2_3_s, i16* @Phase0_V_0, align 16
  %tmp_data_V = call i32 @llvm.part.set.i32.i16(i32 undef, i16 %p_Val2_3_s, i32 0, i32 15)
  call void @_ssdm_op_Write.axis.volatile.i32P.i1P(i32* %o_data_V_data_V, i1* %o_data_V_last_V, i32 %tmp_data_V, i1 undef)
  store i2 1, i2* @currentState, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit436, %._crit_edge828, %.preheader578.preheader
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

define weak void @_ssdm_op_SpecResource(...) nounwind {
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
  %empty_6 = load i1* %1
  %mrv_0 = insertvalue { i32, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i1 } %mrv_0, i1 %empty_6, 1
  ret { i32, i1 } %mrv1
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_NbReadReq.axis.i32P.i1P(i32*, i1*, i32) {
entry:
  ret i1 true
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !16, !16, !19, !25, !25, !25, !19, !27, !30, !30, !19, !19, !19, !31, !31, !34, !36, !36, !19, !38, !38, !30, !40, !19, !19, !42, !48, !48, !54, !56, !59, !61, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !63, !63, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!64}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<rfnoc_axis>", metadata !"hls::stream<rfnoc_axis>", metadata !"ap_uint<1>", metadata !"ap_uint<4>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"i_data", metadata !"o_data", metadata !"start", metadata !"phaseClass"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct rfnoc_axis &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!16 = metadata !{null, metadata !8, metadata !9, metadata !17, metadata !11, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space"}
!21 = metadata !{metadata !"kernel_arg_access_qual"}
!22 = metadata !{metadata !"kernel_arg_type"}
!23 = metadata !{metadata !"kernel_arg_type_qual"}
!24 = metadata !{metadata !"kernel_arg_name"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !18, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 12, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !29, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 11, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!30 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !18, metadata !6}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!34 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !35, metadata !6}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !37, metadata !6}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !18, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!40 = metadata !{null, metadata !8, metadata !9, metadata !41, metadata !11, metadata !18, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 11, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!42 = metadata !{null, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !6}
!43 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!44 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!46 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!48 = metadata !{null, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !6}
!49 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!50 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int", metadata !"int"}
!52 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !29, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!56 = metadata !{null, metadata !8, metadata !9, metadata !57, metadata !11, metadata !58, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"struct rfnoc_axis &"}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!59 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !60, metadata !6}
!60 = metadata !{metadata !"kernel_arg_name", metadata !""}
!61 = metadata !{null, metadata !8, metadata !9, metadata !62, metadata !11, metadata !29, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<32> &"}
!63 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !15, metadata !6}
!64 = metadata !{metadata !65, [1 x i32]* @llvm_global_ctors_0}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 31, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"llvm.global_ctors.0", metadata !69, metadata !"", i32 0, i32 31}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 0, i32 1}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"i_data.V.data.V", metadata !69, metadata !"int32", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 0, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"i_data.V.last.V", metadata !69, metadata !"uint1", i32 0, i32 0}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"o_data.V.data.V", metadata !69, metadata !"int32", i32 0, i32 31}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 0, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"o_data.V.last.V", metadata !69, metadata !"uint1", i32 0, i32 0}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 0, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"start.V", metadata !91, metadata !"uint1", i32 0, i32 0}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 0, i32 0}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 3, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"phaseClass.V", metadata !91, metadata !"uint4", i32 0, i32 3}
