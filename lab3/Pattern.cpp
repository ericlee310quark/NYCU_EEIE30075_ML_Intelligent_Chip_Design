#include "Pattern.h"
#include <time.h>

void Pattern::run() {

	if ( rst.read() == 1 ) {
		return;
	}
		A = rand() % 16;
		B = rand() % 16;
		C = rand() % 256;

}


