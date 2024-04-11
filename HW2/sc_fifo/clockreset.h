/***********************************************************************
 * Filename : clockreset.h
 * Author: Paul Stynen
 *
 * Copyright (c) 1996-2003
 * CoWare, Inc.
 * 2121 North First St.
 * San Jose, CA 95131
 * USA
 *
 * Purpose: clock + reset generator
 ***********************************************************************/
#ifndef CLOCKRESET_H
#define CLOCKRESET_H

#include <systemc.h>

SC_MODULE( Clock ) {
  public:
    sc_out <bool> clk;
	int count;
	int number;
    SC_HAS_PROCESS(Clock);

    Clock( sc_module_name name, int division, int cycle ) :
           sc_module( name ), clk( "clk" ),
           clk_intern( sc_gen_unique_name( name ), division * 2.0, SC_NS )
    {
	  count = 0;
	  number = cycle;
	  
      SC_METHOD(do_it);
        sensitive << clk_intern;
    } 
  
  private :
    sc_clock clk_intern;
    void do_it();
};

SC_MODULE( Reset ) {
  public:
    sc_out<bool> rst;

    SC_HAS_PROCESS(Reset);

    Reset( sc_module_name name, int _ticks) : 
	       sc_module(name), rst("rst"), ticks(_ticks)
    {
      SC_THREAD(do_it);
      // no sensitivity list
    }
  
  private :    
    int ticks;
    void do_it();
};
#endif //CLOCKRESET_H 
