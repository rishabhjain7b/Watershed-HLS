// ==============================================================
// File generated on Sun Apr 23 06:26:15 PDT 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dilate_sureBackground_H__
#define __dilate_sureBackground_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dilate_sureBackground_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 262144;
  static const unsigned AddressWidth = 18;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dilate_sureBackground_ram) {
        for (unsigned i = 0; i < 262144; i = i + 1) {
            ram[i] = 0;
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
        if (we0.read() == sc_dt::Log_1) 
        {
           if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
           {
              ram[address0.read().to_uint()] = d0.read(); 
           }
        }
    }
}


}; //endmodule


SC_MODULE(dilate_sureBackground) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 262144;
static const unsigned AddressWidth = 18;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dilate_sureBackground_ram* meminst;


SC_CTOR(dilate_sureBackground) {
meminst = new dilate_sureBackground_ram("dilate_sureBackground_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->we0(we0);
meminst->d0(d0);


meminst->reset(reset);
meminst->clk(clk);
}
~dilate_sureBackground() {
    delete meminst;
}


};//endmodule
#endif
