set C_TypeInfoList {{ 
"MadgwickAHRSupdate" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"g": [[], {"array": [ {"scalar": "float"}, [4]]}] }, {"a": [[], {"array": [ {"scalar": "float"}, [4]]}] }, {"m": [[], {"array": [ {"scalar": "float"}, [4]]}] }],["0","1"],""],
 "0": [ "q", [[], {"array": [ {"scalar": "float"}, [4]]}],""],
 "1": [ "beta", [[], {"scalar": "float"}],""]
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
	{ g float 32 regular {array 4 { 2 1 } 1 1 }  }
	{ a float 32 regular {array 4 { 2 1 } 1 1 }  }
	{ m float 32 regular {array 4 { 2 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "g", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "g","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "m", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "m","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ g_address0 sc_out sc_lv 2 signal 0 } 
	{ g_ce0 sc_out sc_logic 1 signal 0 } 
	{ g_we0 sc_out sc_logic 1 signal 0 } 
	{ g_d0 sc_out sc_lv 32 signal 0 } 
	{ g_q0 sc_in sc_lv 32 signal 0 } 
	{ g_address1 sc_out sc_lv 2 signal 0 } 
	{ g_ce1 sc_out sc_logic 1 signal 0 } 
	{ g_q1 sc_in sc_lv 32 signal 0 } 
	{ a_address0 sc_out sc_lv 2 signal 1 } 
	{ a_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_we0 sc_out sc_logic 1 signal 1 } 
	{ a_d0 sc_out sc_lv 32 signal 1 } 
	{ a_q0 sc_in sc_lv 32 signal 1 } 
	{ a_address1 sc_out sc_lv 2 signal 1 } 
	{ a_ce1 sc_out sc_logic 1 signal 1 } 
	{ a_q1 sc_in sc_lv 32 signal 1 } 
	{ m_address0 sc_out sc_lv 2 signal 2 } 
	{ m_ce0 sc_out sc_logic 1 signal 2 } 
	{ m_we0 sc_out sc_logic 1 signal 2 } 
	{ m_d0 sc_out sc_lv 32 signal 2 } 
	{ m_q0 sc_in sc_lv 32 signal 2 } 
	{ m_address1 sc_out sc_lv 2 signal 2 } 
	{ m_ce1 sc_out sc_logic 1 signal 2 } 
	{ m_q1 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "g_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "g", "role": "address0" }} , 
 	{ "name": "g_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g", "role": "ce0" }} , 
 	{ "name": "g_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g", "role": "we0" }} , 
 	{ "name": "g_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g", "role": "d0" }} , 
 	{ "name": "g_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g", "role": "q0" }} , 
 	{ "name": "g_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "g", "role": "address1" }} , 
 	{ "name": "g_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g", "role": "ce1" }} , 
 	{ "name": "g_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g", "role": "q1" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "we0" }} , 
 	{ "name": "a_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "d0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "q1" }} , 
 	{ "name": "m_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m", "role": "address0" }} , 
 	{ "name": "m_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce0" }} , 
 	{ "name": "m_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "we0" }} , 
 	{ "name": "m_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m", "role": "d0" }} , 
 	{ "name": "m_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m", "role": "q0" }} , 
 	{ "name": "m_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "m", "role": "address1" }} , 
 	{ "name": "m_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce1" }} , 
 	{ "name": "m_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "31", "35", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "MadgwickAHRSupdate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state268", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_382"},
			{"State" : "ap_ST_fsm_state234", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_1_fu_394"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_fu_402"},
			{"State" : "ap_ST_fsm_state172", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_fu_402"},
			{"State" : "ap_ST_fsm_state267", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_fu_402"}],
		"Port" : [
			{"Name" : "g", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_382", "Port" : "g"}]},
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_382", "Port" : "a"},
					{"ID" : "35", "SubInstance" : "grp_normalise_fu_402", "Port" : "in_r"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_normalise_fu_402", "Port" : "in_r"}]},
			{"Name" : "beta", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_382", "Port" : "beta"}]},
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_382", "Port" : "q"},
					{"ID" : "35", "SubInstance" : "grp_normalise_fu_402", "Port" : "in_r"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382", "Parent" : "0", "Child" : ["3", "7", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "MadgwickAHRSupdateIM",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state122", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_1_fu_287"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_fu_295"},
			{"State" : "ap_ST_fsm_state155", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_fu_295"}],
		"Port" : [
			{"Name" : "g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_normalise_fu_295", "Port" : "in_r"}]},
			{"Name" : "beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_normalise_fu_295", "Port" : "in_r"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.grp_normalise_1_fu_287", "Parent" : "2", "Child" : ["4", "5", "6"],
		"CDFG" : "normalise_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_3_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.grp_normalise_1_fu_287.MadgwickAHRSupdatbkb_U8", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.grp_normalise_1_fu_287.MadgwickAHRSupdatcud_U9", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.grp_normalise_1_fu_287.MadgwickAHRSupdatdEe_U10", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.grp_normalise_fu_295", "Parent" : "2", "Child" : ["8", "9", "10"],
		"CDFG" : "normalise",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.grp_normalise_fu_295.MadgwickAHRSupdatbkb_U1", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.grp_normalise_fu_295.MadgwickAHRSupdatcud_U2", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.grp_normalise_fu_295.MadgwickAHRSupdatdEe_U3", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatbkb_U15", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatbkb_U16", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatbkb_U17", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatbkb_U18", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U19", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U20", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U21", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U22", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U23", "Parent" : "2"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U24", "Parent" : "2"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U25", "Parent" : "2"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U26", "Parent" : "2"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U27", "Parent" : "2"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U28", "Parent" : "2"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U29", "Parent" : "2"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatcud_U30", "Parent" : "2"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdatdEe_U31", "Parent" : "2"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdateOg_U32", "Parent" : "2"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdateOg_U33", "Parent" : "2"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_382.MadgwickAHRSupdateOg_U34", "Parent" : "2"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_394", "Parent" : "0", "Child" : ["32", "33", "34"],
		"CDFG" : "normalise_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_3_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_394.MadgwickAHRSupdatbkb_U8", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_394.MadgwickAHRSupdatcud_U9", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_394.MadgwickAHRSupdatdEe_U10", "Parent" : "31"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_402", "Parent" : "0", "Child" : ["36", "37", "38"],
		"CDFG" : "normalise",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_402.MadgwickAHRSupdatbkb_U1", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_402.MadgwickAHRSupdatcud_U2", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_402.MadgwickAHRSupdatdEe_U3", "Parent" : "35"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U40", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U41", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U42", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U43", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U44", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatg8j_U45", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdathbi_U46", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U47", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U48", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U49", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U50", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U51", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U52", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U53", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U54", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U55", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U56", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatdEe_U57", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatibs_U58", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdateOg_U59", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdateOg_U60", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdateOg_U61", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MadgwickAHRSupdate {
		g {Type IO LastRead 17 FirstWrite -1}
		a {Type IO LastRead 181 FirstWrite 5}
		m {Type IO LastRead 70 FirstWrite 5}
		beta {Type I LastRead -1 FirstWrite -1}
		q {Type IO LastRead -1 FirstWrite -1}}
	MadgwickAHRSupdateIM {
		g {Type I LastRead 2 FirstWrite -1}
		a {Type IO LastRead 105 FirstWrite 54}
		beta {Type I LastRead 121 FirstWrite -1}
		q {Type IO LastRead 127 FirstWrite 54}}
	normalise_1 {
		in_0_read {Type I LastRead 0 FirstWrite -1}
		in_1_read {Type I LastRead 0 FirstWrite -1}
		in_2_read {Type I LastRead 0 FirstWrite -1}
		in_3_read {Type I LastRead 0 FirstWrite -1}}
	normalise {
		in_r {Type IO LastRead 48 FirstWrite 54}}
	normalise_1 {
		in_0_read {Type I LastRead 0 FirstWrite -1}
		in_1_read {Type I LastRead 0 FirstWrite -1}
		in_2_read {Type I LastRead 0 FirstWrite -1}
		in_3_read {Type I LastRead 0 FirstWrite -1}}
	normalise {
		in_r {Type IO LastRead 48 FirstWrite 54}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "232", "Max" : "831"}
	, {"Name" : "Interval", "Min" : "233", "Max" : "832"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	g { ap_memory {  { g_address0 mem_address 1 2 }  { g_ce0 mem_ce 1 1 }  { g_we0 mem_we 1 1 }  { g_d0 mem_din 1 32 }  { g_q0 mem_dout 0 32 }  { g_address1 mem_address 1 2 }  { g_ce1 mem_ce 1 1 }  { g_q1 mem_dout 0 32 } } }
	a { ap_memory {  { a_address0 mem_address 1 2 }  { a_ce0 mem_ce 1 1 }  { a_we0 mem_we 1 1 }  { a_d0 mem_din 1 32 }  { a_q0 mem_dout 0 32 }  { a_address1 mem_address 1 2 }  { a_ce1 mem_ce 1 1 }  { a_q1 mem_dout 0 32 } } }
	m { ap_memory {  { m_address0 mem_address 1 2 }  { m_ce0 mem_ce 1 1 }  { m_we0 mem_we 1 1 }  { m_d0 mem_din 1 32 }  { m_q0 mem_dout 0 32 }  { m_address1 mem_address 1 2 }  { m_ce1 mem_ce 1 1 }  { m_q1 mem_dout 0 32 } } }
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
