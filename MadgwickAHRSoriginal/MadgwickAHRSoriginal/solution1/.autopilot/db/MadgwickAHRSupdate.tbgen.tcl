set C_TypeInfoList {{ 
"MadgwickAHRSupdate" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"gx": [[], {"scalar": "float"}] }, {"gy": [[], {"scalar": "float"}] }, {"gz": [[], {"scalar": "float"}] }, {"ax": [[], {"scalar": "float"}] }, {"ay": [[], {"scalar": "float"}] }, {"az": [[], {"scalar": "float"}] }, {"mx": [[], {"scalar": "float"}] }, {"my": [[], {"scalar": "float"}] }, {"mz": [[], {"scalar": "float"}] }],["0","1","2","3","4"],""],
 "0": [ "q3", [["volatile"], {"scalar": "float"}],""],
 "1": [ "q2", [["volatile"], {"scalar": "float"}],""],
 "2": [ "q1", [["volatile"], {"scalar": "float"}],""],
 "3": [ "q0", [["volatile"], {"scalar": "float"}],""],
 "4": [ "beta", [["volatile"], {"scalar": "float"}],""]
}}
set moduleName MadgwickAHRSupdate
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {MadgwickAHRSupdate}
set C_modelType { void 0 }
set C_modelArgList {
	{ gx float 32 regular  }
	{ gy float 32 regular  }
	{ gz float 32 regular  }
	{ ax float 32 regular  }
	{ ay float 32 regular  }
	{ az float 32 regular  }
	{ mx float 32 regular  }
	{ my float 32 regular  }
	{ mz float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "gx","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gy", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "gy","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "gz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "gz","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ax", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ax","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ay", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ay","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "az", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "az","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "mx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mx","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "my", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "my","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "mz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mz","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
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
	{ mx sc_in sc_lv 32 signal 6 } 
	{ my sc_in sc_lv 32 signal 7 } 
	{ mz sc_in sc_lv 32 signal 8 } 
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
 	{ "name": "mx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mx", "role": "default" }} , 
 	{ "name": "my", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "my", "role": "default" }} , 
 	{ "name": "mz", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mz", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "MadgwickAHRSupdate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state264", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_168"}],
		"Port" : [
			{"Name" : "gx", "Type" : "None", "Direction" : "I"},
			{"Name" : "gy", "Type" : "None", "Direction" : "I"},
			{"Name" : "gz", "Type" : "None", "Direction" : "I"},
			{"Name" : "ax", "Type" : "None", "Direction" : "I"},
			{"Name" : "ay", "Type" : "None", "Direction" : "I"},
			{"Name" : "az", "Type" : "None", "Direction" : "I"},
			{"Name" : "mx", "Type" : "None", "Direction" : "I"},
			{"Name" : "my", "Type" : "None", "Direction" : "I"},
			{"Name" : "mz", "Type" : "None", "Direction" : "I"},
			{"Name" : "q1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_168", "Port" : "q1"}]},
			{"Name" : "q2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_168", "Port" : "q2"}]},
			{"Name" : "q3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_168", "Port" : "q3"}]},
			{"Name" : "q0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_168", "Port" : "q0"}]},
			{"Name" : "beta", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_168", "Port" : "beta"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatbkb_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatbkb_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatbkb_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatbkb_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatcud_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatcud_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatcud_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatcud_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatcud_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatcud_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatcud_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatcud_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatdEe_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatdEe_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_168.MadgwickAHRSupdatdEe_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U30", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U31", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U32", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U33", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U34", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U35", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U36", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U37", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U38", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U39", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U40", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U41", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatdEe_U42", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatdEe_U43", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatdEe_U44", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdateOg_U45", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MadgwickAHRSupdate {
		gx {Type I LastRead 0 FirstWrite -1}
		gy {Type I LastRead 0 FirstWrite -1}
		gz {Type I LastRead 0 FirstWrite -1}
		ax {Type I LastRead 0 FirstWrite -1}
		ay {Type I LastRead 0 FirstWrite -1}
		az {Type I LastRead 0 FirstWrite -1}
		mx {Type I LastRead 0 FirstWrite -1}
		my {Type I LastRead 0 FirstWrite -1}
		mz {Type I LastRead 0 FirstWrite -1}
		q1 {Type IO LastRead -1 FirstWrite -1}
		q2 {Type IO LastRead -1 FirstWrite -1}
		q3 {Type IO LastRead -1 FirstWrite -1}
		q0 {Type IO LastRead -1 FirstWrite -1}
		beta {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "74", "Max" : "262"}
	, {"Name" : "Interval", "Min" : "75", "Max" : "263"}
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
	mx { ap_none {  { mx in_data 0 32 } } }
	my { ap_none {  { my in_data 0 32 } } }
	mz { ap_none {  { mz in_data 0 32 } } }
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
