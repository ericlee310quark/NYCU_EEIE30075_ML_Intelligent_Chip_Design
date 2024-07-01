#include <systemc.h>

SC_MODULE(MyModule) {
    sc_in<sc_lv<4>> input_vector;
    sc_out<sc_lv<4>> output_vector;

    SC_CTOR(MyModule) {
        SC_METHOD(process_vector);
        sensitive << input_vector;
    }

    void process_vector() {
        sc_lv<4> input = input_vector.read();
        sc_lv<4> output = ~input;
        output_vector.write(output);
    }
};

int sc_main(int argc, char* argv[]) {
    sc_signal<sc_lv<4>> vector_signal;

    MyModule my_module("my_module");
    my_module.input_vector(vector_signal);
    my_module.output_vector(vector_signal);

    sc_start(10, SC_NS);

    return 0;
}
