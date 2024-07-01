#include "clockreset.h"

void Clock::do_it() {
  clk = clk_intern;
  count++;
}

void Reset::do_it() {
  rst = 1;
  wait( ticks, SC_NS );
  rst = 0;
}
