// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module watershed_algorithm (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        grayOutput_address0,
        grayOutput_ce0,
        grayOutput_q0
);

parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_state2 = 20'd2;
parameter    ap_ST_fsm_state3 = 20'd4;
parameter    ap_ST_fsm_state4 = 20'd8;
parameter    ap_ST_fsm_state5 = 20'd16;
parameter    ap_ST_fsm_state6 = 20'd32;
parameter    ap_ST_fsm_state7 = 20'd64;
parameter    ap_ST_fsm_state8 = 20'd128;
parameter    ap_ST_fsm_state9 = 20'd256;
parameter    ap_ST_fsm_state10 = 20'd512;
parameter    ap_ST_fsm_state11 = 20'd1024;
parameter    ap_ST_fsm_state12 = 20'd2048;
parameter    ap_ST_fsm_state13 = 20'd4096;
parameter    ap_ST_fsm_state14 = 20'd8192;
parameter    ap_ST_fsm_state15 = 20'd16384;
parameter    ap_ST_fsm_state16 = 20'd32768;
parameter    ap_ST_fsm_state17 = 20'd65536;
parameter    ap_ST_fsm_state18 = 20'd131072;
parameter    ap_ST_fsm_state19 = 20'd262144;
parameter    ap_ST_fsm_state20 = 20'd524288;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [17:0] grayOutput_address0;
output   grayOutput_ce0;
input  [7:0] grayOutput_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[17:0] grayOutput_address0;
reg grayOutput_ce0;

(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [17:0] watershedOutput_address0;
reg    watershedOutput_ce0;
reg    watershedOutput_we0;
reg   [7:0] watershedOutput_d0;
wire   [7:0] watershedOutput_q0;
wire   [2:0] neighbours_0_address0;
reg    neighbours_0_ce0;
wire   [1:0] neighbours_0_q0;
wire   [2:0] neighbours_1_address0;
reg    neighbours_1_ce0;
wire   [1:0] neighbours_1_q0;
reg   [31:0] queue_end_load_reg_818;
wire    ap_CS_fsm_state2;
wire   [31:0] i_cast7_fu_368_p1;
reg   [31:0] i_cast7_reg_823;
wire   [9:0] i_1_fu_378_p2;
reg   [9:0] i_1_reg_831;
wire   [19:0] tmp_1_cast_fu_392_p1;
reg   [19:0] tmp_1_cast_reg_836;
wire   [0:0] exitcond4_fu_372_p2;
wire   [31:0] j_cast6_fu_396_p1;
reg   [31:0] j_cast6_reg_841;
wire    ap_CS_fsm_state3;
wire   [9:0] j_1_fu_406_p2;
reg   [9:0] j_1_reg_849;
wire   [0:0] exitcond3_fu_400_p2;
wire   [9:0] i_3_fu_449_p2;
reg   [9:0] i_3_reg_865;
wire    ap_CS_fsm_state5;
wire   [19:0] tmp_20_cast_fu_463_p1;
reg   [19:0] tmp_20_cast_reg_870;
wire   [0:0] exitcond2_fu_443_p2;
wire   [9:0] j_3_fu_477_p2;
reg   [9:0] j_3_reg_885;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_32_cast_fu_492_p1;
reg   [63:0] tmp_32_cast_reg_890;
wire   [0:0] exitcond1_fu_471_p2;
wire   [0:0] grp_fu_354_p2;
reg   [0:0] tmp_8_reg_900;
wire    ap_CS_fsm_state7;
wire   [31:0] queue_start_1_fu_511_p2;
reg   [31:0] queue_start_1_reg_908;
wire    ap_CS_fsm_state9;
wire   [0:0] tmp_5_fu_505_p2;
wire   [31:0] queue_0_q0;
reg   [31:0] i_4_reg_923;
wire    ap_CS_fsm_state10;
wire   [31:0] queue_1_q0;
reg   [31:0] j_2_reg_928;
wire   [19:0] tmp_7_fu_539_p2;
reg   [19:0] tmp_7_reg_933;
wire    ap_CS_fsm_state11;
reg   [17:0] watershedOutput_addr_1_reg_943;
reg   [17:0] dist_addr_reg_948;
reg   [7:0] grayOutput_load_1_reg_953;
wire    ap_CS_fsm_state12;
wire   [3:0] k_1_fu_557_p2;
reg   [3:0] k_1_reg_961;
wire    ap_CS_fsm_state13;
wire   [0:0] exitcond_fu_551_p2;
wire   [31:0] num_labels_2_fu_604_p3;
reg   [1:0] neighbours_0_load_reg_981;
wire    ap_CS_fsm_state14;
reg   [1:0] neighbours_1_load_reg_986;
wire   [31:0] ni_fu_615_p2;
reg   [31:0] ni_reg_991;
wire    ap_CS_fsm_state15;
wire   [31:0] nj_fu_623_p2;
reg   [31:0] nj_reg_996;
wire   [0:0] or_cond6_fu_700_p2;
reg   [0:0] or_cond6_reg_1001;
reg   [17:0] grayOutput_addr_1_reg_1005;
reg   [17:0] watershedOutput_addr_3_reg_1010;
reg   [17:0] dist_addr_2_reg_1015;
wire   [31:0] min_label_1_fu_769_p3;
reg   [31:0] min_label_1_reg_1020;
wire    ap_CS_fsm_state16;
reg   [0:0] tmp_23_reg_1028;
wire   [0:0] tmp_24_fu_777_p2;
reg   [0:0] tmp_24_reg_1032;
wire    ap_CS_fsm_state17;
wire   [31:0] dist_q0;
reg   [31:0] dist_load_1_reg_1036;
wire    ap_CS_fsm_state18;
wire   [0:0] tmp_26_fu_788_p2;
reg   [0:0] tmp_26_reg_1041;
wire    ap_CS_fsm_state19;
reg   [17:0] queue_0_address0;
reg    queue_0_ce0;
reg    queue_0_we0;
reg   [31:0] queue_0_d0;
reg   [17:0] queue_1_address0;
reg    queue_1_ce0;
reg    queue_1_we0;
reg   [31:0] queue_1_d0;
reg   [17:0] dist_address0;
reg    dist_ce0;
reg    dist_we0;
reg   [31:0] dist_d0;
reg   [9:0] i_reg_243;
reg   [9:0] j_reg_254;
wire    ap_CS_fsm_state4;
reg   [9:0] i1_reg_265;
reg   [9:0] j2_reg_276;
wire    ap_CS_fsm_state8;
reg  signed [31:0] queue_start_reg_287;
reg   [31:0] num_labels_reg_298;
reg   [31:0] min_label_reg_310;
reg   [31:0] ap_phi_mux_min_label_be_phi_fu_337_p10;
wire    ap_CS_fsm_state20;
reg   [3:0] k_reg_322;
reg   [31:0] min_label_be_reg_333;
wire   [63:0] tmp_28_cast_fu_421_p1;
wire  signed [63:0] tmp_6_fu_426_p1;
wire  signed [63:0] tmp_9_fu_517_p1;
wire  signed [63:0] tmp_31_cast_fu_545_p1;
wire   [63:0] tmp_11_fu_563_p1;
wire   [63:0] tmp_35_cast_fu_728_p1;
wire  signed [63:0] tmp_27_fu_794_p1;
reg   [31:0] queue_end_fu_64;
wire   [31:0] queue_end_2_fu_432_p2;
reg   [31:0] queue_end_1_fu_80;
wire   [31:0] queue_end_3_fu_800_p2;
wire   [7:0] storemerge_fu_595_p3;
wire   [31:0] storemerge1_cast_cas_fu_497_p3;
wire   [31:0] tmp_25_fu_782_p2;
wire   [18:0] tmp_fu_384_p3;
wire   [19:0] tmp_3_cast_fu_412_p1;
wire   [19:0] tmp_s_fu_416_p2;
wire  signed [31:0] tmp_6_fu_426_p0;
wire  signed [31:0] queue_end_2_fu_432_p0;
wire   [18:0] tmp_2_fu_455_p3;
wire   [19:0] tmp_7_cast_fu_483_p1;
wire   [19:0] tmp_12_fu_487_p2;
wire   [10:0] tmp_3_fu_527_p1;
wire   [19:0] tmp_30_cast_fu_531_p3;
wire   [19:0] tmp_1_fu_523_p1;
wire   [7:0] tmp_14_fu_585_p1;
wire   [0:0] tmp_10_fu_569_p2;
wire   [7:0] tmp_13_fu_575_p1;
wire   [7:0] tmp_15_fu_589_p2;
wire   [31:0] num_labels_1_fu_579_p2;
wire  signed [31:0] neighbours_0_load_ca_fu_612_p1;
wire  signed [31:0] neighbours_1_load_ca_fu_620_p1;
wire   [0:0] tmp_16_fu_628_p3;
wire   [22:0] tmp_17_fu_642_p4;
wire   [0:0] tmp_18_fu_658_p3;
wire   [22:0] tmp_19_fu_672_p4;
wire   [0:0] icmp_fu_652_p2;
wire   [0:0] rev_fu_636_p2;
wire   [0:0] icmp7_fu_682_p2;
wire   [0:0] rev4_fu_666_p2;
wire   [0:0] tmp2_fu_694_p2;
wire   [0:0] tmp1_fu_688_p2;
wire   [10:0] tmp_21_fu_710_p1;
wire   [19:0] tmp_34_cast_fu_714_p3;
wire   [19:0] tmp_20_fu_706_p1;
wire   [19:0] tmp_28_fu_722_p2;
wire   [6:0] tmp_29_fu_735_p4;
wire   [31:0] min_label_2_fu_751_p1;
wire   [0:0] tmp_22_fu_755_p2;
wire   [0:0] icmp1_fu_745_p2;
wire   [31:0] min_label_3_min_labe_fu_761_p3;
wire  signed [31:0] tmp_27_fu_794_p0;
wire  signed [31:0] queue_end_3_fu_800_p0;
reg   [19:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 20'd1;
end

watershed_algorithm_watershedOutput #(
    .DataWidth( 8 ),
    .AddressRange( 262144 ),
    .AddressWidth( 18 ))
watershedOutput_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(watershedOutput_address0),
    .ce0(watershedOutput_ce0),
    .we0(watershedOutput_we0),
    .d0(watershedOutput_d0),
    .q0(watershedOutput_q0)
);

watershed_algorithm_neighbours_0 #(
    .DataWidth( 2 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
neighbours_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(neighbours_0_address0),
    .ce0(neighbours_0_ce0),
    .q0(neighbours_0_q0)
);

watershed_algorithm_neighbours_1 #(
    .DataWidth( 2 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
neighbours_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(neighbours_1_address0),
    .ce0(neighbours_1_ce0),
    .q0(neighbours_1_q0)
);

connectedComponents_equivLabels_parent #(
    .DataWidth( 32 ),
    .AddressRange( 262144 ),
    .AddressWidth( 18 ))
queue_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(queue_0_address0),
    .ce0(queue_0_ce0),
    .we0(queue_0_we0),
    .d0(queue_0_d0),
    .q0(queue_0_q0)
);

connectedComponents_equivLabels_parent #(
    .DataWidth( 32 ),
    .AddressRange( 262144 ),
    .AddressWidth( 18 ))
queue_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(queue_1_address0),
    .ce0(queue_1_ce0),
    .we0(queue_1_we0),
    .d0(queue_1_d0),
    .q0(queue_1_q0)
);

connectedComponents_equivLabels_parent #(
    .DataWidth( 32 ),
    .AddressRange( 262144 ),
    .AddressWidth( 18 ))
dist_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dist_address0),
    .ce0(dist_ce0),
    .we0(dist_we0),
    .d0(dist_d0),
    .q0(dist_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_372_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i1_reg_265 <= 10'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (exitcond1_fu_471_p2 == 1'd1))) begin
        i1_reg_265 <= i_3_reg_865;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_400_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_243 <= i_1_reg_831;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_243 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_443_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        j2_reg_276 <= 10'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        j2_reg_276 <= j_3_reg_885;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        j_reg_254 <= j_1_reg_849;
    end else if (((exitcond4_fu_372_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_254 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        k_reg_322 <= k_1_reg_961;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        k_reg_322 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_354_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        min_label_be_reg_333 <= min_label_1_fu_769_p3;
    end else if (((or_cond6_fu_700_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        min_label_be_reg_333 <= min_label_reg_310;
    end else if ((((1'b1 == ap_CS_fsm_state20) & (tmp_26_reg_1041 == 1'd1) & (tmp_24_reg_1032 == 1'd1) & (tmp_23_reg_1028 == 1'd1) & (or_cond6_reg_1001 == 1'd1)) | ((tmp_26_fu_788_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state19)) | ((tmp_24_fu_777_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state17)))) begin
        min_label_be_reg_333 <= min_label_1_reg_1020;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        min_label_reg_310 <= ap_phi_mux_min_label_be_phi_fu_337_p10;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        min_label_reg_310 <= 32'd262145;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (exitcond2_fu_443_p2 == 1'd1))) begin
        num_labels_reg_298 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state13) & (exitcond_fu_551_p2 == 1'd1))) begin
        num_labels_reg_298 <= num_labels_2_fu_604_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) & (tmp_26_fu_788_p2 == 1'd1))) begin
        queue_end_1_fu_80 <= queue_end_3_fu_800_p2;
    end else if (((1'b1 == ap_CS_fsm_state5) & (exitcond2_fu_443_p2 == 1'd1))) begin
        queue_end_1_fu_80 <= queue_end_load_reg_818;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_fu_354_p2 == 1'd1))) begin
        queue_end_fu_64 <= queue_end_2_fu_432_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        queue_end_fu_64 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (exitcond2_fu_443_p2 == 1'd1))) begin
        queue_start_reg_287 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state13) & (exitcond_fu_551_p2 == 1'd1))) begin
        queue_start_reg_287 <= queue_start_1_reg_908;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) & (or_cond6_fu_700_p2 == 1'd1))) begin
        dist_addr_2_reg_1015 <= tmp_35_cast_fu_728_p1;
        grayOutput_addr_1_reg_1005 <= tmp_35_cast_fu_728_p1;
        watershedOutput_addr_3_reg_1010 <= tmp_35_cast_fu_728_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        dist_addr_reg_948 <= tmp_31_cast_fu_545_p1;
        watershedOutput_addr_1_reg_943 <= tmp_31_cast_fu_545_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        dist_load_1_reg_1036 <= dist_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grayOutput_load_1_reg_953 <= grayOutput_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_831 <= i_1_fu_378_p2;
        i_cast7_reg_823[9 : 0] <= i_cast7_fu_368_p1[9 : 0];
        queue_end_load_reg_818 <= queue_end_fu_64;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_3_reg_865 <= i_3_fu_449_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i_4_reg_923 <= queue_0_q0;
        j_2_reg_928 <= queue_1_q0;
        tmp_7_reg_933 <= tmp_7_fu_539_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_849 <= j_1_fu_406_p2;
        j_cast6_reg_841[9 : 0] <= j_cast6_fu_396_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        j_3_reg_885 <= j_3_fu_477_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        k_1_reg_961 <= k_1_fu_557_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        min_label_1_reg_1020 <= min_label_1_fu_769_p3;
        tmp_23_reg_1028 <= grp_fu_354_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        neighbours_0_load_reg_981 <= neighbours_0_q0;
        neighbours_1_load_reg_986 <= neighbours_1_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        ni_reg_991 <= ni_fu_615_p2;
        nj_reg_996 <= nj_fu_623_p2;
        or_cond6_reg_1001 <= or_cond6_fu_700_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        queue_start_1_reg_908 <= queue_start_1_fu_511_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_372_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_1_cast_reg_836[18 : 9] <= tmp_1_cast_fu_392_p1[18 : 9];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_443_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        tmp_20_cast_reg_870[18 : 9] <= tmp_20_cast_fu_463_p1[18 : 9];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        tmp_24_reg_1032 <= tmp_24_fu_777_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        tmp_26_reg_1041 <= tmp_26_fu_788_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_471_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_32_cast_reg_890[19 : 0] <= tmp_32_cast_fu_492_p1[19 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_8_reg_900 <= grp_fu_354_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((tmp_5_fu_505_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) & (tmp_26_reg_1041 == 1'd1) & (tmp_24_reg_1032 == 1'd1) & (tmp_23_reg_1028 == 1'd1) & (or_cond6_reg_1001 == 1'd1))) begin
        ap_phi_mux_min_label_be_phi_fu_337_p10 = min_label_1_reg_1020;
    end else begin
        ap_phi_mux_min_label_be_phi_fu_337_p10 = min_label_be_reg_333;
    end
end

always @ (*) begin
    if (((tmp_5_fu_505_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18))) begin
        dist_address0 = dist_addr_2_reg_1015;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        dist_address0 = dist_addr_reg_948;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        dist_address0 = tmp_32_cast_reg_890;
    end else begin
        dist_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17))) begin
        dist_ce0 = 1'b1;
    end else begin
        dist_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        dist_d0 = tmp_25_fu_782_p2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        dist_d0 = storemerge1_cast_cas_fu_497_p3;
    end else begin
        dist_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((1'b1 == ap_CS_fsm_state19) & (tmp_26_fu_788_p2 == 1'd1)))) begin
        dist_we0 = 1'b1;
    end else begin
        dist_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grayOutput_address0 = grayOutput_addr_1_reg_1005;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grayOutput_address0 = tmp_31_cast_fu_545_p1;
    end else begin
        grayOutput_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state11))) begin
        grayOutput_ce0 = 1'b1;
    end else begin
        grayOutput_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        neighbours_0_ce0 = 1'b1;
    end else begin
        neighbours_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        neighbours_1_ce0 = 1'b1;
    end else begin
        neighbours_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        queue_0_address0 = tmp_27_fu_794_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        queue_0_address0 = tmp_9_fu_517_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        queue_0_address0 = tmp_6_fu_426_p1;
    end else begin
        queue_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state9))) begin
        queue_0_ce0 = 1'b1;
    end else begin
        queue_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        queue_0_d0 = ni_reg_991;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        queue_0_d0 = i_cast7_reg_823;
    end else begin
        queue_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (grp_fu_354_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state19) & (tmp_26_fu_788_p2 == 1'd1)))) begin
        queue_0_we0 = 1'b1;
    end else begin
        queue_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        queue_1_address0 = tmp_27_fu_794_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        queue_1_address0 = tmp_9_fu_517_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        queue_1_address0 = tmp_6_fu_426_p1;
    end else begin
        queue_1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state9))) begin
        queue_1_ce0 = 1'b1;
    end else begin
        queue_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        queue_1_d0 = nj_reg_996;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        queue_1_d0 = j_cast6_reg_841;
    end else begin
        queue_1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (grp_fu_354_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state19) & (tmp_26_fu_788_p2 == 1'd1)))) begin
        queue_1_we0 = 1'b1;
    end else begin
        queue_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        watershedOutput_address0 = watershedOutput_addr_3_reg_1010;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        watershedOutput_address0 = tmp_35_cast_fu_728_p1;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state13))) begin
        watershedOutput_address0 = watershedOutput_addr_1_reg_943;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        watershedOutput_address0 = tmp_32_cast_fu_492_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        watershedOutput_address0 = tmp_28_cast_fu_421_p1;
    end else begin
        watershedOutput_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6))) begin
        watershedOutput_ce0 = 1'b1;
    end else begin
        watershedOutput_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        watershedOutput_d0 = watershedOutput_q0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        watershedOutput_d0 = storemerge_fu_595_p3;
    end else begin
        watershedOutput_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state20) & (tmp_26_reg_1041 == 1'd1) & (tmp_24_reg_1032 == 1'd1) & (tmp_23_reg_1028 == 1'd1) & (or_cond6_reg_1001 == 1'd1)) | ((1'b1 == ap_CS_fsm_state13) & (exitcond_fu_551_p2 == 1'd1)))) begin
        watershedOutput_we0 = 1'b1;
    end else begin
        watershedOutput_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond4_fu_372_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond3_fu_400_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (exitcond2_fu_443_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (exitcond1_fu_471_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state9 : begin
            if (((tmp_5_fu_505_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (exitcond_fu_551_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((or_cond6_fu_700_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state16 : begin
            if (((grp_fu_354_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state17 : begin
            if (((tmp_24_fu_777_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond1_fu_471_p2 = ((j2_reg_276 == 10'd512) ? 1'b1 : 1'b0);

assign exitcond2_fu_443_p2 = ((i1_reg_265 == 10'd512) ? 1'b1 : 1'b0);

assign exitcond3_fu_400_p2 = ((j_reg_254 == 10'd512) ? 1'b1 : 1'b0);

assign exitcond4_fu_372_p2 = ((i_reg_243 == 10'd512) ? 1'b1 : 1'b0);

assign exitcond_fu_551_p2 = ((k_reg_322 == 4'd8) ? 1'b1 : 1'b0);

assign grp_fu_354_p2 = ((watershedOutput_q0 == 8'd1) ? 1'b1 : 1'b0);

assign i_1_fu_378_p2 = (i_reg_243 + 10'd1);

assign i_3_fu_449_p2 = (i1_reg_265 + 10'd1);

assign i_cast7_fu_368_p1 = i_reg_243;

assign icmp1_fu_745_p2 = ((tmp_29_fu_735_p4 != 7'd0) ? 1'b1 : 1'b0);

assign icmp7_fu_682_p2 = (($signed(tmp_19_fu_672_p4) < $signed(23'd1)) ? 1'b1 : 1'b0);

assign icmp_fu_652_p2 = (($signed(tmp_17_fu_642_p4) < $signed(23'd1)) ? 1'b1 : 1'b0);

assign j_1_fu_406_p2 = (j_reg_254 + 10'd1);

assign j_3_fu_477_p2 = (j2_reg_276 + 10'd1);

assign j_cast6_fu_396_p1 = j_reg_254;

assign k_1_fu_557_p2 = (k_reg_322 + 4'd1);

assign min_label_1_fu_769_p3 = ((icmp1_fu_745_p2[0:0] === 1'b1) ? min_label_3_min_labe_fu_761_p3 : min_label_reg_310);

assign min_label_2_fu_751_p1 = watershedOutput_q0;

assign min_label_3_min_labe_fu_761_p3 = ((tmp_22_fu_755_p2[0:0] === 1'b1) ? min_label_2_fu_751_p1 : min_label_reg_310);

assign neighbours_0_address0 = tmp_11_fu_563_p1;

assign neighbours_0_load_ca_fu_612_p1 = $signed(neighbours_0_load_reg_981);

assign neighbours_1_address0 = tmp_11_fu_563_p1;

assign neighbours_1_load_ca_fu_620_p1 = $signed(neighbours_1_load_reg_986);

assign ni_fu_615_p2 = ($signed(i_4_reg_923) + $signed(neighbours_0_load_ca_fu_612_p1));

assign nj_fu_623_p2 = ($signed(j_2_reg_928) + $signed(neighbours_1_load_ca_fu_620_p1));

assign num_labels_1_fu_579_p2 = (32'd1 + num_labels_reg_298);

assign num_labels_2_fu_604_p3 = ((tmp_10_fu_569_p2[0:0] === 1'b1) ? num_labels_reg_298 : num_labels_1_fu_579_p2);

assign or_cond6_fu_700_p2 = (tmp2_fu_694_p2 & tmp1_fu_688_p2);

assign queue_end_2_fu_432_p0 = queue_end_fu_64;

assign queue_end_2_fu_432_p2 = ($signed(queue_end_2_fu_432_p0) + $signed(32'd1));

assign queue_end_3_fu_800_p0 = queue_end_1_fu_80;

assign queue_end_3_fu_800_p2 = ($signed(queue_end_3_fu_800_p0) + $signed(32'd1));

assign queue_start_1_fu_511_p2 = ($signed(queue_start_reg_287) + $signed(32'd1));

assign rev4_fu_666_p2 = (tmp_18_fu_658_p3 ^ 1'd1);

assign rev_fu_636_p2 = (tmp_16_fu_628_p3 ^ 1'd1);

assign storemerge1_cast_cas_fu_497_p3 = ((tmp_8_reg_900[0:0] === 1'b1) ? 32'd0 : 32'd262145);

assign storemerge_fu_595_p3 = ((tmp_10_fu_569_p2[0:0] === 1'b1) ? tmp_13_fu_575_p1 : tmp_15_fu_589_p2);

assign tmp1_fu_688_p2 = (rev_fu_636_p2 & icmp_fu_652_p2);

assign tmp2_fu_694_p2 = (rev4_fu_666_p2 & icmp7_fu_682_p2);

assign tmp_10_fu_569_p2 = (($signed(min_label_reg_310) < $signed(32'd262145)) ? 1'b1 : 1'b0);

assign tmp_11_fu_563_p1 = k_reg_322;

assign tmp_12_fu_487_p2 = (tmp_20_cast_reg_870 + tmp_7_cast_fu_483_p1);

assign tmp_13_fu_575_p1 = min_label_reg_310[7:0];

assign tmp_14_fu_585_p1 = num_labels_reg_298[7:0];

assign tmp_15_fu_589_p2 = (8'd2 + tmp_14_fu_585_p1);

assign tmp_16_fu_628_p3 = ni_fu_615_p2[32'd31];

assign tmp_17_fu_642_p4 = {{ni_fu_615_p2[31:9]}};

assign tmp_18_fu_658_p3 = nj_fu_623_p2[32'd31];

assign tmp_19_fu_672_p4 = {{nj_fu_623_p2[31:9]}};

assign tmp_1_cast_fu_392_p1 = tmp_fu_384_p3;

assign tmp_1_fu_523_p1 = queue_1_q0[19:0];

assign tmp_20_cast_fu_463_p1 = tmp_2_fu_455_p3;

assign tmp_20_fu_706_p1 = nj_fu_623_p2[19:0];

assign tmp_21_fu_710_p1 = ni_fu_615_p2[10:0];

assign tmp_22_fu_755_p2 = (($signed(min_label_2_fu_751_p1) < $signed(min_label_reg_310)) ? 1'b1 : 1'b0);

assign tmp_24_fu_777_p2 = ((grayOutput_q0 == grayOutput_load_1_reg_953) ? 1'b1 : 1'b0);

assign tmp_25_fu_782_p2 = (dist_load_1_reg_1036 + 32'd1);

assign tmp_26_fu_788_p2 = (($signed(dist_q0) > $signed(tmp_25_fu_782_p2)) ? 1'b1 : 1'b0);

assign tmp_27_fu_794_p0 = queue_end_1_fu_80;

assign tmp_27_fu_794_p1 = tmp_27_fu_794_p0;

assign tmp_28_cast_fu_421_p1 = tmp_s_fu_416_p2;

assign tmp_28_fu_722_p2 = (tmp_34_cast_fu_714_p3 + tmp_20_fu_706_p1);

assign tmp_29_fu_735_p4 = {{watershedOutput_q0[7:1]}};

assign tmp_2_fu_455_p3 = {{i1_reg_265}, {9'd0}};

assign tmp_30_cast_fu_531_p3 = {{tmp_3_fu_527_p1}, {9'd0}};

assign tmp_31_cast_fu_545_p1 = $signed(tmp_7_reg_933);

assign tmp_32_cast_fu_492_p1 = tmp_12_fu_487_p2;

assign tmp_34_cast_fu_714_p3 = {{tmp_21_fu_710_p1}, {9'd0}};

assign tmp_35_cast_fu_728_p1 = tmp_28_fu_722_p2;

assign tmp_3_cast_fu_412_p1 = j_reg_254;

assign tmp_3_fu_527_p1 = queue_0_q0[10:0];

assign tmp_5_fu_505_p2 = (($signed(queue_start_reg_287) < $signed(queue_end_1_fu_80)) ? 1'b1 : 1'b0);

assign tmp_6_fu_426_p0 = queue_end_fu_64;

assign tmp_6_fu_426_p1 = tmp_6_fu_426_p0;

assign tmp_7_cast_fu_483_p1 = j2_reg_276;

assign tmp_7_fu_539_p2 = (tmp_30_cast_fu_531_p3 + tmp_1_fu_523_p1);

assign tmp_9_fu_517_p1 = queue_start_reg_287;

assign tmp_fu_384_p3 = {{i_reg_243}, {9'd0}};

assign tmp_s_fu_416_p2 = (tmp_1_cast_reg_836 + tmp_3_cast_fu_412_p1);

always @ (posedge ap_clk) begin
    i_cast7_reg_823[31:10] <= 22'b0000000000000000000000;
    tmp_1_cast_reg_836[8:0] <= 9'b000000000;
    tmp_1_cast_reg_836[19] <= 1'b0;
    j_cast6_reg_841[31:10] <= 22'b0000000000000000000000;
    tmp_20_cast_reg_870[8:0] <= 9'b000000000;
    tmp_20_cast_reg_870[19] <= 1'b0;
    tmp_32_cast_reg_890[63:20] <= 44'b00000000000000000000000000000000000000000000;
end

endmodule //watershed_algorithm
