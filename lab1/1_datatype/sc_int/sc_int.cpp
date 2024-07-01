#define SC_INCLUDE_FX
#include <systemc.h>
#include <cmath>

using namespace std;
int sc_main(int argc, char *argv[])
{

    cout << "SystemC integer data types" << endl;

        cout << std::string(40, '-') << endl;
        cout << "  INFO: Adding 3 sc_ints to produce a bigger sc_int" << endl;
        sc_int<3> a(3);
        sc_int<5> b(15);
        sc_int<5> c(14);
        cout << "  INFO: sc_int<3> a = " << a << endl;
        cout << "  INFO: sc_int<5> b = " << b << endl;
        cout << "  INFO: sc_int<5> c = " << c << endl;
        cout << "  INFO: a + b + c = " << a + b + c << " OK" << endl;
        sc_int<7> sum = a + b + c;
        cout << "  INFO: a + b + c = sum = " << sum << " OK" << endl;

        cout << std::string(40, '-') << endl;
        cout << "  INFO: Adding 3 sc_ints to produce an sc_bigint" << endl;
        sc_int<64> aa("0x7000000000000000");
        sc_int<64> bb("0x7000000000000000");
        sc_int<64> cc("0x7000000000000000");
        sc_bigint<70> bigsum;
        cout << "  INFO: sc_int<64> aa = " << aa << endl;
        cout << "  INFO: sc_int<64> bb = " << bb << endl;
        cout << "  INFO: sc_int<64> cc = " << cc << endl;
        cout << "  INFO: aa + bb + cc= " << aa + bb + cc << " OOPS" << endl;
        bigsum = aa + bb + cc;
        cout << "  INFO: aa + bb + cc = bigsum<70> = " << bigsum << " OOPS" << endl;
        bigsum = sc_bigint<70> (aa) + bb + cc;
        cout << "  INFO: aa + bb + cc = bigsum<70> = " << bigsum << " OK" << endl;
        sc_fixed_fast<40,17> ss;
        ss =(-123.456);

        ss = 10;
        cout<< "ss: "<<ss<<endl;
        double abc = (double)ss;
        cout<<"double type: "<<abc<<endl;
       cout<<"exp(10) = "<<exp(10)<<endl;
 
        cout<<"exp(10) = "<<exp(ss)<<endl;
    cout << endl;

    return 0;

} // end main()
