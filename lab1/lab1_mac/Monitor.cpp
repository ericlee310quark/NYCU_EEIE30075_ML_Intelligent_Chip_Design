#include "Monitor.h"

void Monitor:: run() {
	
	if ( rst.read() == 1 )
	   cout << "A\tB\tC\tY\n";
	else if ( cycle != 0 )
		cout << A << "\t" << B << "\t" << C << "\t" << Y << endl;
	
	cycle ++;
}

