set moduleName distanceTransform
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
set C_modelName {distanceTransform}
set C_modelType { void 0 }
set C_modelArgList {
	{ outputImage float 32 regular {array 262144 { 2 2 } 1 1 }  }
	{ morphOpening int 8 regular {array 262144 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "outputImage", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "morphOpening", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ outputImage_address0 sc_out sc_lv 18 signal 0 } 
	{ outputImage_ce0 sc_out sc_logic 1 signal 0 } 
	{ outputImage_we0 sc_out sc_logic 1 signal 0 } 
	{ outputImage_d0 sc_out sc_lv 32 signal 0 } 
	{ outputImage_q0 sc_in sc_lv 32 signal 0 } 
	{ outputImage_address1 sc_out sc_lv 18 signal 0 } 
	{ outputImage_ce1 sc_out sc_logic 1 signal 0 } 
	{ outputImage_we1 sc_out sc_logic 1 signal 0 } 
	{ outputImage_d1 sc_out sc_lv 32 signal 0 } 
	{ outputImage_q1 sc_in sc_lv 32 signal 0 } 
	{ morphOpening_address0 sc_out sc_lv 18 signal 1 } 
	{ morphOpening_ce0 sc_out sc_logic 1 signal 1 } 
	{ morphOpening_q0 sc_in sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "outputImage_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "outputImage", "role": "address0" }} , 
 	{ "name": "outputImage_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputImage", "role": "ce0" }} , 
 	{ "name": "outputImage_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputImage", "role": "we0" }} , 
 	{ "name": "outputImage_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputImage", "role": "d0" }} , 
 	{ "name": "outputImage_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputImage", "role": "q0" }} , 
 	{ "name": "outputImage_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "outputImage", "role": "address1" }} , 
 	{ "name": "outputImage_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputImage", "role": "ce1" }} , 
 	{ "name": "outputImage_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputImage", "role": "we1" }} , 
 	{ "name": "outputImage_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputImage", "role": "d1" }} , 
 	{ "name": "outputImage_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputImage", "role": "q1" }} , 
 	{ "name": "morphOpening_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "morphOpening", "role": "address0" }} , 
 	{ "name": "morphOpening_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "morphOpening", "role": "ce0" }} , 
 	{ "name": "morphOpening_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "morphOpening", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "distanceTransform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2100227", "EstimateLatencyMax" : "13110275",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "outputImage", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "morphOpening", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_fadd_32ns_32ns_32_5_full_dsp_1_U31", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_fptrunc_64ns_32_1_1_U32", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_fpext_32ns_64_1_1_U33", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_fcmp_32ns_32ns_1_1_1_U34", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_dadd_64ns_64ns_64_6_full_dsp_1_U35", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProcessing_dcmp_64ns_64ns_1_1_1_U36", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	distanceTransform {
		outputImage {Type IO LastRead 25 FirstWrite 2}
		morphOpening {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2100227", "Max" : "13110275"}
	, {"Name" : "Interval", "Min" : "2100227", "Max" : "13110275"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	outputImage { ap_memory {  { outputImage_address0 mem_address 1 18 }  { outputImage_ce0 mem_ce 1 1 }  { outputImage_we0 mem_we 1 1 }  { outputImage_d0 mem_din 1 32 }  { outputImage_q0 mem_dout 0 32 }  { outputImage_address1 MemPortADDR2 1 18 }  { outputImage_ce1 MemPortCE2 1 1 }  { outputImage_we1 MemPortWE2 1 1 }  { outputImage_d1 MemPortDIN2 1 32 }  { outputImage_q1 MemPortDOUT2 0 32 } } }
	morphOpening { ap_memory {  { morphOpening_address0 mem_address 1 18 }  { morphOpening_ce0 mem_ce 1 1 }  { morphOpening_q0 mem_dout 0 8 } } }
}
