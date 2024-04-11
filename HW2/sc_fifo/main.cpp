#define SC_INCLUDE_FX
#include "MAC.h"
#include "Pattern.h"
#include "Monitor.h"
#include "clockreset.h"
#include <iostream>

using namespace std;

int sc_main( int argc, char* argv[] ) {
	sc_buffer < bool > clk, rst;
	/*
	sc_buffer < sc_fixed_fast<46,17> > A, B;
	sc_buffer < sc_fixed_fast<46,17> > C;
	sc_buffer < sc_fixed_fast<46,17> > Y;
	*/

	//sc_fifo_in<bool> in_valid_pat_fin;
	sc_fifo <bool> in_valid_pat;
	//sc_fifo_out<bool> in_valid_pat_fout;
	
	//sc_vector<sc_fifo_in<sc_fixed_fast<46,17>>> img_out_fin{"img_out", 150528};
	sc_vector<sc_fifo<sc_fixed_fast<46,17>>> img_out{"img_out", 150528};
	//sc_vector<sc_fifo_out<sc_fixed_fast<46,17>>> img_out_fout{"img_out", 150528};

	sc_buffer <bool> out_valid_conv0;
	sc_vector<sc_buffer<sc_fixed_fast<46,17>>> conv0_out{"conv0_out",193600};
	
	sc_buffer <bool> out_valid_max0;
	sc_vector<sc_buffer<sc_fixed_fast<46,17>>> max0_out{"max0_out",46656};
	
	sc_buffer <bool> out_valid_conv1;
	sc_vector<sc_buffer<sc_fixed_fast<46,17>>> conv1_out{"conv1_out",139968};

	sc_buffer <bool> out_valid_max1;
	sc_vector<sc_buffer<sc_fixed_fast<46,17>>> max1_out{"max1_out",32448};
	
	sc_buffer <bool> out_valid_conv2;
	sc_vector<sc_buffer<sc_fixed_fast<46,17>>> conv2_out{"conv2_out",64896};
	sc_buffer <bool> out_valid_conv3;
	sc_vector<sc_buffer<sc_fixed_fast<46,17>>> conv3_out{"conv3_out",43264};
	sc_buffer <bool> out_valid_conv4;
	sc_vector<sc_buffer<sc_fixed_fast<46,17>>> conv4_out{"conv4_out",43264};

	sc_buffer <bool> out_valid_max2;
	sc_vector<sc_buffer<sc_fixed_fast<46,17>>> max2_out{"max2_out",9216};
	
	sc_buffer <bool> out_valid_linear0;
	sc_vector<sc_buffer<sc_fixed_fast<46,17>>> linear0_out{"linear0_out",4096};
	sc_buffer <bool> out_valid_linear1;
	sc_vector<sc_buffer<sc_fixed_fast<46,17>>> linear1_out{"linear1_out",4096};
	sc_buffer <bool> out_valid_linear2;
	sc_vector<sc_buffer<sc_fixed_fast<46,17>>> linear2_out{"linear2_out",1000};
	
	//sc_vector<sc_buffer<sc_fixed_fast<46,17>>> softmax_out{"softmax_out",1000};

	Reset m_Reset( "m_Reset", 10 );
	Clock m_clock( "m_clock", 5, 100 );
	//MAC m_MAC( "m_MAC" );
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
	//m_MAC( A, B, C, Y );
	m_Pattern(rst, clk, in_valid_pat);
	m_Pattern.img(img_out);


	m_Monitor( rst, clk);
	//m_Monitor.in_valid_pat(in_valid_pat);
	
	
	
	
	//m_Monitor.img_out_first(img_out[0]);
	//m_Monitor.img_out_last(img_out[150527]);
	

	m_Monitor.out_valid_conv0(out_valid_conv0);
	m_Monitor.conv0_out_first(conv0_out[0]);
	m_Monitor.conv0_out_last(conv0_out[193599]);
	//m_Monitor.conv0_out_last(conv0_out[193598]);


	m_Monitor.out_valid_max0(out_valid_max0);
	m_Monitor.max0_out_first(max0_out[0]);
	m_Monitor.max0_out_last(max0_out[46655]);
	
	
	m_Monitor.out_valid_conv1(out_valid_conv1);
	m_Monitor.conv1_out_first(conv1_out[0]);
	m_Monitor.conv1_out_last(conv1_out[139967]);

	m_Monitor.out_valid_max1(out_valid_max1);
	m_Monitor.max1_out_first(max1_out[0]);
	m_Monitor.max1_out_last(max1_out[32447]);
	
	m_Monitor.out_valid_conv2(out_valid_conv2);
	m_Monitor.conv2_out_first(conv2_out[0]);
	m_Monitor.conv2_out_last(conv2_out[64895]);
	
	m_Monitor.out_valid_conv3(out_valid_conv3);
	m_Monitor.conv3_out_first(conv3_out[0]);
	m_Monitor.conv3_out_last(conv3_out[43263]);
	
	m_Monitor.out_valid_conv4(out_valid_conv4);
	m_Monitor.conv4_out_first(conv4_out[0]);
	m_Monitor.conv4_out_last(conv4_out[43263]);
	
	m_Monitor.out_valid_max2(out_valid_max2);
	m_Monitor.max2_out_first(max2_out[0]);
	m_Monitor.max2_out_last(max2_out[9215]);
	
	m_Monitor.out_valid_linear0(out_valid_linear0);
	m_Monitor.linear0_out_first(linear0_out[0]);
	m_Monitor.linear0_out_last(linear0_out[4095]);
	
	m_Monitor.out_valid_linear1(out_valid_linear1);
	m_Monitor.linear1_out_first(linear1_out[0]);
	m_Monitor.linear1_out_last(linear1_out[4095]);
	
	m_Monitor.out_valid_linear2(out_valid_linear2);
	m_Monitor.linear2_out(linear2_out);
	//m_Monitor.linear2_out_first(linear2_out[0]);
	//m_Monitor.linear2_out_last(linear2_out[999]);


	//m_Pattern( rst, clk, A, B, C );


	conv2d_0(rst, clk, in_valid_pat, out_valid_conv0);
	conv2d_0.in_feature(img_out);
	conv2d_0.out_feature(conv0_out);
	


	m_MAX_POOLING_0(clk, out_valid_conv0, out_valid_max0);
	m_MAX_POOLING_0.in_feature(conv0_out);
	m_MAX_POOLING_0.out_feature(max0_out);
	

	m_conv2d_1(rst, clk, out_valid_max0, out_valid_conv1);
	m_conv2d_1.in_feature(max0_out);
	m_conv2d_1.out_feature(conv1_out);
	
	m_MAX_POOLING_1(clk, out_valid_conv1, out_valid_max1);
	m_MAX_POOLING_1.in_feature(conv1_out);
	m_MAX_POOLING_1.out_feature(max1_out);

	
	m_conv2d_2(rst, clk, out_valid_max1, out_valid_conv2);
	m_conv2d_2.in_feature(max1_out);
	m_conv2d_2.out_feature(conv2_out);
	
	m_conv2d_3(rst, clk, out_valid_conv2, out_valid_conv3);
	m_conv2d_3.in_feature(conv2_out);
	m_conv2d_3.out_feature(conv3_out);

	m_conv2d_4(rst, clk, out_valid_conv3, out_valid_conv4);
	m_conv2d_4.in_feature(conv3_out);
	m_conv2d_4.out_feature(conv4_out);

	m_MAX_POOLING_2(clk, out_valid_conv4, out_valid_max2);
	m_MAX_POOLING_2.in_feature(conv4_out);
	m_MAX_POOLING_2.out_feature(max2_out);

	m_LINEAR0_RELU(rst, clk, out_valid_max2, out_valid_linear0);
	m_LINEAR0_RELU.in_feature(max2_out);	
	m_LINEAR0_RELU.out_feature(linear0_out);

	m_LINEAR1_RELU(rst, clk, out_valid_linear0, out_valid_linear1);
	m_LINEAR1_RELU.in_feature(linear0_out);	
	m_LINEAR1_RELU.out_feature(linear1_out);

	m_LINEAR2(rst, clk, out_valid_linear1, out_valid_linear2);
	m_LINEAR2.in_feature(linear1_out);	
	m_LINEAR2.out_feature(linear2_out);

	//softmax_out(rst,clk);
	//softmax_out.in_feature(linear2_out);
	//softmax_out.out_feature(softmax_out);

	
	sc_start( 180, SC_NS );
	return 0;

}


