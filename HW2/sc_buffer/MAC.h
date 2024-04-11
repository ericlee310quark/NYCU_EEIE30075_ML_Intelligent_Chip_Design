#define SC_INCLUDE_FX
#include <systemc.h>
#include <iostream>
#include <fstream>
#include <vector>

#include <string>
#include <sstream>
#include <cmath>

#include <string>
#include <algorithm>


using namespace std;

SC_MODULE(Adder)
{
	sc_in<sc_fixed_fast<46,17>> in1, in2;
	sc_out<sc_fixed_fast<46,17>> out;
	
	void run()
	{
		// vvvvv put your code here vvvvv
		out.write(in1.read()+in2.read());
		
		// ^^^^^ put your code here ^^^^^
	}

	SC_CTOR(Adder)
	{
		SC_METHOD(run);
		sensitive << in1 << in2;
	}
};

SC_MODULE(Multiplier)
{
	sc_in<sc_fixed_fast<46,17>> in1, in2;

	//sc_signal<sc_uint<8>> out[2];
	
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out{"out", 2};

	std::vector<int> numbers;
	
    int par;

	//sc_out<sc_uint<8>> out[2];
	//out.init(2);
	//out("out",2);

	void run()
	{
		



		// vvvvv put your code here vvvvv
		out[0].write(in1.read()*in2.read());
		out[1].write(in1.read()*3);
		
		//out[1].write(in1.read()*(sc_uint<4>)(numbers[0]));

		//cout<<"in1: "<<in1.read()<<endl;
		//cout<<"numbers[0]: "<<(sc_uint<4>)(numbers[1])<<endl;
		//cout<<"in1*numbers[0]: "<<in1.read()*(sc_uint<8>)(numbers[1])<<endl;
		
		// ^^^^^ put your code here ^^^^^
	}



	SC_CTOR(Multiplier)
	{

		/*
		ifstream inputFile("/RAID2/COURSE/mlchip/mlchip007/lab1/lab1_mac/bias_.txt");
		
		if (!inputFile) {
			cerr << "Error opening file." << endl;   
		}
		while (inputFile >> par) {
			numbers.push_back(par);
			cout<< par<<endl;
		}
		
		*/

		SC_METHOD(run);
		sensitive << in1 << in2;
	}
};

SC_MODULE(MAC)
{
	sc_in<sc_fixed_fast<46,17>> in1, in2;
	sc_in<sc_fixed_fast<46,17>> in3;
	sc_out<sc_fixed_fast<46,17>> out;

	Adder ADD_1;
	Multiplier MUL_1;


	// vvvvv put your code here vvvvv
	sc_signal<sc_fixed_fast<46,17>> temp2;

	//sc_signal< sc_uint <8> > temp0[2];
	sc_vector<sc_signal< sc_fixed_fast<46,17>>> temp0{"temp0", 2};
	
	//temp0.init(2);
	
	//temp0("temp0",2);
	// ^^^^^ put your code here ^^^^^
	/*
	void run()
	{
		temp2 = MUL_1.out[0];
		out.write(temp2.read()+in3.read());
		cout<<"temp2: "<<temp2<<endl;
		cout<<"par: "<<MUL_1.par<<endl;


	}
	*/
	SC_CTOR(MAC) : MUL_1("Mul_1"), ADD_1("Adder")
	{
		// vvvvv put your code here vvvvv
		//MUL_1.in1(in1);
		//MUL_1.in2(in2);
		//MUL_1.out(temp0);
		MUL_1(in1,in2);
		MUL_1.out(temp0);
	//	MUL_1.out(temp0);
		//MUL_1(in1,in2,temp0);
		ADD_1(temp0[0],in3,out);
		//SC_METHOD(run);
		sensitive <<in1;
		// ^^^^^ put your code here ^^^^^
	}
};

//----------------------------------------------------------------------
//	Input feature shape: 	(3,224,224)
//	Output feature shape:	(64,55,55)

//	Conv2d(3, 64, kernel_size=11, stride=4, padding=2)
//----------------------------------------------------------------------





SC_MODULE(conv2d_0)
{
	const int in_ch = 3;
	const int in_height = 224;
	const int in_width = 224;


	const int out_ch = 64;
	const int out_height = 55;
	const int out_width = 55;

	const int stride = 4;
	const int kernel_size = 11;
	const int padding = 2;

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_in <bool> in_valid;
	sc_out <bool> out_valid;

	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",150528};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",193600};

	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> after_padding{"after_padding",154587};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> weight{"weight",23232};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> bias{"bias",64};
	std::vector<double> weight;
	
	vector <double> bias;
	

	
	void run(){
		if ( rst.read() == 1 ){
			//TODO update weights, bias
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Conv0 load weight and bias                                  *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			
			std::ifstream weight_file("data/conv1_weight.txt");
			std::ifstream bias_file("data/conv1_bias.txt");

			double element;
			int cnt = 0;
			//std::vector <double> numbers;
			while (weight_file >> element) {
				//weight[cnt].write((sc_fixed_fast<46,17>) (element));
				weight.push_back(element);
				cnt ++;
			}

			cnt = 0;
			while (bias_file >> element) {
				//bias[cnt].write((sc_fixed_fast<46,17>) (element));
				//bias[cnt] = element;
				bias.push_back(element);
				cnt ++;
			}
			weight_file.close();
			bias_file.close();

			for(int i=0;i<out_ch*out_height*out_width;i++){
				out_feature[i].write(0);
			}
			out_valid.write(0);
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Finish Load Conv0 Parameters                                *"<<endl;
			cout<<"**********************************************************************************************"<<endl;

			return;
		}
		if(in_valid.read()==1){
			//TODO sc_out
			int out_feature_idx = 0;
			int in_feature_y = 0;
			int in_feature_x = 0;

			int in_feature_idx = 0;
			int weight_idx = 0;
			//sc_fixed_fast<46,17> partial_sum;
			double partial_sum;
			for(int o_c=0;o_c<out_ch;o_c++){
				for(int o_y=0;o_y<out_height;o_y++){
					for(int o_x=0;o_x<out_width;o_x++){
						partial_sum = 0;
						for(int i_c=0;i_c<in_ch;i_c++){
							for(int k_y=-5;k_y<6;k_y++){
								for(int k_x=-5;k_x<6;k_x++){
									in_feature_y = stride*o_y+k_y+5-2;
									in_feature_x = stride*o_x+k_x+5-2;
									if(!((in_feature_y<0)||(in_feature_x<0)||(in_feature_y>=in_height)||(in_feature_x>=in_width))){
										in_feature_idx = (i_c*in_height*in_width)+(in_feature_y*in_width)+(in_feature_x);
										weight_idx = (o_c*in_ch*11*11)+(i_c*11*11)+((k_y+5)*(11))+(k_x+5);
										//partial_sum+= (in_feature[i_c][in_feature_y][in_feature_x]*weight[o_c][i_c][5+k_y][5+k_x]);
										partial_sum+= ((in_feature[in_feature_idx])*weight[weight_idx]);
									}
								}
							}
						}
						out_feature_idx = (o_c * out_height * out_width)  + (o_y * out_width) + o_x;
						if((bias[o_c] + partial_sum)<0){
							out_feature[out_feature_idx] = 0;	
						}
						else{
							partial_sum += bias[o_c];
							out_feature[out_feature_idx] = (double)partial_sum;//bias[o_c] + partial_sum;
						}
						/*
						if((o_c==0)&&(o_y==0)&&(o_x==0)){
							cout<<"conv0_relu_out_feature["<<o_c<<",0,0]: "<< out_feature[out_feature_idx] <<endl;
						}
						*/
					}
				}
			}
			out_valid.write(1);
			//weight.clear();
			//bias.clear();
		}
		else{

			for(int i=0;i<out_ch*out_height*out_width;i++){
				out_feature[i].write(out_feature[i]);
			}
			out_valid.write(0);
		}
	}
	
	
	SC_CTOR(conv2d_0)
	{

		//ADD_1(temp0[0],in3,out);

		SC_METHOD(run);
		sensitive <<clock.pos();
		// ^^^^^ put your code here ^^^^^
	}
};

//----------------------------------------------------------------------
//	Input feature shape: 	(64,55,55)
//	Output feature shape:	(64,27,27)

//	MaxPool2d(kernel_size=3, stride=2)
//----------------------------------------------------------------------

SC_MODULE(MAX_POOLING_0)
{
	sc_in_clk clock;
	sc_in <bool> in_valid;
	sc_out <bool> out_valid;
	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",193600};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",46656};
	
	void run(){
		if(in_valid.read()==1){
			const int OUT_CHANNEL =64;
			const int OUT_SIZE = 27;

			const int IN_CHANNEL = 64;
			const int IN_SIZE = 55;
			const int STRIDE = 2;
			int in_feature_x = 0;
			int in_feature_y = 0;
			sc_fixed_fast<46,17> temp_large;
			for(int o_c=0;o_c<OUT_CHANNEL;o_c++){
				for(int o_y=0;o_y<OUT_SIZE;o_y++){
					for(int o_x=0;o_x<OUT_SIZE;o_x++){
						temp_large = 0;
						for(int k_y=-1;k_y<=1;k_y++){
							for(int k_x=-1;k_x<=1;k_x++){
								in_feature_y = o_y * STRIDE + 1 + k_y;
								in_feature_x = o_x * STRIDE + 1 + k_x;
								if(in_feature[(o_c*IN_SIZE*IN_SIZE)+(in_feature_y*IN_SIZE)+in_feature_x]>temp_large){
									temp_large = in_feature[(o_c*IN_SIZE*IN_SIZE)+(in_feature_y*IN_SIZE)+in_feature_x];
								}
							}
						}
						out_feature[(o_c*OUT_SIZE*OUT_SIZE)+(o_y*OUT_SIZE)+o_x] = temp_large;
						/*
						if((o_c==0)&&(o_y==0)&&(o_x==0)){
							cout<<"maxpooling_0_out["<<o_c<<",0,0]: "<< out_feature[(o_c*OUT_SIZE*OUT_SIZE)+(o_y*OUT_SIZE)+o_x] <<endl;
						}
						*/
					}
				}
			}
			out_valid.write(1);
		}
		else{
			out_valid.write(0);
		}
	}
	SC_CTOR(MAX_POOLING_0)
	{
		SC_METHOD(run);
		sensitive <<clock.pos();
	}
};

//----------------------------------------------------------------------
//	Input feature shape: 	(64,27,27)
//	Output feature shape:	(192,27,27)

//	Conv2d(64, 192, kernel_size=5, padding=2)
//----------------------------------------------------------------------



SC_MODULE(conv2d_1)
{
	const int in_ch = 64;
	const int in_height = 27;
	const int in_width = 27;


	const int out_ch = 192;
	const int out_height = 27;
	const int out_width = 27;

	const int stride = 1;
	const int kernel_size = 5;
	//! const int padding = 2;

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_in <bool> in_valid;
	sc_out <bool> out_valid;

	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",46656};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",139968};

	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> after_padding{"after_padding",154587};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> weight{"weight",307200};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> bias{"bias",192};
	vector<double> weight;
	vector<double> bias;

	
	void run(){
		if ( rst.read() == 1 ){
			//TODO update weights, bias
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Conv1 load weight and bias                                  *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			std::ifstream weight_file("data/conv2_weight.txt");
			std::ifstream bias_file("data/conv2_bias.txt");

			double element;
			int cnt = 0;
			//std::vector <double> numbers;
			while (weight_file >> element) {
				//weight[cnt].write((sc_fixed_fast<46,17>) (element));
				weight.push_back(element);
				cnt ++;
			}

			cnt = 0;
			while (bias_file >> element) {
				//bias[cnt].write((sc_fixed_fast<46,17>) (element));
				bias.push_back(element);
				cnt ++;
			}
			/*
			for(int i =0;i<64;i++){
				cout<<"weight_"<<i<<": "<<weight[i]<<endl;
			}

			for(int i =0;i<64;i++){
				cout<<"bias_"<<i<<": "<<bias[i]<<endl;
			}
			*/
			//weight_file.close();
			//bias_file.close();

			for(int i=0;i<out_ch*out_height*out_width;i++){
				out_feature[i].write(0);
			}
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Finish Load Conv1 Parameters                                *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			out_valid.write(0);
			return;
		}
		//else{
		if(in_valid.read()==1){
//TODO sc_out
			int out_feature_idx = 0;
			int in_feature_y = 0;
			int in_feature_x = 0;

			int in_feature_idx = 0;
			int weight_idx = 0;
			//sc_fixed_fast<46,17> partial_sum;
			double partial_sum;

			for(int o_c=0;o_c<out_ch;o_c++){
				for(int o_y=0;o_y<out_height;o_y++){
					for(int o_x=0;o_x<out_width;o_x++){
						partial_sum = 0;
						for(int i_c=0;i_c<in_ch;i_c++){
							for(int k_y=int(kernel_size/2)*(-1);k_y<int(kernel_size/2)+1;k_y++){
								for(int k_x=int(kernel_size/2)*(-1);k_x<int(kernel_size/2)+1;k_x++){

									in_feature_y = stride*o_y+k_y+int(kernel_size/2)-2;
									in_feature_x = stride*o_x+k_x+int(kernel_size/2)-2;
									
									if(!((in_feature_y<0)||(in_feature_x<0)||(in_feature_y>=in_height)||(in_feature_x>=in_width))){
										in_feature_idx = (i_c*in_height*in_width)+(in_feature_y*in_width)+(in_feature_x);
										weight_idx = (o_c*in_ch*kernel_size*kernel_size)+(i_c*kernel_size*kernel_size)+((k_y+int(kernel_size/2))*(kernel_size))+(k_x+int(kernel_size/2));
										//partial_sum+= (in_feature[i_c][in_feature_y][in_feature_x]*weight[o_c][i_c][5+k_y][5+k_x]);
										partial_sum+= (in_feature[in_feature_idx]*weight[weight_idx]);
									}
								}
							}
						}
						out_feature_idx = (o_c * out_height * out_width)  + (o_y * out_width) + o_x;
						if((bias[o_c] + partial_sum)<0){
							out_feature[out_feature_idx] = 0;	
						}
						else{
							partial_sum+=bias[o_c];
							//out_feature[out_feature_idx] = bias[o_c] + partial_sum;
							out_feature[out_feature_idx] = (sc_fixed_fast<46,17>)partial_sum;
						}
						/*
						if((o_c==0)&&(o_y==0)&&(o_x==0)){
							cout<<"conv1_relu_out_feature["<<o_c<<",0,0]: "<< out_feature[out_feature_idx] <<endl;
						}
						*/
					}
				}
			}
			out_valid.write(1);
			//weight.clear();
			//bias.clear();
		}
		else{
			for(int i=0;i<out_ch*out_height*out_width;i++){
				out_feature[i].write(out_feature[i]);
			}
			out_valid.write(0);
		}		
	}
	
	SC_CTOR(conv2d_1)
	{
		SC_METHOD(run);
		sensitive <<clock.pos();
	}
};


//----------------------------------------------------------------------
//	Input feature shape: 	(192,27,27)
//	Output feature shape:	(192,13,13)

//	MaxPool2d(kernel_size=3, stride=2)
//----------------------------------------------------------------------


SC_MODULE(MAX_POOLING_1)
{
	sc_in_clk clock;
	sc_in <bool> in_valid;
	sc_out <bool> out_valid;
	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",139968};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",32448};
	
	void run(){
		const int OUT_CHANNEL =192;
		const int OUT_SIZE = 13;

		const int IN_CHANNEL = 192;
		const int IN_SIZE = 27;
		const int STRIDE = 2;
		int in_feature_x = 0;
		int in_feature_y = 0;
		if(in_valid.read()==1){

			sc_fixed_fast<46,17> temp_large;
			for(int o_c=0;o_c<OUT_CHANNEL;o_c++){
				for(int o_y=0;o_y<OUT_SIZE;o_y++){
					for(int o_x=0;o_x<OUT_SIZE;o_x++){
						temp_large = 0;
						for(int k_y=-1;k_y<=1;k_y++){
							for(int k_x=-1;k_x<=1;k_x++){
								in_feature_y = o_y * STRIDE + 1 + k_y;
								in_feature_x = o_x * STRIDE + 1 + k_x;
								if(in_feature[(o_c*IN_SIZE*IN_SIZE)+(in_feature_y*IN_SIZE)+in_feature_x]>temp_large){
									temp_large = in_feature[(o_c*IN_SIZE*IN_SIZE)+(in_feature_y*IN_SIZE)+in_feature_x];
								}
							}
						}
						out_feature[(o_c*OUT_SIZE*OUT_SIZE)+(o_y*OUT_SIZE)+o_x] = temp_large;
						/*
						if((o_c==0)&&(o_y==0)&&(o_x==0)){
							cout<<"maxpooling_1_out["<<o_c<<",0,0]: "<< out_feature[(o_c*OUT_SIZE*OUT_SIZE)+(o_y*OUT_SIZE)+o_x] <<endl;
						}
						*/
					}
				}

			}
			out_valid.write(1);
		}
		else{
			out_valid.write(0);
		}
	}
	SC_CTOR(MAX_POOLING_1)
	{
		SC_METHOD(run);
		sensitive <<clock.pos();
	}
};

//----------------------------------------------------------------------
//	Input feature shape: 	(192,13,13)
//	Output feature shape:	(384,13,13)

//	Conv2d(192, 384, kernel_size=3, padding=1)
//----------------------------------------------------------------------



SC_MODULE(conv2d_2)
{
	const int in_ch = 192;
	const int in_height = 13;
	const int in_width = 13;


	const int out_ch = 384;
	const int out_height = 13;
	const int out_width = 13;

	const int stride = 1;
	const int kernel_size = 3;
	//! const int padding = 2;

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_in <bool> in_valid;
	sc_out <bool> out_valid;

	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",32448};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",64896};

	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> after_padding{"after_padding",154587};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> weight{"weight",663552};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> bias{"bias",384};
	vector<double> weight;
	vector<double> bias;

	
	void run(){
		if ( rst.read() == 1 ){
			//TODO update weights, bias
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Conv1 load weight and bias                                  *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			std::ifstream weight_file("data/conv3_weight.txt");
			std::ifstream bias_file("data/conv3_bias.txt");

			double element;
			int cnt = 0;
			//std::vector <double> numbers;
			while (weight_file >> element) {
				//weight[cnt].write((sc_fixed_fast<46,17>) (element));
				weight.push_back(element);
				cnt ++;
			}

			cnt = 0;
			while (bias_file >> element) {
				//bias[cnt].write((sc_fixed_fast<46,17>) (element));
				bias.push_back(element);
				cnt ++;
			}
			/*
			for(int i =0;i<64;i++){
				cout<<"weight_"<<i<<": "<<weight[i]<<endl;
			}

			for(int i =0;i<64;i++){
				cout<<"bias_"<<i<<": "<<bias[i]<<endl;
			}
			*/
			weight_file.close();
			bias_file.close();

			for(int i=0;i<out_ch*out_height*out_width;i++){
				out_feature[i].write(0);
			}
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Finish Load Conv2 Parameters                                *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			out_valid.write(0);
			return;
		}
		//else{
		if(in_valid.read()==1){


			//TODO sc_out
			int out_feature_idx = 0;
			int in_feature_y = 0;
			int in_feature_x = 0;

			int in_feature_idx = 0;
			int weight_idx = 0;
			//sc_fixed_fast<46,17> partial_sum;
			double partial_sum;

			for(int o_c=0;o_c<out_ch;o_c++){
				for(int o_y=0;o_y<out_height;o_y++){
					for(int o_x=0;o_x<out_width;o_x++){
						partial_sum = 0;
						for(int i_c=0;i_c<in_ch;i_c++){
							for(int k_y=int(kernel_size/2)*(-1);k_y<int(kernel_size/2)+1;k_y++){
								for(int k_x=int(kernel_size/2)*(-1);k_x<int(kernel_size/2)+1;k_x++){

									in_feature_y = stride*o_y+k_y+int(kernel_size/2)-1;
									in_feature_x = stride*o_x+k_x+int(kernel_size/2)-1;
									
									if(!((in_feature_y<0)||(in_feature_x<0)||(in_feature_y>=in_height)||(in_feature_x>=in_width))){
										in_feature_idx = (i_c*in_height*in_width)+(in_feature_y*in_width)+(in_feature_x);
										weight_idx = (o_c*in_ch*kernel_size*kernel_size)+(i_c*kernel_size*kernel_size)+((k_y+int(kernel_size/2))*(kernel_size))+(k_x+int(kernel_size/2));
										//partial_sum+= (in_feature[i_c][in_feature_y][in_feature_x]*weight[o_c][i_c][5+k_y][5+k_x]);
										partial_sum+= (in_feature[in_feature_idx]*weight[weight_idx]);
									}
								}
							}
						}
						out_feature_idx = (o_c * out_height * out_width)  + (o_y * out_width) + o_x;
						if((bias[o_c] + partial_sum)<0){
							out_feature[out_feature_idx] = 0;	
						}
						else{
							partial_sum+=bias[o_c];
							out_feature[out_feature_idx] = (sc_fixed_fast<46,17>)partial_sum;//bias[o_c] + partial_sum;
						}
						/*
						if((o_c==0)&&(o_y==0)&&(o_x==0)){
							cout<<"conv2_relu_out_feature["<<o_c<<",0,0]: "<< out_feature[out_feature_idx] <<endl;
						}
						*/
					}
				}
			}
			out_valid.write(1);
			//weight.clear();
			//bias.clear();
		}
		else{
			out_valid.write(0);
		}
	}
	
	SC_CTOR(conv2d_2)
	{
		SC_METHOD(run);
		sensitive <<clock.pos();
	}
};



//----------------------------------------------------------------------
//	Input feature shape: 	(384,13,13)
//	Output feature shape:	(256,13,13)

//	Conv2d(384, 256, kernel_size=3, padding=1)
//----------------------------------------------------------------------



SC_MODULE(conv2d_3)
{
	const int in_ch = 384;
	const int in_height = 13;
	const int in_width = 13;

	const int out_ch = 256;
	const int out_height = 13;
	const int out_width = 13;

	const int stride = 1;
	const int kernel_size = 3;
	//! const int padding = 2;

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_in <bool> in_valid;
	sc_out <bool> out_valid;

	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",64896};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",43264};

	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> after_padding{"after_padding",154587};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> weight{"weight",884736};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> bias{"bias",256};
	vector<double> weight;
	vector<double> bias;

	
	void run(){
		if ( rst.read() == 1 ){
			//TODO update weights, bias
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Conv3 load weight and bias                                  *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			std::ifstream weight_file("data/conv4_weight.txt");
			std::ifstream bias_file("data/conv4_bias.txt");

			double element;
			int cnt = 0;
			//std::vector <double> numbers;
			while (weight_file >> element) {
				//weight[cnt].write((sc_fixed_fast<46,17>) (element));
				weight.push_back(element);
				cnt ++;
			}

			cnt = 0;
			while (bias_file >> element) {
				//bias[cnt].write((sc_fixed_fast<46,17>) (element));
				bias.push_back(element);
				cnt ++;
			}

			weight_file.close();
			bias_file.close();

			for(int i=0;i<out_ch*out_height*out_width;i++){
				out_feature[i].write(0);
			}
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Finish Load Conv3 Parameters                                *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			out_valid.write(0);

			return;
		}
		//else{
			//TODO sc_out
		if(in_valid.read()){
			int out_feature_idx = 0;
			int in_feature_y = 0;
			int in_feature_x = 0;

			int in_feature_idx = 0;
			int weight_idx = 0;
			//sc_fixed_fast<46,17> partial_sum;
			double partial_sum;

			for(int o_c=0;o_c<out_ch;o_c++){
				for(int o_y=0;o_y<out_height;o_y++){
					for(int o_x=0;o_x<out_width;o_x++){
						partial_sum = 0;
						for(int i_c=0;i_c<in_ch;i_c++){
							for(int k_y=int(kernel_size/2)*(-1);k_y<int(kernel_size/2)+1;k_y++){
								for(int k_x=int(kernel_size/2)*(-1);k_x<int(kernel_size/2)+1;k_x++){

									in_feature_y = stride*o_y+k_y+int(kernel_size/2)-1;
									in_feature_x = stride*o_x+k_x+int(kernel_size/2)-1;
									
									if(!((in_feature_y<0)||(in_feature_x<0)||(in_feature_y>=in_height)||(in_feature_x>=in_width))){
										in_feature_idx = (i_c*in_height*in_width)+(in_feature_y*in_width)+(in_feature_x);
										weight_idx = (o_c*in_ch*kernel_size*kernel_size)+(i_c*kernel_size*kernel_size)+((k_y+int(kernel_size/2))*(kernel_size))+(k_x+int(kernel_size/2));
										//partial_sum+= (in_feature[i_c][in_feature_y][in_feature_x]*weight[o_c][i_c][5+k_y][5+k_x]);
										partial_sum+= (in_feature[in_feature_idx]*weight[weight_idx]);
									}
								}
							}
						}
						out_feature_idx = (o_c * out_height * out_width)  + (o_y * out_width) + o_x;
						if((bias[o_c] + partial_sum)<0){
							out_feature[out_feature_idx] = 0;	
						}
						else{
							partial_sum+=bias[o_c];
							out_feature[out_feature_idx] = (sc_fixed_fast<46,17>)partial_sum;//bias[o_c] + partial_sum;
						}
						/*
						if((o_c==0)&&(o_y==0)&&(o_x==0)){
							cout<<"conv3_relu_out_feature["<<o_c<<",0,0]: "<< out_feature[out_feature_idx] <<endl;
						}
						*/
					}
				}
			}
			out_valid.write(1);
			//weight.clear();
			//bias.clear();
		}
		else{
			out_valid.write(0);
		}
	}



	
	SC_CTOR(conv2d_3)
	{
		SC_METHOD(run);
		sensitive <<clock.pos();
	}
};




//----------------------------------------------------------------------
//	Input feature shape: 	(256,13,13)
//	Output feature shape:	(256,13,13)

//	Conv2d(256, 256, kernel_size=3, padding=1)
//----------------------------------------------------------------------



SC_MODULE(conv2d_4)
{
	const int in_ch = 256;
	const int in_height = 13;
	const int in_width = 13;


	const int out_ch = 256;
	const int out_height = 13;
	const int out_width = 13;

	const int stride = 1;
	const int kernel_size = 3;
	//! const int padding = 2;

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_in <bool> in_valid;
	sc_out <bool> out_valid;

	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",43264};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",43264};

	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> after_padding{"after_padding",154587};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> weight{"weight",589824};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> bias{"bias",256};
	vector<double> weight;
	vector<double> bias;

	
	void run(){
		if ( rst.read() == 1 ){
			//TODO update weights, bias
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Conv4 load weight and bias                                  *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			std::ifstream weight_file("data/conv5_weight.txt");
			std::ifstream bias_file("data/conv5_bias.txt");

			double element;
			int cnt = 0;
			//std::vector <double> numbers;
			while (weight_file >> element) {
				//weight[cnt].write((sc_fixed_fast<46,17>) (element));
				weight.push_back(element);
				cnt ++;
			}

			cnt = 0;
			while (bias_file >> element) {
				//bias[cnt].write((sc_fixed_fast<46,17>) (element));
				bias.push_back(element);
				cnt ++;
			}
			weight_file.close();
			bias_file.close();

			for(int i=0;i<out_ch*out_height*out_width;i++){
				out_feature[i].write(0);
			}
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Finish Load Conv4 Parameters                                *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			out_valid.write(0);
			return;
		}
		//else{
			//TODO sc_out
		if(in_valid.read()){
			int out_feature_idx = 0;
			int in_feature_y = 0;
			int in_feature_x = 0;

			int in_feature_idx = 0;
			int weight_idx = 0;
			//sc_fixed_fast<46,17> partial_sum;
			double partial_sum;

			for(int o_c=0;o_c<out_ch;o_c++){
				for(int o_y=0;o_y<out_height;o_y++){
					for(int o_x=0;o_x<out_width;o_x++){
						partial_sum = 0;
						for(int i_c=0;i_c<in_ch;i_c++){
							for(int k_y=int(kernel_size/2)*(-1);k_y<int(kernel_size/2)+1;k_y++){
								for(int k_x=int(kernel_size/2)*(-1);k_x<int(kernel_size/2)+1;k_x++){

									in_feature_y = stride*o_y+k_y+int(kernel_size/2)-1;
									in_feature_x = stride*o_x+k_x+int(kernel_size/2)-1;
									
									if(!((in_feature_y<0)||(in_feature_x<0)||(in_feature_y>=in_height)||(in_feature_x>=in_width))){
										in_feature_idx = (i_c*in_height*in_width)+(in_feature_y*in_width)+(in_feature_x);
										weight_idx = (o_c*in_ch*kernel_size*kernel_size)+(i_c*kernel_size*kernel_size)+((k_y+int(kernel_size/2))*(kernel_size))+(k_x+int(kernel_size/2));
										//partial_sum+= (in_feature[i_c][in_feature_y][in_feature_x]*weight[o_c][i_c][5+k_y][5+k_x]);
										partial_sum+= (in_feature[in_feature_idx]*weight[weight_idx]);
									}
								}
							}
						}
						out_feature_idx = (o_c * out_height * out_width)  + (o_y * out_width) + o_x;
						if((bias[o_c] + partial_sum)<0){
							out_feature[out_feature_idx] = 0;	
						}
						else{
							partial_sum+=bias[o_c];
							out_feature[out_feature_idx] = (sc_fixed_fast<46,17>)partial_sum;//[o_c] + partial_sum;
						}
						/*
						if((o_c==0)&&(o_y==0)&&(o_x==0)){
							cout<<"conv4_relu_out_feature["<<o_c<<",0,0]: "<< out_feature[out_feature_idx] <<endl;
						}
						*/
					}
				}
			}
			out_valid.write(1);
			//weight.clear();
			//bias.clear();
		}
		else{
			out_valid.write(0);
		}
	}
	
	SC_CTOR(conv2d_4)
	{
		SC_METHOD(run);
		sensitive <<clock.pos();
	}
};




//----------------------------------------------------------------------
//	Input feature shape: 	(256,13,13)
//	Output feature shape:	(256,6,6)

//	MaxPool2d(kernel_size=3, stride=2)
//----------------------------------------------------------------------


SC_MODULE(MAX_POOLING_2)
{
	sc_in_clk clock;
	sc_in <bool> in_valid;
	sc_out <bool> out_valid;
	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",43264};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",9216};
	
	void run(){
		if(in_valid.read()==1){
			const int OUT_CHANNEL =256;
			const int OUT_SIZE = 6;

			const int IN_CHANNEL = 256;
			const int IN_SIZE = 13;
			const int STRIDE = 2;
			int in_feature_x = 0;
			int in_feature_y = 0;
			
			sc_fixed_fast<46,17> temp_large;
			for(int o_c=0;o_c<OUT_CHANNEL;o_c++){
				for(int o_y=0;o_y<OUT_SIZE;o_y++){
					for(int o_x=0;o_x<OUT_SIZE;o_x++){
						temp_large = 0;
						for(int k_y=-1;k_y<=1;k_y++){
							for(int k_x=-1;k_x<=1;k_x++){
								in_feature_y = o_y * STRIDE + 1 + k_y;
								in_feature_x = o_x * STRIDE + 1 + k_x;
								if(in_feature[(o_c*IN_SIZE*IN_SIZE)+(in_feature_y*IN_SIZE)+in_feature_x]>temp_large){
									temp_large = in_feature[(o_c*IN_SIZE*IN_SIZE)+(in_feature_y*IN_SIZE)+in_feature_x];
								}
							}
						}
						out_feature[(o_c*OUT_SIZE*OUT_SIZE)+(o_y*OUT_SIZE)+o_x] = temp_large;
						/*
						if((o_c==0)&&(o_y==0)&&(o_x==0)){
							cout<<"maxpooling_2_out["<<o_c<<",0,0]: "<< out_feature[(o_c*OUT_SIZE*OUT_SIZE)+(o_y*OUT_SIZE)+o_x] <<endl;
						}
						*/
					}
				}
			}
			out_valid.write(1);
		}
		else{
			out_valid.write(0);
		}
	}
	SC_CTOR(MAX_POOLING_2)
	{
		SC_METHOD(run);
		sensitive <<clock.pos();
	}
};





//----------------------------------------------------------------------
//	Input feature shape: 	(9216)
//	Output feature shape:	(4096)

//	Linear(256 * 6 * 6, 4096)
//----------------------------------------------------------------------



SC_MODULE(LINEAR0_RELU)
{
	const int in_ch = 9216;
	const int out_ch = 4096;

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_in <bool> in_valid;
	sc_out <bool> out_valid;

	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",9216};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",4096};

	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> weight{"weight",37748736};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> bias{"bias",4096};
	vector<double> weight;
	vector<double> bias;

	void run(){
		if ( rst.read() == 1 ){
			//TODO update weights, bias
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Linear0 load weight and bias                                *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			std::ifstream weight_file("data/fc6_weight.txt");
			std::ifstream bias_file("data/fc6_bias.txt");

			double element;
			int cnt = 0;
			//std::vector <double> numbers;
			while (weight_file >> element) {
				//weight[cnt].write((sc_fixed_fast<46,17>) (element));
				weight.push_back(element);
				cnt ++;
			}

			cnt = 0;
			while (bias_file >> element) {
				//bias[cnt].write((sc_fixed_fast<46,17>) (element));
				bias.push_back(element);
				cnt ++;
			}
			weight_file.close();
			bias_file.close();

			for(int i=0;i<out_ch;i++){
				out_feature[i].write(0);
			}
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Finish Load Linear0 Parameters                              *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			out_valid.write(0);
			return;
		}
		//else{
		if(in_valid.read()==1){
			int out_feature_idx = 0;
			int in_feature_y = 0;
			int in_feature_x = 0;

			int in_feature_idx = 0;
			int weight_idx = 0;
			//sc_fixed_fast<46,17> partial_sum;
			double partial_sum;
			for(int o_c=0;o_c<out_ch;o_c++){
				partial_sum = 0;
				for(int i_c=0;i_c<in_ch;i_c++){
					partial_sum+=(in_feature[i_c]*weight[(o_c*in_ch) + i_c]);
				}
				if((partial_sum + bias[o_c])<0){
					out_feature[o_c] = 0;
				}
				else {
					partial_sum+=bias[o_c];
					out_feature[o_c] = (sc_fixed_fast<46,17>)partial_sum;//partial_sum + bias[o_c];
				}
				/*
				if(o_c==0){
					cout<<"linear0_relu["<<o_c<<"]: "<< out_feature[o_c] <<endl;
				}
				*/
			}
			out_valid.write(1);
			//weight.clear();
			//bias.clear();
		}
		else{
			for(int i=0;i<out_ch;i++){
				out_feature[i].write(0);
			}
			out_valid.write(0);
		}
	}
	
	SC_CTOR(LINEAR0_RELU)
	{
		SC_METHOD(run);
		sensitive <<clock.pos();
	}
};




//----------------------------------------------------------------------
//	Input feature shape: 	(4096)
//	Output feature shape:	(4096)

//	Linear(4096, 4096)
//----------------------------------------------------------------------



SC_MODULE(LINEAR1_RELU)
{
	const int in_ch = 4096;
	const int out_ch = 4096;

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_in <bool> in_valid;
	sc_out <bool> out_valid;

	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",4096};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",4096};

	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> weight{"weight",16777216};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> bias{"bias",4096};
	vector<double> weight;
	vector<double> bias;


	void run(){
		if ( rst.read() == 1 ){
			//TODO update weights, bias
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Linear1 load weight and bias                                *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			std::ifstream weight_file("data/fc7_weight.txt");
			std::ifstream bias_file("data/fc7_bias.txt");

			double element;
			int cnt = 0;
			//std::vector <double> numbers;
			while (weight_file >> element) {
				//weight[cnt].write((sc_fixed_fast<46,17>) (element));
				weight.push_back(element);
				cnt ++;
			}

			cnt = 0;
			while (bias_file >> element) {
				//bias[cnt].write((sc_fixed_fast<46,17>) (element));
				bias.push_back(element);
				cnt ++;
			}
			weight_file.close();
			bias_file.close();

			for(int i=0;i<out_ch;i++){
				out_feature[i].write(0);
			}
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Finish Load Linear1 Parameters                              *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			out_valid.write(0);
			return;
		}
		//else{
		if(in_valid.read()==1){
			int out_feature_idx = 0;
			int in_feature_y = 0;
			int in_feature_x = 0;

			int in_feature_idx = 0;
			int weight_idx = 0;
			sc_fixed_fast<46,17> partial_sum;

			for(int o_c=0;o_c<out_ch;o_c++){
				partial_sum = 0;
				for(int i_c=0;i_c<in_ch;i_c++){
					partial_sum+=(in_feature[i_c]*weight[(o_c*in_ch)+i_c]);
				}
				if((partial_sum + bias[o_c])<0){
					out_feature[o_c] = 0;
				}
				else {
					partial_sum+=bias[o_c];
					out_feature[o_c] = (sc_fixed_fast<46,17>)partial_sum;//partial_sum + bias[o_c];
				}
				/*
				if(o_c==0){
					cout<<"linear1_relu["<<o_c<<"]: "<< out_feature[o_c] <<endl;
				}
				*/
			}
			out_valid.write(1);
			//weight.clear();
			//bias.clear();
		}
		else{
			for(int i=0;i<out_ch;i++){
				out_feature[i].write(0);
			}
			out_valid.write(0);
		}
	}
	
	SC_CTOR(LINEAR1_RELU)
	{
		SC_METHOD(run);
		sensitive <<clock.pos();
	}
};



//----------------------------------------------------------------------
//	Input feature shape: 	(4096)
//	Output feature shape:	(1000)

//	Linear(4096, 1000)
//----------------------------------------------------------------------



SC_MODULE(LINEAR2)
{
	const int in_ch = 4096;
	const int out_ch = 1000;

	sc_in < bool > rst;
	sc_in_clk clock;
	sc_in <bool> in_valid;
	sc_out <bool> out_valid;

	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",4096};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",1000};

	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> weight{"weight",4096000};
	//sc_vector<sc_signal<sc_fixed_fast<46,17>>> bias{"bias",1000};
	vector<double> weight;
	vector<double> bias;

	void run(){
		if ( rst.read() == 1 ){
			//TODO update weights, bias
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Linear2 load weight and bias                                *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			std::ifstream weight_file("data/fc8_weight.txt");
			std::ifstream bias_file("data/fc8_bias.txt");

			double element;
			int cnt = 0;
			//std::vector <double> numbers;
			while (weight_file >> element) {
				//weight[cnt].write((sc_fixed_fast<46,17>) (element));
				weight.push_back(element);
				cnt ++;
			}

			cnt = 0;
			while (bias_file >> element) {
				//bias[cnt].write((sc_fixed_fast<46,17>) (element));
				bias.push_back(element);
				cnt ++;
			}
			weight_file.close();
			bias_file.close();

			for(int i=0;i<out_ch;i++){
				out_feature[i].write(0);
			}
			cout<<"**********************************************************************************************"<<endl;
			cout<<"*                                Finish Load Linear2 Parameters                              *"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			out_valid.write(0);

			return;
		}
		//else{
		if(in_valid==1){
			int out_feature_idx = 0;
			int in_feature_y = 0;
			int in_feature_x = 0;

			int in_feature_idx = 0;
			int weight_idx = 0;
			//sc_fixed_fast<46,17> partial_sum;
			double partial_sum;
			for(int o_c=0;o_c<out_ch;o_c++){
				partial_sum = 0;
				for(int i_c=0;i_c<in_ch;i_c++){
					partial_sum+=(in_feature[i_c]*weight[(o_c*in_ch)+i_c]);
				}
				partial_sum+=bias[o_c];
				out_feature[o_c] = (sc_fixed_fast<46,17>)partial_sum;//partial_sum + bias[o_c];
				//out_feature[o_c] = partial_sum + bias[o_c];
				/*
				if(o_c==0){
					cout<<"linear2["<<o_c<<"]: "<< out_feature[o_c] <<endl;
				}
				*/
			}
			out_valid.write(1);
			//weight.clear();
			//bias.clear();
		}
		else{
			for(int i=0;i<out_ch;i++){
				out_feature[i].write(0);
			}
			out_valid.write(0);
		}
	}
	
	SC_CTOR(LINEAR2)
	{
		SC_METHOD(run);
		sensitive <<clock.pos();
	}
};




//----------------------------------------------------------------------
//	Softmax
//----------------------------------------------------------------------
/*
SC_MODULE(SOFTMAX)
{
	sc_in < bool > rst;
	sc_in_clk clock;
	sc_vector<sc_in<sc_fixed_fast<46,17>>> in_feature{"in_feature",1000};
	sc_vector<sc_out<sc_fixed_fast<46,17>>> out_feature{"out_feature",1000};
	vector <string> instance_list;
	void run(){

		if ( rst.read() == 1 ){
			//TODO update weights, bias

			std::ifstream instance_name_file("data/fc6_weight.txt");
			
			string element;


			int cnt = 0;
			//std::vector <double> numbers;
			while (instance_name_file >> element) {
				instance_list.push_back(element);
				cnt++;
			}
			return;
		}

		const int OUT_CHANNEL =1000;
	
		sc_fixed_fast<46,17> temp_sum;
		temp_sum = 0;
		double temp_double = 0;

		std::vector <double> temp_vec(1000);
		std::vector <int> temp_idx(1000);

		for(int o_c=0;o_c<OUT_CHANNEL;o_c++){
			temp_double = exp((double)(in_feature[o_c]));
			temp_vec[o_c] = temp_double;
			temp_idx[o_c] = o_c;
			out_feature[o_c] = (sc_fixed_fast<46,17>)(temp_double);
			temp_sum+=out_feature[o_c];
		}

		for(int o_c=0;o_c<OUT_CHANNEL;o_c++){
			out_feature[o_c]/=temp_sum;

		}
		std::sort(temp_idx.begin(), temp_idx.end(), [&temp_vec](int a, int b){return temp_vec[a] > temp_vec[b];});
		cout<<"====================="<<endl;
		cout<<"-       Top-5       -"<<endl;
		cout<<"====================="<<endl;
		cout<<"idx\t|\tval\t|\tpossibility\t|\tclass name\t"<<endl;
		cout<<"---------------------"<<endl;
		cout<<temp_idx[0]<<"\t|\t"<<temp_vec[temp_idx[0]]<<"\t|\t"<<out_feature[temp_idx[0]]<<"\t|\t"<<instance_list[temp_idx[0]]<<endl;
		cout<<temp_idx[1]<<"\t|\t"<<temp_vec[temp_idx[1]]<<"\t|\t"<<out_feature[temp_idx[1]]<<"\t|\t"<<instance_list[temp_idx[1]]<<endl;
		cout<<temp_idx[2]<<"\t|\t"<<temp_vec[temp_idx[2]]<<"\t|\t"<<out_feature[temp_idx[2]]<<"\t|\t"<<instance_list[temp_idx[2]]<<endl;
		cout<<temp_idx[3]<<"\t|\t"<<temp_vec[temp_idx[3]]<<"\t|\t"<<out_feature[temp_idx[3]]<<"\t|\t"<<instance_list[temp_idx[3]]<<endl;
		cout<<temp_idx[4]<<"\t|\t"<<temp_vec[temp_idx[4]]<<"\t|\t"<<out_feature[temp_idx[4]]<<"\t|\t"<<instance_list[temp_idx[4]]<<endl;
		



	}
	SC_CTOR(SOFTMAX)
	{
		SC_METHOD(run);
		sensitive <<clock.pos();
	}
};
*/
