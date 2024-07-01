#define SC_INCLUDE_FX
#include <systemc.h>
#include <iostream>

using namespace std;

SC_MODULE( Monitor ) {	

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_in < sc_fixed<40,17> > A, B;
	sc_in < sc_fixed<40,17> > C;
	sc_in < sc_fixed<40,17> > Y;
	int cycle;
	
	void run();
	
	SC_CTOR( Monitor )
	{	
		cycle = 0;
	
		SC_METHOD( run );
		sensitive << clock.neg();
	}
};

