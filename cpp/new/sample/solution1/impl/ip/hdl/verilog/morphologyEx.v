// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module morphologyEx (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        dst_address0,
        dst_ce0,
        dst_we0,
        dst_d0,
        dst_q0,
        binaryThreshold_address0,
        binaryThreshold_ce0,
        binaryThreshold_q0
);

parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [17:0] dst_address0;
output   dst_ce0;
output   dst_we0;
output  [7:0] dst_d0;
input  [7:0] dst_q0;
output  [17:0] binaryThreshold_address0;
output   binaryThreshold_ce0;
input  [0:0] binaryThreshold_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[17:0] dst_address0;
reg dst_ce0;
reg dst_we0;
reg[7:0] dst_d0;
reg binaryThreshold_ce0;

(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [10:0] i1_cast_fu_287_p1;
reg   [10:0] i1_cast_reg_845;
wire    ap_CS_fsm_state2;
wire   [9:0] i_fu_297_p2;
reg   [9:0] i_reg_853;
wire   [19:0] tmp_50_cast_fu_311_p1;
reg   [19:0] tmp_50_cast_reg_858;
wire   [0:0] exitcond10_fu_291_p2;
wire   [10:0] j2_cast_fu_315_p1;
reg   [10:0] j2_cast_reg_863;
wire    ap_CS_fsm_state3;
wire   [9:0] j_fu_325_p2;
reg   [9:0] j_reg_871;
wire   [1:0] k_2_fu_337_p2;
reg   [1:0] k_2_reg_879;
wire    ap_CS_fsm_state4;
wire   [19:0] tmp_47_fu_388_p3;
reg   [19:0] tmp_47_reg_884;
wire   [0:0] exitcond8_fu_331_p2;
wire   [0:0] tmp4_fu_396_p2;
reg   [0:0] tmp4_reg_889;
wire   [1:0] l_1_fu_427_p2;
reg   [1:0] l_1_reg_897;
wire    ap_CS_fsm_state5;
wire   [0:0] or_cond3_fu_484_p2;
reg   [0:0] or_cond3_reg_902;
wire   [0:0] exitcond7_fu_421_p2;
wire   [19:0] tmp_49_fu_493_p2;
reg   [19:0] tmp_49_reg_907;
wire    ap_CS_fsm_state6;
wire   [31:0] min_val_3_fu_524_p3;
wire    ap_CS_fsm_state7;
wire   [1:0] iter_1_fu_537_p2;
reg   [1:0] iter_1_reg_925;
wire    ap_CS_fsm_state8;
wire   [10:0] i3_cast_fu_543_p1;
reg   [10:0] i3_cast_reg_930;
wire    ap_CS_fsm_state9;
wire   [9:0] i_8_fu_553_p2;
reg   [9:0] i_8_reg_938;
wire   [19:0] tmp_52_cast_fu_567_p1;
reg   [19:0] tmp_52_cast_reg_943;
wire   [0:0] exitcond5_fu_547_p2;
wire   [10:0] j4_cast_fu_571_p1;
reg   [10:0] j4_cast_reg_948;
wire    ap_CS_fsm_state10;
wire   [9:0] j_8_fu_581_p2;
reg   [9:0] j_8_reg_956;
wire   [1:0] k_3_fu_593_p2;
reg   [1:0] k_3_reg_964;
wire    ap_CS_fsm_state11;
wire   [19:0] tmp_55_fu_644_p3;
reg   [19:0] tmp_55_reg_969;
wire   [0:0] exitcond3_fu_587_p2;
wire   [0:0] tmp8_fu_652_p2;
reg   [0:0] tmp8_reg_974;
wire   [1:0] l_2_fu_683_p2;
reg   [1:0] l_2_reg_982;
wire    ap_CS_fsm_state12;
wire   [0:0] or_cond6_fu_740_p2;
reg   [0:0] or_cond6_reg_987;
wire   [0:0] exitcond2_fu_677_p2;
wire   [19:0] tmp_58_fu_749_p2;
reg   [19:0] tmp_58_reg_992;
wire    ap_CS_fsm_state13;
wire   [31:0] max_val_3_fu_788_p3;
wire    ap_CS_fsm_state14;
wire   [9:0] i_9_fu_801_p2;
reg   [9:0] i_9_reg_1010;
wire    ap_CS_fsm_state15;
wire   [19:0] tmp_59_cast_fu_815_p1;
reg   [19:0] tmp_59_cast_reg_1015;
wire   [0:0] exitcond1_fu_795_p2;
wire   [9:0] j_7_fu_825_p2;
reg   [9:0] j_7_reg_1023;
wire    ap_CS_fsm_state16;
wire   [63:0] tmp_66_cast_fu_840_p1;
reg   [63:0] tmp_66_cast_reg_1028;
wire   [0:0] exitcond_fu_819_p2;
reg   [17:0] temp_address0;
reg    temp_ce0;
reg    temp_we0;
wire   [7:0] temp_d0;
wire   [7:0] temp_q0;
reg   [9:0] i1_reg_116;
wire   [0:0] exitcond9_fu_319_p2;
reg   [9:0] j2_reg_127;
reg   [1:0] k_reg_139;
reg   [31:0] min_val_reg_150;
reg   [1:0] l_reg_162;
reg   [31:0] min_val_1_reg_173;
reg   [1:0] iter_reg_185;
reg   [9:0] i3_reg_196;
wire   [0:0] exitcond4_fu_575_p2;
wire   [0:0] exitcond6_fu_531_p2;
reg   [9:0] j4_reg_207;
reg   [31:0] max_val_reg_219;
reg   [1:0] k5_reg_231;
reg   [31:0] max_val_1_reg_242;
reg   [1:0] l6_reg_254;
reg   [9:0] i9_reg_265;
reg   [9:0] j9_reg_276;
wire    ap_CS_fsm_state17;
wire   [63:0] tmp_53_cast_fu_416_p1;
wire  signed [63:0] tmp_63_cast_fu_498_p1;
wire   [63:0] tmp_69_cast_fu_672_p1;
wire  signed [63:0] tmp_77_cast_fu_754_p1;
wire   [7:0] tmp_40_fu_402_p1;
wire   [18:0] tmp_fu_303_p3;
wire   [1:0] tmp2_fu_343_p2;
wire  signed [10:0] tmp2_cast_fu_349_p1;
wire   [10:0] x_fu_353_p2;
wire   [0:0] tmp_41_fu_358_p3;
wire   [1:0] tmp_42_fu_372_p4;
wire   [0:0] icmp_fu_382_p2;
wire   [0:0] rev_fu_366_p2;
wire   [19:0] tmp_49_cast_fu_407_p1;
wire   [19:0] tmp_46_fu_411_p2;
wire   [1:0] tmp3_fu_433_p2;
wire  signed [10:0] tmp3_cast_fu_439_p1;
wire  signed [10:0] y_fu_443_p2;
wire   [0:0] tmp_43_fu_448_p3;
wire   [1:0] tmp_44_fu_462_p4;
wire   [0:0] icmp2_fu_472_p2;
wire   [0:0] rev7_fu_456_p2;
wire   [0:0] tmp5_fu_478_p2;
wire  signed [19:0] tmp_62_cast_fu_489_p1;
wire   [31:0] min_val_2_fu_502_p3;
wire   [0:0] tmp_50_fu_510_p2;
wire   [31:0] min_val_2_min_val_1_fu_516_p3;
wire   [18:0] tmp_s_fu_559_p3;
wire   [1:0] tmp6_fu_599_p2;
wire  signed [10:0] tmp6_cast_fu_605_p1;
wire   [10:0] x_1_fu_609_p2;
wire   [0:0] tmp_53_fu_614_p3;
wire   [1:0] tmp_54_fu_628_p4;
wire   [0:0] icmp3_fu_638_p2;
wire   [0:0] rev1_fu_622_p2;
wire   [19:0] tmp_68_cast_fu_663_p1;
wire   [19:0] tmp_52_fu_667_p2;
wire   [1:0] tmp7_fu_689_p2;
wire  signed [10:0] tmp7_cast_fu_695_p1;
wire  signed [10:0] y_1_fu_699_p2;
wire   [0:0] tmp_56_fu_704_p3;
wire   [1:0] tmp_57_fu_718_p4;
wire   [0:0] icmp4_fu_728_p2;
wire   [0:0] rev2_fu_712_p2;
wire   [0:0] tmp9_fu_734_p2;
wire  signed [19:0] tmp_76_cast_fu_745_p1;
wire   [31:0] max_val_2_fu_758_p1;
wire   [0:0] tmp_59_fu_766_p2;
wire   [30:0] max_val_2_cast_fu_762_p1;
wire   [30:0] tmp_60_fu_772_p1;
wire   [30:0] max_val_2_max_val_1_fu_776_p3;
wire   [31:0] max_val_2_max_val_1_s_fu_784_p1;
wire   [18:0] tmp_48_fu_807_p3;
wire   [19:0] tmp_65_cast_fu_831_p1;
wire   [19:0] tmp_51_fu_835_p2;
reg   [16:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 17'd1;
end

morphologyEx_temp #(
    .DataWidth( 8 ),
    .AddressRange( 262144 ),
    .AddressWidth( 18 ))
temp_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp_address0),
    .ce0(temp_ce0),
    .we0(temp_we0),
    .d0(temp_d0),
    .q0(temp_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond9_fu_319_p2 == 1'd1))) begin
        i1_reg_116 <= i_reg_853;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i1_reg_116 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_fu_531_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        i3_reg_196 <= 10'd0;
    end else if (((1'b1 == ap_CS_fsm_state10) & (exitcond4_fu_575_p2 == 1'd1))) begin
        i3_reg_196 <= i_8_reg_938;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (exitcond5_fu_547_p2 == 1'd1))) begin
        i9_reg_265 <= 10'd0;
    end else if (((1'b1 == ap_CS_fsm_state16) & (exitcond_fu_819_p2 == 1'd1))) begin
        i9_reg_265 <= i_9_reg_1010;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond10_fu_291_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        iter_reg_185 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state15) & (exitcond1_fu_795_p2 == 1'd1))) begin
        iter_reg_185 <= iter_1_reg_925;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond10_fu_291_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j2_reg_127 <= 10'd0;
    end else if (((exitcond8_fu_331_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        j2_reg_127 <= j_reg_871;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_547_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        j4_reg_207 <= 10'd0;
    end else if (((1'b1 == ap_CS_fsm_state11) & (exitcond3_fu_587_p2 == 1'd1))) begin
        j4_reg_207 <= j_8_reg_956;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_795_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        j9_reg_276 <= 10'd0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        j9_reg_276 <= j_7_reg_1023;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_575_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        k5_reg_231 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state12) & (exitcond2_fu_677_p2 == 1'd1))) begin
        k5_reg_231 <= k_3_reg_964;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond9_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        k_reg_139 <= 2'd0;
    end else if (((exitcond7_fu_421_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        k_reg_139 <= k_2_reg_879;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_587_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        l6_reg_254 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        l6_reg_254 <= l_2_reg_982;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond8_fu_331_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        l_reg_162 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        l_reg_162 <= l_1_reg_897;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_587_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        max_val_1_reg_242 <= max_val_reg_219;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        max_val_1_reg_242 <= max_val_3_fu_788_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_575_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        max_val_reg_219 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state12) & (exitcond2_fu_677_p2 == 1'd1))) begin
        max_val_reg_219 <= max_val_1_reg_242;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond8_fu_331_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        min_val_1_reg_173 <= min_val_reg_150;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        min_val_1_reg_173 <= min_val_3_fu_524_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond9_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        min_val_reg_150 <= 32'd255;
    end else if (((exitcond7_fu_421_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        min_val_reg_150 <= min_val_1_reg_173;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i1_cast_reg_845[9 : 0] <= i1_cast_fu_287_p1[9 : 0];
        i_reg_853 <= i_fu_297_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i3_cast_reg_930[9 : 0] <= i3_cast_fu_543_p1[9 : 0];
        i_8_reg_938 <= i_8_fu_553_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        i_9_reg_1010 <= i_9_fu_801_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        iter_1_reg_925 <= iter_1_fu_537_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j2_cast_reg_863[9 : 0] <= j2_cast_fu_315_p1[9 : 0];
        j_reg_871 <= j_fu_325_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        j4_cast_reg_948[9 : 0] <= j4_cast_fu_571_p1[9 : 0];
        j_8_reg_956 <= j_8_fu_581_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        j_7_reg_1023 <= j_7_fu_825_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        k_2_reg_879 <= k_2_fu_337_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        k_3_reg_964 <= k_3_fu_593_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        l_1_reg_897 <= l_1_fu_427_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        l_2_reg_982 <= l_2_fu_683_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond7_fu_421_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        or_cond3_reg_902 <= or_cond3_fu_484_p2;
        tmp_49_reg_907 <= tmp_49_fu_493_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_677_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        or_cond6_reg_987 <= or_cond6_fu_740_p2;
        tmp_58_reg_992 <= tmp_58_fu_749_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond8_fu_331_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp4_reg_889 <= tmp4_fu_396_p2;
        tmp_47_reg_884[19 : 9] <= tmp_47_fu_388_p3[19 : 9];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_587_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        tmp8_reg_974 <= tmp8_fu_652_p2;
        tmp_55_reg_969[19 : 9] <= tmp_55_fu_644_p3[19 : 9];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond10_fu_291_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_50_cast_reg_858[18 : 9] <= tmp_50_cast_fu_311_p1[18 : 9];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_547_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        tmp_52_cast_reg_943[18 : 9] <= tmp_52_cast_fu_567_p1[18 : 9];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_795_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        tmp_59_cast_reg_1015[18 : 9] <= tmp_59_cast_fu_815_p1[18 : 9];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_819_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        tmp_66_cast_reg_1028[19 : 0] <= tmp_66_cast_fu_840_p1[19 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state8) & (exitcond6_fu_531_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state8) & (exitcond6_fu_531_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        binaryThreshold_ce0 = 1'b1;
    end else begin
        binaryThreshold_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        dst_address0 = tmp_66_cast_reg_1028;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        dst_address0 = tmp_77_cast_fu_754_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        dst_address0 = tmp_53_cast_fu_416_p1;
    end else begin
        dst_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13))) begin
        dst_ce0 = 1'b1;
    end else begin
        dst_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        dst_d0 = temp_q0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        dst_d0 = tmp_40_fu_402_p1;
    end else begin
        dst_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | ((exitcond8_fu_331_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
        dst_we0 = 1'b1;
    end else begin
        dst_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        temp_address0 = tmp_66_cast_fu_840_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        temp_address0 = tmp_69_cast_fu_672_p1;
    end else begin
        temp_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state11))) begin
        temp_ce0 = 1'b1;
    end else begin
        temp_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (exitcond3_fu_587_p2 == 1'd1))) begin
        temp_we0 = 1'b1;
    end else begin
        temp_we0 = 1'b0;
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
            if (((exitcond10_fu_291_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond9_fu_319_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond8_fu_331_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((exitcond7_fu_421_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (exitcond6_fu_531_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (exitcond5_fu_547_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (exitcond4_fu_575_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (exitcond3_fu_587_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (exitcond2_fu_677_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (exitcond1_fu_795_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (exitcond_fu_819_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
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

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign binaryThreshold_address0 = tmp_63_cast_fu_498_p1;

assign exitcond10_fu_291_p2 = ((i1_reg_116 == 10'd512) ? 1'b1 : 1'b0);

assign exitcond1_fu_795_p2 = ((i9_reg_265 == 10'd512) ? 1'b1 : 1'b0);

assign exitcond2_fu_677_p2 = ((l6_reg_254 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond3_fu_587_p2 = ((k5_reg_231 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond4_fu_575_p2 = ((j4_reg_207 == 10'd512) ? 1'b1 : 1'b0);

assign exitcond5_fu_547_p2 = ((i3_reg_196 == 10'd512) ? 1'b1 : 1'b0);

assign exitcond6_fu_531_p2 = ((iter_reg_185 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond7_fu_421_p2 = ((l_reg_162 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond8_fu_331_p2 = ((k_reg_139 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond9_fu_319_p2 = ((j2_reg_127 == 10'd512) ? 1'b1 : 1'b0);

assign exitcond_fu_819_p2 = ((j9_reg_276 == 10'd512) ? 1'b1 : 1'b0);

assign i1_cast_fu_287_p1 = i1_reg_116;

assign i3_cast_fu_543_p1 = i3_reg_196;

assign i_8_fu_553_p2 = (i3_reg_196 + 10'd1);

assign i_9_fu_801_p2 = (i9_reg_265 + 10'd1);

assign i_fu_297_p2 = (i1_reg_116 + 10'd1);

assign icmp2_fu_472_p2 = ((tmp_44_fu_462_p4 != 2'd1) ? 1'b1 : 1'b0);

assign icmp3_fu_638_p2 = ((tmp_54_fu_628_p4 != 2'd1) ? 1'b1 : 1'b0);

assign icmp4_fu_728_p2 = ((tmp_57_fu_718_p4 != 2'd1) ? 1'b1 : 1'b0);

assign icmp_fu_382_p2 = ((tmp_42_fu_372_p4 != 2'd1) ? 1'b1 : 1'b0);

assign iter_1_fu_537_p2 = (iter_reg_185 + 2'd1);

assign j2_cast_fu_315_p1 = j2_reg_127;

assign j4_cast_fu_571_p1 = j4_reg_207;

assign j_7_fu_825_p2 = (j9_reg_276 + 10'd1);

assign j_8_fu_581_p2 = (j4_reg_207 + 10'd1);

assign j_fu_325_p2 = (j2_reg_127 + 10'd1);

assign k_2_fu_337_p2 = (k_reg_139 + 2'd1);

assign k_3_fu_593_p2 = (k5_reg_231 + 2'd1);

assign l_1_fu_427_p2 = (l_reg_162 + 2'd1);

assign l_2_fu_683_p2 = (l6_reg_254 + 2'd1);

assign max_val_2_cast_fu_762_p1 = dst_q0;

assign max_val_2_fu_758_p1 = dst_q0;

assign max_val_2_max_val_1_fu_776_p3 = ((tmp_59_fu_766_p2[0:0] === 1'b1) ? max_val_2_cast_fu_762_p1 : tmp_60_fu_772_p1);

assign max_val_2_max_val_1_s_fu_784_p1 = max_val_2_max_val_1_fu_776_p3;

assign max_val_3_fu_788_p3 = ((or_cond6_reg_987[0:0] === 1'b1) ? max_val_2_max_val_1_s_fu_784_p1 : max_val_1_reg_242);

assign min_val_2_fu_502_p3 = ((binaryThreshold_q0[0:0] === 1'b1) ? 32'd255 : 32'd0);

assign min_val_2_min_val_1_fu_516_p3 = ((tmp_50_fu_510_p2[0:0] === 1'b1) ? min_val_2_fu_502_p3 : min_val_1_reg_173);

assign min_val_3_fu_524_p3 = ((or_cond3_reg_902[0:0] === 1'b1) ? min_val_2_min_val_1_fu_516_p3 : min_val_1_reg_173);

assign or_cond3_fu_484_p2 = (tmp5_fu_478_p2 & tmp4_reg_889);

assign or_cond6_fu_740_p2 = (tmp9_fu_734_p2 & tmp8_reg_974);

assign rev1_fu_622_p2 = (tmp_53_fu_614_p3 ^ 1'd1);

assign rev2_fu_712_p2 = (tmp_56_fu_704_p3 ^ 1'd1);

assign rev7_fu_456_p2 = (tmp_43_fu_448_p3 ^ 1'd1);

assign rev_fu_366_p2 = (tmp_41_fu_358_p3 ^ 1'd1);

assign temp_d0 = max_val_reg_219[7:0];

assign tmp2_cast_fu_349_p1 = $signed(tmp2_fu_343_p2);

assign tmp2_fu_343_p2 = ($signed(k_reg_139) + $signed(2'd3));

assign tmp3_cast_fu_439_p1 = $signed(tmp3_fu_433_p2);

assign tmp3_fu_433_p2 = ($signed(l_reg_162) + $signed(2'd3));

assign tmp4_fu_396_p2 = (rev_fu_366_p2 & icmp_fu_382_p2);

assign tmp5_fu_478_p2 = (rev7_fu_456_p2 & icmp2_fu_472_p2);

assign tmp6_cast_fu_605_p1 = $signed(tmp6_fu_599_p2);

assign tmp6_fu_599_p2 = ($signed(k5_reg_231) + $signed(2'd3));

assign tmp7_cast_fu_695_p1 = $signed(tmp7_fu_689_p2);

assign tmp7_fu_689_p2 = ($signed(2'd3) + $signed(l6_reg_254));

assign tmp8_fu_652_p2 = (rev1_fu_622_p2 & icmp3_fu_638_p2);

assign tmp9_fu_734_p2 = (rev2_fu_712_p2 & icmp4_fu_728_p2);

assign tmp_40_fu_402_p1 = min_val_reg_150[7:0];

assign tmp_41_fu_358_p3 = x_fu_353_p2[32'd10];

assign tmp_42_fu_372_p4 = {{x_fu_353_p2[10:9]}};

assign tmp_43_fu_448_p3 = y_fu_443_p2[32'd10];

assign tmp_44_fu_462_p4 = {{y_fu_443_p2[10:9]}};

assign tmp_46_fu_411_p2 = (tmp_50_cast_reg_858 + tmp_49_cast_fu_407_p1);

assign tmp_47_fu_388_p3 = {{x_fu_353_p2}, {9'd0}};

assign tmp_48_fu_807_p3 = {{i9_reg_265}, {9'd0}};

assign tmp_49_cast_fu_407_p1 = j2_reg_127;

assign tmp_49_fu_493_p2 = ($signed(tmp_62_cast_fu_489_p1) + $signed(tmp_47_reg_884));

assign tmp_50_cast_fu_311_p1 = tmp_fu_303_p3;

assign tmp_50_fu_510_p2 = (($signed(min_val_2_fu_502_p3) < $signed(min_val_1_reg_173)) ? 1'b1 : 1'b0);

assign tmp_51_fu_835_p2 = (tmp_59_cast_reg_1015 + tmp_65_cast_fu_831_p1);

assign tmp_52_cast_fu_567_p1 = tmp_s_fu_559_p3;

assign tmp_52_fu_667_p2 = (tmp_52_cast_reg_943 + tmp_68_cast_fu_663_p1);

assign tmp_53_cast_fu_416_p1 = tmp_46_fu_411_p2;

assign tmp_53_fu_614_p3 = x_1_fu_609_p2[32'd10];

assign tmp_54_fu_628_p4 = {{x_1_fu_609_p2[10:9]}};

assign tmp_55_fu_644_p3 = {{x_1_fu_609_p2}, {9'd0}};

assign tmp_56_fu_704_p3 = y_1_fu_699_p2[32'd10];

assign tmp_57_fu_718_p4 = {{y_1_fu_699_p2[10:9]}};

assign tmp_58_fu_749_p2 = ($signed(tmp_55_reg_969) + $signed(tmp_76_cast_fu_745_p1));

assign tmp_59_cast_fu_815_p1 = tmp_48_fu_807_p3;

assign tmp_59_fu_766_p2 = (($signed(max_val_2_fu_758_p1) > $signed(max_val_1_reg_242)) ? 1'b1 : 1'b0);

assign tmp_60_fu_772_p1 = max_val_1_reg_242[30:0];

assign tmp_62_cast_fu_489_p1 = y_fu_443_p2;

assign tmp_63_cast_fu_498_p1 = $signed(tmp_49_reg_907);

assign tmp_65_cast_fu_831_p1 = j9_reg_276;

assign tmp_66_cast_fu_840_p1 = tmp_51_fu_835_p2;

assign tmp_68_cast_fu_663_p1 = j4_reg_207;

assign tmp_69_cast_fu_672_p1 = tmp_52_fu_667_p2;

assign tmp_76_cast_fu_745_p1 = y_1_fu_699_p2;

assign tmp_77_cast_fu_754_p1 = $signed(tmp_58_reg_992);

assign tmp_fu_303_p3 = {{i1_reg_116}, {9'd0}};

assign tmp_s_fu_559_p3 = {{i3_reg_196}, {9'd0}};

assign x_1_fu_609_p2 = ($signed(tmp6_cast_fu_605_p1) + $signed(i3_cast_reg_930));

assign x_fu_353_p2 = ($signed(tmp2_cast_fu_349_p1) + $signed(i1_cast_reg_845));

assign y_1_fu_699_p2 = ($signed(j4_cast_reg_948) + $signed(tmp7_cast_fu_695_p1));

assign y_fu_443_p2 = ($signed(tmp3_cast_fu_439_p1) + $signed(j2_cast_reg_863));

always @ (posedge ap_clk) begin
    i1_cast_reg_845[10] <= 1'b0;
    tmp_50_cast_reg_858[8:0] <= 9'b000000000;
    tmp_50_cast_reg_858[19] <= 1'b0;
    j2_cast_reg_863[10] <= 1'b0;
    tmp_47_reg_884[8:0] <= 9'b000000000;
    i3_cast_reg_930[10] <= 1'b0;
    tmp_52_cast_reg_943[8:0] <= 9'b000000000;
    tmp_52_cast_reg_943[19] <= 1'b0;
    j4_cast_reg_948[10] <= 1'b0;
    tmp_55_reg_969[8:0] <= 9'b000000000;
    tmp_59_cast_reg_1015[8:0] <= 9'b000000000;
    tmp_59_cast_reg_1015[19] <= 1'b0;
    tmp_66_cast_reg_1028[63:20] <= 44'b00000000000000000000000000000000000000000000;
end

endmodule //morphologyEx
