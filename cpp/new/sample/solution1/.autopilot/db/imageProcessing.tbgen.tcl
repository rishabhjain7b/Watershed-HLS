set moduleName imageProcessing
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
set C_modelName {imageProcessing}
set C_modelType { void 0 }
set C_modelArgList {
}
set C_modelArgMapList {[ 
]}
# RTL Port declarations: 
set portNum 6
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "imageProcessing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_image_segmentation_fu_141"}],
		"Port" : [
			{"Name" : "mask_table1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "mask_table1"}]},
			{"Name" : "one_half_table2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "one_half_table2"}]},
			{"Name" : "grayOutput", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "grayOutput"}]},
			{"Name" : "variance", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "variance"}]},
			{"Name" : "binaryThreshold", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "binaryThreshold"}]},
			{"Name" : "morphOpening", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "morphOpening"}]},
			{"Name" : "imKernel", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "imKernel"}]},
			{"Name" : "sureBackground", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "sureBackground"}]},
			{"Name" : "distanceTransformOut", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "distanceTransformOut"}]},
			{"Name" : "sureForeground", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "sureForeground"}]},
			{"Name" : "markersGen", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "markersGen"}]},
			{"Name" : "watershedOutput", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "watershedOutput"}]},
			{"Name" : "neighbours_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "neighbours_0"}]},
			{"Name" : "neighbours_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_image_segmentation_fu_141", "Port" : "neighbours_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inputImage_r_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inputImage_g_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inputImage_b_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.finalOutputImage_r_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.finalOutputImage_g_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.finalOutputImage_b_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "20", "26", "34", "41", "45", "47", "51", "52", "53"],
		"CDFG" : "image_segmentation",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_distanceTransform_fu_294"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_RGBtoGray_512_512_2_fu_302"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_thresholdOtsu_fu_318"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_watershed_algorithm_fu_328"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_connectedComponents_fu_340"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_morphologyEx_fu_348"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dilate_fu_356"}],
		"Port" : [
			{"Name" : "input_image_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_RGBtoGray_512_512_2_fu_302", "Port" : "input_r"}]},
			{"Name" : "input_image_g", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_RGBtoGray_512_512_2_fu_302", "Port" : "input_g"}]},
			{"Name" : "input_image_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_RGBtoGray_512_512_2_fu_302", "Port" : "input_b"}]},
			{"Name" : "output_image_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_image_g", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_image_b", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mask_table1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_RGBtoGray_512_512_2_fu_302", "Port" : "mask_table1"}]},
			{"Name" : "one_half_table2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_RGBtoGray_512_512_2_fu_302", "Port" : "one_half_table2"}]},
			{"Name" : "grayOutput", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_watershed_algorithm_fu_328", "Port" : "grayOutput"},
					{"ID" : "26", "SubInstance" : "grp_thresholdOtsu_fu_318", "Port" : "src"},
					{"ID" : "20", "SubInstance" : "grp_RGBtoGray_512_512_2_fu_302", "Port" : "output_r"}]},
			{"Name" : "variance", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_thresholdOtsu_fu_318", "Port" : "variance"}]},
			{"Name" : "binaryThreshold", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_morphologyEx_fu_348", "Port" : "binaryThreshold"},
					{"ID" : "26", "SubInstance" : "grp_thresholdOtsu_fu_318", "Port" : "dst"}]},
			{"Name" : "morphOpening", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_dilate_fu_356", "Port" : "src"},
					{"ID" : "45", "SubInstance" : "grp_morphologyEx_fu_348", "Port" : "dst"},
					{"ID" : "13", "SubInstance" : "grp_distanceTransform_fu_294", "Port" : "morphOpening"}]},
			{"Name" : "imKernel", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_dilate_fu_356", "Port" : "imKernel"}]},
			{"Name" : "sureBackground", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_dilate_fu_356", "Port" : "sureBackground"}]},
			{"Name" : "distanceTransformOut", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_distanceTransform_fu_294", "Port" : "outputImage"}]},
			{"Name" : "sureForeground", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_connectedComponents_fu_340", "Port" : "sureForeground"}]},
			{"Name" : "markersGen", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_connectedComponents_fu_340", "Port" : "markersGen"}]},
			{"Name" : "watershedOutput", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_watershed_algorithm_fu_328", "Port" : "watershedOutput"}]},
			{"Name" : "neighbours_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_watershed_algorithm_fu_328", "Port" : "neighbours_0"}]},
			{"Name" : "neighbours_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_watershed_algorithm_fu_328", "Port" : "neighbours_1"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grayOutput_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.binaryThreshold_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.morphOpening_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.distanceTransformOut_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.sureForeground_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_distanceTransform_fu_294", "Parent" : "7", "Child" : ["14", "15", "16", "17", "18", "19"],
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_distanceTransform_fu_294.imageProcessing_fadd_32ns_32ns_32_5_full_dsp_1_U31", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_distanceTransform_fu_294.imageProcessing_fptrunc_64ns_32_1_1_U32", "Parent" : "13"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_distanceTransform_fu_294.imageProcessing_fpext_32ns_64_1_1_U33", "Parent" : "13"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_distanceTransform_fu_294.imageProcessing_fcmp_32ns_32ns_1_1_1_U34", "Parent" : "13"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_distanceTransform_fu_294.imageProcessing_dadd_64ns_64ns_64_6_full_dsp_1_U35", "Parent" : "13"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_distanceTransform_fu_294.imageProcessing_dcmp_64ns_64ns_1_1_1_U36", "Parent" : "13"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_RGBtoGray_512_512_2_fu_302", "Parent" : "7", "Child" : ["21", "22", "23", "24", "25"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_RGBtoGray_512_512_2_fu_302.mask_table1_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_RGBtoGray_512_512_2_fu_302.one_half_table2_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_RGBtoGray_512_512_2_fu_302.imageProcessing_dadd_64ns_64ns_64_6_full_dsp_1_U1", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_RGBtoGray_512_512_2_fu_302.imageProcessing_dmul_64ns_64ns_64_6_max_dsp_1_U2", "Parent" : "20"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_RGBtoGray_512_512_2_fu_302.imageProcessing_sitodp_32ns_64_5_1_U3", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_thresholdOtsu_fu_318", "Parent" : "7", "Child" : ["27", "28", "29", "30", "31", "32", "33"],
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
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_thresholdOtsu_fu_318.variance_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_thresholdOtsu_fu_318.histogram_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_thresholdOtsu_fu_318.mean_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_thresholdOtsu_fu_318.imageProcessing_fadd_32ns_32ns_32_5_full_dsp_1_U13", "Parent" : "26"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_thresholdOtsu_fu_318.imageProcessing_fmul_32ns_32ns_32_4_max_dsp_1_U14", "Parent" : "26"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_thresholdOtsu_fu_318.imageProcessing_sitofp_32ns_32_5_1_U15", "Parent" : "26"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_thresholdOtsu_fu_318.imageProcessing_fcmp_32ns_32ns_1_1_1_U16", "Parent" : "26"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_watershed_algorithm_fu_328", "Parent" : "7", "Child" : ["35", "36", "37", "38", "39", "40"],
		"CDFG" : "watershed_algorithm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "watershedOutput", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "grayOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbours_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbours_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_watershed_algorithm_fu_328.watershedOutput_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_watershed_algorithm_fu_328.neighbours_0_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_watershed_algorithm_fu_328.neighbours_1_U", "Parent" : "34"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_watershed_algorithm_fu_328.queue_0_U", "Parent" : "34"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_watershed_algorithm_fu_328.queue_1_U", "Parent" : "34"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_watershed_algorithm_fu_328.dist_U", "Parent" : "34"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_connectedComponents_fu_340", "Parent" : "7", "Child" : ["42", "43", "44"],
		"CDFG" : "connectedComponents",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sureForeground", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "markersGen", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_connectedComponents_fu_340.markersGen_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_connectedComponents_fu_340.equivLabels_parent_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_connectedComponents_fu_340.equivLabels_child_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_morphologyEx_fu_348", "Parent" : "7", "Child" : ["46"],
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
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_morphologyEx_fu_348.temp_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_dilate_fu_356", "Parent" : "7", "Child" : ["48", "49", "50"],
		"CDFG" : "dilate",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19928072", "EstimateLatencyMax" : "19928072",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "imKernel", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sureBackground", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_dilate_fu_356.imKernel_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_dilate_fu_356.sureBackground_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.grp_dilate_fu_356.tmp_U", "Parent" : "47"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.imageProcessing_fmul_32ns_32ns_32_4_max_dsp_1_U50", "Parent" : "7"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.imageProcessing_sitofp_32ns_32_5_1_U51", "Parent" : "7"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_image_segmentation_fu_141.imageProcessing_fcmp_32ns_32ns_1_1_1_U52", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	imageProcessing {
		mask_table1 {Type I LastRead -1 FirstWrite -1}
		one_half_table2 {Type I LastRead -1 FirstWrite -1}
		grayOutput {Type IO LastRead -1 FirstWrite -1}
		variance {Type I LastRead -1 FirstWrite -1}
		binaryThreshold {Type IO LastRead -1 FirstWrite -1}
		morphOpening {Type IO LastRead -1 FirstWrite -1}
		imKernel {Type I LastRead -1 FirstWrite -1}
		sureBackground {Type O LastRead -1 FirstWrite -1}
		distanceTransformOut {Type IO LastRead -1 FirstWrite -1}
		sureForeground {Type IO LastRead -1 FirstWrite -1}
		markersGen {Type IO LastRead -1 FirstWrite -1}
		watershedOutput {Type IO LastRead -1 FirstWrite -1}
		neighbours_0 {Type I LastRead -1 FirstWrite -1}
		neighbours_1 {Type I LastRead -1 FirstWrite -1}}
	image_segmentation {
		input_image_r {Type I LastRead 19 FirstWrite -1}
		input_image_g {Type I LastRead 19 FirstWrite -1}
		input_image_b {Type I LastRead 20 FirstWrite -1}
		output_image_r {Type O LastRead -1 FirstWrite 20}
		output_image_g {Type O LastRead -1 FirstWrite 20}
		output_image_b {Type O LastRead -1 FirstWrite 20}
		mask_table1 {Type I LastRead -1 FirstWrite -1}
		one_half_table2 {Type I LastRead -1 FirstWrite -1}
		grayOutput {Type IO LastRead -1 FirstWrite -1}
		variance {Type I LastRead -1 FirstWrite -1}
		binaryThreshold {Type IO LastRead -1 FirstWrite -1}
		morphOpening {Type IO LastRead -1 FirstWrite -1}
		imKernel {Type I LastRead -1 FirstWrite -1}
		sureBackground {Type O LastRead -1 FirstWrite -1}
		distanceTransformOut {Type IO LastRead -1 FirstWrite -1}
		sureForeground {Type IO LastRead -1 FirstWrite -1}
		markersGen {Type IO LastRead -1 FirstWrite -1}
		watershedOutput {Type IO LastRead -1 FirstWrite -1}
		neighbours_0 {Type I LastRead -1 FirstWrite -1}
		neighbours_1 {Type I LastRead -1 FirstWrite -1}}
	distanceTransform {
		outputImage {Type IO LastRead 25 FirstWrite 2}
		morphOpening {Type I LastRead 3 FirstWrite -1}}
	RGBtoGray_512_512_2 {
		input_r {Type I LastRead 13 FirstWrite -1}
		input_g {Type I LastRead 2 FirstWrite -1}
		input_b {Type I LastRead 19 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 31}
		mask_table1 {Type I LastRead -1 FirstWrite -1}
		one_half_table2 {Type I LastRead -1 FirstWrite -1}}
	thresholdOtsu {
		src {Type I LastRead 8 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 10}
		variance {Type I LastRead -1 FirstWrite -1}}
	watershed_algorithm {
		watershedOutput {Type IO LastRead -1 FirstWrite -1}
		grayOutput {Type I LastRead 10 FirstWrite -1}
		neighbours_0 {Type I LastRead -1 FirstWrite -1}
		neighbours_1 {Type I LastRead -1 FirstWrite -1}}
	connectedComponents {
		sureForeground {Type I LastRead 4 FirstWrite -1}
		markersGen {Type IO LastRead -1 FirstWrite -1}}
	morphologyEx {
		dst {Type IO LastRead 7 FirstWrite 3}
		binaryThreshold {Type I LastRead 5 FirstWrite -1}}
	dilate {
		src {Type I LastRead 6 FirstWrite -1}
		imKernel {Type I LastRead -1 FirstWrite -1}
		sureBackground {Type O LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
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
