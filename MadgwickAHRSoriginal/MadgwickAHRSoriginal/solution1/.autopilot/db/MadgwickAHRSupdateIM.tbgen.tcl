set moduleName MadgwickAHRSupdateIM
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {MadgwickAHRSupdateIM}
set C_modelType { void 0 }
set C_modelArgList {
	{ gx float 32 regular  }
	{ gy float 32 regular  }
	{ gz float 32 regular  }
	{ ax float 32 regular  }
	{ ay float 32 regular  }
	{ az float 32 regular  }
	{ q1 float 32 regular {pointer 2 volatile } {global 2}  }
	{ q2 float 32 regular {pointer 2 volatile } {global 2}  }
	{ q3 float 32 regular {pointer 2 volatile } {global 2}  }
	{ q0 float 32 regular {pointer 2 volatile } {global 2}  }
	{ beta float 32 regular {pointer 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gy", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ax", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ay", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "az", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "q1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "q1","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "q2", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "q2","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "q3", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "q3","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "q0", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "q0","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "beta", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "beta","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gx sc_in sc_lv 32 signal 0 } 
	{ gy sc_in sc_lv 32 signal 1 } 
	{ gz sc_in sc_lv 32 signal 2 } 
	{ ax sc_in sc_lv 32 signal 3 } 
	{ ay sc_in sc_lv 32 signal 4 } 
	{ az sc_in sc_lv 32 signal 5 } 
	{ q1_i sc_in sc_lv 32 signal 6 } 
	{ q1_o sc_out sc_lv 32 signal 6 } 
	{ q1_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ q2_i sc_in sc_lv 32 signal 7 } 
	{ q2_o sc_out sc_lv 32 signal 7 } 
	{ q2_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ q3_i sc_in sc_lv 32 signal 8 } 
	{ q3_o sc_out sc_lv 32 signal 8 } 
	{ q3_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ q0_i sc_in sc_lv 32 signal 9 } 
	{ q0_o sc_out sc_lv 32 signal 9 } 
	{ q0_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ beta sc_in sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gx", "role": "default" }} , 
 	{ "name": "gy", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gy", "role": "default" }} , 
 	{ "name": "gz", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gz", "role": "default" }} , 
 	{ "name": "ax", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ax", "role": "default" }} , 
 	{ "name": "ay", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ay", "role": "default" }} , 
 	{ "name": "az", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "az", "role": "default" }} , 
 	{ "name": "q1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q1", "role": "i" }} , 
 	{ "name": "q1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q1", "role": "o" }} , 
 	{ "name": "q1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "q1", "role": "o_ap_vld" }} , 
 	{ "name": "q2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q2", "role": "i" }} , 
 	{ "name": "q2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q2", "role": "o" }} , 
 	{ "name": "q2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "q2", "role": "o_ap_vld" }} , 
 	{ "name": "q3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q3", "role": "i" }} , 
 	{ "name": "q3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q3", "role": "o" }} , 
 	{ "name": "q3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "q3", "role": "o_ap_vld" }} , 
 	{ "name": "q0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q0", "role": "i" }} , 
 	{ "name": "q0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q0", "role": "o" }} , 
 	{ "name": "q0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "q0", "role": "o_ap_vld" }} , 
 	{ "name": "beta", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "beta", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "MadgwickAHRSupdateIM",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "gx", "Type" : "None", "Direction" : "I"},
			{"Name" : "gy", "Type" : "None", "Direction" : "I"},
			{"Name" : "gz", "Type" : "None", "Direction" : "I"},
			{"Name" : "ax", "Type" : "None", "Direction" : "I"},
			{"Name" : "ay", "Type" : "None", "Direction" : "I"},
			{"Name" : "az", "Type" : "None", "Direction" : "I"},
			{"Name" : "q1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "q2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "q3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "q0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "beta", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatdEe_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatdEe_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatdEe_U15", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MadgwickAHRSupdateIM {
		gx {Type I LastRead 2 FirstWrite -1}
		gy {Type I LastRead 2 FirstWrite -1}
		gz {Type I LastRead 2 FirstWrite -1}
		ax {Type I LastRead 18 FirstWrite -1}
		ay {Type I LastRead 18 FirstWrite -1}
		az {Type I LastRead 18 FirstWrite -1}
		q1 {Type IO LastRead 201 FirstWrite 159}
		q2 {Type IO LastRead 201 FirstWrite 160}
		q3 {Type IO LastRead 201 FirstWrite 160}
		q0 {Type IO LastRead 201 FirstWrite 159}
		beta {Type I LastRead 141 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "74", "Max" : "204"}
	, {"Name" : "Interval", "Min" : "74", "Max" : "204"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gx { ap_none {  { gx in_data 0 32 } } }
	gy { ap_none {  { gy in_data 0 32 } } }
	gz { ap_none {  { gz in_data 0 32 } } }
	ax { ap_none {  { ax in_data 0 32 } } }
	ay { ap_none {  { ay in_data 0 32 } } }
	az { ap_none {  { az in_data 0 32 } } }
	q1 { ap_ovld {  { q1_i in_data 0 32 }  { q1_o out_data 1 32 }  { q1_o_ap_vld out_vld 1 1 } } }
	q2 { ap_ovld {  { q2_i in_data 0 32 }  { q2_o out_data 1 32 }  { q2_o_ap_vld out_vld 1 1 } } }
	q3 { ap_ovld {  { q3_i in_data 0 32 }  { q3_o out_data 1 32 }  { q3_o_ap_vld out_vld 1 1 } } }
	q0 { ap_ovld {  { q0_i in_data 0 32 }  { q0_o out_data 1 32 }  { q0_o_ap_vld out_vld 1 1 } } }
	beta { ap_none {  { beta in_data 0 32 } } }
}
