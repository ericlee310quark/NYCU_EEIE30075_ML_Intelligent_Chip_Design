#define SC_INCLUDE_FX
#include "MAC.h"
#include "Pattern.h"
#include "Monitor.h"
#include "clockreset.h"
#include <iostream>

using namespace std;

int sc_main( int argc, char* argv[] ) {
	sc_signal < bool > clk, rst;
	sc_signal < sc_fixed<40,17> > A, B;
	sc_signal < sc_fixed<40,17> > C;
	sc_signal < sc_fixed<40,17> > Y;
	
	sc_vector<sc_signal<sc_fixed<40,17>>> img_out{"img_out", 150528};
	sc_vector<sc_signal<sc_fixed<40,17>>> conv0_out{"conv0_out",193600};

	sc_vector<sc_signal<sc_fixed<40,17>>> max0_out{"max0_out",46656};

	sc_vector<sc_signal<sc_fixed<40,17>>> conv1_out{"conv1_out",139968};

	sc_vector<sc_signal<sc_fixed<40,17>>> max1_out{"max1_out",32448};

	sc_vector<sc_signal<sc_fixed<40,17>>> conv2_out{"conv2_out",64896};
	sc_vector<sc_signal<sc_fixed<40,17>>> conv3_out{"conv3_out",43264};
	sc_vector<sc_signal<sc_fixed<40,17>>> conv4_out{"conv4_out",43264};

	sc_vector<sc_signal<sc_fixed<40,17>>> max2_out{"max2_out",9216};

	sc_vector<sc_signal<sc_fixed<40,17>>> linear0_out{"linear0_out",4096};
	sc_vector<sc_signal<sc_fixed<40,17>>> linear1_out{"linear1_out",4096};
	sc_vector<sc_signal<sc_fixed<40,17>>> linear2_out{"linear2_out",1000};
	//sc_vector<sc_signal<sc_fixed<40,17>>> softmax_out{"softmax_out",1000};

	Reset m_Reset( "m_Reset", 10 );
	Clock m_clock( "m_clock", 5, 70 );
	MAC m_MAC( "m_MAC" );
	Monitor m_Monitor( "m_Monitor" );
	Pattern m_Pattern( "m_Pattern" );
	
	conv2d_0 conv2d_0("conv2d_0");
	MAX_POOLING_0 m_MAX_POOLING_0("m_MAX_POOLING_0");
	conv2d_1 m_conv2d_1("m_conv2d_1");
	MAX_POOLING_1 m_MAX_POOLING_1("m_MAX_POOLING_1");

	conv2d_2 m_conv2d_2("m_conv2d_2");
	conv2d_3 m_conv2d_3("m_conv2d_3");
	conv2d_4 m_conv2d_4("m_conv2d_4");

	MAX_POOLING_2 m_MAX_POOLING_2("m_MAX_POOLING_2");

	LINEAR0_RELU m_LINEAR0_RELU("m_LINEAR0_RELU");
	LINEAR1_RELU m_LINEAR1_RELU("m_LINEAR1_RELU");
	LINEAR2 m_LINEAR2("m_LINEAR2");
	//SOFTMAX m_SOFTMAX("SOFTMAX");

	m_Reset( rst );
	m_clock( clk );
	m_MAC( A, B, C, Y );
	m_Monitor( rst, clk, A, B, C, Y );


	m_Pattern( rst, clk, A, B, C );
	
	m_Pattern.img(img_out);
	conv2d_0(rst,clk);
	conv2d_0.in_feature(img_out);
	conv2d_0.out_feature(conv0_out);

	m_MAX_POOLING_0(clk);
	m_MAX_POOLING_0.in_feature(conv0_out);
	m_MAX_POOLING_0.out_feature(max0_out);

	m_conv2d_1(rst,clk);
	m_conv2d_1.in_feature(max0_out);
	m_conv2d_1.out_feature(conv1_out);
	
	m_MAX_POOLING_1(clk);
	m_MAX_POOLING_1.in_feature(conv1_out);
	m_MAX_POOLING_1.out_feature(max1_out);


	m_conv2d_2(rst,clk);
	m_conv2d_2.in_feature(max1_out);
	m_conv2d_2.out_feature(conv2_out);
	
	m_conv2d_3(rst,clk);
	m_conv2d_3.in_feature(conv2_out);
	m_conv2d_3.out_feature(conv3_out);

	m_conv2d_4(rst,clk);
	m_conv2d_4.in_feature(conv3_out);
	m_conv2d_4.out_feature(conv4_out);

	m_MAX_POOLING_2(clk);
	m_MAX_POOLING_2.in_feature(conv4_out);
	m_MAX_POOLING_2.out_feature(max2_out);
	
	m_LINEAR0_RELU(rst,clk);
	m_LINEAR0_RELU.in_feature(max2_out);	
	m_LINEAR0_RELU.out_feature(linear0_out);

	m_LINEAR1_RELU(rst,clk);
	m_LINEAR1_RELU.in_feature(linear0_out);	
	m_LINEAR1_RELU.out_feature(linear1_out);

	m_LINEAR2(rst,clk);
	m_LINEAR2.in_feature(linear1_out);	
	m_LINEAR2.out_feature(linear2_out);


	//softmax_out(rst,clk);
	//softmax_out.in_feature(linear2_out);
	//softmax_out.out_feature(softmax_out);

	
	sc_start( 500, SC_NS );
	return 0;

}


