#include "full_adder.h"
#include "mon.h"
#include "patterm_gen.h"

int sc_main(int argc, char* argv[]) {
    sc_signal<bool> t_a, t_b, t_cin, t_sum, t_cout;
    sc_clock clock("My CLOCK", 10, 5, 0, 1);
    full_adder f1("Fulladder");
    patterm_gen p1("Genartion");
    mon m1("Monitor");

    f1(t_cin, t_a, t_b, t_sum, t_cout);
    p1(clock, t_a, t_b, t_cin);
    m1(t_a, t_b, t_cin, t_sum, t_cout, clock);

    sc_start(200, SC_NS);
    return 0;
}