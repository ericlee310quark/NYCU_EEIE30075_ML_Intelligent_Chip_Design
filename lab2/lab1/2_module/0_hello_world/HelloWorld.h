#ifndef _HELLOWORLD_H_
#define _HELLOWORLD_H_

#include <systemc>

SC_MODULE(HelloWorld) {
    SC_CTOR(HelloWorld) {
        std::cout << "HelloWorld is constructed" << std::endl;
    }

    void say_hello();
};

#endif
