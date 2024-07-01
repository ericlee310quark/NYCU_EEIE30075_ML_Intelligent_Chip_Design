#ifndef _HPG_router_proxy_h_H_
#define _HPG_router_proxy_h_H_

#include "systemc.h"

#define LEFT 0b0
#define RIGHT 0b1
#define UP 2
#define BUTTOM 3
#define CORE 4
#define s_IDEL 0b0
#define s_ROUTE 0b1
#define s_TRANS 2
#define s_WAIT 3

SC_HDL_MODULE( router) {
    sc_in<bool> clk;
    sc_in<bool> rst;
    sc_out<sc_lv<34> > out_flit_L;
    sc_out<sc_lv<34> > out_flit_R;
    sc_out<sc_lv<34> > out_flit_U;
    sc_out<sc_lv<34> > out_flit_B;
    sc_out<sc_lv<34> > out_flit_C;
    sc_out<bool> out_req_L;
    sc_out<bool> out_req_R;
    sc_out<bool> out_req_U;
    sc_out<bool> out_req_B;
    sc_out<bool> out_req_C;
    sc_in<bool> in_ack_L;
    sc_in<bool> in_ack_R;
    sc_in<bool> in_ack_U;
    sc_in<bool> in_ack_B;
    sc_in<bool> in_ack_C;
    sc_in<sc_lv<34> > in_flit_L;
    sc_in<sc_lv<34> > in_flit_R;
    sc_in<sc_lv<34> > in_flit_U;
    sc_in<sc_lv<34> > in_flit_B;
    sc_in<sc_lv<34> > in_flit_C;
    sc_in<bool> in_req_L;
    sc_in<bool> in_req_R;
    sc_in<bool> in_req_U;
    sc_in<bool> in_req_B;
    sc_in<bool> in_req_C;
    sc_out<bool> out_ack_L;
    sc_out<bool> out_ack_R;
    sc_out<bool> out_ack_U;
    sc_out<bool> out_ack_B;
    sc_out<bool> out_ack_C;

    std::string hpg_log_lib;
    std::string hpg_module_name;
    std::string hpg_hdl_src_path;

    std::string libraryName() { return hpg_log_lib; }

    std::string moduleName() { return hpg_module_name; }

    cwr_hdlLangType hdl_language_type() { return sc_hdl_module::cwr_verilog; }

    void getVerilogSourceFiles(std::vector<std::string>& verilog_files) {
        verilog_files.push_back(hpg_hdl_src_path + std::string("/RAID2/COURSE/mlchip/mlchip007/FP/router.v"));
    }

    router(sc_module_name name, int router_id = 0, const char* hdlSrcPath="") : 
        sc_hdl_module(name), hpg_log_lib("CWR_HDL_WORK"), hpg_module_name("router"), hpg_hdl_src_path()
        , clk("clk"), rst("rst"), out_flit_L("out_flit_L"), out_flit_R("out_flit_R")
        , out_flit_U("out_flit_U"), out_flit_B("out_flit_B"), out_flit_C("out_flit_C")
        , out_req_L("out_req_L"), out_req_R("out_req_R"), out_req_U("out_req_U")
        , out_req_B("out_req_B"), out_req_C("out_req_C"), in_ack_L("in_ack_L"), in_ack_R("in_ack_R")
        , in_ack_U("in_ack_U"), in_ack_B("in_ack_B"), in_ack_C("in_ack_C"), in_flit_L("in_flit_L")
        , in_flit_R("in_flit_R"), in_flit_U("in_flit_U"), in_flit_B("in_flit_B")
        , in_flit_C("in_flit_C"), in_req_L("in_req_L"), in_req_R("in_req_R"), in_req_U("in_req_U")
        , in_req_B("in_req_B"), in_req_C("in_req_C"), out_ack_L("out_ack_L"), out_ack_R("out_ack_R")
        , out_ack_U("out_ack_U"), out_ack_B("out_ack_B"), out_ack_C("out_ack_C") {

        if (hdlSrcPath != 0 && strlen(hdlSrcPath) != 0) {
          hpg_hdl_src_path = std::string(hdlSrcPath) + "/";
        }

        ncwr_set_hdl_param("router_id", router_id);

    }
};

#endif
