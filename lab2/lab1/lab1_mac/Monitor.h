#include <systemc.h>
#include <iostream>

using namespace std;

SC_MODULE( Monitor ) {	

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_in < sc_uint<4> > A, B;
	sc_in < sc_uint<8> > C;
	sc_in < sc_uint<9> > Y;
	int cycle;
	
	void run();
	
	SC_CTOR( Monitor )
	{	
		cycle = 0;
	
		SC_METHOD( run );
		sensitive << clock.neg();
	}
};

