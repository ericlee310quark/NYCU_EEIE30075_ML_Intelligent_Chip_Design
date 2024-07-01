#define SC_INCLUDE_FX
#include <systemc.h>
#include <iostream>
#define CYCLE 9

using namespace std;

SC_MODULE( Pattern ) {	

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_out < sc_fixed<40,17> > A, B;
    sc_out < sc_fixed<40,17> > C;
	
	sc_uint <32> cycle;
	sc_fixed<40,17> temp_uint;
		
	void run();
	
	SC_CTOR( Pattern )
	{	
		temp_uint = 0;
		cycle = 0;
		SC_METHOD( run );
		sensitive << clock.neg();
	}
};


