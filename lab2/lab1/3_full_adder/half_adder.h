#include "systemc.h"

SC_MODULE(half_adder) {
    sc_in<bool> a, b;
    sc_out<bool> sum, c_out;
    void proc_add() {
        sum = a ^ b;
        c_out = a & b;
    }
    SC_CTOR(half_adder) {
        SC_METHOD(proc_add);
        sensitive << a << b;
    }
};