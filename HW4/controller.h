#ifndef CONTROLLER_H
#define CONTROLLER_H

#include "systemc.h"
#include <iostream>
#include <iomanip>

#include <fstream>
#include <vector>
#include <queue>

#include <string>
#include <cmath>
#include <sstream>
#include <algorithm>

using namespace std;
//-----------------------------------------------------------
//  Num. of Parameters:
//      1. conv1_weight:    23232
//      2. conv1_bias:      64
//      3. conv2_weight:    307200
//      4. conv2_bias:      192
//      5. conv3_weight:    663552
//      6. conv3_bias:      384
//      7. conv4_weight:    884736
//      8. conv4_bias:      256
//      9. conv5_weight:    589824
//     10. conv5_bias:      256
//     11. fc6_weight:      37748736
//     12. fc6_bias:        4096
//     13. fc7_weight:      16777216
//     14. fc7_bias:        4096
//     15. fc8_weight:      4096000
//     16. fc8_bias:        1000
//-----------------------------------------------------------
//  load_step:
//      0: Idle
//      1: 
//-----------------------------------------------------------
//  Functions:
//      1. Read all parameters
//      2. Read image data
//      3. Read Results
//-----------------------------------------------------------
//  PE:
//      0: Controller
//      1: Conv1
//      2: Max_pooling1
//      3: Conv2
//      7: Max_pooling2
//      11: Conv3
//      15: Conv4
//      14: Conv5
//      13: Max_pooling3
//      12: Linear1
//      8: Linear2
//      4: Linear3
//      0: Softmax
//-----------------------------------------------------------
//  PE_v2:
//      0: Controller
//      1: Conv1 + Max_pooling1
//      2: Conv2 + Max_pooling2
//      3: Conv3
//      7: Conv4
//      6: Conv5 + Max_pooling3
//      5:  Linear1
//      4:  Linear2
//      12: Linear3
//      0: + Softmax + Sort
//-----------------------------------------------------------
bool compare(const std::pair<double, int>& a, const std::pair<double, int>& b) {
    return a.first > b.first;
}


SC_MODULE( Controller ) {
    sc_in  < bool >  rst;
    sc_in  < bool >  clk;
    
    // to ROM
    sc_out < int >   layer_id;       // '0' means input data
    sc_out < bool >  layer_id_type;  // '0' means weight, '1' means bias (for layer_id == 0, we don't care this signal)
    sc_out < bool >  layer_id_valid;

    // from ROM
    sc_in  < float > data;
    sc_in  < bool >  data_valid;
    
    // to router0
    sc_out < sc_lv<34> > flit_tx;
    sc_out < bool > req_tx;
    sc_in  < bool > ack_tx;

    // from router0
    sc_in  < sc_lv<34> > flit_rx;
    sc_in  < bool > req_rx;
    sc_out < bool > ack_rx;
    
    //--------------------------------------------------------------------------
    int current_step;
    int next_load;
    int data_count;

    queue < sc_lv<34> > image_buffer;
    queue < sc_lv<34> > parameter_buffer0;
    queue < sc_lv<34> > parameter_buffer1;
    vector <float> fc8_result;

    queue < sc_lv<34> > packet_fifo;

    sc_lv<34> flit_rx_in;
    //bool p_buffer_is_busy[2];
    //int p_buffer_occupy_id[2];
    int curr_pull_id;
    bool curr_p_buffer;

    sc_buffer <bool>  data_valid_reg;
    sc_buffer < sc_lv<34> > data_reg;
    sc_lv<34> temp_flit;
    

    bool delay_cnt;
    //--------------------------------------------------------------------------
    vector <string> class_dict;
    //--------------------------------------------------------------------------
    SC_HAS_PROCESS(Controller);
    void run();
    sc_lv<32> Float2LV(float d);
    float LV2Float(sc_lv<32> a);
    Controller(sc_module_name name, sc_trace_file *tf=nullptr){
        current_step = 0;
        next_load = 0;
        data_count = 0;
        SC_METHOD(run);
        sensitive << clk.pos();
        dont_initialize();

        if(tf != nullptr){
            sc_trace(tf, clk, "controller.clk");
            sc_trace(tf, rst, "controller.rst");

            sc_trace(tf, layer_id, "controller.layer_id");
            sc_trace(tf, layer_id_type, "controller.layer_id_type");
            sc_trace(tf, layer_id_valid, "controller.layer_id_valid");
            
            sc_trace(tf, data, "controller.data");
            sc_trace(tf, data_valid, "controller.data_valid");
            
            sc_trace(tf, flit_tx, "controller.flit_tx");
            sc_trace(tf, req_tx, "controller.req_tx");
            sc_trace(tf, ack_tx, "controller.ack_tx");
            

            sc_trace(tf, flit_rx, "controller.flit_rx");
            sc_trace(tf, req_rx, "controller.req_rx");
            sc_trace(tf, ack_rx, "controller.ack_rx");


            sc_trace(tf, ack_rx, "controller.ack_rx");
            sc_trace(tf, current_step, "controller.current_step");
            sc_trace(tf, next_load, "controller.next_load");
            
            sc_trace(tf, data_reg, "controller.data_reg");
            sc_trace(tf, data_valid_reg, "controller.data_valid_reg");
        }
     }


};



sc_lv<32> Controller::Float2LV(float d) {
        // Convert float to IEEE 754 logicfield
        sc_dt::scfx_ieee_float id(d);

        // Prepare parts
        bool               sgn = id.negative();
        sc_dt::sc_uint<8>  exp = id.exponent();
        sc_dt::sc_uint<23> mnt = id.mantissa();

        // Concatenate parts to bitvector
        // sc_lv<32> lv = (sgn, exp, mnt);
        sc_lv<32> lv;
        lv[31] = sgn;
        lv.range(30, 23) = exp;
        lv.range(22, 0) = mnt;

        return lv;
}

float Controller::LV2Float(sc_lv<32> a) {
        // Convert IEEE 754 logicfield to float 
        sc_dt::scfx_ieee_float id;
        sc_lv <32>  neg =       0;
        sc_lv <32>  exponent =  0;
        sc_lv <32>  mantissa =  0;
        neg[0] = a[31];
        exponent.range(7,0)=    a.range(30, 23);
        mantissa.range(22, 0) = a.range(22, 0);
        id.negative(neg.to_uint());
        id.exponent(exponent.to_uint());
        id.mantissa(mantissa.to_uint());
        return float(id);
}

void Controller::run(){
    if(rst.read()){
        layer_id.write(0);
        layer_id_type.write(0);
        layer_id_valid.write(0);

        flit_tx.write(0);
        req_tx.write(0);
        ack_rx.write(0);


        data_count = 0;
        current_step = 0;
        next_load = 0;
        flit_tx = 0;
        curr_pull_id = 0;
        delay_cnt = 1;
        //flit_tx.range(33,32) = "10";
        //flit_tx.range(31,28) = "0000";
        //flit_tx.range(27,24) = "0001";

        std::ifstream file("data/imagenet_classes.txt");
		std::string class_name;
		while (std::getline(file, class_name)) { // Read file line by line
			class_dict.push_back(class_name); // Store each line in the vector
		}
		file.close();
        std::cout<<"test: "<<-0.5766761302947998047<<std::endl;
        std::cout<<"test: "<<Float2LV(-0.5766761302947998047)<<std::endl;
        std::cout<<"test: "<<LV2Float(Float2LV(-0.5766761302947998047))<<std::endl;
    }
    else {

        temp_flit = 0;
        if(current_step==1)          {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 1;  temp_flit.range(23,22)= 2;}
        else if(current_step==2)     {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 1;  temp_flit.range(23,22)= 3;}
        else if(current_step==3)     {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 2;  temp_flit.range(23,22)= 2;}
        else if(current_step==4)     {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 2;  temp_flit.range(23,22)= 3;}
        else if(current_step==5)     {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 3;  temp_flit.range(23,22)= 2;}
        else if(current_step==6)     {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 3;  temp_flit.range(23,22)= 3;}
        else if(current_step==7)     {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 7;  temp_flit.range(23,22)= 2;}
        else if(current_step==8)     {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 7;  temp_flit.range(23,22)= 3;}
        else if(current_step==9)     {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 6;  temp_flit.range(23,22)= 2;}
        else if(current_step==10)    {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 6;  temp_flit.range(23,22)= 3;}
        else if(current_step==11)    {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 5;  temp_flit.range(23,22)= 2;}
        else if(current_step==12)    {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 5;  temp_flit.range(23,22)= 3;}
        else if(current_step==13)    {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 4;  temp_flit.range(23,22)= 2;}
        else if(current_step==14)    {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 4;  temp_flit.range(23,22)= 3;}
        else if(current_step==15)    {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 12; temp_flit.range(23,22)= 2;}
        else if(current_step==16)    {temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 12; temp_flit.range(23,22)= 3;}
        else if(current_step==17){
            temp_flit.range(33,32)= "10"; temp_flit.range(27,24)= 1;  temp_flit.range(23,22)= 0;
            temp_flit.range(21,18)= 1;}
        else{
            //Idle
        }
        
        if(current_step==0){
            if(((!data_valid.read())&&(!layer_id_valid))){
                if(next_load==0)        current_step = 1;
                else if(next_load==1)   current_step = 2;
                else if(next_load==2)   current_step = 3;
                else if(next_load==3)   current_step = 4;
                else if(next_load==4)   current_step = 5;
                else if(next_load==5)   current_step = 6;
                else if(next_load==6)   current_step = 7;
                else if(next_load==7)   current_step = 8;
                else if(next_load==8)   current_step = 9;
                else if(next_load==9)   current_step = 10;
                else if(next_load==10)   current_step = 11;
                else if(next_load==11)   current_step = 12;
                else if(next_load==12)   current_step = 13;
                else if(next_load==13)   current_step = 14;
                else if(next_load==14)   current_step = 15;
                else if(next_load==15)   current_step = 16;
                else if(next_load==16)   current_step = 17;
                else
                {
                    //finish load
                }
            }
            else{
                layer_id.write(0);
                layer_id_type.write(0);
                layer_id_valid.write(0);
                //keep in Idle
            }
        }
        else if(((current_step%2)==0)&&(current_step>=1)&&(current_step<=16)){
            cout<<"[INFO]"<<"Controller ask for layer_id = "<<int((current_step)/2)<<"|layer_id_type = 1"<<endl;
            packet_fifo.push(temp_flit);
            curr_pull_id = current_step;
            layer_id.write(int((current_step)/2));
            layer_id_type.write(1);
            layer_id_valid.write(1);
            current_step = -1;
            next_load++;

            
        }
        else if(((current_step%2)==1)&&(current_step>=1)&&(current_step<=16)){
            cout<<"[INFO]"<<"Controller ask for layer_id = "<<int((current_step)/2)+1<<"|layer_id_type = 0"<<endl;
            packet_fifo.push(temp_flit);
            curr_pull_id = current_step;
            layer_id.write(int((current_step)/2)+1);
            layer_id_type.write(0);
            layer_id_valid.write(1);
            current_step = -1;
            next_load++;

        }
        else if(current_step==-1){
            layer_id.write(0);
            layer_id_type.write(0);
            layer_id_valid.write(0);

            if(data_valid.read()){
                current_step = 0;
            }
            cout<<"[INFO]"<<"Wait for data_valid| next_load = "<<next_load<<endl;
        }
        else if(current_step==17){
            cout<<"[INFO]"<<"Fetch Img "<<endl;
            packet_fifo.push(temp_flit);
            curr_pull_id = current_step;
            layer_id.write(0);
            layer_id_type.write(0);
            layer_id_valid.write(1);
            current_step = -1;
            next_load++;
        }




        if(data_valid.read()||data_valid_reg.read()){
            data_reg.write(Float2LV(data.read()));
            //cout<<"test1: "<<data.read()<<endl;
            //cout<<"test1: "<<Float2LV(data.read())<<endl;
            //cout<<"test1: "<<LV2Float(Float2LV(data.read()))<<endl;
            
            //sc_stop();
        }
        data_valid_reg.write(data_valid.read());

    
        if(data_valid_reg.read()){
            if(data_valid.read()){
                temp_flit.range(33,32) = "00";
            }
            else{
                temp_flit.range(33,32) = "01";
            }
            temp_flit.range(31,0) = data_reg.read();//Float2LV(data_reg.read());
            packet_fifo.push(temp_flit);
        }
        else{
            //
        }

        if(ack_tx.read()&&(packet_fifo.size()>0)&&req_tx.read()){
            //cout<<"POP"<<endl;
            packet_fifo.pop();
            //cout<<packet_fifo.front()<<endl;
        }

        //-----------------------------------------------------------------------------------------------------
        //      Process the result after Softmax
        //-----------------------------------------------------------------------------------------------------
        if(req_rx.read()&&ack_rx){
            flit_rx_in = flit_rx.read();
            if(flit_rx_in[33]!=1){
                fc8_result.push_back(LV2Float(flit_rx_in.range(31,0)));
            }
        }

        if(fc8_result.size()==1000){
            
            
            
            vector<double> out_alexnet_vec;
            std::vector<std::pair<double, int>> indexed_values; // Vector to store indexed values
            
            float exp_sum, temp_exp;
			exp_sum = 0;
			for(int i=0;i<1000;i++){
				temp_exp = fc8_result[i];
				temp_exp = exp(temp_exp);
				exp_sum+=temp_exp;
			}
			for (int i = 0; i < 1000; i++) {
				temp_exp = (exp(fc8_result[i]))/(exp_sum);
        		indexed_values.push_back(std::make_pair(temp_exp, i));
    		}
            std::sort(indexed_values.begin(), indexed_values.end(), compare);
            //for(int i=0;i<1000;i++){
            //    indexed_values.push_back(std::make_pair(fc8_result[i], i));
            //}
            std::sort(indexed_values.begin(), indexed_values.end(), compare);

            cout<<"\033[33m**********************************************************************************************\033[0m"<<endl;
			cout<<"\033[33;5m			Top-5 Results     		\033[0m"<<endl;
			cout<<"\033[33m**********************************************************************************************\033[0m"<<endl;
			cout<<"\033[32mIndex          Val              Possibility             ClassName        \033[0m"<<endl;
			cout<<"----------------------------------------------------------------------------------------------"<<endl;
			for (int i = 0; i < 5; i++) {
				std::cout<<fixed<<setprecision(6)<<indexed_values[i].second<<"\t" <<double(fc8_result[indexed_values[i].second])<<"\t\t"<<(indexed_values[i].first*100)<<"%\t\t"<<class_dict[indexed_values[i].second]<<endl;
			}
            indexed_values.clear();
            fc8_result.clear();
            sc_stop();
        }




        //-----------------------------------------------------------------------------------------------------
        //      Output Port Control
        //-----------------------------------------------------------------------------------------------------
        


        if(packet_fifo.size()>0 && (!delay_cnt))        req_tx.write(1);
        else                                            req_tx.write(0);

        if(packet_fifo.size()>0 && (!delay_cnt))        flit_tx.write(packet_fifo.front());
        else                                            flit_tx.write(0);
        //**ack_rx

        //if(req_rx.read()&&(!ack_rx))                       ack_rx.write(1);
        if(req_rx.read())               ack_rx.write(1);
        else                            ack_rx.write(0);


        if(packet_fifo.size()>0){
            if(packet_fifo.front()[33]==1 && delay_cnt==1){
                delay_cnt = 0;
            }
            if(packet_fifo.front()[32]==1 && delay_cnt==0 && ack_tx.read() &&req_tx.read()){
                delay_cnt = 1;
            }

        }

    }

}

#endif
