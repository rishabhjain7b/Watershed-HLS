// ==============================================================
// File generated on Sun Apr 23 06:45:07 PDT 2023
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __watershed_algorithm_neighbours_0_H__
#define __watershed_algorithm_neighbours_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct watershed_algorithm_neighbours_0_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 2;
  static const unsigned AddressRange = 8;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(watershed_algorithm_neighbours_0_ram) {
        ram[0] = "0b11";
        ram[1] = "0b11";
        ram[2] = "0b11";
        ram[3] = "0b00";
        ram[4] = "0b00";
        ram[5] = "0b01";
        ram[6] = "0b01";
        ram[7] = "0b01";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(watershed_algorithm_neighbours_0) {


static const unsigned DataWidth = 2;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


watershed_algorithm_neighbours_0_ram* meminst;


SC_CTOR(watershed_algorithm_neighbours_0) {
meminst = new watershed_algorithm_neighbours_0_ram("watershed_algorithm_neighbours_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~watershed_algorithm_neighbours_0() {
    delete meminst;
}


};//endmodule
#endif
