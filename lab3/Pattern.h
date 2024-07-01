#include <systemc.h>
#include <iostream>

using namespace std;

SC_MODULE( Pattern ) {	

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_out < sc_uint<4> > A, B;
	sc_out < sc_uint<8> > C;

	void run();

	SC_CTOR( Pattern )
	{	
		SC_METHOD( run );
		sensitive << clock.neg();
	}
};


