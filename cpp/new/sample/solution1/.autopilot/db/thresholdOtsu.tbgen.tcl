set moduleName thresholdOtsu
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
set C_modelName {thresholdOtsu}
set C_modelType { void 0 }
set C_modelArgList {
	{ src int 8 regular {array 262144 { 1 3 } 1 1 }  }
	{ dst int 1 regular {array 262144 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dst", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_address0 sc_out sc_lv 18 signal 0 } 
	{ src_ce0 sc_out sc_logic 1 signal 0 } 
	{ src_q0 sc_in sc_lv 8 signal 0 } 
	{ dst_address0 sc_out sc_lv 18 signal 1 } 
	{ dst_ce0 sc_out sc_logic 1 signal 1 } 
	{ dst_we0 sc_out sc_logic 1 signal 1 } 
	{ dst_d0 sc_out sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "src", "role": "address0" }} , 
 	{ "name": "src_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src", "role": "ce0" }} , 
 	{ "name": "src_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src", "role": "q0" }} , 
 	{ "name": "dst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "dst", "role": "address0" }} , 
 	{ "name": "dst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "ce0" }} , 
 	{ "name": "dst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "we0" }} , 
 	{ "name": "dst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "thresholdOtsu",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1843204", "EstimateLatencyMax" : "2822404",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "variance", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.variance_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.histogram_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_fadd_32ns_32ns_32_5_full_dsp_1_U13", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_fmul_32ns_32ns_32_4_max_dsp_1_U14", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_sitofp_32ns_32_5_1_U15", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_fcmp_32ns_32ns_1_1_1_U16", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	thresholdOtsu {
		src {Type I LastRead 8 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 10}
		variance {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1843204", "Max" : "2822404"}
	, {"Name" : "Interval", "Min" : "1843204", "Max" : "2822404"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src { ap_memory {  { src_address0 mem_address 1 18 }  { src_ce0 mem_ce 1 1 }  { src_q0 mem_dout 0 8 } } }
	dst { ap_memory {  { dst_address0 mem_address 1 18 }  { dst_ce0 mem_ce 1 1 }  { dst_we0 mem_we 1 1 }  { dst_d0 mem_din 1 1 } } }
}
