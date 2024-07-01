#include "Pattern.h"
#include <time.h>

void Pattern::run() {

	if ( rst.read() == 1 )
		return;

	A = rand() % 16;
	B = (float)(rand()) / (float)(rand());;
	C = rand() % 256; 
	
	temp_uint = temp_uint.to_uint() + 1;

	cycle++;
	if ( cycle == CYCLE )
		sc_stop();
}


