#include <systemc.h>

SC_MODULE(MyModule) {
    SC_HAS_PROCESS(MyModule);

    MyModule(sc_module_name name) : sc_module(name) {
        SC_METHOD(my_method);
        sensitive << clk.pos();
    }

    void my_method() {
        cout << "Executing in sc_method at time " << sc_time_stamp() << endl;
    }

    sc_in<bool> clk;

};

int sc_main(int argc, char* argv[]) {
    sc_clock clk("clk", 10, SC_NS);
    MyModule my_module("my_module");

    my_module.clk(clk);

    sc_start(100, SC_NS);

    return 0;
}
