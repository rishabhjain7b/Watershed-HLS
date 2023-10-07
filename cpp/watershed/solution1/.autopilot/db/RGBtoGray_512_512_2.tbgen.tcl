set moduleName RGBtoGray_512_512_2
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {RGBtoGray<512, 512>2}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 1 regular {array 262144 { 1 3 } 1 1 }  }
	{ input_g int 1 regular {array 262144 { 1 3 } 1 1 }  }
	{ input_b int 1 regular {array 262144 { 1 3 } 1 1 }  }
	{ output_r int 8 regular {array 262144 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_g", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_b", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 18 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 1 signal 0 } 
	{ input_g_address0 sc_out sc_lv 18 signal 1 } 
	{ input_g_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_g_q0 sc_in sc_lv 1 signal 1 } 
	{ input_b_address0 sc_out sc_lv 18 signal 2 } 
	{ input_b_ce0 sc_out sc_logic 1 signal 2 } 
	{ input_b_q0 sc_in sc_lv 1 signal 2 } 
	{ output_r_address0 sc_out sc_lv 18 signal 3 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 3 } 
	{ output_r_we0 sc_out sc_logic 1 signal 3 } 
	{ output_r_d0 sc_out sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "input_g_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "input_g", "role": "address0" }} , 
 	{ "name": "input_g_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_g", "role": "ce0" }} , 
 	{ "name": "input_g_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_g", "role": "q0" }} , 
 	{ "name": "input_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "input_b", "role": "address0" }} , 
 	{ "name": "input_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_b", "role": "ce0" }} , 
 	{ "name": "input_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_b", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "RGBtoGray_512_512_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7865345", "EstimateLatencyMax" : "7865345",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mask_table1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "one_half_table2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mask_table1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_half_table2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_dadd_64ns_64ns_64_6_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_dmul_64ns_64ns_64_6_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_sitodp_32ns_64_5_1_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	RGBtoGray_512_512_2 {
		input_r {Type I LastRead 13 FirstWrite -1}
		input_g {Type I LastRead 2 FirstWrite -1}
		input_b {Type I LastRead 19 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 31}
		mask_table1 {Type I LastRead -1 FirstWrite -1}
		one_half_table2 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7865345", "Max" : "7865345"}
	, {"Name" : "Interval", "Min" : "7865345", "Max" : "7865345"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 18 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 1 } } }
	input_g { ap_memory {  { input_g_address0 mem_address 1 18 }  { input_g_ce0 mem_ce 1 1 }  { input_g_q0 mem_dout 0 1 } } }
	input_b { ap_memory {  { input_b_address0 mem_address 1 18 }  { input_b_ce0 mem_ce 1 1 }  { input_b_q0 mem_dout 0 1 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 18 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
}
