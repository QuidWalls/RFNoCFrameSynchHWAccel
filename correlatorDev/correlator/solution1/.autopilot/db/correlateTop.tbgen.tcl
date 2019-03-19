set C_TypeInfoList {{ 
"correlateTop" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"i_data": [[],{ "pointer": "0"}] }, {"o_data": [[],{ "pointer": "0"}] }, {"start": [[],"1"] }, {"phaseClass": [[],"2"] }],[],""], 
"0": [ "rfnoc_axis", {"struct": [[],[],[{ "data": [[], "3"]},{ "last": [[], "1"]}],""]}], 
"3": [ "ap_int<32>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"2": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"1": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}]
}}
set moduleName correlateTop
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {correlateTop}
set C_modelType { void 0 }
set C_modelArgList {
	{ i_data_data_V int 32 regular {axi_s 0 volatile  { i_data Data } }  }
	{ i_data_last_V int 1 regular {axi_s 0 volatile  { i_data Last } }  }
	{ o_data_data_V int 32 regular {axi_s 1 volatile  { o_data Data } }  }
	{ o_data_last_V int 1 regular {axi_s 1 volatile  { o_data Last } }  }
	{ start_V int 1 regular  }
	{ phaseClass_V int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "i_data_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "i_data.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "i_data_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "i_data.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "o_data_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "o_data.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "o_data_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "o_data.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "start_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "start.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "phaseClass_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "phaseClass.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ i_data_TDATA sc_in sc_lv 32 signal 0 } 
	{ i_data_TVALID sc_in sc_logic 1 invld 1 } 
	{ i_data_TREADY sc_out sc_logic 1 inacc 1 } 
	{ i_data_TLAST sc_in sc_lv 1 signal 1 } 
	{ o_data_TDATA sc_out sc_lv 32 signal 2 } 
	{ o_data_TVALID sc_out sc_logic 1 outvld 3 } 
	{ o_data_TREADY sc_in sc_logic 1 outacc 3 } 
	{ o_data_TLAST sc_out sc_lv 1 signal 3 } 
	{ start_V sc_in sc_lv 1 signal 4 } 
	{ phaseClass_V sc_in sc_lv 4 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "i_data_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i_data_data_V", "role": "default" }} , 
 	{ "name": "i_data_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i_data_last_V", "role": "default" }} , 
 	{ "name": "i_data_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "i_data_last_V", "role": "default" }} , 
 	{ "name": "i_data_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "i_data_last_V", "role": "default" }} , 
 	{ "name": "o_data_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "o_data_data_V", "role": "default" }} , 
 	{ "name": "o_data_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "o_data_last_V", "role": "default" }} , 
 	{ "name": "o_data_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "o_data_last_V", "role": "default" }} , 
 	{ "name": "o_data_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "o_data_last_V", "role": "default" }} , 
 	{ "name": "start_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "start_V", "role": "default" }} , 
 	{ "name": "phaseClass_V", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "phaseClass_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
		"CDFG" : "correlateTop",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "i_data_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_data_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "o_data_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "o_data_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "o_data_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "start_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "phaseClass_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "currentState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "loadCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "unScalled_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "newVal_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "cor_phaseArray_phase_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cor_phaseArray_phase_13", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_8_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_9_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_10_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_11_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_12_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_1_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_3_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_4_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_5_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_6_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_7_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cor_phaseArray_phase_13_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	correlateTop {
		i_data_data_V {Type I LastRead 1 FirstWrite -1}
		i_data_last_V {Type I LastRead 1 FirstWrite -1}
		o_data_data_V {Type O LastRead -1 FirstWrite 4}
		o_data_last_V {Type O LastRead -1 FirstWrite 4}
		start_V {Type I LastRead 1 FirstWrite -1}
		phaseClass_V {Type I LastRead 0 FirstWrite -1}
		currentState {Type IO LastRead -1 FirstWrite -1}
		loadCount_V {Type IO LastRead -1 FirstWrite -1}
		unScalled_V {Type O LastRead -1 FirstWrite -1}
		newVal_V {Type O LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_8 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_9 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_10 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_11 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_12 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_1 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_2 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_3 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_4 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_5 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_6 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_7 {Type IO LastRead -1 FirstWrite -1}
		cor_phaseArray_phase_13 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	i_data_data_V { axis {  { i_data_TDATA in_data 0 32 } } }
	i_data_last_V { axis {  { i_data_TVALID in_vld 0 1 }  { i_data_TREADY in_acc 1 1 }  { i_data_TLAST in_data 0 1 } } }
	o_data_data_V { axis {  { o_data_TDATA out_data 1 32 } } }
	o_data_last_V { axis {  { o_data_TVALID out_vld 1 1 }  { o_data_TREADY out_acc 0 1 }  { o_data_TLAST out_data 1 1 } } }
	start_V { ap_none {  { start_V in_data 0 1 } } }
	phaseClass_V { ap_none {  { phaseClass_V in_data 0 4 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
