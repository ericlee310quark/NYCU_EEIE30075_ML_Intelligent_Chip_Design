#include <systemc.h>

SC_MODULE(MyModule) {
    SC_HAS_PROCESS(MyModule);

    MyModule(sc_module_name name) : sc_module(name) {
        SC_CTHREAD(my_cthread, clk.pos());
    }

    void my_cthread() {
        while (true) {
            cout << "Executing in sc_cthread at time " << sc_time_stamp() << endl;
            wait(10, SC_NS);
        }
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
