#include "Monitor.h"
#include <iomanip>
#include <iostream>
#include <iomanip>

#include <fstream>
#include <vector>
#include <string>
#include <cmath>
#include <sstream>
#include <algorithm>


bool compare(const std::pair<double, int>& a, const std::pair<double, int>& b) {
    return a.first > b.first;
}

void Monitor:: run() {
	
	if ( rst.read() == 1 ){
		//cout<<setprecision(7);
		std::ifstream file("../data/imagenet_classes.txt");
		std::string class_name;
		while (std::getline(file, class_name)) { // Read file line by line
			class_dict.push_back(class_name); // Store each line in the vector
		}
		file.close(); // Close the file after reading
		/*
		for (int i=0;i<class_dict.size();i++) {
        	std::cout << class_dict[i] << std::endl;
    	}
		*/


		cout<<"=============================================================================================="<<endl;
		cout<<"-                                     START SIMULATATION                                     -"<<endl;
		cout<<"=============================================================================================="<<endl;
		cout<<"----------------------------------------------------------------------------------------------"<<endl;
		cout<<"-                                   Cycle count:\t"<<cycle<<"                                -"<<endl;
		cout<<"----------------------------------------------------------------------------------------------"<<endl;
		cout<<"=			              RST signal ON                                 ="<<endl;
		cout<<"----------------------------------------------------------------------------------------------"<<endl;
		
		cout<<fixed<<setprecision(8)<<"in_valid_pat: \t\t"		<< in_valid_pat		 << 
				"\t||\timg_out[0]: \t\t"	<< double(img_out_first.read()) 		<< "\t\t\t||\timg_out[150527]: \t\t"	<<double(img_out_last.read())<<endl;
		
		cout<<fixed<<setprecision(8)<<"out_valid_conv0: \t"	<< out_valid_conv0	 << 
				"\t||\tconv0_out[0]: \t\t"	<< double(conv0_out_first.read()) 	<< "\t\t\t||\tconv0_out[193599]: \t\t"	<<double(conv0_out_last.read())<<endl;
		
		cout<<fixed<<setprecision(8)<<"out_valid_max0: \t"	<< out_valid_max0	 << 
				"\t||\tmax0_out[0]: \t\t"	<< double(max0_out_first.read()) 		<< "\t\t\t||\tmax0_out[46655]: \t\t"	<<double(max0_out_last.read())<<endl;
		
		cout<<fixed<<setprecision(8)<<"out_valid_conv1: \t"	<< out_valid_conv1	 << 
				"\t||\tconv1_out[0]: \t\t"	<< double(conv1_out_first.read()) 	<< "\t\t\t||\tconv1_out[139967]: \t\t"	<<double(conv1_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_max1: \t"	<< out_valid_max1	 << 
				"\t||\tmax1_out[0]: \t\t"	<< double(max1_out_first.read()) 		<< "\t\t\t||\tmax1_out[32447]: \t\t"	<<double(max1_out_last.read())<<endl;
		
		cout<<fixed<<setprecision(8)<<"out_valid_conv2: \t"	<< out_valid_conv2	 << 
				"\t||\tconv2_out[0]: \t\t"	<< double(conv2_out_first.read()) 	<< "\t\t\t||\tconv2_out[64895]: \t\t"	<<double(conv2_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_conv3: \t"	<< out_valid_conv3	 << 
				"\t||\tconv3_out[0]: \t\t"	<< double(conv3_out_first.read()) 	<< "\t\t\t||\tconv3_out[43263]: \t\t"	<<double(conv3_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_conv4: \t"	<< out_valid_conv4	 << 
				"\t||\tconv4_out[0]: \t\t"	<< double(conv4_out_first.read()) 	<< "\t\t\t||\tconv4_out[43263]: \t\t"	<<double(conv4_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_max2: \t"	<< out_valid_max2	 << 
				"\t||\tmax2_out[0]: \t\t"	<< double(max2_out_first.read()) 		<< "\t\t\t||\tmax2_out[9215]: \t\t"		<<double(max2_out_last.read())<<endl;
		
		cout<<fixed<<setprecision(8)<<"out_valid_linear0: \t"	<< out_valid_linear0 << 
				"\t||\tlinear0_out[0]: \t"<< double(linear0_out_first.read()) 	<< "\t\t\t||\tlinear0_out[4095]: \t\t"	<<double(linear0_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_linear1: \t"	<< out_valid_linear1 << 
				"\t||\tlinear1_out[0]: \t"<< double(linear1_out_first.read()) 	<< "\t\t\t||\tlinear1_out[4095]: \t\t"	<<double(linear1_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_linear2: \t"	<< out_valid_linear2 << 
				"\t||\tlinear2_out[0]: \t"<< double(linear2_out[0].read()) 	<< "\t\t\t||\t1000[999]: \t\t\t"			<<double(linear2_out[999].read())<<endl;
		
	}

	else if ( cycle != 0 ){
/*
		cout<<"-----------------------------------------------"<<endl;
		cout<<"-               START SIMULATATION            -"<<endl;
		cout<<"-----------------------------------------------"<<endl;
		cout<<"-          Cycle count:\t"<<cycle<<"                -"<<endl;
		cout<<"-----------------------------------------------"<<endl;
		cout<<"=			     RST signal off              ="<<endl;
		cout<<"-----------------------------------------------"<<endl;
		cout<<"in_valid_pat: "		<< in_valid_pat		 << 
				"\t||\timg_out[0]: "	<< img_out[0] 		<< "\t||\timg_out[150527]: "	<<img_out[150527]<<endl;
		cout<<"out_valid_conv0: "	<< out_valid_conv0	 << 
				"\t||\tconv0_out[0]: "	<< conv0_out[0] 	<< "\t||\tconv0_out[193599]: "	<<conv0_out[193599]<<endl;
		cout<<"out_valid_max0: "	<< out_valid_max0	 << 
				"\t||\tmax0_out[0]: "	<< max0_out[0] 		<< "\t||\tmax0_out[46655]: "	<<max0_out[46655]<<endl;
		cout<<"out_valid_conv1: "	<< out_valid_conv1	 << 
				"\t||\tconv1_out[0]: "	<< conv1_out[0] 	<< "\t||\tconv1_out[139967]: "	<<conv1_out[139967]<<endl;
		cout<<"out_valid_max1: "	<< out_valid_max1	 << 
				"\t||\tmax1_out[0]: "	<< max1_out[0] 		<< "\t||\tmax1_out[32447]: "	<<max1_out[32447]<<endl;
		cout<<"out_valid_conv2: "	<< out_valid_conv2	 << 
				"\t||\tconv2_out[0]: "	<< conv2_out[0] 	<< "\t||\tconv2_out[64895]: "	<<conv2_out[64895]<<endl;
		cout<<"out_valid_conv3: "	<< out_valid_conv3	 << 
				"\t||\tconv3_out[0]: "	<< conv3_out[0] 	<< "\t||\tconv3_out[43263]: "	<<conv3_out[43263]<<endl;
		cout<<"out_valid_conv4: "	<< out_valid_conv4	 << 
				"\t||\tconv4_out[0]: "	<< conv4_out[0] 	<< "\t||\tconv4_out[43263]: "	<<conv4_out[43263]<<endl;
		cout<<"out_valid_max2: "	<< out_valid_max2	 << 
				"\t||\tmax2_out[0]: "	<< max2_out[0] 		<< "\t||\tmax2_out[9215]: "		<<max2_out[9215]<<endl;
		cout<<"out_valid_linear0: "	<< out_valid_linear0 << 
				"\t||\tlinear0_out[0]: "<< linear0_out[0] 	<< "\t||\tlinear0_out[4095]: "	<<linear0_out[4095]<<endl;
		cout<<"out_valid_linear1: "	<< out_valid_linear1 << 
				"\t||\tlinear1_out[0]: "<< linear1_out[0] 	<< "\t||\tlinear1_out[4095]: "	<<linear1_out[4095]<<endl;
		cout<<"out_valid_linear2: "	<< out_valid_linear2 << 
				"\t||\tlinear2_out[0]: "<< linear2_out[0] 	<< "\t||\t1000[999]: "			<<linear2_out[999]<<endl;
		*/

		cout<<"=============================================================================================="<<endl;
		cout<<"----------------------------------------------------------------------------------------------"<<endl;
		cout<<"-                                   Cycle count:\t"<<cycle<<"                                -"<<endl;
		cout<<"----------------------------------------------------------------------------------------------"<<endl;
		cout<<"=			              RST signal off                                ="<<endl;
		cout<<"----------------------------------------------------------------------------------------------"<<endl;
		/*
		cout<<"in_valid_pat: \t"		<< in_valid_pat		 << 
				"\t\t||\timg_out[0]: \t\t"	<< img_out_first 		<< "\t\t\t||\timg_out[150527]: \t\t"	<<img_out_last<<endl;
		
		cout<<"out_valid_conv0: \t"	<< out_valid_conv0	 << 
				"\t||\tconv0_out[0]: \t\t"	<< conv0_out_first 	<< "\t\t\t||\tconv0_out[193599]: \t\t"	<<conv0_out_last<<endl;
		
		cout<<"out_valid_max0: \t"	<< out_valid_max0	 << 
				"\t||\tmax0_out[0]: \t\t"	<< max0_out_first 		<< "\t\t\t||\tmax0_out[46655]: \t\t"	<<max0_out_last<<endl;
		
		cout<<"out_valid_conv1: \t"	<< out_valid_conv1	 << 
				"\t||\tconv1_out[0]: \t\t"	<< conv1_out_first 	<< "\t\t\t||\tconv1_out[139967]: \t\t"	<<conv1_out_last<<endl;
		cout<<"out_valid_max1: \t"	<< out_valid_max1	 << 
				"\t||\tmax1_out[0]: \t\t"	<< max1_out_first 		<< "\t\t\t||\tmax1_out[32447]: \t\t"	<<max1_out_last<<endl;
		
		cout<<"out_valid_conv2: \t"	<< out_valid_conv2	 << 
				"\t||\tconv2_out[0]: \t\t"	<< conv2_out_first 	<< "\t\t\t||\tconv2_out[64895]: \t\t"	<<conv2_out_last<<endl;
		cout<<"out_valid_conv3: \t"	<< out_valid_conv3	 << 
				"\t||\tconv3_out[0]: \t\t"	<< conv3_out_first 	<< "\t\t\t||\tconv3_out[43263]: \t\t"	<<conv3_out_last<<endl;
		cout<<"out_valid_conv4: \t"	<< out_valid_conv4	 << 
				"\t||\tconv4_out[0]: \t\t"	<< conv4_out_first 	<< "\t\t\t||\tconv4_out[43263]: \t\t"	<<conv4_out_last<<endl;
		cout<<"out_valid_max2: \t"	<< out_valid_max2	 << 
				"\t||\tmax2_out[0]: \t\t"	<< max2_out_first 		<< "\t\t\t||\tmax2_out[9215]: \t\t"		<<max2_out_last<<endl;
		
		cout<<"out_valid_linear0: \t"	<< out_valid_linear0 << 
				"\t||\tlinear0_out[0]: \t"<< linear0_out_first 	<< "\t\t\t||\tlinear0_out[4095]: \t\t"	<<linear0_out_last<<endl;
		cout<<"out_valid_linear1: \t"	<< out_valid_linear1 << 
				"\t||\tlinear1_out[0]: \t"<< linear1_out_first 	<< "\t\t\t||\tlinear1_out[4095]: \t\t"	<<linear1_out_last<<endl;
		cout<<"out_valid_linear2: \t"	<< out_valid_linear2 << 
				"\t||\tlinear2_out[0]: \t"<< linear2_out[0] 	<< "\t\t\t||\t1000[999]: \t\t"			<<linear2_out[999]<<endl;
		*/
		cout<<fixed<<setprecision(8)<<"in_valid_pat: \t\t"		<< in_valid_pat		 << 
				"\t||\timg_out[0]: \t\t"	<< double(img_out_first.read()) 		<< "\t\t\t||\timg_out[150527]: \t\t"	<<double(img_out_last.read())<<endl;
		
		cout<<fixed<<setprecision(8)<<"out_valid_conv0: \t"	<< out_valid_conv0	 << 
				"\t||\tconv0_out[0]: \t\t"	<< double(conv0_out_first.read()) 	<< "\t\t\t||\tconv0_out[193599]: \t\t"	<<double(conv0_out_last.read())<<endl;
		
		cout<<fixed<<setprecision(8)<<"out_valid_max0: \t"	<< out_valid_max0	 << 
				"\t||\tmax0_out[0]: \t\t"	<< double(max0_out_first.read()) 		<< "\t\t\t||\tmax0_out[46655]: \t\t"	<<double(max0_out_last.read())<<endl;
		
		cout<<fixed<<setprecision(8)<<"out_valid_conv1: \t"	<< out_valid_conv1	 << 
				"\t||\tconv1_out[0]: \t\t"	<< double(conv1_out_first.read()) 	<< "\t\t\t||\tconv1_out[139967]: \t\t"	<<double(conv1_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_max1: \t"	<< out_valid_max1	 << 
				"\t||\tmax1_out[0]: \t\t"	<< double(max1_out_first.read()) 		<< "\t\t\t||\tmax1_out[32447]: \t\t"	<<double(max1_out_last.read())<<endl;
		
		cout<<fixed<<setprecision(8)<<"out_valid_conv2: \t"	<< out_valid_conv2	 << 
				"\t||\tconv2_out[0]: \t\t"	<< double(conv2_out_first.read()) 	<< "\t\t\t||\tconv2_out[64895]: \t\t"	<<double(conv2_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_conv3: \t"	<< out_valid_conv3	 << 
				"\t||\tconv3_out[0]: \t\t"	<< double(conv3_out_first.read()) 	<< "\t\t\t||\tconv3_out[43263]: \t\t"	<<double(conv3_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_conv4: \t"	<< out_valid_conv4	 << 
				"\t||\tconv4_out[0]: \t\t"	<< double(conv4_out_first.read()) 	<< "\t\t\t||\tconv4_out[43263]: \t\t"	<<double(conv4_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_max2: \t"	<< out_valid_max2	 << 
				"\t||\tmax2_out[0]: \t\t"	<< double(max2_out_first.read()) 		<< "\t\t\t||\tmax2_out[9215]: \t\t"		<<double(max2_out_last.read())<<endl;
		
		cout<<fixed<<setprecision(8)<<"out_valid_linear0: \t"	<< out_valid_linear0 << 
				"\t||\tlinear0_out[0]: \t"<< double(linear0_out_first.read()) 	<< "\t\t\t||\tlinear0_out[4095]: \t\t"	<<double(linear0_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_linear1: \t"	<< out_valid_linear1 << 
				"\t||\tlinear1_out[0]: \t"<< double(linear1_out_first.read()) 	<< "\t\t\t||\tlinear1_out[4095]: \t\t"	<<double(linear1_out_last.read())<<endl;
		cout<<fixed<<setprecision(8)<<"out_valid_linear2: \t"	<< out_valid_linear2 << 
				"\t||\tlinear2_out[0]: \t"<< double(linear2_out[0].read()) 	<< "\t\t\t||\t1000[999]: \t\t\t"			<<double(linear2_out[999].read())<<endl;
		cout<<"=============================================================================================="<<endl;
		if(out_valid_linear2){
			//vector<int> index;
			vector<double> out_alexnet_vec;

			std::vector<std::pair<double, int>> indexed_values; // Vector to store indexed values


			double exp_sum, temp_exp;
			exp_sum = 0;
			for(int i=0;i<1000;i++){
				//index.push_back(i);
				temp_exp = linear2_out[i].read();
				temp_exp = exp(temp_exp);
				exp_sum+=temp_exp;
			}
			/*
			for(int i=0;i<1000;i++){
				temp_exp = (exp(linear2_out[i]))/(exp_sum);
				out_alexnet_vec.push_back(temp_exp);
			}
			*/
			for (int i = 0; i < 1000; i++) {
				temp_exp = (exp(linear2_out[i].read()))/(exp_sum);
        		indexed_values.push_back(std::make_pair(temp_exp, i));
    		}
			std::sort(indexed_values.begin(), indexed_values.end(), compare);

			cout<<"**********************************************************************************************"<<endl;
			cout<<"-			Top-5 Results     		"<<endl;
			cout<<"**********************************************************************************************"<<endl;
			cout<<"Index          Val              Possibility             ClassName        "<<endl;
			
			for (int i = 0; i < 5; i++) {
				std::cout<<fixed<<setprecision(6)<<indexed_values[i].second<<"\t" <<double(linear2_out[indexed_values[i].second].read())<<"\t\t"<<(indexed_values[i].first*100)<<"%\t\t"<<class_dict[indexed_values[i].second]<<endl;
			}
		}

	}
	


	cycle ++;
	
}

