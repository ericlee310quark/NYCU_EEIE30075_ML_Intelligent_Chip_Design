#include "systemc.h"

SC_MODULE(mon) {
    sc_in<bool> a, b, c_in, sum, c_out;
    sc_in_clk clock;
    void moni() {
        cout << "a = " << a << " "
             << "b = " << b << " "
             << "cin = " << c_in << " "
             << "sum = " << sum << " "
             << "cout = " << c_out << endl;
    }
    SC_CTOR(mon) {
        SC_METHOD(moni);
        sensitive << clock.neg();
    }
};