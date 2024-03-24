#include "Monitor.h"
#include <iomanip>
#include <iostream>
void Monitor:: run() {
	
	if ( rst.read() == 1 ){
		//cout<<setprecision(7);
		cout<<"=============================================================================================="<<endl;
		cout<<"-                                     START SIMULATATION                                     -"<<endl;
		cout<<"=============================================================================================="<<endl;
		cout<<"----------------------------------------------------------------------------------------------"<<endl;
		cout<<"-                                   Cycle count:\t"<<cycle<<"                                -"<<endl;
		cout<<"----------------------------------------------------------------------------------------------"<<endl;
		cout<<"=			              RST signal ON                                 ="<<endl;
		cout<<"----------------------------------------------------------------------------------------------"<<endl;
		
		cout<<"in_valid_pat: "		<< in_valid_pat		 << 
				"\t||\timg_out[0]: "	<< img_out_first 		<< "\t||\timg_out[150527]: "	<<img_out_last<<endl;
		

		cout<<"out_valid_conv0: "	<< out_valid_conv0	 << 
				"\t||\tconv0_out[0]: "	<< conv0_out_first 	<< "\t||\tconv0_out[193599]: "	<<conv0_out_last<<endl;
		
		cout<<"out_valid_max0: "	<< out_valid_max0	 << 
				"\t||\tmax0_out[0]: "	<< max0_out_first 		<< "\t||\tmax0_out[46655]: "	<<max0_out_last<<endl;
		
		cout<<"out_valid_conv1: "	<< out_valid_conv1	 << 
				"\t||\tconv1_out[0]: "	<< conv1_out_first 	<< "\t||\tconv1_out[139967]: "	<<conv1_out_last<<endl;
		cout<<"out_valid_max1: "	<< out_valid_max1	 << 
				"\t||\tmax1_out[0]: "	<< max1_out_first 		<< "\t||\tmax1_out[32447]: "	<<max1_out_last<<endl;
		
		cout<<"out_valid_conv2: "	<< out_valid_conv2	 << 
				"\t||\tconv2_out[0]: "	<< conv2_out_first 	<< "\t||\tconv2_out[64895]: "	<<conv2_out_last<<endl;
		cout<<"out_valid_conv3: "	<< out_valid_conv3	 << 
				"\t||\tconv3_out[0]: "	<< conv3_out_first 	<< "\t||\tconv3_out[43263]: "	<<conv3_out_last<<endl;
		cout<<"out_valid_conv4: "	<< out_valid_conv4	 << 
				"\t||\tconv4_out[0]: "	<< conv4_out_first 	<< "\t||\tconv4_out[43263]: "	<<conv4_out_last<<endl;
		cout<<"out_valid_max2: "	<< out_valid_max2	 << 
				"\t||\tmax2_out[0]: "	<< max2_out_first 		<< "\t||\tmax2_out[9215]: "		<<max2_out_last<<endl;
		
		cout<<"out_valid_linear0: "	<< out_valid_linear0 << 
				"\t||\tlinear0_out[0]: "<< linear0_out_first 	<< "\t||\tlinear0_out[4095]: "	<<linear0_out_last<<endl;
		cout<<"out_valid_linear1: "	<< out_valid_linear1 << 
				"\t||\tlinear1_out[0]: "<< linear1_out_first 	<< "\t||\tlinear1_out[4095]: "	<<linear1_out_last<<endl;
		cout<<"out_valid_linear2: "	<< out_valid_linear2 << 
				"\t||\tlinear2_out[0]: "<< linear2_out_first 	<< "\t||\t1000[999]: "			<<linear2_out_last<<endl;
		
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
		cout<<"in_valid_pat: "		<< in_valid_pat		 << 
				"\t||\timg_out[0]: "	<< img_out_first 		<< "\t||\timg_out[150527]: "	<<img_out_last<<endl;
		
		cout<<"out_valid_conv0: "	<< out_valid_conv0	 << 
				"\t||\tconv0_out[0]: "	<< conv0_out_first 	<< "\t||\tconv0_out[193599]: "	<<conv0_out_last<<endl;
		
		cout<<"out_valid_max0: "	<< out_valid_max0	 << 
				"\t||\tmax0_out[0]: "	<< max0_out_first 		<< "\t||\tmax0_out[46655]: "	<<max0_out_last<<endl;
		
		cout<<"out_valid_conv1: "	<< out_valid_conv1	 << 
				"\t||\tconv1_out[0]: "	<< conv1_out_first 	<< "\t||\tconv1_out[139967]: "	<<conv1_out_last<<endl;
		cout<<"out_valid_max1: "	<< out_valid_max1	 << 
				"\t||\tmax1_out[0]: "	<< max1_out_first 		<< "\t||\tmax1_out[32447]: "	<<max1_out_last<<endl;
		
		cout<<"out_valid_conv2: "	<< out_valid_conv2	 << 
				"\t||\tconv2_out[0]: "	<< conv2_out_first 	<< "\t||\tconv2_out[64895]: "	<<conv2_out_last<<endl;
		cout<<"out_valid_conv3: "	<< out_valid_conv3	 << 
				"\t||\tconv3_out[0]: "	<< conv3_out_first 	<< "\t||\tconv3_out[43263]: "	<<conv3_out_last<<endl;
		cout<<"out_valid_conv4: "	<< out_valid_conv4	 << 
				"\t||\tconv4_out[0]: "	<< conv4_out_first 	<< "\t||\tconv4_out[43263]: "	<<conv4_out_last<<endl;
		cout<<"out_valid_max2: "	<< out_valid_max2	 << 
				"\t||\tmax2_out[0]: "	<< max2_out_first 		<< "\t||\tmax2_out[9215]: "		<<max2_out_last<<endl;
		
		cout<<"out_valid_linear0: "	<< out_valid_linear0 << 
				"\t||\tlinear0_out[0]: "<< linear0_out_first 	<< "\t||\tlinear0_out[4095]: "	<<linear0_out_last<<endl;
		cout<<"out_valid_linear1: "	<< out_valid_linear1 << 
				"\t||\tlinear1_out[0]: "<< linear1_out_first 	<< "\t||\tlinear1_out[4095]: "	<<linear1_out_last<<endl;
		cout<<"out_valid_linear2: "	<< out_valid_linear2 << 
				"\t||\tlinear2_out[0]: "<< linear2_out_first 	<< "\t||\t1000[999]: "			<<linear2_out_last<<endl;
		
		cout<<"=============================================================================================="<<endl;
	
	}
	cycle ++;
	
}

