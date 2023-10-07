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
solution file add ./segmentation.cpp -type C++
go new
go analyze

solution design set connectedComponents<8,8> -top
go compile
solution library add nangate-45nm_beh -- -rtlsyntool DesignCompiler -vendor Nangate -technology 045nm
solution library add ram_nangate-45nm_pipe_beh
solution library add ram_nangate-45nm-dualport_beh
solution library add ram_nangate-45nm-singleport_beh
go libraries
directive set -CLOCKS {clk {-CLOCK_PERIOD 10.0 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -CLOCK_HIGH_TIME 5.0 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND sync -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_ACTIVE high}}
go assembly
directive set /connectedComponents<8,8>/core/for#1:for:if:else:else:else:while -ITERATIONS 8
directive set /connectedComponents<8,8>/core/for#1:for:if:else:else:else:while#1 -ITERATIONS 8
directive set /connectedComponents<8,8>/core/for#2:for:if:while -ITERATIONS 8
go architect
go extract
