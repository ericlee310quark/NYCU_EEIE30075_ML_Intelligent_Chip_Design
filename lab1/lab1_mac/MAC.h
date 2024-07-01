#define SC_INCLUDE_FX
#include <systemc.h>
#include <iostream>
#include <fstream>
#include <vector>
using namespace std;

SC_MODULE(Adder)
{
	sc_in<sc_fixed<40,17>> in1, in2;
	sc_out<sc_fixed<40,17>> out;
	
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
	sc_in<sc_fixed<40,17>> in1, in2;

	//sc_signal<sc_uint<8>> out[2];
	
	sc_vector<sc_out<sc_fixed<40,17>>> out{"out", 2};

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
	sc_in<sc_fixed<40,17>> in1, in2;
	sc_in<sc_fixed<40,17>> in3;
	sc_out<sc_fixed<40,17>> out;

	Adder ADD_1;
	Multiplier MUL_1;


	// vvvvv put your code here vvvvv
	sc_signal<sc_fixed<40,17>> temp2;

	//sc_signal< sc_uint <8> > temp0[2];
	sc_vector<sc_signal< sc_fixed<40,17>>> temp0{"temp0", 2};
	
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
