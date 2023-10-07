//  Catapult Ultra Synthesis 2023.1/1033555 (Production Release) Mon Feb 13 11:32:25 PST 2023
//  
//          Copyright (c) Siemens EDA, 1996-2023, All Rights Reserved.
//                        UNPUBLISHED, LICENSED SOFTWARE.
//             CONFIDENTIAL AND PROPRIETARY INFORMATION WHICH IS THE
//                   PROPERTY OF SIEMENS EDA OR ITS LICENSORS.
//  
//  Running on Linux rijain@orw-rijain-vm 3.10.0-1160.83.1.el7.x86_64 x86_64 aol
//  
//  Package information: SIFLIBS v26.1_0.0, HLS_PKGS v26.1_0.0, 
//                       SIF_TOOLKITS v26.1_0.0, SIF_XILINX v26.1_0.0, 
//                       SIF_ALTERA v26.1_0.0, CCS_LIBS v26.1_0.0, 
//                       CDS_PPRO v2022.1_1, CDS_DesigChecker v2023.1, 
//                       CDS_OASYS v21.1_2.5, CDS_PSR v22.2_0.9, 
//                       DesignPad v2.78_1.0
//  
solution new -state initial
solution options defaults
solution options set /OnTheFly/VthAttributeType cell_lib
solution options set /Output/GenerateCycleNetlist false
solution options set Flows/SCVerify/USE_CCS_BLOCK true
solution file add ./segmentation.cpp -type C++
directive set -DESIGN_GOAL area
directive set -SPECULATE true
directive set -MERGEABLE true
directive set -REGISTER_THRESHOLD 256
directive set -MEM_MAP_THRESHOLD 32
directive set -LOGIC_OPT false
directive set -FSM_ENCODING none
directive set -FSM_BINARY_ENCODING_THRESHOLD 64
directive set -REG_MAX_FANOUT 0
directive set -NO_X_ASSIGNMENTS true
directive set -SAFE_FSM false
directive set -REGISTER_SHARING_MAX_WIDTH_DIFFERENCE 8
directive set -REGISTER_SHARING_LIMIT 0
directive set -ASSIGN_OVERHEAD 0
directive set -TIMING_CHECKS true
directive set -MUXPATH true
directive set -REALLOC true
directive set -UNROLL no
directive set -IO_MODE super
directive set -CHAN_IO_PROTOCOL use_library
directive set -ARRAY_SIZE 1024
directive set -IDLE_SIGNAL {}
directive set -STALL_FLAG_SV off
directive set -STALL_FLAG false
directive set -TRANSACTION_DONE_SIGNAL true
directive set -DONE_FLAG {}
directive set -READY_FLAG {}
directive set -START_FLAG {}
directive set -TRANSACTION_SYNC ready
directive set -RESET_CLEARS_ALL_REGS use_library
directive set -CLOCK_OVERHEAD 20.000000
directive set -ON_THE_FLY_PROTOTYPING false
directive set -OPT_CONST_MULTS use_library
directive set -CHARACTERIZE_ROM false
directive set -PROTOTYPE_ROM true
directive set -ROM_THRESHOLD 64
directive set -CLUSTER_ADDTREE_IN_WIDTH_THRESHOLD 0
directive set -CLUSTER_ADDTREE_IN_COUNT_THRESHOLD 0
directive set -CLUSTER_OPT_CONSTANT_INPUTS true
directive set -CLUSTER_RTL_SYN false
directive set -CLUSTER_FAST_MODE false
directive set -CLUSTER_TYPE combinational
directive set -PROTOTYPING_ENGINE oasys
directive set -PIPELINE_RAMP_UP true
go new
go analyze
solution design set image_segmentation<8,8> -top
go compile
solution library add nangate-45nm_beh -- -rtlsyntool DesignCompiler -vendor Nangate -technology 045nm
solution library add ram_nangate-45nm_pipe_beh
solution library add ram_nangate-45nm-dualport_beh
solution library add ram_nangate-45nm-singleport_beh
solution library add {[Block] connectedComponents<8,8>.v1}
solution library add {[Block] dilate<8,8,3,3,2,-1,-1>.v1}
solution library add {[Block] distanceTransform<8,8>.v1}
solution library add {[Block] incrAndSet0<8,8>.v1}
solution library add {[Block] makeBoundary<8,8>.v1}
solution library add {[Block] minMaxLoc<8,8>.v1}
solution library add {[Block] morphologyEx<8,8,0,3,2>.v1}
solution library add {[Block] RGBtoGray<8,8>.v1}
solution library add {[Block] subtractPixels<8,8>.v1}
solution library add {[Block] threshold<8,8,5>.v1}
solution library add {[Block] thresholdOtsu<8,8>.v1}
solution library add {[Block] watershed_algorithm<8,8>.v1}
go libraries
directive set -CLOCKS {clk {-CLOCK_PERIOD 10.0 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -CLOCK_HIGH_TIME 5.0 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND sync -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_ACTIVE high}}
directive set -CLOCKS {clk {-CLOCK_PERIOD 10.0 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -CLOCK_HIGH_TIME 5.0 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND sync -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_ACTIVE high}}
directive set /image_segmentation<8,8>/thresholdOtsu<8,8> -MAP_TO_MODULE {[Block] thresholdOtsu<8,8>.v1}
directive set /image_segmentation<8,8>/distanceTransform<8,8> -MAP_TO_MODULE {[Block] distanceTransform<8,8>.v1}
directive set /image_segmentation<8,8>/makeBoundary<8,8> -MAP_TO_MODULE {[Block] makeBoundary<8,8>.v1}
directive set /image_segmentation<8,8>/watershed_algorithm<8,8> -MAP_TO_MODULE {[Block] watershed_algorithm<8,8>.v1}
directive set /image_segmentation<8,8>/incrAndSet0<8,8> -MAP_TO_MODULE {[Block] incrAndSet0<8,8>.v1}
directive set /image_segmentation<8,8>/connectedComponents<8,8> -MAP_TO_MODULE {[Block] connectedComponents<8,8>.v1}
directive set /image_segmentation<8,8>/subtractPixels<8,8> -MAP_TO_MODULE {[Block] subtractPixels<8,8>.v1}
directive set /image_segmentation<8,8>/threshold<8,8,5> -MAP_TO_MODULE {[Block] threshold<8,8,5>.v1}
directive set /image_segmentation<8,8>/minMaxLoc<8,8> -MAP_TO_MODULE {[Block] minMaxLoc<8,8>.v1}
directive set /image_segmentation<8,8>/dilate<8,8,3,3,2,-1,-1> -MAP_TO_MODULE {[Block] dilate<8,8,3,3,2,-1,-1>.v1}
directive set /image_segmentation<8,8>/morphologyEx<8,8,0,3,2> -MAP_TO_MODULE {[Block] morphologyEx<8,8,0,3,2>.v1}
directive set /image_segmentation<8,8>/RGBtoGray<8,8> -MAP_TO_MODULE {[Block] RGBtoGray<8,8>.v1}
go assembly
directive set /image_segmentation<8,8>/inputCopyOutput:cns -FIFO_DEPTH 8
directive set /image_segmentation<8,8>/minValDistanceTransform:cns -FIFO_DEPTH 8
directive set /image_segmentation<8,8>/maxValDistanceTransform:cns -FIFO_DEPTH 8
go extract


