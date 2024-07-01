#ifndef ROUTER_H
#define ROUTER_H

#define FIFO_SIZE 2

#include "systemc.h"

#include <queue>

using namespace std;




SC_MODULE( Router ) {
    sc_in  < bool >  rst;
    sc_in  < bool >  clk;

    sc_out < sc_lv<34> >  out_flit[5];
    sc_out < bool >  out_req[5];
    sc_in  < bool >  in_ack[5];

    sc_in  < sc_lv<34> >  in_flit[5];
    sc_in  < bool >  in_req[5];
    sc_out < bool >  out_ack[5];

    int router_id;
    sc_trace_file *tf;

    //---------------------------------------------------------
    int s_r, s_c;
    int d_r[5], d_c[5], dif_r[5], dif_c[5];
    int dst_id[5];
    int curr_dst[5];
    bool en_out_gate[5];
    int occu_by_input[5];
    sc_lv <34> in_flit_in[5];

    std::queue <sc_lv <34> > input_fifo[5];


    const int LEFT  = 0;
    const int RIGHT = 1;
    const int UP    = 2;
    const int DOWN  = 3;
    const int CORE  = 4;

    sc_lv<34> abc[5];

    //----------------------------------------------------
    //  Input 
    //----------------------------------------------------

    //----------------------------------------------------
    //  In Gate need 4 states
    //----------------------------------------------------
    //  IDLE
    //  ACK
    //  STALL
    //-----------------------------------------------------

    //----------------------------------------------------
    //  Out Gate need 4 states
    //----------------------------------------------------
    //  IDLE
    //  REQ
    //-----------------------------------------------------


    SC_HAS_PROCESS(Router);

    void run();

    Router(sc_module_name name, int router_id, sc_trace_file *tf=nullptr):router_id(router_id) {
        SC_METHOD(run);
        sensitive << clk.pos();
        dont_initialize();
        this->tf = tf;
        (tf, clk, "router_" + std::to_string(router_id) + ".clk");
        sc_trace(tf, rst, "router_" + std::to_string(router_id) + ".rst");
        for (int i = 0; i < 5; i++) {
            sc_trace(tf, in_flit[i], "router_" + std::to_string(router_id) + ".in_flit_" + std::to_string(i));
            sc_trace(tf, in_req[i], "router_" + std::to_string(router_id) + ".in_req_" + std::to_string(i));
            sc_trace(tf, in_ack[i], "router_" + std::to_string(router_id) + ".in_ack_" + std::to_string(i));
            sc_trace(tf, out_flit[i], "router_" + std::to_string(router_id) + ".out_flit_" + std::to_string(i));
            sc_trace(tf, out_req[i], "router_" + std::to_string(router_id) + ".out_req_" + std::to_string(i));
            sc_trace(tf, out_ack[i], "router_" + std::to_string(router_id) + ".out_ack_" + std::to_string(i));
            sc_trace(tf, curr_dst[i], "router_" + std::to_string(router_id) + ".curr_dst_" + std::to_string(i));
            sc_trace(tf, en_out_gate[i], "router_" + std::to_string(router_id) + ".en_out_gate_" + std::to_string(i));
            
            sc_trace(tf, in_flit_in[i], "router_" + std::to_string(router_id) + ".in_flit_in_" + std::to_string(i));
            
            sc_trace(tf, input_fifo[i].size(), "router_" + std::to_string(router_id) + ".input_fifo_size_" + std::to_string(i));
            sc_trace(tf, abc[i], "router_" + std::to_string(router_id) + ".input_fifo_front" + std::to_string(i));
            
            //sc_trace(tf, out_busy[i], "router_" + std::to_string(id) + ".out_busy_" + std::to_string(i));
        }

    }
};

void Router::run(){
    //cout<<"router id: "<<router_id<<endl;
    //std::cout<<"-------------------------------------------"<<std::endl;
    //std::cout<<"router id: "<<router_id<<endl;
    //std::cout<<"-------------------------------------------"<<std::endl;

    // L->R->U->D->C

    s_r = (router_id)/4;
    s_c = (router_id)%4;


    


    for(int in_gate=0;in_gate<5;in_gate++){
        if(rst.read()){
            in_flit_in[in_gate] = 0;
            dst_id[in_gate] = in_gate;
            en_out_gate[in_gate] = 1;
            //occu_by_input[curr_dst[in_gate]] = curr_dst[in_gate];
            occu_by_input[in_gate]= in_gate;
            curr_dst[in_gate] = in_gate;
            
        }
        else{
            if(in_req[in_gate].read()){
                in_flit_in[in_gate] = in_flit[in_gate].read();
                if(in_flit_in[in_gate][33]==1){

                    dst_id[in_gate] = in_flit_in[in_gate].range(27,24).to_uint();

                    d_r[in_gate] = dst_id[in_gate]/4;
                    d_c[in_gate] = dst_id[in_gate]%4;

                    dif_r[in_gate] = (int)(4+int(d_r[in_gate])-int(s_r))%4;
                    dif_c[in_gate] = (int)(4+int(d_c[in_gate])-int(s_c))%4;

                    if(dst_id[in_gate]== uint32_t(router_id))   curr_dst[in_gate] = CORE;
                    else if(dif_c[in_gate]==0)                           curr_dst[in_gate] = (dif_r[in_gate]) <= 2 ? 3 : 2;
                    else                                        curr_dst[in_gate] = (dif_c[in_gate]) <= 2 ? 1 : 0;
                    

                    if(en_out_gate[curr_dst[in_gate]] && input_fifo[in_gate].size()==0){

                        //cout<<"Router "<<router_id<<": "<<in_gate<<" get "<<curr_dst[in_gate]<<endl;
                        //cout<<"From: "<<in_flit_in[in_gate].range(31,28).to_uint()<<" To: "<<in_flit_in[in_gate].range(27,24).to_uint()<<endl;          
                        

                        en_out_gate[curr_dst[in_gate]] = 0;
                        occu_by_input[curr_dst[in_gate]] = in_gate;

                        input_fifo[in_gate].push(in_flit_in[in_gate]);
                        out_ack[in_gate].write(1);

                    }
                    /*
                    else if((out_flit[curr_dst[in_gate]].read()[32]==1)&&(out_req[curr_dst[in_gate]].read())&&(in_req[curr_dst[in_gate]].read())){
                        en_out_gate[curr_dst[in_gate]] = 1;
                        occu_by_input[curr_dst[in_gate]] = curr_dst[in_gate];
                        //in_ack[in_gate].write(0);
                    }
                    */
            

                    //else{
                    //    out_ack[in_gate].write(0);
                        //STALL
                    //}
                }
                else{
                    if(out_ack[in_gate].read()){
                        input_fifo[in_gate].push(in_flit_in[in_gate]);
                    }

                    if(input_fifo[in_gate].size()>FIFO_SIZE){
                        out_ack[in_gate].write(0);
                      //  cout<<"Router "<<router_id<<": "<<in_gate<<" get "<<curr_dst[in_gate]<<"| fifo >10"<<endl;
                       
                    }
                    else if(out_ack[in_gate].read()){
                        //input_fifo[in_gate].push(in_flit_in[in_gate]);

                    //    out_ack[in_gate].write(1);
                    }
                    else{
                        //input_fifo[in_gate].push(in_flit_in[in_gate])
                        out_ack[in_gate].write(1);
                    }


                    // Not Head
                }
            }
            else{
                // No in_filt
                out_ack[in_gate].write(0);
            }
        }
    }


    
    for(int out_gate=0;out_gate<5;out_gate++){
        if(rst.read()){
            out_req[out_gate].write(0);
            //out_ack[occu_by_input[out_gate]].write(0);
            out_ack[out_gate].write(0);
            out_flit[out_gate].write(0);
        }
        else{
            if(!en_out_gate[out_gate]){
                
                if(input_fifo[occu_by_input[out_gate]].size()>0){
                    if(out_req[out_gate].read() && in_ack[out_gate].read()){
                        
                        

                        
                        if(input_fifo[occu_by_input[out_gate]].front()[32]==1){ //                        input_fifo[occu_by_input[out_gate]].size()==0
                            input_fifo[occu_by_input[out_gate]].pop();
                            en_out_gate[out_gate] = 1;
                            
                            occu_by_input[out_gate] = out_gate;
                            
                            out_flit[out_gate].write(0);
                            out_req[out_gate].write(0);
                        }
                        else{
                            input_fifo[occu_by_input[out_gate]].pop();
                            if(input_fifo[occu_by_input[out_gate]].size()==0){
                                out_flit[out_gate].write(0);
                                out_req[out_gate].write(0);

                            }
                            else{
                                out_flit[out_gate].write(input_fifo[occu_by_input[out_gate]].front());
                                out_req[out_gate].write(1);

                            }
                        }

                        
                    }
                    else if(input_fifo[occu_by_input[out_gate]].front()[33]==1){

                        out_flit[out_gate].write(input_fifo[occu_by_input[out_gate]].front());
                        out_req[out_gate].write(1);
                    }
                    else{
                        out_flit[out_gate].write(input_fifo[occu_by_input[out_gate]].front());
                        out_req[out_gate].write(1);//!
                    }
                }
                else{
                    out_flit[out_gate].write(0);
                    out_req[out_gate].write(0);
                }



                /*
                if((in_flit_in[occu_by_input[out_gate]][33]==1) && (!out_req[out_gate].read()) && (!in_ack[out_gate].read())){
                    out_ack[occu_by_input[out_gate]].write(0);
                    out_req[out_gate].write(0);
                    out_flit[out_gate].write(in_flit_in[occu_by_input[out_gate]]);
                }
                else if(){


                }
                else if(in_req[occu_by_input[out_gate]].read() && in_ack[out_gate].read()){
                    out_ack[occu_by_input[out_gate]].write(1);
                    out_flit[out_gate].write(in_flit_in[occu_by_input[out_gate]]);
                }
                else{

                }
                */

            }
            else{
                // Do nothing


            }
        }
    }

    for(int i=0;i<5;i++){
        if(input_fifo[i].size()>0){
            abc[i] = input_fifo[i].front();
        }
        else{
            abc[i] =123;
        }

    }
}


//1. Path Routing
//2. Gating
//      Priority: L -> R -> U -> D




#endif