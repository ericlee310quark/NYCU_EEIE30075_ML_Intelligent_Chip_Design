#include "MAC.h"
#include "Pattern.h"
#include "Monitor.h"
#include "clockreset.h"
#include <iostream>

using namespace std;

int sc_main( int argc, char* argv[] ) {
	sc_signal < bool > clk, rst;
	sc_signal < sc_uint<4> > A, B;
	sc_signal < sc_uint<8> > C;
	sc_signal < sc_uint<9> > Y;
	
	Reset m_Reset( "m_Reset", 10 );
	Clock m_clock( "m_clock", 5, 40 );
	MAC m_MAC( "m_MAC" );
	Monitor m_Monitor( "m_Monitor" );
	Pattern m_Pattern( "m_Pattern" );
	
	m_Reset( rst );
	m_clock( clk );
	m_MAC( A, B, C, Y );
	m_Monitor( rst, clk, A, B, C, Y );
	m_Pattern( rst, clk, A, B, C );
	
	sc_start( 500, SC_NS );
	return 0;

}


