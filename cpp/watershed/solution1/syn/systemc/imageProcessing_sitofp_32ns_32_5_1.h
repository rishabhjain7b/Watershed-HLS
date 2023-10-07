// ==============================================================
// File generated on Sun Apr 23 06:26:14 PDT 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __imageProcessing_sitofp_32ns_32_5_1__HH__
#define __imageProcessing_sitofp_32ns_32_5_1__HH__
#include "ACMP_sitofp.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int dout_WIDTH>
SC_MODULE(imageProcessing_sitofp_32ns_32_5_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_sitofp<ID, 5, din0_WIDTH, dout_WIDTH> ACMP_sitofp_U;

    SC_CTOR(imageProcessing_sitofp_32ns_32_5_1):  ACMP_sitofp_U ("ACMP_sitofp_U") {
        ACMP_sitofp_U.clk(clk);
        ACMP_sitofp_U.reset(reset);
        ACMP_sitofp_U.ce(ce);
        ACMP_sitofp_U.din0(din0);
        ACMP_sitofp_U.dout(dout);

    }

};

#endif //
