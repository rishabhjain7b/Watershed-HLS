set moduleName morphologyEx
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
set C_modelName {morphologyEx}
set C_modelType { void 0 }
set C_modelArgList {
	{ dst int 8 regular {array 262144 { 2 3 } 1 1 }  }
	{ binaryThreshold int 1 regular {array 262144 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dst", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "binaryThreshold", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dst_address0 sc_out sc_lv 18 signal 0 } 
	{ dst_ce0 sc_out sc_logic 1 signal 0 } 
	{ dst_we0 sc_out sc_logic 1 signal 0 } 
	{ dst_d0 sc_out sc_lv 8 signal 0 } 
	{ dst_q0 sc_in sc_lv 8 signal 0 } 
	{ binaryThreshold_address0 sc_out sc_lv 18 signal 1 } 
	{ binaryThreshold_ce0 sc_out sc_logic 1 signal 1 } 
	{ binaryThreshold_q0 sc_in sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dst_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "dst", "role": "address0" }} , 
 	{ "name": "dst_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "ce0" }} , 
 	{ "name": "dst_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst", "role": "we0" }} , 
 	{ "name": "dst_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst", "role": "d0" }} , 
 	{ "name": "dst_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst", "role": "q0" }} , 
 	{ "name": "binaryThreshold_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "binaryThreshold", "role": "address0" }} , 
 	{ "name": "binaryThreshold_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "binaryThreshold", "role": "ce0" }} , 
 	{ "name": "binaryThreshold_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "binaryThreshold", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "morphologyEx",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28578824", "EstimateLatencyMax" : "28578824",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dst", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "binaryThreshold", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	morphologyEx {
		dst {Type IO LastRead 7 FirstWrite 3}
		binaryThreshold {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28578824", "Max" : "28578824"}
	, {"Name" : "Interval", "Min" : "28578824", "Max" : "28578824"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dst { ap_memory {  { dst_address0 mem_address 1 18 }  { dst_ce0 mem_ce 1 1 }  { dst_we0 mem_we 1 1 }  { dst_d0 mem_din 1 8 }  { dst_q0 mem_dout 0 8 } } }
	binaryThreshold { ap_memory {  { binaryThreshold_address0 mem_address 1 18 }  { binaryThreshold_ce0 mem_ce 1 1 }  { binaryThreshold_q0 mem_dout 0 1 } } }
}
