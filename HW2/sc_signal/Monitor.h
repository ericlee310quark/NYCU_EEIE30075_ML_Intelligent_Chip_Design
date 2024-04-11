#define SC_INCLUDE_FX
#include <systemc.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>
using namespace std;

SC_MODULE( Monitor ) {	

	sc_in < bool > rst;
	sc_in_clk clock;
	
	sc_in <bool> in_valid_pat;
	//sc_vector<sc_in<sc_fixed_fast<46,17>>> img_out{"img_out", 150528};
	sc_in<sc_fixed_fast<46,17>> img_out_first;
	sc_in<sc_fixed_fast<46,17>> img_out_last;

		sc_in <bool> out_valid_conv0;
	//sc_vector<sc_in<sc_fixed_fast<46,17>>> conv0_out{"conv0_out",193600};
	sc_in<sc_fixed_fast<46,17>> conv0_out_first;
	sc_in<sc_fixed_fast<46,17>> conv0_out_last;
	

	sc_in <bool> out_valid_max0;
	//sc_vector<sc_in<sc_fixed_fast<46,17>>> max0_out{"max0_out",46656};
	sc_in<sc_fixed_fast<46,17>> max0_out_first;
	sc_in<sc_fixed_fast<46,17>> max0_out_last;

	
	sc_in <bool> out_valid_conv1;
	//sc_vector<sc_in<sc_fixed_fast<46,17>>> conv1_out{"conv1_out",139968};
	sc_in<sc_fixed_fast<46,17>> conv1_out_first;
	sc_in<sc_fixed_fast<46,17>> conv1_out_last;

	sc_in <bool> out_valid_max1;
	//sc_vector<sc_in<sc_fixed_fast<46,17>>> max1_out{"max1_out",32448};
	sc_in<sc_fixed_fast<46,17>> max1_out_first;
	sc_in<sc_fixed_fast<46,17>> max1_out_last;

	
	sc_in <bool> out_valid_conv2;
	//sc_vector<sc_in<sc_fixed_fast<46,17>>> conv2_out{"conv2_out",64896};
	sc_in<sc_fixed_fast<46,17>> conv2_out_first;
	sc_in<sc_fixed_fast<46,17>> conv2_out_last;
	sc_in <bool> out_valid_conv3;
	//sc_vector<sc_in<sc_fixed_fast<46,17>>> conv3_out{"conv3_out",43264};
	sc_in<sc_fixed_fast<46,17>> conv3_out_first;
	sc_in<sc_fixed_fast<46,17>> conv3_out_last;
	sc_in <bool> out_valid_conv4;
	//sc_vector<sc_in<sc_fixed_fast<46,17>>> conv4_out{"conv4_out",43264};
	sc_in<sc_fixed_fast<46,17>> conv4_out_first;
	sc_in<sc_fixed_fast<46,17>> conv4_out_last;
	sc_in <bool> out_valid_max2;
	//sc_vector<sc_in<sc_fixed_fast<46,17>>> max2_out{"max2_out",9216};
	sc_in<sc_fixed_fast<46,17>> max2_out_first;
	sc_in<sc_fixed_fast<46,17>> max2_out_last;
	
	sc_in <bool> out_valid_linear0;
	//sc_vector<sc_in<sc_fixed_fast<46,17>>> linear0_out{"linear0_out",4096};
	sc_in<sc_fixed_fast<46,17>> linear0_out_first;
	sc_in<sc_fixed_fast<46,17>> linear0_out_last;
	sc_in <bool> out_valid_linear1;
	//sc_vector<sc_in<sc_fixed_fast<46,17>>> linear1_out{"linear1_out",4096};
	sc_in<sc_fixed_fast<46,17>> linear1_out_first;
	sc_in<sc_fixed_fast<46,17>> linear1_out_last;
	sc_in <bool> out_valid_linear2;
	sc_vector<sc_in<sc_fixed_fast<46,17>>> linear2_out{"linear2_out",1000};
	//sc_in<sc_fixed_fast<46,17>> linear2_out_first;
	//sc_in<sc_fixed_fast<46,17>> linear2_out_last;
	
	/*
	sc_in < sc_fixed_fast<46,17> > A, B;
	sc_in < sc_fixed_fast<46,17> > C;
	sc_in < sc_fixed_fast<46,17> > Y;
	*/

	int cycle;
	vector <string> class_dict;
	
	void run();
	
	SC_CTOR( Monitor )
	{	
		cycle = 0;
	
		SC_METHOD( run );
		sensitive << clock.neg();
	}
};

