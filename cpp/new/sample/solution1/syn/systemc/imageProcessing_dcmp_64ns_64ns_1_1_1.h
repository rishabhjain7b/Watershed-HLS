// ==============================================================
// File generated on Sun Apr 23 06:45:06 PDT 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __imageProcessing_dcmp_64ns_64ns_1_1_1__HH__
#define __imageProcessing_dcmp_64ns_64ns_1_1_1__HH__
#include "ACMP_dcmp_comb.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(imageProcessing_dcmp_64ns_64ns_1_1_1) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<5> >   opcode;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_dcmp_comb<ID, 1, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_dcmp_comb_U;

    SC_CTOR(imageProcessing_dcmp_64ns_64ns_1_1_1):  ACMP_dcmp_comb_U ("ACMP_dcmp_comb_U") {
        ACMP_dcmp_comb_U.din0(din0);
        ACMP_dcmp_comb_U.din1(din1);
        ACMP_dcmp_comb_U.dout(dout);
        ACMP_dcmp_comb_U.opcode(opcode);

    }

};

#endif //
