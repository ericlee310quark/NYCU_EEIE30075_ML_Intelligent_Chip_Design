#include "systemc.h"
#include "../ROM.h"
#include "../clockreset.h"
#include "../controller.h"
#include "../core.h"
#include "../router.h"
#include "../router_proxy.h"
#include "cassert"
#include "cwr_dynamic_loader.h"
#include "cwr_sc_dynamic_stubs.h"
#include "cwr_sc_hierarch_module.h"
#include "cwr_sc_object_creator.h"
#include "scmlinc/scml_abstraction_level_switch.h"
#include "scmlinc/scml_property_registry.h"

using namespace conf;
using namespace std;


class Clock0Creator : public ScObjectCreatorBase
{
public:
  static unsigned int creationVerboseMode() {
    const char * const env_var_val = ::getenv("SNPS_SLS_DYNAMIC_CREATION_VERBOSE");
    return env_var_val ? (::atoi(env_var_val)) : 3;
  }
  sc_object* create ( const string& name ) {
    string hierach_name = getHierarchicalName(name);
    int cycle_time = scml_property_registry::inst().getIntProperty(
	      scml_property_registry::CONSTRUCTOR, hierach_name, "cycle_time");

    if (scml_property_registry::inst().hasProperty(scml_property_registry::MODULE, scml_property_registry::BOOL, hierach_name, "runtime_disabled") && 
        scml_property_registry::inst().getBoolProperty(scml_property_registry::MODULE, hierach_name, "runtime_disabled")) {
      sc_module_name n(name.c_str());
      if (creationVerboseMode() >= 6) { std::cout << "Clock/Clock: STUB for " << hierach_name << " created." << std::endl; }
      conf::stub *result = new conf::stub(n);
       conf::stub_port_registrator<>::register_stub_port(&Clock::clk, "clk" , string(static_cast<sc_object*>(result)->name()) + ".clk" );
      return result;
    } else {
      if (creationVerboseMode() >= 6) { std::cout << "Clock/Clock: " << hierach_name << " created." << std::endl; }
      Clock* result = new Clock(name.c_str(), cycle_time);
       cwr_sc_object_registry::inst().addPort(&result->clk, string(static_cast<sc_object*>(result)->name()) + ".clk" );
      return result;
    }
  }
};


class Controller0Creator : public ScObjectCreatorBase
{
public:
  static unsigned int creationVerboseMode() {
    const char * const env_var_val = ::getenv("SNPS_SLS_DYNAMIC_CREATION_VERBOSE");
    return env_var_val ? (::atoi(env_var_val)) : 3;
  }
  sc_object* create ( const string& name ) {
    string hierach_name = getHierarchicalName(name);
    if (scml_property_registry::inst().hasProperty(scml_property_registry::MODULE, scml_property_registry::BOOL, hierach_name, "runtime_disabled") && 
        scml_property_registry::inst().getBoolProperty(scml_property_registry::MODULE, hierach_name, "runtime_disabled")) {
      sc_module_name n(name.c_str());
      if (creationVerboseMode() >= 6) { std::cout << "Controller/Controller: STUB for " << hierach_name << " created." << std::endl; }
      conf::stub *result = new conf::stub(n);
       conf::stub_port_registrator<>::register_stub_port(&Controller::rst, "rst" , string(static_cast<sc_object*>(result)->name()) + ".rst" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::clk, "clk" , string(static_cast<sc_object*>(result)->name()) + ".clk" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::layer_id, "layer_id" , string(static_cast<sc_object*>(result)->name()) + ".layer_id" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::layer_id_type, "layer_id_type" , string(static_cast<sc_object*>(result)->name()) + ".layer_id_type" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::layer_id_valid, "layer_id_valid" , string(static_cast<sc_object*>(result)->name()) + ".layer_id_valid" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::data, "data" , string(static_cast<sc_object*>(result)->name()) + ".data" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::data_valid, "data_valid" , string(static_cast<sc_object*>(result)->name()) + ".data_valid" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::flit_tx, "flit_tx" , string(static_cast<sc_object*>(result)->name()) + ".flit_tx" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::req_tx, "req_tx" , string(static_cast<sc_object*>(result)->name()) + ".req_tx" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::ack_tx, "ack_tx" , string(static_cast<sc_object*>(result)->name()) + ".ack_tx" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::flit_rx, "flit_rx" , string(static_cast<sc_object*>(result)->name()) + ".flit_rx" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::req_rx, "req_rx" , string(static_cast<sc_object*>(result)->name()) + ".req_rx" );
       conf::stub_port_registrator<>::register_stub_port(&Controller::ack_rx, "ack_rx" , string(static_cast<sc_object*>(result)->name()) + ".ack_rx" );
      return result;
    } else {
      if (creationVerboseMode() >= 6) { std::cout << "Controller/Controller: " << hierach_name << " created." << std::endl; }
      Controller* result = new Controller(name.c_str(), 0/* WARNING: unsupported type 'tf'*/);
       cwr_sc_object_registry::inst().addPort(&result->rst, string(static_cast<sc_object*>(result)->name()) + ".rst" );
       cwr_sc_object_registry::inst().addPort(&result->clk, string(static_cast<sc_object*>(result)->name()) + ".clk" );
       cwr_sc_object_registry::inst().addPort(&result->layer_id, string(static_cast<sc_object*>(result)->name()) + ".layer_id" );
       cwr_sc_object_registry::inst().addPort(&result->layer_id_type, string(static_cast<sc_object*>(result)->name()) + ".layer_id_type" );
       cwr_sc_object_registry::inst().addPort(&result->layer_id_valid, string(static_cast<sc_object*>(result)->name()) + ".layer_id_valid" );
       cwr_sc_object_registry::inst().addPort(&result->data, string(static_cast<sc_object*>(result)->name()) + ".data" );
       cwr_sc_object_registry::inst().addPort(&result->data_valid, string(static_cast<sc_object*>(result)->name()) + ".data_valid" );
       cwr_sc_object_registry::inst().addPort(&result->flit_tx, string(static_cast<sc_object*>(result)->name()) + ".flit_tx" );
       cwr_sc_object_registry::inst().addPort(&result->req_tx, string(static_cast<sc_object*>(result)->name()) + ".req_tx" );
       cwr_sc_object_registry::inst().addPort(&result->ack_tx, string(static_cast<sc_object*>(result)->name()) + ".ack_tx" );
       cwr_sc_object_registry::inst().addPort(&result->flit_rx, string(static_cast<sc_object*>(result)->name()) + ".flit_rx" );
       cwr_sc_object_registry::inst().addPort(&result->req_rx, string(static_cast<sc_object*>(result)->name()) + ".req_rx" );
       cwr_sc_object_registry::inst().addPort(&result->ack_rx, string(static_cast<sc_object*>(result)->name()) + ".ack_rx" );
      return result;
    }
  }
};


class Core0Creator : public ScObjectCreatorBase
{
public:
  static unsigned int creationVerboseMode() {
    const char * const env_var_val = ::getenv("SNPS_SLS_DYNAMIC_CREATION_VERBOSE");
    return env_var_val ? (::atoi(env_var_val)) : 3;
  }
  sc_object* create ( const string& name ) {
    string hierach_name = getHierarchicalName(name);
    int core_id = scml_property_registry::inst().getIntProperty(
	      scml_property_registry::CONSTRUCTOR, hierach_name, "core_id");

    if (scml_property_registry::inst().hasProperty(scml_property_registry::MODULE, scml_property_registry::BOOL, hierach_name, "runtime_disabled") && 
        scml_property_registry::inst().getBoolProperty(scml_property_registry::MODULE, hierach_name, "runtime_disabled")) {
      sc_module_name n(name.c_str());
      if (creationVerboseMode() >= 6) { std::cout << "Core/Core: STUB for " << hierach_name << " created." << std::endl; }
      conf::stub *result = new conf::stub(n);
       conf::stub_port_registrator<>::register_stub_port(&Core::rst, "rst" , string(static_cast<sc_object*>(result)->name()) + ".rst" );
       conf::stub_port_registrator<>::register_stub_port(&Core::clk, "clk" , string(static_cast<sc_object*>(result)->name()) + ".clk" );
       conf::stub_port_registrator<>::register_stub_port(&Core::flit_rx, "flit_rx" , string(static_cast<sc_object*>(result)->name()) + ".flit_rx" );
       conf::stub_port_registrator<>::register_stub_port(&Core::req_rx, "req_rx" , string(static_cast<sc_object*>(result)->name()) + ".req_rx" );
       conf::stub_port_registrator<>::register_stub_port(&Core::ack_rx, "ack_rx" , string(static_cast<sc_object*>(result)->name()) + ".ack_rx" );
       conf::stub_port_registrator<>::register_stub_port(&Core::flit_tx, "flit_tx" , string(static_cast<sc_object*>(result)->name()) + ".flit_tx" );
       conf::stub_port_registrator<>::register_stub_port(&Core::req_tx, "req_tx" , string(static_cast<sc_object*>(result)->name()) + ".req_tx" );
       conf::stub_port_registrator<>::register_stub_port(&Core::ack_tx, "ack_tx" , string(static_cast<sc_object*>(result)->name()) + ".ack_tx" );
      return result;
    } else {
      if (creationVerboseMode() >= 6) { std::cout << "Core/Core: " << hierach_name << " created." << std::endl; }
      Core* result = new Core(name.c_str(), core_id, 0/* WARNING: unsupported type 'tf'*/);
       cwr_sc_object_registry::inst().addPort(&result->rst, string(static_cast<sc_object*>(result)->name()) + ".rst" );
       cwr_sc_object_registry::inst().addPort(&result->clk, string(static_cast<sc_object*>(result)->name()) + ".clk" );
       cwr_sc_object_registry::inst().addPort(&result->flit_rx, string(static_cast<sc_object*>(result)->name()) + ".flit_rx" );
       cwr_sc_object_registry::inst().addPort(&result->req_rx, string(static_cast<sc_object*>(result)->name()) + ".req_rx" );
       cwr_sc_object_registry::inst().addPort(&result->ack_rx, string(static_cast<sc_object*>(result)->name()) + ".ack_rx" );
       cwr_sc_object_registry::inst().addPort(&result->flit_tx, string(static_cast<sc_object*>(result)->name()) + ".flit_tx" );
       cwr_sc_object_registry::inst().addPort(&result->req_tx, string(static_cast<sc_object*>(result)->name()) + ".req_tx" );
       cwr_sc_object_registry::inst().addPort(&result->ack_tx, string(static_cast<sc_object*>(result)->name()) + ".ack_tx" );
      return result;
    }
  }
};

template <class BC>
class BusCreator : public ScObjectCreatorBase
{
  sc_object* create (const string& name) {
    ScGeneratedBaseBlockCreatorHelper helper(getHierarchicalName(name));
    if (helper.is_runtime_disabled()) {
      return new conf::StubBusCreator(name.c_str(), helper);
    } else {
      return new BC(name.c_str(), helper);
    }
  }
};

template <class GBC>
class GeneratedBlockCreator : public ScObjectCreatorBase
{
  sc_object* create (const string& name) {
    ScGeneratedBaseBlockCreatorHelper helper(getHierarchicalName(name));
    if (helper.is_runtime_disabled()) {
      return new conf::StubBusCreator(name.c_str(), helper);
    } else {
      return new GBC(name.c_str(), helper);
    }
  }
};



class ROM0Creator : public ScObjectCreatorBase
{
public:
  static unsigned int creationVerboseMode() {
    const char * const env_var_val = ::getenv("SNPS_SLS_DYNAMIC_CREATION_VERBOSE");
    return env_var_val ? (::atoi(env_var_val)) : 3;
  }
  sc_object* create ( const string& name ) {
    string hierach_name = getHierarchicalName(name);
    if (scml_property_registry::inst().hasProperty(scml_property_registry::MODULE, scml_property_registry::BOOL, hierach_name, "runtime_disabled") && 
        scml_property_registry::inst().getBoolProperty(scml_property_registry::MODULE, hierach_name, "runtime_disabled")) {
      sc_module_name n(name.c_str());
      if (creationVerboseMode() >= 6) { std::cout << "ROM/ROM: STUB for " << hierach_name << " created." << std::endl; }
      conf::stub *result = new conf::stub(n);
       conf::stub_port_registrator<>::register_stub_port(&ROM::clk, "clk" , string(static_cast<sc_object*>(result)->name()) + ".clk" );
       conf::stub_port_registrator<>::register_stub_port(&ROM::rst, "rst" , string(static_cast<sc_object*>(result)->name()) + ".rst" );
       conf::stub_port_registrator<>::register_stub_port(&ROM::layer_id, "layer_id" , string(static_cast<sc_object*>(result)->name()) + ".layer_id" );
       conf::stub_port_registrator<>::register_stub_port(&ROM::layer_id_type, "layer_id_type" , string(static_cast<sc_object*>(result)->name()) + ".layer_id_type" );
       conf::stub_port_registrator<>::register_stub_port(&ROM::layer_id_valid, "layer_id_valid" , string(static_cast<sc_object*>(result)->name()) + ".layer_id_valid" );
       conf::stub_port_registrator<>::register_stub_port(&ROM::data, "data" , string(static_cast<sc_object*>(result)->name()) + ".data" );
       conf::stub_port_registrator<>::register_stub_port(&ROM::data_valid, "data_valid" , string(static_cast<sc_object*>(result)->name()) + ".data_valid" );
      return result;
    } else {
      if (creationVerboseMode() >= 6) { std::cout << "ROM/ROM: " << hierach_name << " created." << std::endl; }
      ROM* result = new ROM(name.c_str());
       cwr_sc_object_registry::inst().addPort(&result->clk, string(static_cast<sc_object*>(result)->name()) + ".clk" );
       cwr_sc_object_registry::inst().addPort(&result->rst, string(static_cast<sc_object*>(result)->name()) + ".rst" );
       cwr_sc_object_registry::inst().addPort(&result->layer_id, string(static_cast<sc_object*>(result)->name()) + ".layer_id" );
       cwr_sc_object_registry::inst().addPort(&result->layer_id_type, string(static_cast<sc_object*>(result)->name()) + ".layer_id_type" );
       cwr_sc_object_registry::inst().addPort(&result->layer_id_valid, string(static_cast<sc_object*>(result)->name()) + ".layer_id_valid" );
       cwr_sc_object_registry::inst().addPort(&result->data, string(static_cast<sc_object*>(result)->name()) + ".data" );
       cwr_sc_object_registry::inst().addPort(&result->data_valid, string(static_cast<sc_object*>(result)->name()) + ".data_valid" );
      return result;
    }
  }
};


class Reset0Creator : public ScObjectCreatorBase
{
public:
  static unsigned int creationVerboseMode() {
    const char * const env_var_val = ::getenv("SNPS_SLS_DYNAMIC_CREATION_VERBOSE");
    return env_var_val ? (::atoi(env_var_val)) : 3;
  }
  sc_object* create ( const string& name ) {
    string hierach_name = getHierarchicalName(name);
    int _ticks = scml_property_registry::inst().getIntProperty(
	      scml_property_registry::CONSTRUCTOR, hierach_name, "_ticks");

    if (scml_property_registry::inst().hasProperty(scml_property_registry::MODULE, scml_property_registry::BOOL, hierach_name, "runtime_disabled") && 
        scml_property_registry::inst().getBoolProperty(scml_property_registry::MODULE, hierach_name, "runtime_disabled")) {
      sc_module_name n(name.c_str());
      if (creationVerboseMode() >= 6) { std::cout << "Reset/Reset: STUB for " << hierach_name << " created." << std::endl; }
      conf::stub *result = new conf::stub(n);
       conf::stub_port_registrator<>::register_stub_port(&Reset::rst, "rst" , string(static_cast<sc_object*>(result)->name()) + ".rst" );
      return result;
    } else {
      if (creationVerboseMode() >= 6) { std::cout << "Reset/Reset: " << hierach_name << " created." << std::endl; }
      Reset* result = new Reset(name.c_str(), _ticks);
       cwr_sc_object_registry::inst().addPort(&result->rst, string(static_cast<sc_object*>(result)->name()) + ".rst" );
      return result;
    }
  }
};


class Router0Creator : public ScObjectCreatorBase
{
public:
  static unsigned int creationVerboseMode() {
    const char * const env_var_val = ::getenv("SNPS_SLS_DYNAMIC_CREATION_VERBOSE");
    return env_var_val ? (::atoi(env_var_val)) : 3;
  }
  sc_object* create ( const string& name ) {
    string hierach_name = getHierarchicalName(name);
    int router_id = scml_property_registry::inst().getIntProperty(
	      scml_property_registry::CONSTRUCTOR, hierach_name, "router_id");

    if (scml_property_registry::inst().hasProperty(scml_property_registry::MODULE, scml_property_registry::BOOL, hierach_name, "runtime_disabled") && 
        scml_property_registry::inst().getBoolProperty(scml_property_registry::MODULE, hierach_name, "runtime_disabled")) {
      sc_module_name n(name.c_str());
      if (creationVerboseMode() >= 6) { std::cout << "Router/Router: STUB for " << hierach_name << " created." << std::endl; }
      conf::stub *result = new conf::stub(n);
       conf::stub_port_registrator<>::register_stub_port(&Router::rst, "rst" , string(static_cast<sc_object*>(result)->name()) + ".rst" );
       conf::stub_port_registrator<>::register_stub_port(&Router::clk, "clk" , string(static_cast<sc_object*>(result)->name()) + ".clk" );
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        conf::stub_port_registrator<5>::register_stub_port(&Router::out_flit, "out_flit" + port_array_index_tmp.str(), string(static_cast<sc_object*>(result)->name()) + ".out_flit" + port_array_index_tmp.str());
      }
     }
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        conf::stub_port_registrator<5>::register_stub_port(&Router::out_req, "out_req" + port_array_index_tmp.str(), string(static_cast<sc_object*>(result)->name()) + ".out_req" + port_array_index_tmp.str());
      }
     }
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        conf::stub_port_registrator<5>::register_stub_port(&Router::in_ack, "in_ack" + port_array_index_tmp.str(), string(static_cast<sc_object*>(result)->name()) + ".in_ack" + port_array_index_tmp.str());
      }
     }
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        conf::stub_port_registrator<5>::register_stub_port(&Router::in_flit, "in_flit" + port_array_index_tmp.str(), string(static_cast<sc_object*>(result)->name()) + ".in_flit" + port_array_index_tmp.str());
      }
     }
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        conf::stub_port_registrator<5>::register_stub_port(&Router::in_req, "in_req" + port_array_index_tmp.str(), string(static_cast<sc_object*>(result)->name()) + ".in_req" + port_array_index_tmp.str());
      }
     }
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        conf::stub_port_registrator<5>::register_stub_port(&Router::out_ack, "out_ack" + port_array_index_tmp.str(), string(static_cast<sc_object*>(result)->name()) + ".out_ack" + port_array_index_tmp.str());
      }
     }
      return result;
    } else {
      if (creationVerboseMode() >= 6) { std::cout << "Router/Router: " << hierach_name << " created." << std::endl; }
      Router* result = new Router(name.c_str(), router_id, 0/* WARNING: unsupported type 'tf'*/);
       cwr_sc_object_registry::inst().addPort(&result->rst, string(static_cast<sc_object*>(result)->name()) + ".rst" );
       cwr_sc_object_registry::inst().addPort(&result->clk, string(static_cast<sc_object*>(result)->name()) + ".clk" );
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        cwr_sc_object_registry::inst().addPort(&result->out_flit[port_array_index], string(static_cast<sc_object*>(result)->name()) + ".out_flit" + port_array_index_tmp.str());
      }
     }
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        cwr_sc_object_registry::inst().addPort(&result->out_req[port_array_index], string(static_cast<sc_object*>(result)->name()) + ".out_req" + port_array_index_tmp.str());
      }
     }
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        cwr_sc_object_registry::inst().addPort(&result->in_ack[port_array_index], string(static_cast<sc_object*>(result)->name()) + ".in_ack" + port_array_index_tmp.str());
      }
     }
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        cwr_sc_object_registry::inst().addPort(&result->in_flit[port_array_index], string(static_cast<sc_object*>(result)->name()) + ".in_flit" + port_array_index_tmp.str());
      }
     }
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        cwr_sc_object_registry::inst().addPort(&result->in_req[port_array_index], string(static_cast<sc_object*>(result)->name()) + ".in_req" + port_array_index_tmp.str());
      }
     }
      {
       unsigned pctDynamicPortArraySize = 0;
       {
        pctDynamicPortArraySize = 5;
       }
       // coverity[dead_error_condition]
       for (unsigned port_array_index = 0; port_array_index != pctDynamicPortArraySize; ++port_array_index) {
        std::ostringstream port_array_index_tmp;
        port_array_index_tmp << "[" << port_array_index << "]"; 
        cwr_sc_object_registry::inst().addPort(&result->out_ack[port_array_index], string(static_cast<sc_object*>(result)->name()) + ".out_ack" + port_array_index_tmp.str());
      }
     }
      return result;
    }
  }
};


class router0Creator : public ScObjectCreatorBase
{
public:
  static unsigned int creationVerboseMode() {
    const char * const env_var_val = ::getenv("SNPS_SLS_DYNAMIC_CREATION_VERBOSE");
    return env_var_val ? (::atoi(env_var_val)) : 3;
  }
  sc_object* create ( const string& name ) {
    string hierach_name = getHierarchicalName(name);
    int router_id = scml_property_registry::inst().getIntProperty(
	      scml_property_registry::CONSTRUCTOR, hierach_name, "router_id");

    string hdlSrcPath = scml_property_registry::inst().getStringProperty(
	      scml_property_registry::CONSTRUCTOR, hierach_name, "hdlSrcPath");

    if (scml_property_registry::inst().hasProperty(scml_property_registry::MODULE, scml_property_registry::BOOL, hierach_name, "runtime_disabled") && 
        scml_property_registry::inst().getBoolProperty(scml_property_registry::MODULE, hierach_name, "runtime_disabled")) {
      sc_module_name n(name.c_str());
      if (creationVerboseMode() >= 6) { std::cout << "router/router: STUB for " << hierach_name << " created." << std::endl; }
      conf::stub *result = new conf::stub(n);
       conf::stub_port_registrator<>::register_stub_port(&router::clk, "clk" , string(static_cast<sc_object*>(result)->name()) + ".clk" );
       conf::stub_port_registrator<>::register_stub_port(&router::rst, "rst" , string(static_cast<sc_object*>(result)->name()) + ".rst" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_flit_L, "out_flit_L" , string(static_cast<sc_object*>(result)->name()) + ".out_flit_L" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_flit_R, "out_flit_R" , string(static_cast<sc_object*>(result)->name()) + ".out_flit_R" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_flit_U, "out_flit_U" , string(static_cast<sc_object*>(result)->name()) + ".out_flit_U" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_flit_B, "out_flit_B" , string(static_cast<sc_object*>(result)->name()) + ".out_flit_B" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_flit_C, "out_flit_C" , string(static_cast<sc_object*>(result)->name()) + ".out_flit_C" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_req_L, "out_req_L" , string(static_cast<sc_object*>(result)->name()) + ".out_req_L" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_req_R, "out_req_R" , string(static_cast<sc_object*>(result)->name()) + ".out_req_R" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_req_U, "out_req_U" , string(static_cast<sc_object*>(result)->name()) + ".out_req_U" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_req_B, "out_req_B" , string(static_cast<sc_object*>(result)->name()) + ".out_req_B" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_req_C, "out_req_C" , string(static_cast<sc_object*>(result)->name()) + ".out_req_C" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_ack_L, "in_ack_L" , string(static_cast<sc_object*>(result)->name()) + ".in_ack_L" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_ack_R, "in_ack_R" , string(static_cast<sc_object*>(result)->name()) + ".in_ack_R" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_ack_U, "in_ack_U" , string(static_cast<sc_object*>(result)->name()) + ".in_ack_U" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_ack_B, "in_ack_B" , string(static_cast<sc_object*>(result)->name()) + ".in_ack_B" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_ack_C, "in_ack_C" , string(static_cast<sc_object*>(result)->name()) + ".in_ack_C" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_flit_L, "in_flit_L" , string(static_cast<sc_object*>(result)->name()) + ".in_flit_L" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_flit_R, "in_flit_R" , string(static_cast<sc_object*>(result)->name()) + ".in_flit_R" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_flit_U, "in_flit_U" , string(static_cast<sc_object*>(result)->name()) + ".in_flit_U" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_flit_B, "in_flit_B" , string(static_cast<sc_object*>(result)->name()) + ".in_flit_B" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_flit_C, "in_flit_C" , string(static_cast<sc_object*>(result)->name()) + ".in_flit_C" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_req_L, "in_req_L" , string(static_cast<sc_object*>(result)->name()) + ".in_req_L" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_req_R, "in_req_R" , string(static_cast<sc_object*>(result)->name()) + ".in_req_R" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_req_U, "in_req_U" , string(static_cast<sc_object*>(result)->name()) + ".in_req_U" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_req_B, "in_req_B" , string(static_cast<sc_object*>(result)->name()) + ".in_req_B" );
       conf::stub_port_registrator<>::register_stub_port(&router::in_req_C, "in_req_C" , string(static_cast<sc_object*>(result)->name()) + ".in_req_C" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_ack_L, "out_ack_L" , string(static_cast<sc_object*>(result)->name()) + ".out_ack_L" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_ack_R, "out_ack_R" , string(static_cast<sc_object*>(result)->name()) + ".out_ack_R" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_ack_U, "out_ack_U" , string(static_cast<sc_object*>(result)->name()) + ".out_ack_U" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_ack_B, "out_ack_B" , string(static_cast<sc_object*>(result)->name()) + ".out_ack_B" );
       conf::stub_port_registrator<>::register_stub_port(&router::out_ack_C, "out_ack_C" , string(static_cast<sc_object*>(result)->name()) + ".out_ack_C" );
      return result;
    } else {
      if (creationVerboseMode() >= 6) { std::cout << "router/router: " << hierach_name << " created." << std::endl; }
      router* result = new router(name.c_str(), router_id, hdlSrcPath.c_str());
       cwr_sc_object_registry::inst().addPort(&result->clk, string(static_cast<sc_object*>(result)->name()) + ".clk" );
       cwr_sc_object_registry::inst().addPort(&result->rst, string(static_cast<sc_object*>(result)->name()) + ".rst" );
       cwr_sc_object_registry::inst().addPort(&result->out_flit_L, string(static_cast<sc_object*>(result)->name()) + ".out_flit_L" );
       cwr_sc_object_registry::inst().addPort(&result->out_flit_R, string(static_cast<sc_object*>(result)->name()) + ".out_flit_R" );
       cwr_sc_object_registry::inst().addPort(&result->out_flit_U, string(static_cast<sc_object*>(result)->name()) + ".out_flit_U" );
       cwr_sc_object_registry::inst().addPort(&result->out_flit_B, string(static_cast<sc_object*>(result)->name()) + ".out_flit_B" );
       cwr_sc_object_registry::inst().addPort(&result->out_flit_C, string(static_cast<sc_object*>(result)->name()) + ".out_flit_C" );
       cwr_sc_object_registry::inst().addPort(&result->out_req_L, string(static_cast<sc_object*>(result)->name()) + ".out_req_L" );
       cwr_sc_object_registry::inst().addPort(&result->out_req_R, string(static_cast<sc_object*>(result)->name()) + ".out_req_R" );
       cwr_sc_object_registry::inst().addPort(&result->out_req_U, string(static_cast<sc_object*>(result)->name()) + ".out_req_U" );
       cwr_sc_object_registry::inst().addPort(&result->out_req_B, string(static_cast<sc_object*>(result)->name()) + ".out_req_B" );
       cwr_sc_object_registry::inst().addPort(&result->out_req_C, string(static_cast<sc_object*>(result)->name()) + ".out_req_C" );
       cwr_sc_object_registry::inst().addPort(&result->in_ack_L, string(static_cast<sc_object*>(result)->name()) + ".in_ack_L" );
       cwr_sc_object_registry::inst().addPort(&result->in_ack_R, string(static_cast<sc_object*>(result)->name()) + ".in_ack_R" );
       cwr_sc_object_registry::inst().addPort(&result->in_ack_U, string(static_cast<sc_object*>(result)->name()) + ".in_ack_U" );
       cwr_sc_object_registry::inst().addPort(&result->in_ack_B, string(static_cast<sc_object*>(result)->name()) + ".in_ack_B" );
       cwr_sc_object_registry::inst().addPort(&result->in_ack_C, string(static_cast<sc_object*>(result)->name()) + ".in_ack_C" );
       cwr_sc_object_registry::inst().addPort(&result->in_flit_L, string(static_cast<sc_object*>(result)->name()) + ".in_flit_L" );
       cwr_sc_object_registry::inst().addPort(&result->in_flit_R, string(static_cast<sc_object*>(result)->name()) + ".in_flit_R" );
       cwr_sc_object_registry::inst().addPort(&result->in_flit_U, string(static_cast<sc_object*>(result)->name()) + ".in_flit_U" );
       cwr_sc_object_registry::inst().addPort(&result->in_flit_B, string(static_cast<sc_object*>(result)->name()) + ".in_flit_B" );
       cwr_sc_object_registry::inst().addPort(&result->in_flit_C, string(static_cast<sc_object*>(result)->name()) + ".in_flit_C" );
       cwr_sc_object_registry::inst().addPort(&result->in_req_L, string(static_cast<sc_object*>(result)->name()) + ".in_req_L" );
       cwr_sc_object_registry::inst().addPort(&result->in_req_R, string(static_cast<sc_object*>(result)->name()) + ".in_req_R" );
       cwr_sc_object_registry::inst().addPort(&result->in_req_U, string(static_cast<sc_object*>(result)->name()) + ".in_req_U" );
       cwr_sc_object_registry::inst().addPort(&result->in_req_B, string(static_cast<sc_object*>(result)->name()) + ".in_req_B" );
       cwr_sc_object_registry::inst().addPort(&result->in_req_C, string(static_cast<sc_object*>(result)->name()) + ".in_req_C" );
       cwr_sc_object_registry::inst().addPort(&result->out_ack_L, string(static_cast<sc_object*>(result)->name()) + ".out_ack_L" );
       cwr_sc_object_registry::inst().addPort(&result->out_ack_R, string(static_cast<sc_object*>(result)->name()) + ".out_ack_R" );
       cwr_sc_object_registry::inst().addPort(&result->out_ack_U, string(static_cast<sc_object*>(result)->name()) + ".out_ack_U" );
       cwr_sc_object_registry::inst().addPort(&result->out_ack_B, string(static_cast<sc_object*>(result)->name()) + ".out_ack_B" );
       cwr_sc_object_registry::inst().addPort(&result->out_ack_C, string(static_cast<sc_object*>(result)->name()) + ".out_ack_C" );
      return result;
    }
  }
};



extern void scv_tr_cwrdb_init();

int sc_main(int argc, char* argv[])
{
  scv_tr_cwrdb_init();
  ScObjectFactory::inst().addCreator ("Clock0", new Clock0Creator());
  ScObjectFactory::inst().addCreator ("Controller0", new Controller0Creator());
  ScObjectFactory::inst().addCreator ("Core0", new Core0Creator());
  ScObjectFactory::inst().addCreator ("ROM0", new ROM0Creator());
  ScObjectFactory::inst().addCreator ("Reset0", new Reset0Creator());
  ScObjectFactory::inst().addCreator ("Router0", new Router0Creator());
  ScObjectFactory::inst().addCreator ("router0", new router0Creator());
  ScObjectFactory::inst().addCreator ("sc_signal<bool>", new ScPrimChannelCreator<sc_signal<bool> >());
  ScObjectFactory::inst().addCreator ("sc_signal<float>", new ScPrimChannelCreator<sc_signal<float> >());
  ScObjectFactory::inst().addCreator ("sc_signal<int>", new ScPrimChannelCreator<sc_signal<int> >());
  ScObjectFactory::inst().addCreator ("sc_signal<sc_lv<34> >", new ScPrimChannelCreator<sc_signal<sc_lv<34> > >());
  ScPortFactory::inst().addCreator ("sc_in<bool>", new ScPortCreator<sc_in<bool> >());
  ScPortFactory::inst().addCreator ("sc_in<float>", new ScPortCreator<sc_in<float> >());
  ScPortFactory::inst().addCreator ("sc_in<int>", new ScPortCreator<sc_in<int> >());
  ScPortFactory::inst().addCreator ("sc_in<sc_lv<34> >", new ScPortCreator<sc_in<sc_lv<34> > >());
  ScPortFactory::inst().addCreator ("sc_inout<bool>", new ScPortCreator<sc_inout<bool> >());
  ScPortFactory::inst().addCreator ("sc_inout<float>", new ScPortCreator<sc_inout<float> >());
  ScPortFactory::inst().addCreator ("sc_inout<int>", new ScPortCreator<sc_inout<int> >());
  ScPortFactory::inst().addCreator ("sc_inout<sc_lv<34> >", new ScPortCreator<sc_inout<sc_lv<34> > >());
  ScPortFactory::inst().addCreator ("sc_out<bool>", new ScPortCreator<sc_out<bool> >());
  ScPortFactory::inst().addCreator ("sc_out<float>", new ScPortCreator<sc_out<float> >());
  ScPortFactory::inst().addCreator ("sc_out<int>", new ScPortCreator<sc_out<int> >());
  ScPortFactory::inst().addCreator ("sc_out<sc_lv<34> >", new ScPortCreator<sc_out<sc_lv<34> > >());
  if (::getenv("SNPS_SLS_DYNAMIC_LOADER_VERBOSE")) { std::cout << "Clock/Clock loaded." << std::endl; }
  if (::getenv("SNPS_SLS_DYNAMIC_LOADER_VERBOSE")) { std::cout << "Controller/Controller loaded." << std::endl; }
  if (::getenv("SNPS_SLS_DYNAMIC_LOADER_VERBOSE")) { std::cout << "Core/Core loaded." << std::endl; }
  if (::getenv("SNPS_SLS_DYNAMIC_LOADER_VERBOSE")) { std::cout << "ROM/ROM loaded." << std::endl; }
  if (::getenv("SNPS_SLS_DYNAMIC_LOADER_VERBOSE")) { std::cout << "Reset/Reset loaded." << std::endl; }
  if (::getenv("SNPS_SLS_DYNAMIC_LOADER_VERBOSE")) { std::cout << "Router/Router loaded." << std::endl; }
  if (::getenv("SNPS_SLS_DYNAMIC_LOADER_VERBOSE")) { std::cout << "router/router loaded." << std::endl; }

  scml_property_registry::inst().setXMLFile("Properties.xml");

  nSnps::nDynamicLoading::DynamicLoader dynamicLoader
    (scml_property_registry::inst().getStringProperty(scml_property_registry::GLOBAL, "", "/pct/runtime/dynamic_load_info"));

  string xml_file_path = scml_property_registry::inst().getPropertyXmlFilePath();
  string hierarchy_xml_file = xml_file_path + "/" + 
    scml_property_registry::inst().getStringProperty(
      scml_property_registry::GLOBAL, "", "system_hierarchy_xml_file");

  unique_ptr<cwr_sc_hierarch_module> HARDWARE ( new cwr_sc_hierarch_module("HARDWARE", hierarchy_xml_file));

  // Enable/disable backdoor accesses
  scml_abstraction_level_switch::instance().set_simulation_mode(scml_property_registry::inst().getStringProperty(scml_property_registry::GLOBAL, "", "/pct/runtime/simulation_mode")=="MODE_FULL_SIMULATION" ? scml_abstraction_level_switch::MODE_FULL_SIMULATION : scml_abstraction_level_switch::MODE_SPEED_OPTIMIZED);

  try {
    sc_start();
  } catch (const sc_core::sc_report& sce) { 
    std::cout << "Exception raised by sc_start() : " << sce.what() << std::endl;  
    return 1;  
  } 

  if (sc_is_running()) {
    sc_stop();
  }

  return 0;
}
