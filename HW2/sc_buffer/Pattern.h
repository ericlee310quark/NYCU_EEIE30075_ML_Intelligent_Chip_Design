#define SC_INCLUDE_FX
#include <systemc.h>
#include <iostream>
#define CYCLE 15

#define IMG_CHANNEL 3
#define IMG_WEIGHT 224
#define IMG_HEIGHT 224


using namespace std;

SC_MODULE( Pattern ) {	



	sc_in < bool > rst;
	sc_in_clk clock;

	//sc_vector<sc_out<sc_fixed_fast<46,17>>> img{"img",IMG_CHANNEL*IMG_WEIGHT*IMG_HEIGHT};

	//
	/*
	sc_out < sc_fixed_fast<46,17> > A, B;
    sc_out < sc_fixed_fast<46,17> > C;
	*/
	sc_out <bool> in_valid;	
	sc_vector<sc_out<sc_fixed_fast<46,17>>> img{"img",150528}; //IMG_CHANNEL*IMG_WEIGHT*IMG_HEIGHT};
	sc_uint <32> cycle;
	sc_fixed_fast<46,17> temp_uint;
	

	void run();
	
	SC_CTOR( Pattern )
	{	
		temp_uint = 0;
		//in_valid= 0;
		cycle = 0;
		SC_METHOD( run );
		sensitive << clock.neg();
	}
};


