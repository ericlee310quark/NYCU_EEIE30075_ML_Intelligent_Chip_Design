#define SC_INCLUDE_FX
#include "Pattern.h"
#include <time.h>

#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>



void Pattern::run() {

	if ( rst.read() == 1 ){
		in_valid->write(0);
		for(int i = 0;i<img.size();i++){
			img[i]->write(0);
		}


		return;

	}

	/*
	A = rand() % 16;
	B = (float)(rand()) / (float)(rand());;
	C = rand() % 256; 
	*/
	else{
		if(cycle==1&&(rst.read() != 1)){

			//sc_vector<sc_out<sc_fixed_fast<46,17>>> img{"img",IMG_CHANNEL*IMG_WEIGHT*IMG_HEIGHT}
			std::ifstream inputFile("data/dog.txt");
			double img_element;
			int cnt = 0;
			std::vector <double> numbers;
			while (inputFile >> img_element) {
				//numbers.push_back(par);
				img[cnt]->write( (sc_fixed_fast<46,17>) (img_element));
				//std::cout<< img_element<<std::endl;
				
				cnt ++;

			}
			std::cout<<"dog image size"<<cnt<<std::endl;
			in_valid->write(1);
		}
		else if(cycle==2){
			//sc_vector<sc_out<sc_fixed_fast<46,17>>> img{"img",IMG_CHANNEL*IMG_WEIGHT*IMG_HEIGHT}
			std::ifstream inputFile("data/cat.txt");
			double img_element;
			int cnt = 0;
			std::vector <double> numbers;
			while (inputFile >> img_element) {
				//numbers.push_back(par);
				//std::cout<< img_element<<std::endl;
				img[cnt]->write((sc_fixed_fast<46,17>) (img_element));
				//std::cout<< img_element<<std::endl;
				cnt ++;
				
			}
			std::cout<<"cat image size"<<cnt<<std::endl;
			in_valid->write(1);

		}


		else{
			in_valid->write(0);
			for(int i = 0;i<img.size();i++){
				img[i]->write(0);
			}
		}
	}


	/*
	for(int ch=0;ch<IMG_CHANNEL;ch++){
		std::cout<<"-------------------------channel: "<<ch<<"---------------"<<std::endl;
		for(int y=0;y<1;y++){
			for(int x=0;x<1;x++){
				std::cout<<img[(ch*IMG_HEIGHT)+(y*IMG_WEIGHT)+x];
			}
			std::cout<<std::endl;
		}
	}
	*/
	temp_uint = temp_uint.to_uint() + 1;

	cycle++;
	if ( cycle == CYCLE )
		sc_stop();
}


