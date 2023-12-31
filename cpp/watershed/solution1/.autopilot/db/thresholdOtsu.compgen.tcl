# This script segment is generated automatically by AutoPilot

set id 13
set name imageProcessing_fadd_32ns_32ns_32_5_full_dsp_1
set corename simcore_fadd
set op fadd
set stage_num 5
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fadd] == "ap_gen_simcore_fadd"} {
eval "ap_gen_simcore_fadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fadd
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 14
set name imageProcessing_fmul_32ns_32ns_32_4_max_dsp_1
set corename simcore_fmul
set op fmul
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style max_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fmul] == "ap_gen_simcore_fmul"} {
eval "ap_gen_simcore_fmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fmul
set corename FMul
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 15
set name imageProcessing_sitofp_32ns_32_5_1
set corename simcore_sitofp
set op sitofp
set stage_num 5
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_sitofp] == "ap_gen_simcore_sitofp"} {
eval "ap_gen_simcore_sitofp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_sitofp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op sitofp
set corename Int2Float
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 16
set name imageProcessing_fcmp_32ns_32ns_1_1_1
set corename simcore_fcmp
set op fcmp
set stage_num 1
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set opcode_width 5
set opcode_signed 0
set out_width 1
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fcmp] == "ap_gen_simcore_fcmp"} {
eval "ap_gen_simcore_fcmp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fcmp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fcmp
set corename FCmp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 21
set hasByteEnable 0
set MemName thresholdOtsu_variance
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" "01111111110000000000000000000000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.257
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 22
set hasByteEnable 0
set MemName thresholdOtsu_histogram
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 32
set AddrRange 256
set AddrWd 8
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.257
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name src \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename src \
    op interface \
    ports { src_address0 { O 18 vector } src_ce0 { O 1 bit } src_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'src'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name dst \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dst \
    op interface \
    ports { dst_address0 { O 18 vector } dst_ce0 { O 1 bit } dst_we0 { O 1 bit } dst_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dst'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


