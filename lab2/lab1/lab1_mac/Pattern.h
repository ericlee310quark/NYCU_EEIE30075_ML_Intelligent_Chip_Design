#include <systemc.h>
#include <iostream>
#define CYCLE 9

using namespace std;

SC_MODULE( Pattern ) {	

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_out < sc_uint<4> > A, B;
    sc_out < sc_uint<8> > C;
	
	sc_uint <32> cycle;
	sc_uint <3> temp_uint;
		
	void run();
	
	SC_CTOR( Pattern )
	{	
		temp_uint = 0;
		cycle = 0;
		SC_METHOD( run );
		sensitive << clock.neg();
	}
};


