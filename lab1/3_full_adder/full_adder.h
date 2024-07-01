#include "half_adder.h"

SC_MODULE(full_adder) {
    sc_in<bool> carry_in, a, b;
    sc_out<bool> sum, carry_out;
    sc_signal<bool> c1, s1, c2;

    void proc_or() {
        carry_out = c1 | c2;
    }
    // call half_adder
    half_adder ha1, ha2;
    SC_CTOR(full_adder) : ha1("ha1"), ha2("ha2") {
        ha1(a, b, s1, c1);
        ha2(s1, carry_in, sum, c2);
        SC_METHOD(proc_or);
        sensitive << c1 << c2;
    }
};