set moduleName feedbackStep
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {feedbackStep}
set C_modelType { int 128 }
set C_modelArgList {
	{ qDot_0_read float 32 regular  }
	{ qDot_1_read float 32 regular  }
	{ qDot_2_read float 32 regular  }
	{ qDot_3_read float 32 regular  }
	{ beta float 32 regular  }
	{ s_0_read float 32 regular  }
	{ s_1_read float 32 regular  }
	{ s_2_read float 32 regular  }
	{ s_3_read float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "qDot_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "qDot_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "qDot_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "qDot_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "beta", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_3_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ qDot_0_read sc_in sc_lv 32 signal 0 } 
	{ qDot_1_read sc_in sc_lv 32 signal 1 } 
	{ qDot_2_read sc_in sc_lv 32 signal 2 } 
	{ qDot_3_read sc_in sc_lv 32 signal 3 } 
	{ beta sc_in sc_lv 32 signal 4 } 
	{ s_0_read sc_in sc_lv 32 signal 5 } 
	{ s_1_read sc_in sc_lv 32 signal 6 } 
	{ s_2_read sc_in sc_lv 32 signal 7 } 
	{ s_3_read sc_in sc_lv 32 signal 8 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "qDot_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "qDot_0_read", "role": "default" }} , 
 	{ "name": "qDot_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "qDot_1_read", "role": "default" }} , 
 	{ "name": "qDot_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "qDot_2_read", "role": "default" }} , 
 	{ "name": "qDot_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "qDot_3_read", "role": "default" }} , 
 	{ "name": "beta", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "beta", "role": "default" }} , 
 	{ "name": "s_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_0_read", "role": "default" }} , 
 	{ "name": "s_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_1_read", "role": "default" }} , 
 	{ "name": "s_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_2_read", "role": "default" }} , 
 	{ "name": "s_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_3_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "feedbackStep",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "qDot_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "qDot_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "qDot_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "qDot_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_3_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdateOg_U15", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdateOg_U16", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdateOg_U17", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdateOg_U18", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U19", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U20", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U21", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U22", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	feedbackStep {
		qDot_0_read {Type I LastRead 0 FirstWrite -1}
		qDot_1_read {Type I LastRead 0 FirstWrite -1}
		qDot_2_read {Type I LastRead 0 FirstWrite -1}
		qDot_3_read {Type I LastRead 0 FirstWrite -1}
		beta {Type I LastRead 0 FirstWrite -1}
		s_0_read {Type I LastRead 0 FirstWrite -1}
		s_1_read {Type I LastRead 0 FirstWrite -1}
		s_2_read {Type I LastRead 0 FirstWrite -1}
		s_3_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	qDot_0_read { ap_none {  { qDot_0_read in_data 0 32 } } }
	qDot_1_read { ap_none {  { qDot_1_read in_data 0 32 } } }
	qDot_2_read { ap_none {  { qDot_2_read in_data 0 32 } } }
	qDot_3_read { ap_none {  { qDot_3_read in_data 0 32 } } }
	beta { ap_none {  { beta in_data 0 32 } } }
	s_0_read { ap_none {  { s_0_read in_data 0 32 } } }
	s_1_read { ap_none {  { s_1_read in_data 0 32 } } }
	s_2_read { ap_none {  { s_2_read in_data 0 32 } } }
	s_3_read { ap_none {  { s_3_read in_data 0 32 } } }
}
