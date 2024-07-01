#include <scext/runtime/cwr_simulation.h>
#include <scext/runtime/cwr_optimizer_api.h>
#include <systemc.h>
#include <sysc/kernel/sc_simcontext_int.h>

class cwr_optimizer_impl : public cwr_optimizer_api {
 public:
   cwr_optimizer_impl();
   virtual int get_default_sim_settings();
   virtual int match_schedule(const char*);
   virtual int register_clock(sc_core::sc_clock*, int, int);
   virtual int register_handles(cwr_edge_handles&, int);
   virtual void simulate_init(cwr_simcontext*, sc_core::sc_simcontext*, sc_dt::uint64*);
   virtual snps::sc::phase_callback_fn get_simulate_cb();
 private:
   static cwr_optimizer_impl gAPI;
};

cwr_optimizer_impl::cwr_optimizer_impl() { cwr_optimizer_api::gInstance = &gAPI; }

cwr_optimizer_impl cwr_optimizer_impl::gAPI;

int cwr_optimizer_impl::get_default_sim_settings() { return 0xFE; }

int cwr_optimizer_impl::match_schedule(const char* key) {
  static const char* my_key =
    "r@0,0.5*10000:";

  return (key != 0 && strcmp(key, my_key) == 0) ? 0 : 1;
}

sc_clock* cwr_clk0_0_0;

cwr_edge_handles *cwr_edge_handles_0;
sc_method_handle  cwr_edge_handles_0_0;
void *  cwr_edge_handles_0_0_host;
cwr_edge_handles *cwr_edge_handles_5000;
sc_method_handle  cwr_edge_handles_5000_0;
void *  cwr_edge_handles_5000_0_host;

int cwr_optimizer_impl::register_clock(sc_clock* clk, int i, int j) {
  switch(i) { 
  case 0:
    if (j != 0) return 1;
    cwr_clk0_0_0 = clk;
    break;
  default:
    return 1;
  }
  return 0;
}

extern "C" void _ZN5Clock5do_itEv(void *);
extern "C" void _ZN5Clock5do_itEv(void *);
int cwr_optimizer_impl::register_handles(cwr_edge_handles& handles, int i) {
  switch(i) { 
  case 0:
    cwr_edge_handles_0 =  &handles;
    cwr_edge_handles_0_0 = handles.m_clkonly_handles[0];
    cwr_edge_handles_0_0_host = reinterpret_cast<char *>(handles.m_clkonly_handles[0]->get_semantics_host()) + -208;
    break;
  case 1:
    cwr_edge_handles_5000 =  &handles;
    cwr_edge_handles_5000_0 = handles.m_clkonly_handles[0];
    cwr_edge_handles_5000_0_host = reinterpret_cast<char *>(handles.m_clkonly_handles[0]->get_semantics_host()) + -208;
    break;
  default:
    return 1;
  }
  return 0;
}

static cwr_simcontext* cwr_ctx;
static sc_simcontext* sim_ctx;
static uint64* m_cwr_next_time;
static int cwr_prev_duration_0;

void cwr_optimizer_impl::simulate_init(cwr_simcontext* cwr, sc_core::sc_simcontext* sim, sc_dt::uint64* next_time) {
  cwr_ctx = cwr;
  sim_ctx = sim;
  m_cwr_next_time = next_time;
  cwr_prev_duration_0 = -1;
}

void cwr_simulate(void* duration_p) {
  // initialize the time of the next edge
  uint64 duration = ((sc_time*) duration_p)->value();
  // flag indicates whether we need a delta count increment
  // in the simulate_until call when no processes are runnable
  // this is the case when the previous run had zero duration and 
  // the current run non-zero duration.
  bool incr_delta_ramp_up = false;
  if (duration == 0) {
    cwr_ctx->do_crunch();
    // Multiple calls to sc_start(0) should not trigger edge events more than once
    if (cwr_prev_duration_0 == 1) {
      return;
    }
    cwr_prev_duration_0 = 1;
  } else if (cwr_prev_duration_0 == 1) {
    // A call to sc_start(n) after a call to sc_start(0) must advance to the next edge
    cwr_prev_duration_0 = 0;
    incr_delta_ramp_up = true;
  }

  uint64 next_edge = sim_ctx->m_curr_time.value();
  uint64 loop_start = 0ull;
  uint64 period = 10000ull;

  // set the end-time of the simulation run
  uint64 end = (duration == ~sc_dt::UINT64_ZERO) ? duration : next_edge + duration;

  // offset of the current time against the loop period
  uint64 loop_offset = (next_edge - loop_start) % period;

  // perform any pending updates
  sim_ctx->m_execution_phase = sc_core::sc_simcontext::phase_update;
  sim_ctx->m_prim_channel_registry->perform_update();
  sim_ctx->m_execution_phase = sc_core::sc_simcontext::phase_notify;
  uint64 time_0 = 5000ull;

  // find position in ramp-up schedule to start
  // ramp edge count: 0
  // find position in loop schedule to start
  // loop edge count: 2
l_0:
  if (loop_offset <= 0ull) {
    if (cwr_prev_duration_0 == 0) {
      --cwr_prev_duration_0;
      goto l_1;
    }
    next_edge += 0ull - loop_offset;
    *m_cwr_next_time = next_edge;
    if (next_edge <= end) {
      if (cwr_ctx->simulate_until(next_edge, incr_delta_ramp_up))
        goto edge_0;
    } else {
      cwr_ctx->simulate_until(end, incr_delta_ramp_up);
    }
    return;
  }

l_1:
  if (loop_offset <= 5000ull) {
    if (cwr_prev_duration_0 == 0) {
      --cwr_prev_duration_0;
      goto l_2;
    }
    next_edge += 5000ull - loop_offset;
    *m_cwr_next_time = next_edge;
    if (next_edge <= end) {
      if (cwr_ctx->simulate_until(next_edge, incr_delta_ramp_up))
        goto edge_1;
    } else {
      cwr_ctx->simulate_until(end, incr_delta_ramp_up);
    }
    return;
  }

l_2:
  if (loop_offset <= 10000ull) {
    assert (cwr_prev_duration_0 != 0);
    next_edge += 10000ull - loop_offset;
    *m_cwr_next_time = next_edge;
    if (next_edge <= end) {
      if (cwr_ctx->simulate_until(next_edge, incr_delta_ramp_up))
        goto edge_0;
    } else {
      cwr_ctx->simulate_until(end, incr_delta_ramp_up);
    }
    return;
  }


  // schedule loop (period: 10000)
  while (true) {
edge_0:
  // process clock edges at time 0
  if (! cwr_ctx->one_delta() ) return;
  cwr_ctx->posedge_update(cwr_clk0_0_0);
  cwr_ctx->make_delta_cb();

  {
    sim_ctx->set_curr_proc(cwr_edge_handles_0_0);
    _ZN5Clock5do_itEv(cwr_edge_handles_0_0_host );
    sim_ctx->reset_curr_proc();
  }

  *m_cwr_next_time = next_edge += time_0;
  if (! cwr_ctx->do_crunch2()) return;
  if (next_edge < end) {
    if (! cwr_ctx->simulate_until(next_edge, false)) return;
  } else {
    cwr_ctx->simulate_until(end, false);
    return;
  }

edge_1:
  // process clock edges at time 5000
  if (! cwr_ctx->one_delta() ) return;
  cwr_ctx->negedge_update(cwr_clk0_0_0);
  cwr_ctx->make_delta_cb();

  {
    sim_ctx->set_curr_proc(cwr_edge_handles_5000_0);
    _ZN5Clock5do_itEv(cwr_edge_handles_5000_0_host );
    sim_ctx->reset_curr_proc();
  }
  *m_cwr_next_time = next_edge += time_0;
  if (! cwr_ctx->do_crunch2()) return;
  if (next_edge < end) {
    if (! cwr_ctx->simulate_until(next_edge, false)) return;
  } else {
    cwr_ctx->simulate_until(end, false);
    return;
  }
  }
}

snps::sc::phase_callback_fn cwr_optimizer_impl::get_simulate_cb() { return &cwr_simulate; }
