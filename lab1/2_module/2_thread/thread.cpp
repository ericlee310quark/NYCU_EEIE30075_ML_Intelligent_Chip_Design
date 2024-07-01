#include <systemc.h>

SC_MODULE(MyModule) {
    SC_HAS_PROCESS(MyModule);

    MyModule(sc_module_name name) : sc_module(name) {
        SC_THREAD(my_thread);
    }

    void my_thread() {
        while (true) {
            cout << "Executing in sc_thread at time " << sc_time_stamp() << endl;
            wait(10, SC_NS);
        }
    }

};

int sc_main(int argc, char* argv[]) {
    MyModule my_module("my_module");

    sc_start(100, SC_NS);

    return 0;
}
