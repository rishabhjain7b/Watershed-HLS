//  Catapult Ultra Synthesis 2023.1/1033555 (Production Release) Mon Feb 13 11:32:25 PST 2023

//  
solution new -state initial
solution options defaults
solution options set /OnTheFly/VthAttributeType cell_lib
solution options set /Output/GenerateCycleNetlist false
solution file add ./segmentation.cpp -type C++

go new
go analyze
solution design set RGBtoGray<8,8> -top
go compile
solution library add nangate-45nm_beh -- -rtlsyntool DesignCompiler -vendor Nangate -technology 045nm
solution library add ram_nangate-45nm_pipe_beh
solution library add ram_nangate-45nm-dualport_beh
solution library add ram_nangate-45nm-singleport_beh
go libraries
directive set -CLOCKS {clk {-CLOCK_PERIOD 10.0 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -CLOCK_HIGH_TIME 5.0 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND sync -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_ACTIVE high}}
go assembly
#directive set /RGBtoGray<8,8>/core/main -PIPELINE_INIT_INTERVAL 1
go architect
go extract
