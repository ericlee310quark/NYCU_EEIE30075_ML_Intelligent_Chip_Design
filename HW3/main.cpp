#include "systemc.h"
#include "clockreset.h"

#include "core.h"
#include "router.h"


int sc_main(int argc, char* argv[])
{
    // =======================
    //   signals declaration
    // =======================
    sc_buffer < bool > clk;
    sc_buffer < bool > rst;



    //* Router: Out ports
    sc_buffer < sc_lv<34> >     out_flit_buf[16][5];
    sc_buffer < bool >          out_req_buf[16][5];
    sc_buffer < bool >          out_ack_buf[16][5];


    //* Router: Input ports
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



    sc_trace_file *tf = sc_create_vcd_trace_file("wave");
    sc_trace(tf, clk, "clk");
    sc_trace(tf, rst, "rst");




    // =======================
    //   modules declaration
    // =======================

    Clock m_clock("m_clock", 10);
    Reset m_reset("m_reset", 15);
    
    Core*   core_ptr[16];
    Router* router_ptr[16];
    //string 

    for(int i=0;i<16;i++){
        core_ptr[i] = new Core("m_Core",i,tf);
    }

    for(int i=0;i<16;i++){
        router_ptr[i] = new Router("m_Router",i,tf);
    }

    // =======================
    //   modules connection
    // =======================
    m_clock( clk );
    m_reset( rst );

    for(int i=0;i<16;i++){
        core_ptr[i]->clk(clk);
        core_ptr[i]->rst(rst);
        core_ptr[i]->flit_rx(flit_rx[i]);
        core_ptr[i]->req_rx(req_rx[i]);
        core_ptr[i]->ack_rx(ack_rx[i]);
        core_ptr[i]->flit_tx(flit_tx[i]);
        core_ptr[i]->req_tx(req_tx[i]);
        core_ptr[i]->ack_tx(ack_tx[i]);
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
/*
    uint32_t row, col;
    for(int i=0;i<16;i++){

        row = i/4;
        col = i%4;
        L_id = ((uint32_t)(col)-1)%4;
        R_id = ((uint32_t)(col)+1)%4;
        U_id = ((uint32_t)(row)-1)%4;
        D_id = ((uint32_t)(row)+1)%4;
        router_ptr[i]->clk(clk);
        router_ptr[i]->rst(rst);

        cout<<"ID: "<<i*4+j<<endl;
        cout<<i<<endl;
        cout<<j<<endl;
        cout<<"i*4+L_id: "<<i*4+L_id<<endl;
        cout<<"i*4+R_id: "<<i*4+R_id<<endl;
        cout<<"U_id*4+j: "<<U_id*4+j<<endl;
        cout<<"D_id*4+j: "<<D_id*4+j<<endl;
        cout<<"-----------------------"<<endl;
        //**Router out
        router_ptr[i]->out_flit[0](in_flit_buf[row*4+L_id][1]);   //self L
        router_ptr[i]->out_flit[1](in_flit_buf[row*4+R_id][0]);   //self R
        router_ptr[i]->out_flit[2](in_flit_buf[U_id*4+col][3]);   //self U
        router_ptr[i]->out_flit[3](in_flit_buf[D_id*4+col][2]);   //self D
        router_ptr[i]->out_flit[4](flit_rx[i]);             //self Core

    
        router_ptr[i]->out_req[0](in_req_buf[row*4+L_id][1]);     //self L
        router_ptr[i]->out_req[1](in_req_buf[row*4+R_id][0]);     //self R
        router_ptr[i]->out_req[2](in_req_buf[U_id*4+col][3]);     //self U
        router_ptr[i]->out_req[3](in_req_buf[D_id*4+col][2]);     //self D
        router_ptr[i]->out_req[4](req_rx[i]);               //self Core

        router_ptr[i]->out_ack[0](in_ack_buf[row*4+L_id][1]);     //self L
        router_ptr[i]->out_ack[1](in_ack_buf[row*4+R_id][0]);     //self R
        router_ptr[i]->out_ack[2](in_ack_buf[U_id*4+col][3]);     //self U
        router_ptr[i]->out_ack[3](in_ack_buf[D_id*4+col][2]);     //self D
        router_ptr[i]->out_ack[4](ack_tx[i]);               //self Core

        //**Router In
        router_ptr[i]->in_flit[0](in_flit_buf[i][0]);   //self L
        router_ptr[i]->in_flit[1](in_flit_buf[i][1]);   //self R
        router_ptr[i]->in_flit[2](in_flit_buf[i][2]);   //self U
        router_ptr[i]->in_flit[3](in_flit_buf[i][3]);   //self D
        router_ptr[i]->in_flit[4](flit_tx[i]);              //self Core

        router_ptr[i]->in_req[0](in_req_buf[i][0]);   //self L
        router_ptr[i]->in_req[1](in_req_buf[i][1]);   //self R
        router_ptr[i]->in_req[2](in_req_buf[i][2]);   //self U
        router_ptr[i]->in_req[3](in_req_buf[i][3]);   //self D
        router_ptr[i]->in_req[4](req_tx[i]);              //self Core
                
        router_ptr[i]->in_ack[0](in_ack_buf[i][0]);   //self L
        router_ptr[i]->in_ack[1](in_ack_buf[i][1]);   //self R
        router_ptr[i]->in_ack[2](in_ack_buf[i][2]);   //self U
        router_ptr[i]->in_ack[3](in_ack_buf[i][3]);   //self D
        router_ptr[i]->in_ack[4](ack_rx[i]);              //self Core


    }

*/



    //sc_start(120,SC_NS);

    sc_start(100000, SC_NS );


    sc_close_vcd_trace_file(tf);

    return 0;
}