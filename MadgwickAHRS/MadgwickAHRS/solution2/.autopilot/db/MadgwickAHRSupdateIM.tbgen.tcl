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
	{ g float 32 regular {array 4 { 1 1 } 1 1 }  }
	{ a float 32 regular {array 4 { 2 3 } 1 1 }  }
	{ beta float 32 regular {pointer 0} {global 0}  }
	{ q float 32 regular {array 4 { 2 2 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "g", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "beta", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "beta","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "q", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "q","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ g_address0 sc_out sc_lv 2 signal 0 } 
	{ g_ce0 sc_out sc_logic 1 signal 0 } 
	{ g_q0 sc_in sc_lv 32 signal 0 } 
	{ g_address1 sc_out sc_lv 2 signal 0 } 
	{ g_ce1 sc_out sc_logic 1 signal 0 } 
	{ g_q1 sc_in sc_lv 32 signal 0 } 
	{ a_address0 sc_out sc_lv 2 signal 1 } 
	{ a_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_we0 sc_out sc_logic 1 signal 1 } 
	{ a_d0 sc_out sc_lv 32 signal 1 } 
	{ a_q0 sc_in sc_lv 32 signal 1 } 
	{ beta sc_in sc_lv 32 signal 2 } 
	{ q_address0 sc_out sc_lv 2 signal 3 } 
	{ q_ce0 sc_out sc_logic 1 signal 3 } 
	{ q_we0 sc_out sc_logic 1 signal 3 } 
	{ q_d0 sc_out sc_lv 32 signal 3 } 
	{ q_q0 sc_in sc_lv 32 signal 3 } 
	{ q_address1 sc_out sc_lv 2 signal 3 } 
	{ q_ce1 sc_out sc_logic 1 signal 3 } 
	{ q_we1 sc_out sc_logic 1 signal 3 } 
	{ q_d1 sc_out sc_lv 32 signal 3 } 
	{ q_q1 sc_in sc_lv 32 signal 3 } 
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
 	{ "name": "g_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g", "role": "q0" }} , 
 	{ "name": "g_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "g", "role": "address1" }} , 
 	{ "name": "g_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g", "role": "ce1" }} , 
 	{ "name": "g_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "g", "role": "q1" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "we0" }} , 
 	{ "name": "a_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "d0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "beta", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "beta", "role": "default" }} , 
 	{ "name": "q_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "q", "role": "address0" }} , 
 	{ "name": "q_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "ce0" }} , 
 	{ "name": "q_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "we0" }} , 
 	{ "name": "q_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q", "role": "d0" }} , 
 	{ "name": "q_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q", "role": "q0" }} , 
 	{ "name": "q_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "q", "role": "address1" }} , 
 	{ "name": "q_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "ce1" }} , 
 	{ "name": "q_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "we1" }} , 
 	{ "name": "q_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q", "role": "d1" }} , 
 	{ "name": "q_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "10", "14", "18", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
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
					{"ID" : "14", "SubInstance" : "grp_normalise_fu_213", "Port" : "in_r"}]},
			{"Name" : "beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_normalise_fu_213", "Port" : "in_r"},
					{"ID" : "18", "SubInstance" : "grp_integrateQdot_fu_220", "Port" : "q"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_192", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_192.MadgwickAHRSupdateOg_U15", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_192.MadgwickAHRSupdateOg_U16", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_192.MadgwickAHRSupdateOg_U17", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_192.MadgwickAHRSupdateOg_U18", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_192.MadgwickAHRSupdatcud_U19", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_192.MadgwickAHRSupdatcud_U20", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_192.MadgwickAHRSupdatcud_U21", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_feedbackStep_fu_192.MadgwickAHRSupdatcud_U22", "Parent" : "1"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_205", "Parent" : "0", "Child" : ["11", "12", "13"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_205.MadgwickAHRSupdatbkb_U8", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_205.MadgwickAHRSupdatcud_U9", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_1_fu_205.MadgwickAHRSupdatdEe_U10", "Parent" : "10"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_213", "Parent" : "0", "Child" : ["15", "16", "17"],
		"CDFG" : "normalise",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_213.MadgwickAHRSupdatbkb_U1", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_213.MadgwickAHRSupdatcud_U2", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_normalise_fu_213.MadgwickAHRSupdatdEe_U3", "Parent" : "14"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_integrateQdot_fu_220", "Parent" : "0", "Child" : ["19", "20"],
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_integrateQdot_fu_220.MadgwickAHRSupdatfYi_U33", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_integrateQdot_fu_220.MadgwickAHRSupdatcud_U34", "Parent" : "18"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U41", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U42", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U43", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatbkb_U44", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U45", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U46", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U47", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U48", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U49", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U50", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U51", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U52", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U53", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U54", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U55", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatcud_U56", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MadgwickAHRSupdatdEe_U57", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		p_read3 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "178", "Max" : "502"}
	, {"Name" : "Interval", "Min" : "178", "Max" : "502"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	g { ap_memory {  { g_address0 mem_address 1 2 }  { g_ce0 mem_ce 1 1 }  { g_q0 mem_dout 0 32 }  { g_address1 mem_address 1 2 }  { g_ce1 mem_ce 1 1 }  { g_q1 mem_dout 0 32 } } }
	a { ap_memory {  { a_address0 mem_address 1 2 }  { a_ce0 mem_ce 1 1 }  { a_we0 mem_we 1 1 }  { a_d0 mem_din 1 32 }  { a_q0 mem_dout 0 32 } } }
	beta { ap_none {  { beta in_data 0 32 } } }
	q { ap_memory {  { q_address0 mem_address 1 2 }  { q_ce0 mem_ce 1 1 }  { q_we0 mem_we 1 1 }  { q_d0 mem_din 1 32 }  { q_q0 mem_dout 0 32 }  { q_address1 mem_address 1 2 }  { q_ce1 mem_ce 1 1 }  { q_we1 mem_we 1 1 }  { q_d1 mem_din 1 32 }  { q_q1 mem_dout 0 32 } } }
}
