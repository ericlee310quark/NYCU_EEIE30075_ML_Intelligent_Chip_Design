#include <systemc.h>
#include <iostream>
#define PATTERN_NUM 9

using namespace std;

SC_MODULE( Monitor ) {	

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_in < sc_uint<4> > A, B;
	sc_in < sc_uint<8> > C;
	sc_in < sc_uint<9> > Y;
	sc_in < bool > done;

	sc_uint <32> pattern_num;
	int cycle;
	
	void run();
	
	SC_CTOR( Monitor )
	{	
		cycle = 0;
		pattern_num = 0;
		SC_METHOD( run );
		sensitive << clock.neg();
	}
};

