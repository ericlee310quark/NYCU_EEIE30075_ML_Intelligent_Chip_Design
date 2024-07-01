#include "systemc.h"

SC_MODULE(patterm_gen) {
    sc_in_clk clock;
    sc_out<bool> data_a, data_b, data_cin;
    void patterm() {
        while (true) {
            data_a = 0;
            data_b = 0;
            data_cin = 0;
            wait();
            data_a = 0;
            data_b = 0;
            data_cin = 1;
            wait();
            data_a = 0;
            data_b = 1;
            data_cin = 0;
            wait();
            data_a = 0;
            data_b = 1;
            data_cin = 1;
            wait();
            data_a = 1;
            data_b = 0;
            data_cin = 0;
            wait();
            data_a = 1;
            data_b = 0;
            data_cin = 1;
            wait();
            data_a = 1;
            data_b = 1;
            data_cin = 0;
            wait();
            data_a = 1;
            data_b = 1;
            data_cin = 1;
            wait();
            sc_stop();
        }
    }
    SC_CTOR(patterm_gen) {
        SC_THREAD(patterm);
        sensitive << clock.pos();
    }
};