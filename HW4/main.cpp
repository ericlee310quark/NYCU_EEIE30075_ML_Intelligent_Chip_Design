#include "systemc.h"
#include "clockreset.h"

#include "controller.h"
#include "ROM.h"
#include "core.h"
#include "router.h"
#include <iostream>

using namespace std;
int sc_main(int argc, char* argv[])
{
    // =======================
    //   signals declaration
    // =======================
    sc_signal < bool > clk;
    sc_signal < bool > rst;

    //Controller
    sc_buffer  < int >   layer_id;       // '0' means input data
    sc_buffer  < bool >  layer_id_type;  // '0' means weight, '1' means bias (for layer_id == 0, we don't care this signal)
    sc_buffer  < bool >  layer_id_valid;
    
    sc_buffer < float > data;
    sc_buffer < bool >  data_valid;

    /*
    // to router0
    sc_buffer < sc_lv<34> > flit_tx;
    sc_buffer < bool > req_tx;
    sc_buffer  < bool > ack_tx;

    // from router0
    sc_buffer  < sc_lv<34> > flit_rx;
    sc_buffer  < bool > req_rx;
    sc_buffer < bool > ack_rx;
    */

    sc_buffer  < sc_lv<34> >    in_flit_buf[16][5];
    sc_buffer  < bool >         in_req_buf[16][5];
    sc_buffer  < bool >         in_ack_buf[16][5];


    sc_buffer  < sc_lv<34> > flit_rx[16];	        // The input channel
    sc_buffer  < bool >      req_rx[16];	        // The request associated with the input channel
    sc_buffer < bool >       ack_rx[16];	        // The outgoing ack signal associated with the input channel
    // transmit
    sc_buffer < sc_lv<34> > flit_tx[16];	        // The output channel
    sc_buffer < bool >      req_tx[16];	            // The request associated with the output channel
    sc_buffer  < bool >     ack_tx[16];	            // The outgoing ack signal associated with the output channel



    sc_trace_file *tf = nullptr;//sc_create_vcd_trace_file("wave");
    sc_trace(tf, clk, "clk");
    sc_trace(tf, rst, "rst");
    // =======================
    //   modules declaration
    // =======================
    Clock m_clock("m_clock", 10);
    Reset m_reset("m_reset", 15);
    Controller m_controller("m_controller",tf);
    ROM m_rom("m_rom");

    Core*   core_ptr[15];
    Router* router_ptr[16];
    //string 

    for(int i=0;i<15;i++){
        core_ptr[i] = new Core("m_Core",i+1,tf);
    }

    for(int i=0;i<16;i++){
        router_ptr[i] = new Router("m_Router",i,tf);
    }


    // =======================
    //   modules connection
    // =======================
    m_clock( clk );
    m_reset( rst );
    //m_rom
    m_rom.clk(clk);
    m_rom.rst(rst);
    m_rom.layer_id(layer_id);
    m_rom.layer_id_type(layer_id_type);
    m_rom.layer_id_valid(layer_id_valid);
    m_rom.data(data);
    m_rom.data_valid(data_valid);
    // m_controller



    m_controller.rst(rst);
    m_controller.clk(clk);
    m_controller.layer_id(layer_id);
    m_controller.layer_id_type(layer_id_type);
    m_controller.layer_id_valid(layer_id_valid);
    m_controller.data(data);
    m_controller.data_valid(data_valid);
    m_controller.flit_rx(flit_rx[0]);
    m_controller.req_rx(req_rx[0]);
    m_controller.ack_rx(ack_rx[0]);
    m_controller.flit_tx(flit_tx[0]);
    m_controller.req_tx(req_tx[0]);
    m_controller.ack_tx(ack_tx[0]);




    for(int i=0;i<15;i++){
        core_ptr[i]->clk(clk);
        core_ptr[i]->rst(rst);
        core_ptr[i]->flit_rx(flit_rx[i+1]);
        core_ptr[i]->req_rx(req_rx[i+1]);
        core_ptr[i]->ack_rx(ack_rx[i+1]);
        core_ptr[i]->flit_tx(flit_tx[i+1]);
        core_ptr[i]->req_tx(req_tx[i+1]);
        core_ptr[i]->ack_tx(ack_tx[i+1]);
    }
    unsigned int L_id, R_id, U_id, D_id;

    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            /*
            L_id = j-1;
            if (L_id<0) L_id+=4;
            R_id = j+1;
            if (R_id>3) R_id-=4;
            U_id = i-1;
            if (U_id<0) U_id+=4;
            D_id = i+1;
            if (D_id>3) D_id-=4;
            */
            L_id = ((uint32_t)j-1)%4;
            R_id = ((uint32_t)j+1)%4;
            U_id = ((uint32_t)i-1)%4;
            D_id = ((uint32_t)i+1)%4;


            router_ptr[i*4+j]->clk(clk);
            router_ptr[i*4+j]->rst(rst);

            //cout<<"ID: "<<i*4+j<<endl;
            //cout<<i<<endl;
            //cout<<j<<endl;
            //cout<<"i*4+L_id: "<<i*4+L_id<<endl;
            //cout<<"i*4+R_id: "<<i*4+R_id<<endl;
            //cout<<"U_id*4+j: "<<U_id*4+j<<endl;
            //cout<<"D_id*4+j: "<<D_id*4+j<<endl;
            //cout<<"-----------------------"<<endl;
            //**Router out
            router_ptr[i*4+j]->out_flit[0](in_flit_buf[i*4+L_id][1]);   //self L
            router_ptr[i*4+j]->out_flit[1](in_flit_buf[i*4+R_id][0]);   //self R
            router_ptr[i*4+j]->out_flit[2](in_flit_buf[U_id*4+j][3]);   //self U
            router_ptr[i*4+j]->out_flit[3](in_flit_buf[D_id*4+j][2]);   //self D
            router_ptr[i*4+j]->out_flit[4](flit_rx[i*4+j]);             //self Core

        
            router_ptr[i*4+j]->out_req[0](in_req_buf[i*4+L_id][1]);     //self L
            router_ptr[i*4+j]->out_req[1](in_req_buf[i*4+R_id][0]);     //self R
            router_ptr[i*4+j]->out_req[2](in_req_buf[U_id*4+j][3]);     //self U
            router_ptr[i*4+j]->out_req[3](in_req_buf[D_id*4+j][2]);     //self D
            router_ptr[i*4+j]->out_req[4](req_rx[i*4+j]);               //self Core

            router_ptr[i*4+j]->out_ack[0](in_ack_buf[i*4+L_id][1]);     //self L
            router_ptr[i*4+j]->out_ack[1](in_ack_buf[i*4+R_id][0]);     //self R
            router_ptr[i*4+j]->out_ack[2](in_ack_buf[U_id*4+j][3]);     //self U
            router_ptr[i*4+j]->out_ack[3](in_ack_buf[D_id*4+j][2]);     //self D
            router_ptr[i*4+j]->out_ack[4](ack_tx[i*4+j]);               //self Core

            //**Router In
            /*
            router_ptr[i*4+j]->in_flit[0](out_flit_buf[i*4+L_id][1]);   //self L
            router_ptr[i*4+j]->in_flit[1](out_flit_buf[i*4+R_id][0]);   //self R
            router_ptr[i*4+j]->in_flit[2](out_flit_buf[U_id*4+j][3]);   //self U
            router_ptr[i*4+j]->in_flit[3](out_flit_buf[D_id*4+j][2]);   //self D
            router_ptr[i*4+j]->in_flit[4](flit_tx[i*4+j]);              //self Core
            */
            router_ptr[i*4+j]->in_flit[0](in_flit_buf[i*4+j][0]);   //self L
            router_ptr[i*4+j]->in_flit[1](in_flit_buf[i*4+j][1]);   //self R
            router_ptr[i*4+j]->in_flit[2](in_flit_buf[i*4+j][2]);   //self U
            router_ptr[i*4+j]->in_flit[3](in_flit_buf[i*4+j][3]);   //self D
            router_ptr[i*4+j]->in_flit[4](flit_tx[i*4+j]);              //self Core
           /*
            router_ptr[i*4+j]->in_req[0](out_req_buf[i*4+L_id][1]);   //self L
            router_ptr[i*4+j]->in_req[1](out_req_buf[i*4+R_id][0]);   //self R
            router_ptr[i*4+j]->in_req[2](out_req_buf[U_id*4+j][3]);   //self U
            router_ptr[i*4+j]->in_req[3](out_req_buf[D_id*4+j][2]);   //self D
            router_ptr[i*4+j]->in_req[4](req_tx[i*4+j]);              //self Core
            */
            router_ptr[i*4+j]->in_req[0](in_req_buf[i*4+j][0]);   //self L
            router_ptr[i*4+j]->in_req[1](in_req_buf[i*4+j][1]);   //self R
            router_ptr[i*4+j]->in_req[2](in_req_buf[i*4+j][2]);   //self U
            router_ptr[i*4+j]->in_req[3](in_req_buf[i*4+j][3]);   //self D
            router_ptr[i*4+j]->in_req[4](req_tx[i*4+j]);              //self Core
            
           
            router_ptr[i*4+j]->in_ack[0](in_ack_buf[i*4+j][0]);   //self L
            router_ptr[i*4+j]->in_ack[1](in_ack_buf[i*4+j][1]);   //self R
            router_ptr[i*4+j]->in_ack[2](in_ack_buf[i*4+j][2]);   //self U
            router_ptr[i*4+j]->in_ack[3](in_ack_buf[i*4+j][3]);   //self D
            router_ptr[i*4+j]->in_ack[4](ack_rx[i*4+j]);              //self Core

        }
    }
    sc_trace(tf,layer_id,"layer_id");
    sc_trace(tf,layer_id_type,"layer_id_type");
    sc_trace(tf,layer_id_valid,"layer_id_valid");

    sc_trace(tf,data,"data");
    sc_trace(tf,data_valid,"data_valid");
    cout<<"123"<<endl;
    sc_start();


    sc_close_vcd_trace_file(tf);
    return 0;
}