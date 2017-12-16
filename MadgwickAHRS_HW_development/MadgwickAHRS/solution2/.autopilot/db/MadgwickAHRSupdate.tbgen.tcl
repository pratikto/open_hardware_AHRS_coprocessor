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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "40", "49", "53", "57", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78"],
		"CDFG" : "MadgwickAHRSupdate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state267", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_287"},
			{"State" : "ap_ST_fsm_state234", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_1_fu_312"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_fu_320"},
			{"State" : "ap_ST_fsm_state172", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_fu_320"},
			{"State" : "ap_ST_fsm_state266", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_fu_320"}],
		"Port" : [
			{"Name" : "g", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_287", "Port" : "g"}]},
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_normalise_fu_320", "Port" : "in_r"},
					{"ID" : "2", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_287", "Port" : "a"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_normalise_fu_320", "Port" : "in_r"}]},
			{"Name" : "beta", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_287", "Port" : "beta"}]},
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_integrateQdot_fu_328", "Port" : "q"},
					{"ID" : "53", "SubInstance" : "grp_normalise_fu_320", "Port" : "in_r"},
					{"ID" : "2", "SubInstance" : "grp_MadgwickAHRSupdateIM_fu_287", "Port" : "q"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287", "Parent" : "0", "Child" : ["3", "12", "16", "20", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"],
		"CDFG" : "MadgwickAHRSupdateIM",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state122", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_1_fu_205"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_fu_213"},
			{"State" : "ap_ST_fsm_state154", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_normalise_fu_213"}],
		"Port" : [
			{"Name" : "g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_normalise_fu_213", "Port" : "in_r"}]},
			{"Name" : "beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_normalise_fu_213", "Port" : "in_r"},
					{"ID" : "20", "SubInstance" : "grp_integrateQdot_fu_220", "Port" : "q"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_feedbackStep_fu_192", "Parent" : "2", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11"],
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_feedbackStep_fu_192.MadgwickAHRSupdateOg_U15", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_feedbackStep_fu_192.MadgwickAHRSupdateOg_U16", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_feedbackStep_fu_192.MadgwickAHRSupdateOg_U17", "Parent" : "3"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_feedbackStep_fu_192.MadgwickAHRSupdateOg_U18", "Parent" : "3"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_feedbackStep_fu_192.MadgwickAHRSupdatcud_U19", "Parent" : "3"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_feedbackStep_fu_192.MadgwickAHRSupdatcud_U20", "Parent" : "3"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_feedbackStep_fu_192.MadgwickAHRSupdatcud_U21", "Parent" : "3"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_feedbackStep_fu_192.MadgwickAHRSupdatcud_U22", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_normalise_1_fu_205", "Parent" : "2", "Child" : ["13", "14", "15"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_normalise_1_fu_205.MadgwickAHRSupdatbkb_U8", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_normalise_1_fu_205.MadgwickAHRSupdatcud_U9", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_normalise_1_fu_205.MadgwickAHRSupdatdEe_U10", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_normalise_fu_213", "Parent" : "2", "Child" : ["17", "18", "19"],
		"CDFG" : "normalise",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_normalise_fu_213.MadgwickAHRSupdatbkb_U1", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_normalise_fu_213.MadgwickAHRSupdatcud_U2", "Parent" : "16"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_normalise_fu_213.MadgwickAHRSupdatdEe_U3", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_integrateQdot_fu_220", "Parent" : "2", "Child" : ["21", "22"],
		"CDFG" : "integrateQdot",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_integrateQdot_fu_220.MadgwickAHRSupdatfYi_U33", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.grp_integrateQdot_fu_220.MadgwickAHRSupdatcud_U34", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatbkb_U41", "Parent" : "2"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatbkb_U42", "Parent" : "2"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatbkb_U43", "Parent" : "2"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatbkb_U44", "Parent" : "2"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U45", "Parent" : "2"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U46", "Parent" : "2"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U47", "Parent" : "2"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U48", "Parent" : "2"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U49", "Parent" : "2"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U50", "Parent" : "2"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U51", "Parent" : "2"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U52", "Parent" : "2"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U53", "Parent" : "2"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U54", "Parent" : "2"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U55", "Parent" : "2"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatcud_U56", "Parent" : "2"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MadgwickAHRSupdateIM_fu_287.MadgwickAHRSupdatdEe_U57", "Parent" : "2"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_299", "Parent" : "0", "Child" : ["41", "42", "43", "44", "45", "46", "47", "48"],
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
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_299.MadgwickAHRSupdateOg_U15", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_299.MadgwickAHRSupdateOg_U16", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_299.MadgwickAHRSupdateOg_U17", "Parent" : "40"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_299.MadgwickAHRSupdateOg_U18", "Parent" : "40"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_299.MadgwickAHRSupdatcud_U19", "Parent" : "40"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_299.MadgwickAHRSupdatcud_U20", "Parent" : "40"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_299.MadgwickAHRSupdatcud_U21", "Parent" : "40"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_299.MadgwickAHRSupdatcud_U22", "Parent" : "40"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_312", "Parent" : "0", "Child" : ["50", "51", "52"],
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
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_312.MadgwickAHRSupdatbkb_U8", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_312.MadgwickAHRSupdatcud_U9", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_312.MadgwickAHRSupdatdEe_U10", "Parent" : "49"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_320", "Parent" : "0", "Child" : ["54", "55", "56"],
		"CDFG" : "normalise",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_320.MadgwickAHRSupdatbkb_U1", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_320.MadgwickAHRSupdatcud_U2", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_320.MadgwickAHRSupdatdEe_U3", "Parent" : "53"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_integrateQdot_fu_328", "Parent" : "0", "Child" : ["58", "59"],
		"CDFG" : "integrateQdot",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_integrateQdot_fu_328.MadgwickAHRSupdatfYi_U33", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_integrateQdot_fu_328.MadgwickAHRSupdatcud_U34", "Parent" : "57"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U62", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U63", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U64", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U65", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U66", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatfYi_U67", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdateOg_U68", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U69", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U70", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U71", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U72", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U73", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U74", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U75", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U76", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U77", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U78", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatdEe_U79", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdathbi_U80", "Parent" : "0"}]}


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
		q {Type IO LastRead 51 FirstWrite 13}}
	feedbackStep {
		qDot_0_read {Type I LastRead 0 FirstWrite -1}
		qDot_1_read {Type I LastRead 0 FirstWrite -1}
		qDot_2_read {Type I LastRead 0 FirstWrite -1}
		qDot_3_read {Type I LastRead 0 FirstWrite -1}
		beta {Type I LastRead 0 FirstWrite -1}
		s_0_read {Type I LastRead 0 FirstWrite -1}
		s_1_read {Type I LastRead 0 FirstWrite -1}
		s_2_read {Type I LastRead 0 FirstWrite -1}
		s_3_read {Type I LastRead 0 FirstWrite -1}}
	normalise_1 {
		in_0_read {Type I LastRead 0 FirstWrite -1}
		in_1_read {Type I LastRead 0 FirstWrite -1}
		in_2_read {Type I LastRead 0 FirstWrite -1}
		in_3_read {Type I LastRead 0 FirstWrite -1}}
	normalise {
		in_r {Type IO LastRead 48 FirstWrite 54}}
	integrateQdot {
		q {Type IO LastRead 7 FirstWrite 13}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 2 FirstWrite -1}
		p_read3 {Type I LastRead 3 FirstWrite -1}}
	feedbackStep {
		qDot_0_read {Type I LastRead 0 FirstWrite -1}
		qDot_1_read {Type I LastRead 0 FirstWrite -1}
		qDot_2_read {Type I LastRead 0 FirstWrite -1}
		qDot_3_read {Type I LastRead 0 FirstWrite -1}
		beta {Type I LastRead 0 FirstWrite -1}
		s_0_read {Type I LastRead 0 FirstWrite -1}
		s_1_read {Type I LastRead 0 FirstWrite -1}
		s_2_read {Type I LastRead 0 FirstWrite -1}
		s_3_read {Type I LastRead 0 FirstWrite -1}}
	normalise_1 {
		in_0_read {Type I LastRead 0 FirstWrite -1}
		in_1_read {Type I LastRead 0 FirstWrite -1}
		in_2_read {Type I LastRead 0 FirstWrite -1}
		in_3_read {Type I LastRead 0 FirstWrite -1}}
	normalise {
		in_r {Type IO LastRead 48 FirstWrite 54}}
	integrateQdot {
		q {Type IO LastRead 7 FirstWrite 13}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 2 FirstWrite -1}
		p_read3 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "184", "Max" : "732"}
	, {"Name" : "Interval", "Min" : "185", "Max" : "733"}
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
