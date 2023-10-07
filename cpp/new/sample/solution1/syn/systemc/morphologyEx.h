// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _morphologyEx_HH_
#define _morphologyEx_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "morphologyEx_temp.h"

namespace ap_rtl {

struct morphologyEx : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<18> > dst_address0;
    sc_out< sc_logic > dst_ce0;
    sc_out< sc_logic > dst_we0;
    sc_out< sc_lv<8> > dst_d0;
    sc_in< sc_lv<8> > dst_q0;
    sc_out< sc_lv<18> > binaryThreshold_address0;
    sc_out< sc_logic > binaryThreshold_ce0;
    sc_in< sc_lv<1> > binaryThreshold_q0;


    // Module declarations
    morphologyEx(sc_module_name name);
    SC_HAS_PROCESS(morphologyEx);

    ~morphologyEx();

    sc_trace_file* mVcdFile;

    morphologyEx_temp* temp_U;
    sc_signal< sc_lv<17> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<11> > i1_cast_fu_287_p1;
    sc_signal< sc_lv<11> > i1_cast_reg_845;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > i_fu_297_p2;
    sc_signal< sc_lv<10> > i_reg_853;
    sc_signal< sc_lv<20> > tmp_50_cast_fu_311_p1;
    sc_signal< sc_lv<20> > tmp_50_cast_reg_858;
    sc_signal< sc_lv<1> > exitcond10_fu_291_p2;
    sc_signal< sc_lv<11> > j2_cast_fu_315_p1;
    sc_signal< sc_lv<11> > j2_cast_reg_863;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<10> > j_fu_325_p2;
    sc_signal< sc_lv<10> > j_reg_871;
    sc_signal< sc_lv<2> > k_2_fu_337_p2;
    sc_signal< sc_lv<2> > k_2_reg_879;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<20> > tmp_47_fu_388_p3;
    sc_signal< sc_lv<20> > tmp_47_reg_884;
    sc_signal< sc_lv<1> > exitcond8_fu_331_p2;
    sc_signal< sc_lv<1> > tmp4_fu_396_p2;
    sc_signal< sc_lv<1> > tmp4_reg_889;
    sc_signal< sc_lv<2> > l_1_fu_427_p2;
    sc_signal< sc_lv<2> > l_1_reg_897;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > or_cond3_fu_484_p2;
    sc_signal< sc_lv<1> > or_cond3_reg_902;
    sc_signal< sc_lv<1> > exitcond7_fu_421_p2;
    sc_signal< sc_lv<20> > tmp_49_fu_493_p2;
    sc_signal< sc_lv<20> > tmp_49_reg_907;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > min_val_3_fu_524_p3;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<2> > iter_1_fu_537_p2;
    sc_signal< sc_lv<2> > iter_1_reg_925;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<11> > i3_cast_fu_543_p1;
    sc_signal< sc_lv<11> > i3_cast_reg_930;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<10> > i_8_fu_553_p2;
    sc_signal< sc_lv<10> > i_8_reg_938;
    sc_signal< sc_lv<20> > tmp_52_cast_fu_567_p1;
    sc_signal< sc_lv<20> > tmp_52_cast_reg_943;
    sc_signal< sc_lv<1> > exitcond5_fu_547_p2;
    sc_signal< sc_lv<11> > j4_cast_fu_571_p1;
    sc_signal< sc_lv<11> > j4_cast_reg_948;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<10> > j_8_fu_581_p2;
    sc_signal< sc_lv<10> > j_8_reg_956;
    sc_signal< sc_lv<2> > k_3_fu_593_p2;
    sc_signal< sc_lv<2> > k_3_reg_964;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<20> > tmp_55_fu_644_p3;
    sc_signal< sc_lv<20> > tmp_55_reg_969;
    sc_signal< sc_lv<1> > exitcond3_fu_587_p2;
    sc_signal< sc_lv<1> > tmp8_fu_652_p2;
    sc_signal< sc_lv<1> > tmp8_reg_974;
    sc_signal< sc_lv<2> > l_2_fu_683_p2;
    sc_signal< sc_lv<2> > l_2_reg_982;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > or_cond6_fu_740_p2;
    sc_signal< sc_lv<1> > or_cond6_reg_987;
    sc_signal< sc_lv<1> > exitcond2_fu_677_p2;
    sc_signal< sc_lv<20> > tmp_58_fu_749_p2;
    sc_signal< sc_lv<20> > tmp_58_reg_992;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<32> > max_val_3_fu_788_p3;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<10> > i_9_fu_801_p2;
    sc_signal< sc_lv<10> > i_9_reg_1010;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<20> > tmp_59_cast_fu_815_p1;
    sc_signal< sc_lv<20> > tmp_59_cast_reg_1015;
    sc_signal< sc_lv<1> > exitcond1_fu_795_p2;
    sc_signal< sc_lv<10> > j_7_fu_825_p2;
    sc_signal< sc_lv<10> > j_7_reg_1023;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<64> > tmp_66_cast_fu_840_p1;
    sc_signal< sc_lv<64> > tmp_66_cast_reg_1028;
    sc_signal< sc_lv<1> > exitcond_fu_819_p2;
    sc_signal< sc_lv<18> > temp_address0;
    sc_signal< sc_logic > temp_ce0;
    sc_signal< sc_logic > temp_we0;
    sc_signal< sc_lv<8> > temp_d0;
    sc_signal< sc_lv<8> > temp_q0;
    sc_signal< sc_lv<10> > i1_reg_116;
    sc_signal< sc_lv<1> > exitcond9_fu_319_p2;
    sc_signal< sc_lv<10> > j2_reg_127;
    sc_signal< sc_lv<2> > k_reg_139;
    sc_signal< sc_lv<32> > min_val_reg_150;
    sc_signal< sc_lv<2> > l_reg_162;
    sc_signal< sc_lv<32> > min_val_1_reg_173;
    sc_signal< sc_lv<2> > iter_reg_185;
    sc_signal< sc_lv<10> > i3_reg_196;
    sc_signal< sc_lv<1> > exitcond4_fu_575_p2;
    sc_signal< sc_lv<1> > exitcond6_fu_531_p2;
    sc_signal< sc_lv<10> > j4_reg_207;
    sc_signal< sc_lv<32> > max_val_reg_219;
    sc_signal< sc_lv<2> > k5_reg_231;
    sc_signal< sc_lv<32> > max_val_1_reg_242;
    sc_signal< sc_lv<2> > l6_reg_254;
    sc_signal< sc_lv<10> > i9_reg_265;
    sc_signal< sc_lv<10> > j9_reg_276;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<64> > tmp_53_cast_fu_416_p1;
    sc_signal< sc_lv<64> > tmp_63_cast_fu_498_p1;
    sc_signal< sc_lv<64> > tmp_69_cast_fu_672_p1;
    sc_signal< sc_lv<64> > tmp_77_cast_fu_754_p1;
    sc_signal< sc_lv<8> > tmp_40_fu_402_p1;
    sc_signal< sc_lv<19> > tmp_fu_303_p3;
    sc_signal< sc_lv<2> > tmp2_fu_343_p2;
    sc_signal< sc_lv<11> > tmp2_cast_fu_349_p1;
    sc_signal< sc_lv<11> > x_fu_353_p2;
    sc_signal< sc_lv<1> > tmp_41_fu_358_p3;
    sc_signal< sc_lv<2> > tmp_42_fu_372_p4;
    sc_signal< sc_lv<1> > icmp_fu_382_p2;
    sc_signal< sc_lv<1> > rev_fu_366_p2;
    sc_signal< sc_lv<20> > tmp_49_cast_fu_407_p1;
    sc_signal< sc_lv<20> > tmp_46_fu_411_p2;
    sc_signal< sc_lv<2> > tmp3_fu_433_p2;
    sc_signal< sc_lv<11> > tmp3_cast_fu_439_p1;
    sc_signal< sc_lv<11> > y_fu_443_p2;
    sc_signal< sc_lv<1> > tmp_43_fu_448_p3;
    sc_signal< sc_lv<2> > tmp_44_fu_462_p4;
    sc_signal< sc_lv<1> > icmp2_fu_472_p2;
    sc_signal< sc_lv<1> > rev7_fu_456_p2;
    sc_signal< sc_lv<1> > tmp5_fu_478_p2;
    sc_signal< sc_lv<20> > tmp_62_cast_fu_489_p1;
    sc_signal< sc_lv<32> > min_val_2_fu_502_p3;
    sc_signal< sc_lv<1> > tmp_50_fu_510_p2;
    sc_signal< sc_lv<32> > min_val_2_min_val_1_fu_516_p3;
    sc_signal< sc_lv<19> > tmp_s_fu_559_p3;
    sc_signal< sc_lv<2> > tmp6_fu_599_p2;
    sc_signal< sc_lv<11> > tmp6_cast_fu_605_p1;
    sc_signal< sc_lv<11> > x_1_fu_609_p2;
    sc_signal< sc_lv<1> > tmp_53_fu_614_p3;
    sc_signal< sc_lv<2> > tmp_54_fu_628_p4;
    sc_signal< sc_lv<1> > icmp3_fu_638_p2;
    sc_signal< sc_lv<1> > rev1_fu_622_p2;
    sc_signal< sc_lv<20> > tmp_68_cast_fu_663_p1;
    sc_signal< sc_lv<20> > tmp_52_fu_667_p2;
    sc_signal< sc_lv<2> > tmp7_fu_689_p2;
    sc_signal< sc_lv<11> > tmp7_cast_fu_695_p1;
    sc_signal< sc_lv<11> > y_1_fu_699_p2;
    sc_signal< sc_lv<1> > tmp_56_fu_704_p3;
    sc_signal< sc_lv<2> > tmp_57_fu_718_p4;
    sc_signal< sc_lv<1> > icmp4_fu_728_p2;
    sc_signal< sc_lv<1> > rev2_fu_712_p2;
    sc_signal< sc_lv<1> > tmp9_fu_734_p2;
    sc_signal< sc_lv<20> > tmp_76_cast_fu_745_p1;
    sc_signal< sc_lv<32> > max_val_2_fu_758_p1;
    sc_signal< sc_lv<1> > tmp_59_fu_766_p2;
    sc_signal< sc_lv<31> > max_val_2_cast_fu_762_p1;
    sc_signal< sc_lv<31> > tmp_60_fu_772_p1;
    sc_signal< sc_lv<31> > max_val_2_max_val_1_fu_776_p3;
    sc_signal< sc_lv<32> > max_val_2_max_val_1_s_fu_784_p1;
    sc_signal< sc_lv<19> > tmp_48_fu_807_p3;
    sc_signal< sc_lv<20> > tmp_65_cast_fu_831_p1;
    sc_signal< sc_lv<20> > tmp_51_fu_835_p2;
    sc_signal< sc_lv<17> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<17> ap_ST_fsm_state1;
    static const sc_lv<17> ap_ST_fsm_state2;
    static const sc_lv<17> ap_ST_fsm_state3;
    static const sc_lv<17> ap_ST_fsm_state4;
    static const sc_lv<17> ap_ST_fsm_state5;
    static const sc_lv<17> ap_ST_fsm_state6;
    static const sc_lv<17> ap_ST_fsm_state7;
    static const sc_lv<17> ap_ST_fsm_state8;
    static const sc_lv<17> ap_ST_fsm_state9;
    static const sc_lv<17> ap_ST_fsm_state10;
    static const sc_lv<17> ap_ST_fsm_state11;
    static const sc_lv<17> ap_ST_fsm_state12;
    static const sc_lv<17> ap_ST_fsm_state13;
    static const sc_lv<17> ap_ST_fsm_state14;
    static const sc_lv<17> ap_ST_fsm_state15;
    static const sc_lv<17> ap_ST_fsm_state16;
    static const sc_lv<17> ap_ST_fsm_state17;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_FF;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<10> ap_const_lv10_200;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_binaryThreshold_address0();
    void thread_binaryThreshold_ce0();
    void thread_dst_address0();
    void thread_dst_ce0();
    void thread_dst_d0();
    void thread_dst_we0();
    void thread_exitcond10_fu_291_p2();
    void thread_exitcond1_fu_795_p2();
    void thread_exitcond2_fu_677_p2();
    void thread_exitcond3_fu_587_p2();
    void thread_exitcond4_fu_575_p2();
    void thread_exitcond5_fu_547_p2();
    void thread_exitcond6_fu_531_p2();
    void thread_exitcond7_fu_421_p2();
    void thread_exitcond8_fu_331_p2();
    void thread_exitcond9_fu_319_p2();
    void thread_exitcond_fu_819_p2();
    void thread_i1_cast_fu_287_p1();
    void thread_i3_cast_fu_543_p1();
    void thread_i_8_fu_553_p2();
    void thread_i_9_fu_801_p2();
    void thread_i_fu_297_p2();
    void thread_icmp2_fu_472_p2();
    void thread_icmp3_fu_638_p2();
    void thread_icmp4_fu_728_p2();
    void thread_icmp_fu_382_p2();
    void thread_iter_1_fu_537_p2();
    void thread_j2_cast_fu_315_p1();
    void thread_j4_cast_fu_571_p1();
    void thread_j_7_fu_825_p2();
    void thread_j_8_fu_581_p2();
    void thread_j_fu_325_p2();
    void thread_k_2_fu_337_p2();
    void thread_k_3_fu_593_p2();
    void thread_l_1_fu_427_p2();
    void thread_l_2_fu_683_p2();
    void thread_max_val_2_cast_fu_762_p1();
    void thread_max_val_2_fu_758_p1();
    void thread_max_val_2_max_val_1_fu_776_p3();
    void thread_max_val_2_max_val_1_s_fu_784_p1();
    void thread_max_val_3_fu_788_p3();
    void thread_min_val_2_fu_502_p3();
    void thread_min_val_2_min_val_1_fu_516_p3();
    void thread_min_val_3_fu_524_p3();
    void thread_or_cond3_fu_484_p2();
    void thread_or_cond6_fu_740_p2();
    void thread_rev1_fu_622_p2();
    void thread_rev2_fu_712_p2();
    void thread_rev7_fu_456_p2();
    void thread_rev_fu_366_p2();
    void thread_temp_address0();
    void thread_temp_ce0();
    void thread_temp_d0();
    void thread_temp_we0();
    void thread_tmp2_cast_fu_349_p1();
    void thread_tmp2_fu_343_p2();
    void thread_tmp3_cast_fu_439_p1();
    void thread_tmp3_fu_433_p2();
    void thread_tmp4_fu_396_p2();
    void thread_tmp5_fu_478_p2();
    void thread_tmp6_cast_fu_605_p1();
    void thread_tmp6_fu_599_p2();
    void thread_tmp7_cast_fu_695_p1();
    void thread_tmp7_fu_689_p2();
    void thread_tmp8_fu_652_p2();
    void thread_tmp9_fu_734_p2();
    void thread_tmp_40_fu_402_p1();
    void thread_tmp_41_fu_358_p3();
    void thread_tmp_42_fu_372_p4();
    void thread_tmp_43_fu_448_p3();
    void thread_tmp_44_fu_462_p4();
    void thread_tmp_46_fu_411_p2();
    void thread_tmp_47_fu_388_p3();
    void thread_tmp_48_fu_807_p3();
    void thread_tmp_49_cast_fu_407_p1();
    void thread_tmp_49_fu_493_p2();
    void thread_tmp_50_cast_fu_311_p1();
    void thread_tmp_50_fu_510_p2();
    void thread_tmp_51_fu_835_p2();
    void thread_tmp_52_cast_fu_567_p1();
    void thread_tmp_52_fu_667_p2();
    void thread_tmp_53_cast_fu_416_p1();
    void thread_tmp_53_fu_614_p3();
    void thread_tmp_54_fu_628_p4();
    void thread_tmp_55_fu_644_p3();
    void thread_tmp_56_fu_704_p3();
    void thread_tmp_57_fu_718_p4();
    void thread_tmp_58_fu_749_p2();
    void thread_tmp_59_cast_fu_815_p1();
    void thread_tmp_59_fu_766_p2();
    void thread_tmp_60_fu_772_p1();
    void thread_tmp_62_cast_fu_489_p1();
    void thread_tmp_63_cast_fu_498_p1();
    void thread_tmp_65_cast_fu_831_p1();
    void thread_tmp_66_cast_fu_840_p1();
    void thread_tmp_68_cast_fu_663_p1();
    void thread_tmp_69_cast_fu_672_p1();
    void thread_tmp_76_cast_fu_745_p1();
    void thread_tmp_77_cast_fu_754_p1();
    void thread_tmp_fu_303_p3();
    void thread_tmp_s_fu_559_p3();
    void thread_x_1_fu_609_p2();
    void thread_x_fu_353_p2();
    void thread_y_1_fu_699_p2();
    void thread_y_fu_443_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif