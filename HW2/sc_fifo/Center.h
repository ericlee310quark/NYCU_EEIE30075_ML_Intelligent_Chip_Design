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



SC_MODULE(Center)
{
    const int IMG_OUT_NUM   =   150528;
    const int CONV0_OUT_NUM =   193600;
    const int MAX0_OUT_NUM  =   46656;
    const int CONV1_OUT_NUM =   139968;
    const int MAX1_OUT_NUM  =   32448;
    const int CONV2_OUT_NUM =   64896;
    const int CONV3_OUT_NUM =   43264;
    const int CONV4_OUT_NUM =   43264;
    const int MAX2_OUT_NUM  =   9216;
    const int LINEAR0_OUT_NUM   =   4096;
    const int LINEAR1_OUT_NUM   =   4096;
    const int LINEAR2_OUT_NUM   =   1000;

    sc_in < bool > rst;
    sc_in_clk clock;
    //---------------------------------------------------
    //  sc_fifo_in_if (valid signal)
    // NAMING:  [From]+[Sight from here]
    //---------------------------------------------------
    sc_port<sc_fifo_in_if<bool>> img_valid_in_if;
    sc_port<sc_fifo_in_if<bool>> out_valid_conv0_in_if;
    sc_port<sc_fifo_in_if<bool>> out_valid_max0_in_if;
    sc_port<sc_fifo_in_if<bool>> out_valid_conv1_in_if;
    sc_port<sc_fifo_in_if<bool>> out_valid_max1_in_if;
    sc_port<sc_fifo_in_if<bool>> out_valid_conv2_in_if;
    sc_port<sc_fifo_in_if<bool>> out_valid_conv3_in_if;
    sc_port<sc_fifo_in_if<bool>> out_valid_conv4_in_if;
    sc_port<sc_fifo_in_if<bool>> out_valid_max2_in_if;

    sc_port<sc_fifo_in_if<bool>> out_valid_linear0_in_if;
    sc_port<sc_fifo_in_if<bool>> out_valid_linear1_in_if;
    sc_port<sc_fifo_in_if<bool>> out_valid_linear2_in_if;
    
    //---------------------------------------------------
    //  sc_fifo_in_if (data)
    // NAMING:  [From]+[Sight from here]
    //---------------------------------------------------
    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,150528> img_in_if;
    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,193600> out_conv0_in_if;
    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,46656> out_max0_in_if;
    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,139968> out_conv1_in_if;
    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,32448> out_max1_in_if;
    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,64896> out_conv2_in_if;
    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,43264> out_conv3_in_if;
    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,43264> out_conv4_in_if;
    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,9216> out_max2_in_if;

    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,4096> out_linear0_in_if;
    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,4096> out_linear1_in_if;
    sc_port<sc_fifo_in_if<sc_fixed_fast<46,17>>,1000> out_linear2_in_if;
    
    
    //---------------------------------------------------
    //  sc_fifo_out_if
    // NAMING:  [To]+[Sight from here]
    //---------------------------------------------------
    sc_port<sc_fifo_out_if<bool>> in_valid_conv0_out_if;
    sc_port<sc_fifo_out_if<bool>> in_valid_max0_out_if;
    sc_port<sc_fifo_out_if<bool>> in_valid_conv1_out_if;
    sc_port<sc_fifo_out_if<bool>> in_valid_max1_out_if;
    sc_port<sc_fifo_out_if<bool>> in_valid_conv2_out_if;
    sc_port<sc_fifo_out_if<bool>> in_valid_conv3_out_if;
    sc_port<sc_fifo_out_if<bool>> in_valid_conv4_out_if;
    sc_port<sc_fifo_out_if<bool>> in_valid_max2_out_if;
    
    sc_port<sc_fifo_out_if<bool>> in_valid_linear0_out_if;
    sc_port<sc_fifo_out_if<bool>> in_valid_linear1_out_if;
    sc_port<sc_fifo_out_if<bool>> in_valid_linear2_out_if;
    //---------------------------------------------------
    //  sc_fifo_out_if (data)
    // NAMING:  [From]+[Sight from here]
    //---------------------------------------------------
    sc_port<sc_fifo_out_if<sc_fixed_fast<46,17>>,150528>    in_conv0_out_if;
    sc_port<sc_fifo_out_if<sc_fixed_fast<46,17>>,193600>    in_max0_out_if;
    sc_port<sc_fifo_out_if<sc_fixed_fast<46,17>>,46656>     in_conv1_out_if;
    sc_port<sc_fifo_out_if<sc_fixed_fast<46,17>>,139968>    in_max1_out_if;
    sc_port<sc_fifo_out_if<sc_fixed_fast<46,17>>,32448>     in_conv2_out_if;
    sc_port<sc_fifo_out_if<sc_fixed_fast<46,17>>,64896>     in_conv3_out_if;
    sc_port<sc_fifo_out_if<sc_fixed_fast<46,17>>,43264>     in_conv4_out_if;
    sc_port<sc_fifo_out_if<sc_fixed_fast<46,17>>,43264>     in_max2_out_if;
    
    sc_port<sc_fifo_out_if<sc_fixed_fast<46,17>>,9216>      in_linear0_out_if;
    sc_port<sc_fifo_out_if<sc_fixed_fast<46,17>>,4096>      in_linear1_out_if;
    sc_port<sc_fifo_out_if<sc_fixed_fast<46,17>>,4096>      in_linear2_out_if;

    



    sc_vector<sc_fixed_fast<46,17>>  img_in_if_tmp{'img_in_if_tmp',IMG_OUT_NUM};


    //----------------------------------------
    //  Monitor
    //----------------------------------------

	int cycle;
	vector <string> class_dict;


    void run(){

        //Pat -> Conv0
        if(img_valid_in_if->num_available()){
            in_valid_conv0_out_if->write(img_valid_in_if.read());
            
            for(int i=0;i<IMG_OUT_NUM;i++){
                img_in_if_tmp = img_in_if[i].read();
                in_conv0_out_if[i]->write(img_in_if_tmp);
            }
        }
        //Conv0 -> Max0
        if(out_valid_conv0_in_if->num_available()){
            in_valid_max0_out_if->write(out_valid_conv0_in_if.read());
            for(int i=0;i<CONV0_OUT_NUM;i++){
                in_max0_out_if[i]->write(out_conv0_in_if[i]);
            }
        }

        //Max0 -> Conv1
        if(out_valid_max0_in_if->num_available()){
            in_valid_conv1_out_if->write(out_valid_max0_in_if.read());
            for(int i=0;i<MAX0_OUT_NUM;i++){
                in_conv1_out_if[i]->write(out_max0_in_if[i]);
            }
        }
        //Conv1 -> Max1
        if(out_valid_conv1_in_if->num_available()){
            in_valid_max1_out_if->write(out_valid_conv1_in_if.read());
            for(int i=0;i<CONV1_OUT_NUM;i++){
                in_max1_out_if[i]->write(out_conv1_in_if[i]);
            }
        }

        //Max1 -> Conv2
        if(out_valid_max1_in_if->num_available()){
            in_valid_conv2_out_if->write(out_valid_max1_in_if.read());
            for(int i=0;i<MAX1_OUT_NUM;i++){
                in_conv2_out_if[i]->write(out_max1_in_if[i]);
            }
        }
        //Conv2 -> Conv3
        if(out_valid_conv2_in_if->num_available()){
            in_valid_conv3_out_if->write(out_valid_conv2_in_if.read());
            for(int i=0;i<CONV2_OUT_NUM;i++){
                in_conv3_out_if[i]->write(out_conv2_in_if[i]);
            }
        }
        //Conv3 -> Conv4
        if(out_valid_conv3_in_if->num_available()){
            in_valid_conv4_out_if->write(out_valid_conv3_in_if.read());
            for(int i=0;i<CONV3_OUT_NUM;i++){
                in_conv4_out_if[i]->write(out_conv3_in_if[i]);
            }
        }

        //Conv4 -> Max2
        if(out_valid_conv4_in_if->num_available()){
            in_valid_max2_out_if->write(out_valid_conv4_in_if.read());
            for(int i=0;i<CONV4_OUT_NUM;i++){
                in_max2_out_if[i]->write(out_conv4_in_if[i]);
            }
        }

        //Max2 -> LINEAR0
        if(out_valid_max2_in_if->num_available()){
            in_valid_linear0_out_if->write(out_valid_max2_in_if.read());
            for(int i=0;i<MAX2_OUT_NUM;i++){
                in_linear0_out_if[i]->write(out_max2_in_if[i]);
            }
        }

        //LINEAR0 -> LINEAR1
        if(out_valid_linear0_in_if->num_available()){
            in_valid_linear1_out_if->write(out_valid_linear0_in_if.read());
            for(int i=0;i<LINEAR0_OUT_NUM;i++){
                in_linear1_out_if[i]->write(out_linear0_in_if[i]);
            }
        }
        //LINEAR1 -> LINEAR2
        if(out_valid_linear1_in_if->num_available()){
            in_valid_linear2_out_if->write(out_valid_linear1_in_if.read());
            for(int i=0;i<LINEAR1_OUT_NUM;i++){
                in_linear2_out_if[i]->write(out_linear1_in_if[i]);
            }
        }
        //LINEAR2 -> Center
        if(out_valid_linear2_in_if->num_available()){
            //in_valid_conv0_out_if->write(out_valid_linear2_in_if.read());
            for(int i=0;i<LINEAR2_OUT_NUM;i++){
            //   in_valid_conv0_out_if[i]->write(out_linear2_in_if[i]);
            }
        }
    }


	SC_CTOR(Center)
	{
        cycle = 0;



		SC_METHOD(run);
		sensitive <<clock.pos();
		SC_METHOD(monitor);
        sensitive <<clock.pos();

		// ^^^^^ put your code here ^^^^^
	}
};





void Center:: monitor(){
	while(1){
        if ( rst.read() == 1 ){
            //cout<<setprecision(7);
            std::ifstream file("data/imagenet_classes.txt");
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
            cout<<"\033[32;5m-                                     START SIMULATATION                                     -\033[0m"<<endl;
            cout<<"=============================================================================================="<<endl;
            cout<<"----------------------------------------------------------------------------------------------"<<endl;
            cout<<"\033[32;5m-                                   Cycle count:\t"<<cycle<<"                                -\033[0m"<<endl;
            cout<<"----------------------------------------------------------------------------------------------"<<endl;
            cout<<"\033[32;5m=			              RST signal ON                                  =\033[0m"<<endl;
            cout<<"----------------------------------------------------------------------------------------------"<<endl;
            
            //cout<<fixed<<setprecision(8)<<"in_valid_pat: \t\t"		<< in_valid_pat->read()		 << 
            //		"\t||\timg_out[0]: \t\t"	<< double(img_out_first->read()) 		<< "\t\t\t||\timg_out[150527]: \t\t"	<<double(img_out_last->read())<<endl;
            
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
                cout<<"\033[32;5m-                                   Cycle count:\t"<<cycle<<"                                -\033[0m"<<endl;
                cout<<"----------------------------------------------------------------------------------------------"<<endl;
                cout<<"\033[32;5m=			              RST signal off                                =\033[0m"<<endl;
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
                //cout<<fixed<<setprecision(8)<<"in_valid_pat: \t\t"		<< in_valid_pat->read()		 << 
                //		"\t||\timg_out[0]: \t\t"	<< double(img_out_first->read()) 		<< "\t\t\t||\timg_out[150527]: \t\t"	<<double(img_out_last->read())<<endl;
                
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

                    cout<<"\033[33m**********************************************************************************************\033[0m"<<endl;
                    cout<<"\033[33;5m			Top-5 Results     		\033[0m"<<endl;
                    cout<<"\033[33m**********************************************************************************************\033[0m"<<endl;
                    cout<<"\033[32mIndex          Val              Possibility             ClassName        \033[0m"<<endl;
                    cout<<"----------------------------------------------------------------------------------------------"<<endl;
                    for (int i = 0; i < 5; i++) {
                        std::cout<<fixed<<setprecision(6)<<indexed_values[i].second<<"\t" <<double(linear2_out[indexed_values[i].second].read())<<"\t\t"<<(indexed_values[i].first*100)<<"%\t\t"<<class_dict[indexed_values[i].second]<<endl;
                    }
                }

        }
	


	cycle ++;
        

        

    }
}