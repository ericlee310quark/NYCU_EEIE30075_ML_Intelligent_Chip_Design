#include "Monitor.h"

void Monitor:: run() {
	
	if ( rst.read() == 1 )
	   cout << "Cycle\tA\tB\tC\tY\n";
	else if ( done.read() ) {
		cout << cycle << "\t" << A << "\t" << B << "\t" << C << "\t" << Y << endl;
		pattern_num ++;
		if (pattern_num == PATTERN_NUM)
			sc_stop();
        }
	cycle ++;
}

