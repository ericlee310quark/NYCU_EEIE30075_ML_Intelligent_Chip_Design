#ifndef CORE_H
#define CORE_H
#define SC_INCLUDE_FX

#include "systemc.h"
#include "pe.h"
//#include "pe_load.h"

#include <iostream>
#include <fstream>
#include <vector>

#include <string>
#include <sstream>
#include <cmath>

#include <string>
#include <algorithm>
#include <bitset>
#include <queue>

using namespace std;

SC_MODULE( Core ) {
    sc_in  < bool >  rst;
    sc_in  < bool >  clk;
    // receive
    sc_in  < sc_lv<34> > flit_rx;	// The input channel
    sc_in  < bool > req_rx;	        // The request associated with the input channel
    sc_out < bool > ack_rx;	        // The outgoing ack signal associated with the input channel
    // transmit
    sc_out < sc_lv<34> > flit_tx;	// The output channel
    sc_out < bool > req_tx;	        // The request associated with the output channel
    sc_in  < bool > ack_tx;	        // The outgoing ack signal associated with the output channel

    PE pe;
    
    int pe_id;
    

    bool tr_ok;
    bool rx_ok;
    Packet* pack_from_pe;
    

    bool out_ch_busy;




    bool rst_ok;



    //** From PE
    bool en_pull_frome_pe;
    queue < sc_lv <34> > output_flit_queue;
    sc_lv<34> temp_flit;

    bool pe_empty;

    //** To PE
    bool en_pull_frome_router;
    vector <float> flit_vec;
    int cycle_id;
    Packet* pack_to_pe;
    sc_lv <34> flit_rx_in;



  sc_trace_file *tf;

    SC_HAS_PROCESS(Core);
    sc_lv<32> Float2LV(float d);
    float LV2Float(sc_lv<32> a);
    void run();

    Core(sc_module_name name, int core_id, sc_trace_file *tf=nullptr):pe_id(core_id),pe() {
        rst_ok = 0;
        cycle_id = 0;
        pe.init(pe_id);
        SC_METHOD(run);
        sensitive << clk.pos();
        dont_initialize();
        this->tf = tf;
        if (tf != nullptr) {
            sc_trace(tf, clk, "core_" + std::to_string(pe_id) + ".clk");
            sc_trace(tf, rst, "core_" + std::to_string(pe_id) + ".rst");
            sc_trace(tf, flit_rx, "core_" + std::to_string(pe_id) + ".flit_rx");
            sc_trace(tf, req_rx, "core_" + std::to_string(pe_id) + ".req_rx");
            sc_trace(tf, ack_rx, "core_" + std::to_string(pe_id) + ".ack_rx");
            sc_trace(tf, flit_tx, "core_" + std::to_string(pe_id) + ".flit_tx");
            sc_trace(tf, req_tx, "core_" + std::to_string(pe_id) + ".req_tx");
            sc_trace(tf, ack_tx, "core_" + std::to_string(pe_id) + ".ack_tx");
        }


    }
};


sc_lv<32> Core::Float2LV(float d) {
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

float Core::LV2Float(sc_lv<32> a) {
        // Convert IEEE 754 logicfield to float 
        sc_dt::scfx_ieee_float id;
        sc_lv <32>  neg =       0;
        sc_lv <32>  exponent =  0;
        sc_lv <32>  mantissa =  0;
        neg[0] = a[31];
        exponent.range(7,0)=    a.range(30, 23);
        mantissa.range(22, 0) = a.range(22, 0);
        id.negative(neg.to_uint());
        id.exponent(exponent.to_int());
        id.mantissa(mantissa.to_uint());
        return float(id);
}


void Core::run(){
   //std::cout<<"-------------------------------------------"<<std::endl;
   //std::cout<<"PE id: "<<pe_id<<std::endl;
   //cout<<"cycle: "<<cycle_id<<endl;
   //std::cout<<"-------------------------------------------"<<std::endl;

    //-----------------------------------------------------------------------------------------------------
    //  Pull package from core:
    //      1. output_flit_queue is empty                       ------ ok
    //      2. output_flit_queue is sending the last tail filt  ------ Not yet
    //-----------------------------------------------------------------------------------------------------

    
    if (output_flit_queue.size()==0)    en_pull_frome_pe = 1;
    else                                en_pull_frome_pe = 0;





    if(rst.read()){
        tr_ok = 0;
        rx_ok = 0;
        pe_empty = 0;
        out_ch_busy = 0;
        rst_ok = 1;
        
    }
    else{
        //cout<<"rst: "<<rst<<endl;
        if((en_pull_frome_pe)){
        //if((!pe_empty)&&(en_pull_frome_pe)){
            pack_from_pe = (pe.get_packet());
            if(pack_from_pe != nullptr){
                //cout<<"Package Info:"<<endl;
                //cout<<"From: "<<(*pack_from_pe).source_id<<"\t\""<<"\""<<bitset< 4 >((*pack_from_pe).source_id).to_string()<<endl;
                //cout<<"To:   "<<(*pack_from_pe).dest_id<<"\t\""<<"\""<<bitset< 4 >((*pack_from_pe).dest_id).to_string()<<endl;
                //cout<<"Data size: "<<(*pack_from_pe).datas.size()<<endl;
                temp_flit = 0;
                //-----------------------------------------------------------------------------------------------------
                //
                //
                //-----------------------------------------------------------------------------------------------------
                //** Header Filt Separation
                temp_flit.range(33,32)= "10";
                string addr = bitset< 4 >((pack_from_pe)->source_id).to_string();
                temp_flit.range(31,28)= (pack_from_pe)->source_id;
                temp_flit.range(27,24)= (pack_from_pe)->dest_id;

                if((pack_from_pe)->is_parameter){
                    if((pack_from_pe)->is_bias) temp_flit.range(23,22)  = 3;
                    else                        temp_flit.range(23,22)  = 2;
                }
                else{
                    temp_flit.range(23,22)  = 0;
                }
                temp_flit.range(21,18)  = (pack_from_pe)->op_id;

                //cout<<"Header filt: "<<temp_flit<<endl;
                //flit_vec.push_back(temp_flit);
                output_flit_queue.push(temp_flit);
                temp_flit = 0;
                //** Data Filt Separation
                //** Tail Filt Separation
                if((*pack_from_pe).datas.size()==0){
                    cout<<"[Fatal] PE return datas is empty!"<<endl;
                }


                for(int b_flit_idx=0;b_flit_idx<(*pack_from_pe).datas.size();b_flit_idx++){
                    //cout<<"here"<<endl;
                    temp_flit.range(33,32) = "00";

                    if(b_flit_idx == ((*pack_from_pe).datas.size()-1))  temp_flit.range(33,32) = "01";
                    else                                                temp_flit.range(33,32) = "00";

                    if(b_flit_idx == ((*pack_from_pe).datas.size()-1)) cout<<"[INFO] Core_"<<pack_from_pe->source_id<<" form the tail flit."<<endl;
                    temp_flit.range(31,0) = Float2LV((*pack_from_pe).datas[b_flit_idx]);
                    
                    //cout << "LV2Float: "<<LV2Float(temp_flit.range(31,0))<<endl;
                    //flit_vec.push_back(temp_flit);
                    output_flit_queue.push(temp_flit);
                }

                //out_ch_busy = 1;
            }
            else{
                //** PE is empty
                //cout <<"No packet to be delivered!!!"<<endl;
                //pe_empty = 1;
           }

        }
        else{
            //cout<<"State: Occupied by a packet"<<endl;
        }
//std::cout<<"-------------------------------------------"<<std::endl;
            
        if(ack_tx.read()&&output_flit_queue.size()&&req_tx.read()){
            output_flit_queue.pop();
        }


        //** Send to PE
        if(req_rx.read()&&ack_rx){
            //std::cout<<"PE id: "<<pe_id<<" try to get packet"<<endl;
            flit_rx_in = flit_rx.read();
            en_pull_frome_router = 1;

            //std::cout<<"-------------------------------------------"<<std::endl;
            //std::cout<<"PE id: "<<pe_id<<std::endl;
            //cout<<"Test: "<<flit_rx_in<<endl;
            if(flit_rx_in[33]==1){
                en_pull_frome_router = 1;
                pack_to_pe = new Packet();
                //if(pack_to_pe == nullptr) cout << "Core_" << pe_id << " ERROR: EOP received while not receiving packet" << endl;
          
                pack_to_pe->source_id       =   flit_rx_in(31,28).to_uint();
                pack_to_pe->dest_id         =   flit_rx_in(27,24).to_uint();
                pack_to_pe->is_parameter    =   flit_rx_in[23].to_bool();
                pack_to_pe->is_bias         =   flit_rx_in[22].to_bool();

                pack_to_pe->op_id           =   flit_rx_in(21,18).to_uint();

                pack_to_pe->datas.clear();
                
                cout<<"Source: "<<pack_to_pe->source_id <<endl;
                cout<<"Dst: "<<pack_to_pe->dest_id <<endl;

            }
            else if(flit_rx_in[32]==0){
                //if(pack_to_pe == nullptr) cout << "Core_" << pe_id << " ERROR: EOP received while not receiving packet" << endl;
          
                //cout<<"Source_: "<<pack_to_pe->source_id <<endl;
                //cout<<"Dst_: "<<pack_to_pe->dest_id <<endl;
                //std::cout<<"-------------------------------------------"<<std::endl;
                
                pack_to_pe->datas.push_back(LV2Float(flit_rx_in.range(31,0)));
                //std::cout<<"pack_to_pe->datas[0]: "<<pack_to_pe->datas[0]<<" "<<flit_rx_in<<endl;


                //sc_stop();


                //std::cout<<"data length: "<<pack_to_pe->datas.size()<<endl;

            }
            else{
          
                //cout<<"Source: "<<pack_to_pe->source_id <<endl;
                //cout<<"Dst: "<<pack_to_pe->dest_id <<endl;
                //std::cout<<"PE id: "<<pe_id<<" Ending get packet"<<endl;
            
                pack_to_pe->datas.push_back(LV2Float(flit_rx_in.range(31,0)));
                //std::cout<<"PE id: "<<pe_id<<std::endl;
                //cout << "LV2Float: "<<LV2Float(temp_flit.range(31,0))<<endl;
                //    std::cout<<"data length: "<<pack_to_pe->datas.size()<<endl;

                //pack_to_pe->datas       =   flit_vec;
                pe.check_packet(pack_to_pe);
                //pack_to_pe->datas.clear();
                //delete pack_to_pe;
            }
        }

        //-----------------------------------------------------------------------------------------------------
        //      Output Port Control
        //-----------------------------------------------------------------------------------------------------
        //**req_tx
        if(output_flit_queue.size()>0)        req_tx.write(1);
        else                                  req_tx.write(0);
        //**flit_tx
        if(output_flit_queue.size()>0)        flit_tx.write(output_flit_queue.front());
        else                                  flit_tx.write(0);
        //**ack_rx

        //if(req_rx.read()&&(!ack_rx))                       ack_rx.write(1);
        if(req_rx.read())                       ack_rx.write(1);
        else                                    ack_rx.write(0);



    }
    //std::cout<<"============================================"<<std::endl;
    cycle_id++;
}

//current state


//idle
//fetch and give
//






#endif