#ifndef ROM_H
#define ROM_H

#include "systemc.h"
#include <iostream>
#include <fstream>
using namespace std;

SC_MODULE( ROM ) {
    sc_in  < bool >  clk;
    sc_in  < bool >  rst;
 
    sc_in  < int >   layer_id;       // '0' means input data
    sc_in  < bool >  layer_id_type;  // '0' means weight, '1' means bias (for layer_id == 0, we don't care this signal)
    sc_in  < bool >  layer_id_valid;
    
    sc_out < float > data;
    sc_out < bool >  data_valid;

    void run();
    // vvv Please don't remove these two variables vvv
    string DATA_PATH ;
    string IMAGE_FILE_NAME;     
    // ^^^ Please don't remove these two variables ^^^

    SC_CTOR( ROM )
    {
        DATA_PATH = "../data/";      // Please change this to your own data path
        IMAGE_FILE_NAME = "cat.txt"; // You can change this to test another image file
        
        SC_THREAD( run );
        sensitive << clk.pos() << rst.neg();
    }
};

#endif