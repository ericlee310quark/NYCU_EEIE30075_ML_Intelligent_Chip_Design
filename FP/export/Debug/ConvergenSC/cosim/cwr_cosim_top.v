`timescale 1 ps / 1 ps

module cwr_cosim_top;

wire        cwr_HARDWARE_v_i_router_v_clk;
wire        cwr_HARDWARE_v_i_router_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_1_v_clk;
wire        cwr_HARDWARE_v_i_router_1_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_1_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_1_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_1_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_1_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_1_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_1_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_1_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_1_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_1_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_1_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_1_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_1_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_1_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_1_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_1_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_1_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_1_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_1_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_1_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_1_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_1_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_1_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_1_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_1_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_1_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_1_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_1_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_1_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_1_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_1_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_2_v_clk;
wire        cwr_HARDWARE_v_i_router_2_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_2_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_2_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_2_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_2_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_2_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_2_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_2_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_2_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_2_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_2_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_2_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_2_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_2_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_2_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_2_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_2_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_2_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_2_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_2_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_2_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_2_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_2_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_2_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_2_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_2_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_2_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_2_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_2_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_2_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_2_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_3_v_clk;
wire        cwr_HARDWARE_v_i_router_3_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_3_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_3_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_3_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_3_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_3_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_3_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_3_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_3_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_3_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_3_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_3_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_3_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_3_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_3_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_3_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_3_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_3_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_3_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_3_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_3_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_3_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_3_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_3_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_3_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_3_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_3_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_3_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_3_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_3_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_3_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_v_clk;
wire        cwr_HARDWARE_v_i_router_4_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_1_v_clk;
wire        cwr_HARDWARE_v_i_router_4_1_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_1_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_1_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_1_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_1_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_1_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_1_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_1_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_1_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_1_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_1_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_1_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_1_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_1_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_1_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_1_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_1_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_1_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_1_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_1_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_1_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_1_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_1_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_1_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_1_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_1_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_1_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_1_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_1_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_1_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_1_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_3_v_clk;
wire        cwr_HARDWARE_v_i_router_4_3_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_3_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_3_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_3_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_3_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_3_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_3_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_3_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_3_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_3_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_3_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_3_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_3_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_3_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_3_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_3_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_3_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_3_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_3_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_3_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_3_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_3_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_3_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_3_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_3_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_3_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_3_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_3_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_3_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_3_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_3_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_4_v_clk;
wire        cwr_HARDWARE_v_i_router_4_4_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_4_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_4_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_4_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_4_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_4_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_4_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_4_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_4_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_4_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_4_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_4_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_4_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_4_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_4_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_4_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_4_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_4_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_4_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_4_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_4_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_4_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_4_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_4_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_4_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_4_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_4_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_4_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_4_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_4_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_4_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_5_v_clk;
wire        cwr_HARDWARE_v_i_router_4_5_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_5_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_5_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_5_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_5_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_5_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_5_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_5_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_5_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_5_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_5_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_5_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_5_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_5_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_5_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_5_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_5_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_5_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_5_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_5_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_5_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_5_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_5_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_5_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_5_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_5_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_5_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_5_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_5_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_5_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_5_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_6_v_clk;
wire        cwr_HARDWARE_v_i_router_4_6_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_6_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_6_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_6_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_6_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_6_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_6_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_6_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_6_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_6_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_6_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_6_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_6_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_6_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_6_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_6_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_6_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_6_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_6_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_6_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_6_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_6_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_6_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_6_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_6_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_6_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_6_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_6_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_6_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_6_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_6_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_7_v_clk;
wire        cwr_HARDWARE_v_i_router_4_7_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_7_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_7_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_7_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_7_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_7_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_7_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_7_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_7_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_7_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_7_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_7_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_7_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_7_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_7_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_7_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_7_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_7_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_7_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_7_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_7_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_7_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_7_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_7_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_7_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_7_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_7_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_7_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_7_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_7_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_7_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_8_v_clk;
wire        cwr_HARDWARE_v_i_router_4_8_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_8_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_8_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_8_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_8_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_8_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_8_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_8_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_8_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_8_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_8_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_8_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_8_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_8_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_8_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_8_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_8_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_8_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_8_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_8_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_8_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_8_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_8_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_8_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_8_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_8_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_8_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_8_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_8_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_8_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_8_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_9_v_clk;
wire        cwr_HARDWARE_v_i_router_4_9_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_9_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_9_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_9_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_9_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_9_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_9_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_9_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_9_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_9_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_9_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_9_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_9_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_9_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_9_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_9_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_9_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_9_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_9_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_9_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_9_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_9_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_9_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_9_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_9_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_9_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_9_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_9_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_9_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_9_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_9_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_10_v_clk;
wire        cwr_HARDWARE_v_i_router_4_10_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_10_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_10_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_10_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_10_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_10_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_10_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_10_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_10_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_10_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_10_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_10_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_10_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_10_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_10_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_10_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_10_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_10_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_10_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_10_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_10_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_10_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_10_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_10_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_10_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_10_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_10_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_10_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_10_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_10_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_10_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_11_v_clk;
wire        cwr_HARDWARE_v_i_router_4_11_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_11_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_11_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_11_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_11_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_11_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_11_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_11_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_11_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_11_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_11_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_11_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_11_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_11_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_11_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_11_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_11_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_11_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_11_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_11_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_11_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_11_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_11_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_11_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_11_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_11_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_11_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_11_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_11_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_11_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_11_v_out_ack_C;
wire        cwr_HARDWARE_v_i_router_4_12_v_clk;
wire        cwr_HARDWARE_v_i_router_4_12_v_rst;
wire [33:0] cwr_HARDWARE_v_i_router_4_12_v_out_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_12_v_out_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_12_v_out_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_12_v_out_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_12_v_out_flit_C;
wire        cwr_HARDWARE_v_i_router_4_12_v_out_req_L;
wire        cwr_HARDWARE_v_i_router_4_12_v_out_req_R;
wire        cwr_HARDWARE_v_i_router_4_12_v_out_req_U;
wire        cwr_HARDWARE_v_i_router_4_12_v_out_req_B;
wire        cwr_HARDWARE_v_i_router_4_12_v_out_req_C;
wire        cwr_HARDWARE_v_i_router_4_12_v_in_ack_L;
wire        cwr_HARDWARE_v_i_router_4_12_v_in_ack_R;
wire        cwr_HARDWARE_v_i_router_4_12_v_in_ack_U;
wire        cwr_HARDWARE_v_i_router_4_12_v_in_ack_B;
wire        cwr_HARDWARE_v_i_router_4_12_v_in_ack_C;
wire [33:0] cwr_HARDWARE_v_i_router_4_12_v_in_flit_L;
wire [33:0] cwr_HARDWARE_v_i_router_4_12_v_in_flit_R;
wire [33:0] cwr_HARDWARE_v_i_router_4_12_v_in_flit_U;
wire [33:0] cwr_HARDWARE_v_i_router_4_12_v_in_flit_B;
wire [33:0] cwr_HARDWARE_v_i_router_4_12_v_in_flit_C;
wire        cwr_HARDWARE_v_i_router_4_12_v_in_req_L;
wire        cwr_HARDWARE_v_i_router_4_12_v_in_req_R;
wire        cwr_HARDWARE_v_i_router_4_12_v_in_req_U;
wire        cwr_HARDWARE_v_i_router_4_12_v_in_req_B;
wire        cwr_HARDWARE_v_i_router_4_12_v_in_req_C;
wire        cwr_HARDWARE_v_i_router_4_12_v_out_ack_L;
wire        cwr_HARDWARE_v_i_router_4_12_v_out_ack_R;
wire        cwr_HARDWARE_v_i_router_4_12_v_out_ack_U;
wire        cwr_HARDWARE_v_i_router_4_12_v_out_ack_B;
wire        cwr_HARDWARE_v_i_router_4_12_v_out_ack_C;

router cwr_HARDWARE_v_i_router(
  cwr_HARDWARE_v_i_router_v_clk,
  cwr_HARDWARE_v_i_router_v_rst,
  cwr_HARDWARE_v_i_router_v_out_flit_L,
  cwr_HARDWARE_v_i_router_v_out_flit_R,
  cwr_HARDWARE_v_i_router_v_out_flit_U,
  cwr_HARDWARE_v_i_router_v_out_flit_B,
  cwr_HARDWARE_v_i_router_v_out_flit_C,
  cwr_HARDWARE_v_i_router_v_out_req_L,
  cwr_HARDWARE_v_i_router_v_out_req_R,
  cwr_HARDWARE_v_i_router_v_out_req_U,
  cwr_HARDWARE_v_i_router_v_out_req_B,
  cwr_HARDWARE_v_i_router_v_out_req_C,
  cwr_HARDWARE_v_i_router_v_in_ack_L,
  cwr_HARDWARE_v_i_router_v_in_ack_R,
  cwr_HARDWARE_v_i_router_v_in_ack_U,
  cwr_HARDWARE_v_i_router_v_in_ack_B,
  cwr_HARDWARE_v_i_router_v_in_ack_C,
  cwr_HARDWARE_v_i_router_v_in_flit_L,
  cwr_HARDWARE_v_i_router_v_in_flit_R,
  cwr_HARDWARE_v_i_router_v_in_flit_U,
  cwr_HARDWARE_v_i_router_v_in_flit_B,
  cwr_HARDWARE_v_i_router_v_in_flit_C,
  cwr_HARDWARE_v_i_router_v_in_req_L,
  cwr_HARDWARE_v_i_router_v_in_req_R,
  cwr_HARDWARE_v_i_router_v_in_req_U,
  cwr_HARDWARE_v_i_router_v_in_req_B,
  cwr_HARDWARE_v_i_router_v_in_req_C,
  cwr_HARDWARE_v_i_router_v_out_ack_L,
  cwr_HARDWARE_v_i_router_v_out_ack_R,
  cwr_HARDWARE_v_i_router_v_out_ack_U,
  cwr_HARDWARE_v_i_router_v_out_ack_B,
  cwr_HARDWARE_v_i_router_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router.router_id = 0;

router cwr_HARDWARE_v_i_router_1(
  cwr_HARDWARE_v_i_router_1_v_clk,
  cwr_HARDWARE_v_i_router_1_v_rst,
  cwr_HARDWARE_v_i_router_1_v_out_flit_L,
  cwr_HARDWARE_v_i_router_1_v_out_flit_R,
  cwr_HARDWARE_v_i_router_1_v_out_flit_U,
  cwr_HARDWARE_v_i_router_1_v_out_flit_B,
  cwr_HARDWARE_v_i_router_1_v_out_flit_C,
  cwr_HARDWARE_v_i_router_1_v_out_req_L,
  cwr_HARDWARE_v_i_router_1_v_out_req_R,
  cwr_HARDWARE_v_i_router_1_v_out_req_U,
  cwr_HARDWARE_v_i_router_1_v_out_req_B,
  cwr_HARDWARE_v_i_router_1_v_out_req_C,
  cwr_HARDWARE_v_i_router_1_v_in_ack_L,
  cwr_HARDWARE_v_i_router_1_v_in_ack_R,
  cwr_HARDWARE_v_i_router_1_v_in_ack_U,
  cwr_HARDWARE_v_i_router_1_v_in_ack_B,
  cwr_HARDWARE_v_i_router_1_v_in_ack_C,
  cwr_HARDWARE_v_i_router_1_v_in_flit_L,
  cwr_HARDWARE_v_i_router_1_v_in_flit_R,
  cwr_HARDWARE_v_i_router_1_v_in_flit_U,
  cwr_HARDWARE_v_i_router_1_v_in_flit_B,
  cwr_HARDWARE_v_i_router_1_v_in_flit_C,
  cwr_HARDWARE_v_i_router_1_v_in_req_L,
  cwr_HARDWARE_v_i_router_1_v_in_req_R,
  cwr_HARDWARE_v_i_router_1_v_in_req_U,
  cwr_HARDWARE_v_i_router_1_v_in_req_B,
  cwr_HARDWARE_v_i_router_1_v_in_req_C,
  cwr_HARDWARE_v_i_router_1_v_out_ack_L,
  cwr_HARDWARE_v_i_router_1_v_out_ack_R,
  cwr_HARDWARE_v_i_router_1_v_out_ack_U,
  cwr_HARDWARE_v_i_router_1_v_out_ack_B,
  cwr_HARDWARE_v_i_router_1_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_1.router_id = 1;

router cwr_HARDWARE_v_i_router_2(
  cwr_HARDWARE_v_i_router_2_v_clk,
  cwr_HARDWARE_v_i_router_2_v_rst,
  cwr_HARDWARE_v_i_router_2_v_out_flit_L,
  cwr_HARDWARE_v_i_router_2_v_out_flit_R,
  cwr_HARDWARE_v_i_router_2_v_out_flit_U,
  cwr_HARDWARE_v_i_router_2_v_out_flit_B,
  cwr_HARDWARE_v_i_router_2_v_out_flit_C,
  cwr_HARDWARE_v_i_router_2_v_out_req_L,
  cwr_HARDWARE_v_i_router_2_v_out_req_R,
  cwr_HARDWARE_v_i_router_2_v_out_req_U,
  cwr_HARDWARE_v_i_router_2_v_out_req_B,
  cwr_HARDWARE_v_i_router_2_v_out_req_C,
  cwr_HARDWARE_v_i_router_2_v_in_ack_L,
  cwr_HARDWARE_v_i_router_2_v_in_ack_R,
  cwr_HARDWARE_v_i_router_2_v_in_ack_U,
  cwr_HARDWARE_v_i_router_2_v_in_ack_B,
  cwr_HARDWARE_v_i_router_2_v_in_ack_C,
  cwr_HARDWARE_v_i_router_2_v_in_flit_L,
  cwr_HARDWARE_v_i_router_2_v_in_flit_R,
  cwr_HARDWARE_v_i_router_2_v_in_flit_U,
  cwr_HARDWARE_v_i_router_2_v_in_flit_B,
  cwr_HARDWARE_v_i_router_2_v_in_flit_C,
  cwr_HARDWARE_v_i_router_2_v_in_req_L,
  cwr_HARDWARE_v_i_router_2_v_in_req_R,
  cwr_HARDWARE_v_i_router_2_v_in_req_U,
  cwr_HARDWARE_v_i_router_2_v_in_req_B,
  cwr_HARDWARE_v_i_router_2_v_in_req_C,
  cwr_HARDWARE_v_i_router_2_v_out_ack_L,
  cwr_HARDWARE_v_i_router_2_v_out_ack_R,
  cwr_HARDWARE_v_i_router_2_v_out_ack_U,
  cwr_HARDWARE_v_i_router_2_v_out_ack_B,
  cwr_HARDWARE_v_i_router_2_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_2.router_id = 2;

router cwr_HARDWARE_v_i_router_3(
  cwr_HARDWARE_v_i_router_3_v_clk,
  cwr_HARDWARE_v_i_router_3_v_rst,
  cwr_HARDWARE_v_i_router_3_v_out_flit_L,
  cwr_HARDWARE_v_i_router_3_v_out_flit_R,
  cwr_HARDWARE_v_i_router_3_v_out_flit_U,
  cwr_HARDWARE_v_i_router_3_v_out_flit_B,
  cwr_HARDWARE_v_i_router_3_v_out_flit_C,
  cwr_HARDWARE_v_i_router_3_v_out_req_L,
  cwr_HARDWARE_v_i_router_3_v_out_req_R,
  cwr_HARDWARE_v_i_router_3_v_out_req_U,
  cwr_HARDWARE_v_i_router_3_v_out_req_B,
  cwr_HARDWARE_v_i_router_3_v_out_req_C,
  cwr_HARDWARE_v_i_router_3_v_in_ack_L,
  cwr_HARDWARE_v_i_router_3_v_in_ack_R,
  cwr_HARDWARE_v_i_router_3_v_in_ack_U,
  cwr_HARDWARE_v_i_router_3_v_in_ack_B,
  cwr_HARDWARE_v_i_router_3_v_in_ack_C,
  cwr_HARDWARE_v_i_router_3_v_in_flit_L,
  cwr_HARDWARE_v_i_router_3_v_in_flit_R,
  cwr_HARDWARE_v_i_router_3_v_in_flit_U,
  cwr_HARDWARE_v_i_router_3_v_in_flit_B,
  cwr_HARDWARE_v_i_router_3_v_in_flit_C,
  cwr_HARDWARE_v_i_router_3_v_in_req_L,
  cwr_HARDWARE_v_i_router_3_v_in_req_R,
  cwr_HARDWARE_v_i_router_3_v_in_req_U,
  cwr_HARDWARE_v_i_router_3_v_in_req_B,
  cwr_HARDWARE_v_i_router_3_v_in_req_C,
  cwr_HARDWARE_v_i_router_3_v_out_ack_L,
  cwr_HARDWARE_v_i_router_3_v_out_ack_R,
  cwr_HARDWARE_v_i_router_3_v_out_ack_U,
  cwr_HARDWARE_v_i_router_3_v_out_ack_B,
  cwr_HARDWARE_v_i_router_3_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_3.router_id = 3;

router cwr_HARDWARE_v_i_router_4(
  cwr_HARDWARE_v_i_router_4_v_clk,
  cwr_HARDWARE_v_i_router_4_v_rst,
  cwr_HARDWARE_v_i_router_4_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4.router_id = 4;

router cwr_HARDWARE_v_i_router_4_1(
  cwr_HARDWARE_v_i_router_4_1_v_clk,
  cwr_HARDWARE_v_i_router_4_1_v_rst,
  cwr_HARDWARE_v_i_router_4_1_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_1_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_1_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_1_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_1_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_1_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_1_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_1_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_1_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_1_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_1_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_1_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_1_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_1_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_1_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_1_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_1_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_1_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_1_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_1_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_1_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_1_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_1_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_1_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_1_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_1_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_1_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_1_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_1_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_1_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4_1.router_id = 5;

router cwr_HARDWARE_v_i_router_4_3(
  cwr_HARDWARE_v_i_router_4_3_v_clk,
  cwr_HARDWARE_v_i_router_4_3_v_rst,
  cwr_HARDWARE_v_i_router_4_3_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_3_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_3_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_3_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_3_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_3_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_3_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_3_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_3_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_3_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_3_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_3_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_3_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_3_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_3_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_3_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_3_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_3_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_3_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_3_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_3_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_3_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_3_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_3_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_3_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_3_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_3_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_3_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_3_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_3_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4_3.router_id = 6;

router cwr_HARDWARE_v_i_router_4_4(
  cwr_HARDWARE_v_i_router_4_4_v_clk,
  cwr_HARDWARE_v_i_router_4_4_v_rst,
  cwr_HARDWARE_v_i_router_4_4_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_4_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_4_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_4_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_4_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_4_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_4_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_4_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_4_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_4_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_4_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_4_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_4_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_4_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_4_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_4_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_4_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_4_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_4_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_4_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_4_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_4_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_4_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_4_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_4_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_4_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_4_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_4_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_4_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_4_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4_4.router_id = 7;

router cwr_HARDWARE_v_i_router_4_5(
  cwr_HARDWARE_v_i_router_4_5_v_clk,
  cwr_HARDWARE_v_i_router_4_5_v_rst,
  cwr_HARDWARE_v_i_router_4_5_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_5_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_5_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_5_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_5_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_5_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_5_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_5_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_5_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_5_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_5_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_5_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_5_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_5_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_5_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_5_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_5_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_5_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_5_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_5_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_5_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_5_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_5_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_5_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_5_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_5_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_5_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_5_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_5_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_5_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4_5.router_id = 8;

router cwr_HARDWARE_v_i_router_4_6(
  cwr_HARDWARE_v_i_router_4_6_v_clk,
  cwr_HARDWARE_v_i_router_4_6_v_rst,
  cwr_HARDWARE_v_i_router_4_6_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_6_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_6_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_6_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_6_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_6_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_6_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_6_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_6_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_6_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_6_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_6_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_6_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_6_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_6_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_6_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_6_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_6_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_6_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_6_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_6_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_6_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_6_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_6_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_6_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_6_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_6_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_6_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_6_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_6_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4_6.router_id = 9;

router cwr_HARDWARE_v_i_router_4_7(
  cwr_HARDWARE_v_i_router_4_7_v_clk,
  cwr_HARDWARE_v_i_router_4_7_v_rst,
  cwr_HARDWARE_v_i_router_4_7_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_7_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_7_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_7_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_7_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_7_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_7_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_7_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_7_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_7_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_7_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_7_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_7_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_7_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_7_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_7_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_7_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_7_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_7_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_7_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_7_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_7_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_7_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_7_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_7_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_7_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_7_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_7_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_7_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_7_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4_7.router_id = 10;

router cwr_HARDWARE_v_i_router_4_8(
  cwr_HARDWARE_v_i_router_4_8_v_clk,
  cwr_HARDWARE_v_i_router_4_8_v_rst,
  cwr_HARDWARE_v_i_router_4_8_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_8_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_8_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_8_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_8_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_8_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_8_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_8_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_8_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_8_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_8_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_8_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_8_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_8_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_8_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_8_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_8_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_8_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_8_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_8_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_8_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_8_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_8_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_8_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_8_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_8_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_8_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_8_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_8_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_8_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4_8.router_id = 11;

router cwr_HARDWARE_v_i_router_4_9(
  cwr_HARDWARE_v_i_router_4_9_v_clk,
  cwr_HARDWARE_v_i_router_4_9_v_rst,
  cwr_HARDWARE_v_i_router_4_9_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_9_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_9_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_9_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_9_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_9_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_9_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_9_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_9_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_9_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_9_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_9_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_9_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_9_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_9_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_9_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_9_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_9_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_9_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_9_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_9_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_9_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_9_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_9_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_9_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_9_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_9_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_9_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_9_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_9_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4_9.router_id = 12;

router cwr_HARDWARE_v_i_router_4_10(
  cwr_HARDWARE_v_i_router_4_10_v_clk,
  cwr_HARDWARE_v_i_router_4_10_v_rst,
  cwr_HARDWARE_v_i_router_4_10_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_10_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_10_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_10_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_10_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_10_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_10_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_10_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_10_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_10_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_10_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_10_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_10_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_10_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_10_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_10_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_10_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_10_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_10_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_10_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_10_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_10_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_10_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_10_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_10_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_10_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_10_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_10_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_10_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_10_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4_10.router_id = 13;

router cwr_HARDWARE_v_i_router_4_11(
  cwr_HARDWARE_v_i_router_4_11_v_clk,
  cwr_HARDWARE_v_i_router_4_11_v_rst,
  cwr_HARDWARE_v_i_router_4_11_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_11_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_11_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_11_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_11_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_11_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_11_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_11_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_11_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_11_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_11_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_11_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_11_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_11_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_11_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_11_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_11_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_11_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_11_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_11_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_11_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_11_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_11_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_11_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_11_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_11_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_11_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_11_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_11_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_11_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4_11.router_id = 14;

router cwr_HARDWARE_v_i_router_4_12(
  cwr_HARDWARE_v_i_router_4_12_v_clk,
  cwr_HARDWARE_v_i_router_4_12_v_rst,
  cwr_HARDWARE_v_i_router_4_12_v_out_flit_L,
  cwr_HARDWARE_v_i_router_4_12_v_out_flit_R,
  cwr_HARDWARE_v_i_router_4_12_v_out_flit_U,
  cwr_HARDWARE_v_i_router_4_12_v_out_flit_B,
  cwr_HARDWARE_v_i_router_4_12_v_out_flit_C,
  cwr_HARDWARE_v_i_router_4_12_v_out_req_L,
  cwr_HARDWARE_v_i_router_4_12_v_out_req_R,
  cwr_HARDWARE_v_i_router_4_12_v_out_req_U,
  cwr_HARDWARE_v_i_router_4_12_v_out_req_B,
  cwr_HARDWARE_v_i_router_4_12_v_out_req_C,
  cwr_HARDWARE_v_i_router_4_12_v_in_ack_L,
  cwr_HARDWARE_v_i_router_4_12_v_in_ack_R,
  cwr_HARDWARE_v_i_router_4_12_v_in_ack_U,
  cwr_HARDWARE_v_i_router_4_12_v_in_ack_B,
  cwr_HARDWARE_v_i_router_4_12_v_in_ack_C,
  cwr_HARDWARE_v_i_router_4_12_v_in_flit_L,
  cwr_HARDWARE_v_i_router_4_12_v_in_flit_R,
  cwr_HARDWARE_v_i_router_4_12_v_in_flit_U,
  cwr_HARDWARE_v_i_router_4_12_v_in_flit_B,
  cwr_HARDWARE_v_i_router_4_12_v_in_flit_C,
  cwr_HARDWARE_v_i_router_4_12_v_in_req_L,
  cwr_HARDWARE_v_i_router_4_12_v_in_req_R,
  cwr_HARDWARE_v_i_router_4_12_v_in_req_U,
  cwr_HARDWARE_v_i_router_4_12_v_in_req_B,
  cwr_HARDWARE_v_i_router_4_12_v_in_req_C,
  cwr_HARDWARE_v_i_router_4_12_v_out_ack_L,
  cwr_HARDWARE_v_i_router_4_12_v_out_ack_R,
  cwr_HARDWARE_v_i_router_4_12_v_out_ack_U,
  cwr_HARDWARE_v_i_router_4_12_v_out_ack_B,
  cwr_HARDWARE_v_i_router_4_12_v_out_ack_C
);

  defparam cwr_HARDWARE_v_i_router_4_12.router_id = 15;

cwr_cosim_shell cwr_cosim_shell_i(
  .HARDWARE_v_i_router_v_clk(cwr_HARDWARE_v_i_router_v_clk),
  .HARDWARE_v_i_router_v_rst(cwr_HARDWARE_v_i_router_v_rst),
  .HARDWARE_v_i_router_v_out_flit_L(cwr_HARDWARE_v_i_router_v_out_flit_L),
  .HARDWARE_v_i_router_v_out_flit_R(cwr_HARDWARE_v_i_router_v_out_flit_R),
  .HARDWARE_v_i_router_v_out_flit_U(cwr_HARDWARE_v_i_router_v_out_flit_U),
  .HARDWARE_v_i_router_v_out_flit_B(cwr_HARDWARE_v_i_router_v_out_flit_B),
  .HARDWARE_v_i_router_v_out_flit_C(cwr_HARDWARE_v_i_router_v_out_flit_C),
  .HARDWARE_v_i_router_v_out_req_L(cwr_HARDWARE_v_i_router_v_out_req_L),
  .HARDWARE_v_i_router_v_out_req_R(cwr_HARDWARE_v_i_router_v_out_req_R),
  .HARDWARE_v_i_router_v_out_req_U(cwr_HARDWARE_v_i_router_v_out_req_U),
  .HARDWARE_v_i_router_v_out_req_B(cwr_HARDWARE_v_i_router_v_out_req_B),
  .HARDWARE_v_i_router_v_out_req_C(cwr_HARDWARE_v_i_router_v_out_req_C),
  .HARDWARE_v_i_router_v_in_ack_L(cwr_HARDWARE_v_i_router_v_in_ack_L),
  .HARDWARE_v_i_router_v_in_ack_R(cwr_HARDWARE_v_i_router_v_in_ack_R),
  .HARDWARE_v_i_router_v_in_ack_U(cwr_HARDWARE_v_i_router_v_in_ack_U),
  .HARDWARE_v_i_router_v_in_ack_B(cwr_HARDWARE_v_i_router_v_in_ack_B),
  .HARDWARE_v_i_router_v_in_ack_C(cwr_HARDWARE_v_i_router_v_in_ack_C),
  .HARDWARE_v_i_router_v_in_flit_L(cwr_HARDWARE_v_i_router_v_in_flit_L),
  .HARDWARE_v_i_router_v_in_flit_R(cwr_HARDWARE_v_i_router_v_in_flit_R),
  .HARDWARE_v_i_router_v_in_flit_U(cwr_HARDWARE_v_i_router_v_in_flit_U),
  .HARDWARE_v_i_router_v_in_flit_B(cwr_HARDWARE_v_i_router_v_in_flit_B),
  .HARDWARE_v_i_router_v_in_flit_C(cwr_HARDWARE_v_i_router_v_in_flit_C),
  .HARDWARE_v_i_router_v_in_req_L(cwr_HARDWARE_v_i_router_v_in_req_L),
  .HARDWARE_v_i_router_v_in_req_R(cwr_HARDWARE_v_i_router_v_in_req_R),
  .HARDWARE_v_i_router_v_in_req_U(cwr_HARDWARE_v_i_router_v_in_req_U),
  .HARDWARE_v_i_router_v_in_req_B(cwr_HARDWARE_v_i_router_v_in_req_B),
  .HARDWARE_v_i_router_v_in_req_C(cwr_HARDWARE_v_i_router_v_in_req_C),
  .HARDWARE_v_i_router_v_out_ack_L(cwr_HARDWARE_v_i_router_v_out_ack_L),
  .HARDWARE_v_i_router_v_out_ack_R(cwr_HARDWARE_v_i_router_v_out_ack_R),
  .HARDWARE_v_i_router_v_out_ack_U(cwr_HARDWARE_v_i_router_v_out_ack_U),
  .HARDWARE_v_i_router_v_out_ack_B(cwr_HARDWARE_v_i_router_v_out_ack_B),
  .HARDWARE_v_i_router_v_out_ack_C(cwr_HARDWARE_v_i_router_v_out_ack_C),
  .HARDWARE_v_i_router_1_v_clk(cwr_HARDWARE_v_i_router_1_v_clk),
  .HARDWARE_v_i_router_1_v_rst(cwr_HARDWARE_v_i_router_1_v_rst),
  .HARDWARE_v_i_router_1_v_out_flit_L(cwr_HARDWARE_v_i_router_1_v_out_flit_L),
  .HARDWARE_v_i_router_1_v_out_flit_R(cwr_HARDWARE_v_i_router_1_v_out_flit_R),
  .HARDWARE_v_i_router_1_v_out_flit_U(cwr_HARDWARE_v_i_router_1_v_out_flit_U),
  .HARDWARE_v_i_router_1_v_out_flit_B(cwr_HARDWARE_v_i_router_1_v_out_flit_B),
  .HARDWARE_v_i_router_1_v_out_flit_C(cwr_HARDWARE_v_i_router_1_v_out_flit_C),
  .HARDWARE_v_i_router_1_v_out_req_L(cwr_HARDWARE_v_i_router_1_v_out_req_L),
  .HARDWARE_v_i_router_1_v_out_req_R(cwr_HARDWARE_v_i_router_1_v_out_req_R),
  .HARDWARE_v_i_router_1_v_out_req_U(cwr_HARDWARE_v_i_router_1_v_out_req_U),
  .HARDWARE_v_i_router_1_v_out_req_B(cwr_HARDWARE_v_i_router_1_v_out_req_B),
  .HARDWARE_v_i_router_1_v_out_req_C(cwr_HARDWARE_v_i_router_1_v_out_req_C),
  .HARDWARE_v_i_router_1_v_in_ack_L(cwr_HARDWARE_v_i_router_1_v_in_ack_L),
  .HARDWARE_v_i_router_1_v_in_ack_R(cwr_HARDWARE_v_i_router_1_v_in_ack_R),
  .HARDWARE_v_i_router_1_v_in_ack_U(cwr_HARDWARE_v_i_router_1_v_in_ack_U),
  .HARDWARE_v_i_router_1_v_in_ack_B(cwr_HARDWARE_v_i_router_1_v_in_ack_B),
  .HARDWARE_v_i_router_1_v_in_ack_C(cwr_HARDWARE_v_i_router_1_v_in_ack_C),
  .HARDWARE_v_i_router_1_v_in_flit_L(cwr_HARDWARE_v_i_router_1_v_in_flit_L),
  .HARDWARE_v_i_router_1_v_in_flit_R(cwr_HARDWARE_v_i_router_1_v_in_flit_R),
  .HARDWARE_v_i_router_1_v_in_flit_U(cwr_HARDWARE_v_i_router_1_v_in_flit_U),
  .HARDWARE_v_i_router_1_v_in_flit_B(cwr_HARDWARE_v_i_router_1_v_in_flit_B),
  .HARDWARE_v_i_router_1_v_in_flit_C(cwr_HARDWARE_v_i_router_1_v_in_flit_C),
  .HARDWARE_v_i_router_1_v_in_req_L(cwr_HARDWARE_v_i_router_1_v_in_req_L),
  .HARDWARE_v_i_router_1_v_in_req_R(cwr_HARDWARE_v_i_router_1_v_in_req_R),
  .HARDWARE_v_i_router_1_v_in_req_U(cwr_HARDWARE_v_i_router_1_v_in_req_U),
  .HARDWARE_v_i_router_1_v_in_req_B(cwr_HARDWARE_v_i_router_1_v_in_req_B),
  .HARDWARE_v_i_router_1_v_in_req_C(cwr_HARDWARE_v_i_router_1_v_in_req_C),
  .HARDWARE_v_i_router_1_v_out_ack_L(cwr_HARDWARE_v_i_router_1_v_out_ack_L),
  .HARDWARE_v_i_router_1_v_out_ack_R(cwr_HARDWARE_v_i_router_1_v_out_ack_R),
  .HARDWARE_v_i_router_1_v_out_ack_U(cwr_HARDWARE_v_i_router_1_v_out_ack_U),
  .HARDWARE_v_i_router_1_v_out_ack_B(cwr_HARDWARE_v_i_router_1_v_out_ack_B),
  .HARDWARE_v_i_router_1_v_out_ack_C(cwr_HARDWARE_v_i_router_1_v_out_ack_C),
  .HARDWARE_v_i_router_2_v_clk(cwr_HARDWARE_v_i_router_2_v_clk),
  .HARDWARE_v_i_router_2_v_rst(cwr_HARDWARE_v_i_router_2_v_rst),
  .HARDWARE_v_i_router_2_v_out_flit_L(cwr_HARDWARE_v_i_router_2_v_out_flit_L),
  .HARDWARE_v_i_router_2_v_out_flit_R(cwr_HARDWARE_v_i_router_2_v_out_flit_R),
  .HARDWARE_v_i_router_2_v_out_flit_U(cwr_HARDWARE_v_i_router_2_v_out_flit_U),
  .HARDWARE_v_i_router_2_v_out_flit_B(cwr_HARDWARE_v_i_router_2_v_out_flit_B),
  .HARDWARE_v_i_router_2_v_out_flit_C(cwr_HARDWARE_v_i_router_2_v_out_flit_C),
  .HARDWARE_v_i_router_2_v_out_req_L(cwr_HARDWARE_v_i_router_2_v_out_req_L),
  .HARDWARE_v_i_router_2_v_out_req_R(cwr_HARDWARE_v_i_router_2_v_out_req_R),
  .HARDWARE_v_i_router_2_v_out_req_U(cwr_HARDWARE_v_i_router_2_v_out_req_U),
  .HARDWARE_v_i_router_2_v_out_req_B(cwr_HARDWARE_v_i_router_2_v_out_req_B),
  .HARDWARE_v_i_router_2_v_out_req_C(cwr_HARDWARE_v_i_router_2_v_out_req_C),
  .HARDWARE_v_i_router_2_v_in_ack_L(cwr_HARDWARE_v_i_router_2_v_in_ack_L),
  .HARDWARE_v_i_router_2_v_in_ack_R(cwr_HARDWARE_v_i_router_2_v_in_ack_R),
  .HARDWARE_v_i_router_2_v_in_ack_U(cwr_HARDWARE_v_i_router_2_v_in_ack_U),
  .HARDWARE_v_i_router_2_v_in_ack_B(cwr_HARDWARE_v_i_router_2_v_in_ack_B),
  .HARDWARE_v_i_router_2_v_in_ack_C(cwr_HARDWARE_v_i_router_2_v_in_ack_C),
  .HARDWARE_v_i_router_2_v_in_flit_L(cwr_HARDWARE_v_i_router_2_v_in_flit_L),
  .HARDWARE_v_i_router_2_v_in_flit_R(cwr_HARDWARE_v_i_router_2_v_in_flit_R),
  .HARDWARE_v_i_router_2_v_in_flit_U(cwr_HARDWARE_v_i_router_2_v_in_flit_U),
  .HARDWARE_v_i_router_2_v_in_flit_B(cwr_HARDWARE_v_i_router_2_v_in_flit_B),
  .HARDWARE_v_i_router_2_v_in_flit_C(cwr_HARDWARE_v_i_router_2_v_in_flit_C),
  .HARDWARE_v_i_router_2_v_in_req_L(cwr_HARDWARE_v_i_router_2_v_in_req_L),
  .HARDWARE_v_i_router_2_v_in_req_R(cwr_HARDWARE_v_i_router_2_v_in_req_R),
  .HARDWARE_v_i_router_2_v_in_req_U(cwr_HARDWARE_v_i_router_2_v_in_req_U),
  .HARDWARE_v_i_router_2_v_in_req_B(cwr_HARDWARE_v_i_router_2_v_in_req_B),
  .HARDWARE_v_i_router_2_v_in_req_C(cwr_HARDWARE_v_i_router_2_v_in_req_C),
  .HARDWARE_v_i_router_2_v_out_ack_L(cwr_HARDWARE_v_i_router_2_v_out_ack_L),
  .HARDWARE_v_i_router_2_v_out_ack_R(cwr_HARDWARE_v_i_router_2_v_out_ack_R),
  .HARDWARE_v_i_router_2_v_out_ack_U(cwr_HARDWARE_v_i_router_2_v_out_ack_U),
  .HARDWARE_v_i_router_2_v_out_ack_B(cwr_HARDWARE_v_i_router_2_v_out_ack_B),
  .HARDWARE_v_i_router_2_v_out_ack_C(cwr_HARDWARE_v_i_router_2_v_out_ack_C),
  .HARDWARE_v_i_router_3_v_clk(cwr_HARDWARE_v_i_router_3_v_clk),
  .HARDWARE_v_i_router_3_v_rst(cwr_HARDWARE_v_i_router_3_v_rst),
  .HARDWARE_v_i_router_3_v_out_flit_L(cwr_HARDWARE_v_i_router_3_v_out_flit_L),
  .HARDWARE_v_i_router_3_v_out_flit_R(cwr_HARDWARE_v_i_router_3_v_out_flit_R),
  .HARDWARE_v_i_router_3_v_out_flit_U(cwr_HARDWARE_v_i_router_3_v_out_flit_U),
  .HARDWARE_v_i_router_3_v_out_flit_B(cwr_HARDWARE_v_i_router_3_v_out_flit_B),
  .HARDWARE_v_i_router_3_v_out_flit_C(cwr_HARDWARE_v_i_router_3_v_out_flit_C),
  .HARDWARE_v_i_router_3_v_out_req_L(cwr_HARDWARE_v_i_router_3_v_out_req_L),
  .HARDWARE_v_i_router_3_v_out_req_R(cwr_HARDWARE_v_i_router_3_v_out_req_R),
  .HARDWARE_v_i_router_3_v_out_req_U(cwr_HARDWARE_v_i_router_3_v_out_req_U),
  .HARDWARE_v_i_router_3_v_out_req_B(cwr_HARDWARE_v_i_router_3_v_out_req_B),
  .HARDWARE_v_i_router_3_v_out_req_C(cwr_HARDWARE_v_i_router_3_v_out_req_C),
  .HARDWARE_v_i_router_3_v_in_ack_L(cwr_HARDWARE_v_i_router_3_v_in_ack_L),
  .HARDWARE_v_i_router_3_v_in_ack_R(cwr_HARDWARE_v_i_router_3_v_in_ack_R),
  .HARDWARE_v_i_router_3_v_in_ack_U(cwr_HARDWARE_v_i_router_3_v_in_ack_U),
  .HARDWARE_v_i_router_3_v_in_ack_B(cwr_HARDWARE_v_i_router_3_v_in_ack_B),
  .HARDWARE_v_i_router_3_v_in_ack_C(cwr_HARDWARE_v_i_router_3_v_in_ack_C),
  .HARDWARE_v_i_router_3_v_in_flit_L(cwr_HARDWARE_v_i_router_3_v_in_flit_L),
  .HARDWARE_v_i_router_3_v_in_flit_R(cwr_HARDWARE_v_i_router_3_v_in_flit_R),
  .HARDWARE_v_i_router_3_v_in_flit_U(cwr_HARDWARE_v_i_router_3_v_in_flit_U),
  .HARDWARE_v_i_router_3_v_in_flit_B(cwr_HARDWARE_v_i_router_3_v_in_flit_B),
  .HARDWARE_v_i_router_3_v_in_flit_C(cwr_HARDWARE_v_i_router_3_v_in_flit_C),
  .HARDWARE_v_i_router_3_v_in_req_L(cwr_HARDWARE_v_i_router_3_v_in_req_L),
  .HARDWARE_v_i_router_3_v_in_req_R(cwr_HARDWARE_v_i_router_3_v_in_req_R),
  .HARDWARE_v_i_router_3_v_in_req_U(cwr_HARDWARE_v_i_router_3_v_in_req_U),
  .HARDWARE_v_i_router_3_v_in_req_B(cwr_HARDWARE_v_i_router_3_v_in_req_B),
  .HARDWARE_v_i_router_3_v_in_req_C(cwr_HARDWARE_v_i_router_3_v_in_req_C),
  .HARDWARE_v_i_router_3_v_out_ack_L(cwr_HARDWARE_v_i_router_3_v_out_ack_L),
  .HARDWARE_v_i_router_3_v_out_ack_R(cwr_HARDWARE_v_i_router_3_v_out_ack_R),
  .HARDWARE_v_i_router_3_v_out_ack_U(cwr_HARDWARE_v_i_router_3_v_out_ack_U),
  .HARDWARE_v_i_router_3_v_out_ack_B(cwr_HARDWARE_v_i_router_3_v_out_ack_B),
  .HARDWARE_v_i_router_3_v_out_ack_C(cwr_HARDWARE_v_i_router_3_v_out_ack_C),
  .HARDWARE_v_i_router_4_v_clk(cwr_HARDWARE_v_i_router_4_v_clk),
  .HARDWARE_v_i_router_4_v_rst(cwr_HARDWARE_v_i_router_4_v_rst),
  .HARDWARE_v_i_router_4_v_out_flit_L(cwr_HARDWARE_v_i_router_4_v_out_flit_L),
  .HARDWARE_v_i_router_4_v_out_flit_R(cwr_HARDWARE_v_i_router_4_v_out_flit_R),
  .HARDWARE_v_i_router_4_v_out_flit_U(cwr_HARDWARE_v_i_router_4_v_out_flit_U),
  .HARDWARE_v_i_router_4_v_out_flit_B(cwr_HARDWARE_v_i_router_4_v_out_flit_B),
  .HARDWARE_v_i_router_4_v_out_flit_C(cwr_HARDWARE_v_i_router_4_v_out_flit_C),
  .HARDWARE_v_i_router_4_v_out_req_L(cwr_HARDWARE_v_i_router_4_v_out_req_L),
  .HARDWARE_v_i_router_4_v_out_req_R(cwr_HARDWARE_v_i_router_4_v_out_req_R),
  .HARDWARE_v_i_router_4_v_out_req_U(cwr_HARDWARE_v_i_router_4_v_out_req_U),
  .HARDWARE_v_i_router_4_v_out_req_B(cwr_HARDWARE_v_i_router_4_v_out_req_B),
  .HARDWARE_v_i_router_4_v_out_req_C(cwr_HARDWARE_v_i_router_4_v_out_req_C),
  .HARDWARE_v_i_router_4_v_in_ack_L(cwr_HARDWARE_v_i_router_4_v_in_ack_L),
  .HARDWARE_v_i_router_4_v_in_ack_R(cwr_HARDWARE_v_i_router_4_v_in_ack_R),
  .HARDWARE_v_i_router_4_v_in_ack_U(cwr_HARDWARE_v_i_router_4_v_in_ack_U),
  .HARDWARE_v_i_router_4_v_in_ack_B(cwr_HARDWARE_v_i_router_4_v_in_ack_B),
  .HARDWARE_v_i_router_4_v_in_ack_C(cwr_HARDWARE_v_i_router_4_v_in_ack_C),
  .HARDWARE_v_i_router_4_v_in_flit_L(cwr_HARDWARE_v_i_router_4_v_in_flit_L),
  .HARDWARE_v_i_router_4_v_in_flit_R(cwr_HARDWARE_v_i_router_4_v_in_flit_R),
  .HARDWARE_v_i_router_4_v_in_flit_U(cwr_HARDWARE_v_i_router_4_v_in_flit_U),
  .HARDWARE_v_i_router_4_v_in_flit_B(cwr_HARDWARE_v_i_router_4_v_in_flit_B),
  .HARDWARE_v_i_router_4_v_in_flit_C(cwr_HARDWARE_v_i_router_4_v_in_flit_C),
  .HARDWARE_v_i_router_4_v_in_req_L(cwr_HARDWARE_v_i_router_4_v_in_req_L),
  .HARDWARE_v_i_router_4_v_in_req_R(cwr_HARDWARE_v_i_router_4_v_in_req_R),
  .HARDWARE_v_i_router_4_v_in_req_U(cwr_HARDWARE_v_i_router_4_v_in_req_U),
  .HARDWARE_v_i_router_4_v_in_req_B(cwr_HARDWARE_v_i_router_4_v_in_req_B),
  .HARDWARE_v_i_router_4_v_in_req_C(cwr_HARDWARE_v_i_router_4_v_in_req_C),
  .HARDWARE_v_i_router_4_v_out_ack_L(cwr_HARDWARE_v_i_router_4_v_out_ack_L),
  .HARDWARE_v_i_router_4_v_out_ack_R(cwr_HARDWARE_v_i_router_4_v_out_ack_R),
  .HARDWARE_v_i_router_4_v_out_ack_U(cwr_HARDWARE_v_i_router_4_v_out_ack_U),
  .HARDWARE_v_i_router_4_v_out_ack_B(cwr_HARDWARE_v_i_router_4_v_out_ack_B),
  .HARDWARE_v_i_router_4_v_out_ack_C(cwr_HARDWARE_v_i_router_4_v_out_ack_C),
  .HARDWARE_v_i_router_4_1_v_clk(cwr_HARDWARE_v_i_router_4_1_v_clk),
  .HARDWARE_v_i_router_4_1_v_rst(cwr_HARDWARE_v_i_router_4_1_v_rst),
  .HARDWARE_v_i_router_4_1_v_out_flit_L(cwr_HARDWARE_v_i_router_4_1_v_out_flit_L),
  .HARDWARE_v_i_router_4_1_v_out_flit_R(cwr_HARDWARE_v_i_router_4_1_v_out_flit_R),
  .HARDWARE_v_i_router_4_1_v_out_flit_U(cwr_HARDWARE_v_i_router_4_1_v_out_flit_U),
  .HARDWARE_v_i_router_4_1_v_out_flit_B(cwr_HARDWARE_v_i_router_4_1_v_out_flit_B),
  .HARDWARE_v_i_router_4_1_v_out_flit_C(cwr_HARDWARE_v_i_router_4_1_v_out_flit_C),
  .HARDWARE_v_i_router_4_1_v_out_req_L(cwr_HARDWARE_v_i_router_4_1_v_out_req_L),
  .HARDWARE_v_i_router_4_1_v_out_req_R(cwr_HARDWARE_v_i_router_4_1_v_out_req_R),
  .HARDWARE_v_i_router_4_1_v_out_req_U(cwr_HARDWARE_v_i_router_4_1_v_out_req_U),
  .HARDWARE_v_i_router_4_1_v_out_req_B(cwr_HARDWARE_v_i_router_4_1_v_out_req_B),
  .HARDWARE_v_i_router_4_1_v_out_req_C(cwr_HARDWARE_v_i_router_4_1_v_out_req_C),
  .HARDWARE_v_i_router_4_1_v_in_ack_L(cwr_HARDWARE_v_i_router_4_1_v_in_ack_L),
  .HARDWARE_v_i_router_4_1_v_in_ack_R(cwr_HARDWARE_v_i_router_4_1_v_in_ack_R),
  .HARDWARE_v_i_router_4_1_v_in_ack_U(cwr_HARDWARE_v_i_router_4_1_v_in_ack_U),
  .HARDWARE_v_i_router_4_1_v_in_ack_B(cwr_HARDWARE_v_i_router_4_1_v_in_ack_B),
  .HARDWARE_v_i_router_4_1_v_in_ack_C(cwr_HARDWARE_v_i_router_4_1_v_in_ack_C),
  .HARDWARE_v_i_router_4_1_v_in_flit_L(cwr_HARDWARE_v_i_router_4_1_v_in_flit_L),
  .HARDWARE_v_i_router_4_1_v_in_flit_R(cwr_HARDWARE_v_i_router_4_1_v_in_flit_R),
  .HARDWARE_v_i_router_4_1_v_in_flit_U(cwr_HARDWARE_v_i_router_4_1_v_in_flit_U),
  .HARDWARE_v_i_router_4_1_v_in_flit_B(cwr_HARDWARE_v_i_router_4_1_v_in_flit_B),
  .HARDWARE_v_i_router_4_1_v_in_flit_C(cwr_HARDWARE_v_i_router_4_1_v_in_flit_C),
  .HARDWARE_v_i_router_4_1_v_in_req_L(cwr_HARDWARE_v_i_router_4_1_v_in_req_L),
  .HARDWARE_v_i_router_4_1_v_in_req_R(cwr_HARDWARE_v_i_router_4_1_v_in_req_R),
  .HARDWARE_v_i_router_4_1_v_in_req_U(cwr_HARDWARE_v_i_router_4_1_v_in_req_U),
  .HARDWARE_v_i_router_4_1_v_in_req_B(cwr_HARDWARE_v_i_router_4_1_v_in_req_B),
  .HARDWARE_v_i_router_4_1_v_in_req_C(cwr_HARDWARE_v_i_router_4_1_v_in_req_C),
  .HARDWARE_v_i_router_4_1_v_out_ack_L(cwr_HARDWARE_v_i_router_4_1_v_out_ack_L),
  .HARDWARE_v_i_router_4_1_v_out_ack_R(cwr_HARDWARE_v_i_router_4_1_v_out_ack_R),
  .HARDWARE_v_i_router_4_1_v_out_ack_U(cwr_HARDWARE_v_i_router_4_1_v_out_ack_U),
  .HARDWARE_v_i_router_4_1_v_out_ack_B(cwr_HARDWARE_v_i_router_4_1_v_out_ack_B),
  .HARDWARE_v_i_router_4_1_v_out_ack_C(cwr_HARDWARE_v_i_router_4_1_v_out_ack_C),
  .HARDWARE_v_i_router_4_3_v_clk(cwr_HARDWARE_v_i_router_4_3_v_clk),
  .HARDWARE_v_i_router_4_3_v_rst(cwr_HARDWARE_v_i_router_4_3_v_rst),
  .HARDWARE_v_i_router_4_3_v_out_flit_L(cwr_HARDWARE_v_i_router_4_3_v_out_flit_L),
  .HARDWARE_v_i_router_4_3_v_out_flit_R(cwr_HARDWARE_v_i_router_4_3_v_out_flit_R),
  .HARDWARE_v_i_router_4_3_v_out_flit_U(cwr_HARDWARE_v_i_router_4_3_v_out_flit_U),
  .HARDWARE_v_i_router_4_3_v_out_flit_B(cwr_HARDWARE_v_i_router_4_3_v_out_flit_B),
  .HARDWARE_v_i_router_4_3_v_out_flit_C(cwr_HARDWARE_v_i_router_4_3_v_out_flit_C),
  .HARDWARE_v_i_router_4_3_v_out_req_L(cwr_HARDWARE_v_i_router_4_3_v_out_req_L),
  .HARDWARE_v_i_router_4_3_v_out_req_R(cwr_HARDWARE_v_i_router_4_3_v_out_req_R),
  .HARDWARE_v_i_router_4_3_v_out_req_U(cwr_HARDWARE_v_i_router_4_3_v_out_req_U),
  .HARDWARE_v_i_router_4_3_v_out_req_B(cwr_HARDWARE_v_i_router_4_3_v_out_req_B),
  .HARDWARE_v_i_router_4_3_v_out_req_C(cwr_HARDWARE_v_i_router_4_3_v_out_req_C),
  .HARDWARE_v_i_router_4_3_v_in_ack_L(cwr_HARDWARE_v_i_router_4_3_v_in_ack_L),
  .HARDWARE_v_i_router_4_3_v_in_ack_R(cwr_HARDWARE_v_i_router_4_3_v_in_ack_R),
  .HARDWARE_v_i_router_4_3_v_in_ack_U(cwr_HARDWARE_v_i_router_4_3_v_in_ack_U),
  .HARDWARE_v_i_router_4_3_v_in_ack_B(cwr_HARDWARE_v_i_router_4_3_v_in_ack_B),
  .HARDWARE_v_i_router_4_3_v_in_ack_C(cwr_HARDWARE_v_i_router_4_3_v_in_ack_C),
  .HARDWARE_v_i_router_4_3_v_in_flit_L(cwr_HARDWARE_v_i_router_4_3_v_in_flit_L),
  .HARDWARE_v_i_router_4_3_v_in_flit_R(cwr_HARDWARE_v_i_router_4_3_v_in_flit_R),
  .HARDWARE_v_i_router_4_3_v_in_flit_U(cwr_HARDWARE_v_i_router_4_3_v_in_flit_U),
  .HARDWARE_v_i_router_4_3_v_in_flit_B(cwr_HARDWARE_v_i_router_4_3_v_in_flit_B),
  .HARDWARE_v_i_router_4_3_v_in_flit_C(cwr_HARDWARE_v_i_router_4_3_v_in_flit_C),
  .HARDWARE_v_i_router_4_3_v_in_req_L(cwr_HARDWARE_v_i_router_4_3_v_in_req_L),
  .HARDWARE_v_i_router_4_3_v_in_req_R(cwr_HARDWARE_v_i_router_4_3_v_in_req_R),
  .HARDWARE_v_i_router_4_3_v_in_req_U(cwr_HARDWARE_v_i_router_4_3_v_in_req_U),
  .HARDWARE_v_i_router_4_3_v_in_req_B(cwr_HARDWARE_v_i_router_4_3_v_in_req_B),
  .HARDWARE_v_i_router_4_3_v_in_req_C(cwr_HARDWARE_v_i_router_4_3_v_in_req_C),
  .HARDWARE_v_i_router_4_3_v_out_ack_L(cwr_HARDWARE_v_i_router_4_3_v_out_ack_L),
  .HARDWARE_v_i_router_4_3_v_out_ack_R(cwr_HARDWARE_v_i_router_4_3_v_out_ack_R),
  .HARDWARE_v_i_router_4_3_v_out_ack_U(cwr_HARDWARE_v_i_router_4_3_v_out_ack_U),
  .HARDWARE_v_i_router_4_3_v_out_ack_B(cwr_HARDWARE_v_i_router_4_3_v_out_ack_B),
  .HARDWARE_v_i_router_4_3_v_out_ack_C(cwr_HARDWARE_v_i_router_4_3_v_out_ack_C),
  .HARDWARE_v_i_router_4_4_v_clk(cwr_HARDWARE_v_i_router_4_4_v_clk),
  .HARDWARE_v_i_router_4_4_v_rst(cwr_HARDWARE_v_i_router_4_4_v_rst),
  .HARDWARE_v_i_router_4_4_v_out_flit_L(cwr_HARDWARE_v_i_router_4_4_v_out_flit_L),
  .HARDWARE_v_i_router_4_4_v_out_flit_R(cwr_HARDWARE_v_i_router_4_4_v_out_flit_R),
  .HARDWARE_v_i_router_4_4_v_out_flit_U(cwr_HARDWARE_v_i_router_4_4_v_out_flit_U),
  .HARDWARE_v_i_router_4_4_v_out_flit_B(cwr_HARDWARE_v_i_router_4_4_v_out_flit_B),
  .HARDWARE_v_i_router_4_4_v_out_flit_C(cwr_HARDWARE_v_i_router_4_4_v_out_flit_C),
  .HARDWARE_v_i_router_4_4_v_out_req_L(cwr_HARDWARE_v_i_router_4_4_v_out_req_L),
  .HARDWARE_v_i_router_4_4_v_out_req_R(cwr_HARDWARE_v_i_router_4_4_v_out_req_R),
  .HARDWARE_v_i_router_4_4_v_out_req_U(cwr_HARDWARE_v_i_router_4_4_v_out_req_U),
  .HARDWARE_v_i_router_4_4_v_out_req_B(cwr_HARDWARE_v_i_router_4_4_v_out_req_B),
  .HARDWARE_v_i_router_4_4_v_out_req_C(cwr_HARDWARE_v_i_router_4_4_v_out_req_C),
  .HARDWARE_v_i_router_4_4_v_in_ack_L(cwr_HARDWARE_v_i_router_4_4_v_in_ack_L),
  .HARDWARE_v_i_router_4_4_v_in_ack_R(cwr_HARDWARE_v_i_router_4_4_v_in_ack_R),
  .HARDWARE_v_i_router_4_4_v_in_ack_U(cwr_HARDWARE_v_i_router_4_4_v_in_ack_U),
  .HARDWARE_v_i_router_4_4_v_in_ack_B(cwr_HARDWARE_v_i_router_4_4_v_in_ack_B),
  .HARDWARE_v_i_router_4_4_v_in_ack_C(cwr_HARDWARE_v_i_router_4_4_v_in_ack_C),
  .HARDWARE_v_i_router_4_4_v_in_flit_L(cwr_HARDWARE_v_i_router_4_4_v_in_flit_L),
  .HARDWARE_v_i_router_4_4_v_in_flit_R(cwr_HARDWARE_v_i_router_4_4_v_in_flit_R),
  .HARDWARE_v_i_router_4_4_v_in_flit_U(cwr_HARDWARE_v_i_router_4_4_v_in_flit_U),
  .HARDWARE_v_i_router_4_4_v_in_flit_B(cwr_HARDWARE_v_i_router_4_4_v_in_flit_B),
  .HARDWARE_v_i_router_4_4_v_in_flit_C(cwr_HARDWARE_v_i_router_4_4_v_in_flit_C),
  .HARDWARE_v_i_router_4_4_v_in_req_L(cwr_HARDWARE_v_i_router_4_4_v_in_req_L),
  .HARDWARE_v_i_router_4_4_v_in_req_R(cwr_HARDWARE_v_i_router_4_4_v_in_req_R),
  .HARDWARE_v_i_router_4_4_v_in_req_U(cwr_HARDWARE_v_i_router_4_4_v_in_req_U),
  .HARDWARE_v_i_router_4_4_v_in_req_B(cwr_HARDWARE_v_i_router_4_4_v_in_req_B),
  .HARDWARE_v_i_router_4_4_v_in_req_C(cwr_HARDWARE_v_i_router_4_4_v_in_req_C),
  .HARDWARE_v_i_router_4_4_v_out_ack_L(cwr_HARDWARE_v_i_router_4_4_v_out_ack_L),
  .HARDWARE_v_i_router_4_4_v_out_ack_R(cwr_HARDWARE_v_i_router_4_4_v_out_ack_R),
  .HARDWARE_v_i_router_4_4_v_out_ack_U(cwr_HARDWARE_v_i_router_4_4_v_out_ack_U),
  .HARDWARE_v_i_router_4_4_v_out_ack_B(cwr_HARDWARE_v_i_router_4_4_v_out_ack_B),
  .HARDWARE_v_i_router_4_4_v_out_ack_C(cwr_HARDWARE_v_i_router_4_4_v_out_ack_C),
  .HARDWARE_v_i_router_4_5_v_clk(cwr_HARDWARE_v_i_router_4_5_v_clk),
  .HARDWARE_v_i_router_4_5_v_rst(cwr_HARDWARE_v_i_router_4_5_v_rst),
  .HARDWARE_v_i_router_4_5_v_out_flit_L(cwr_HARDWARE_v_i_router_4_5_v_out_flit_L),
  .HARDWARE_v_i_router_4_5_v_out_flit_R(cwr_HARDWARE_v_i_router_4_5_v_out_flit_R),
  .HARDWARE_v_i_router_4_5_v_out_flit_U(cwr_HARDWARE_v_i_router_4_5_v_out_flit_U),
  .HARDWARE_v_i_router_4_5_v_out_flit_B(cwr_HARDWARE_v_i_router_4_5_v_out_flit_B),
  .HARDWARE_v_i_router_4_5_v_out_flit_C(cwr_HARDWARE_v_i_router_4_5_v_out_flit_C),
  .HARDWARE_v_i_router_4_5_v_out_req_L(cwr_HARDWARE_v_i_router_4_5_v_out_req_L),
  .HARDWARE_v_i_router_4_5_v_out_req_R(cwr_HARDWARE_v_i_router_4_5_v_out_req_R),
  .HARDWARE_v_i_router_4_5_v_out_req_U(cwr_HARDWARE_v_i_router_4_5_v_out_req_U),
  .HARDWARE_v_i_router_4_5_v_out_req_B(cwr_HARDWARE_v_i_router_4_5_v_out_req_B),
  .HARDWARE_v_i_router_4_5_v_out_req_C(cwr_HARDWARE_v_i_router_4_5_v_out_req_C),
  .HARDWARE_v_i_router_4_5_v_in_ack_L(cwr_HARDWARE_v_i_router_4_5_v_in_ack_L),
  .HARDWARE_v_i_router_4_5_v_in_ack_R(cwr_HARDWARE_v_i_router_4_5_v_in_ack_R),
  .HARDWARE_v_i_router_4_5_v_in_ack_U(cwr_HARDWARE_v_i_router_4_5_v_in_ack_U),
  .HARDWARE_v_i_router_4_5_v_in_ack_B(cwr_HARDWARE_v_i_router_4_5_v_in_ack_B),
  .HARDWARE_v_i_router_4_5_v_in_ack_C(cwr_HARDWARE_v_i_router_4_5_v_in_ack_C),
  .HARDWARE_v_i_router_4_5_v_in_flit_L(cwr_HARDWARE_v_i_router_4_5_v_in_flit_L),
  .HARDWARE_v_i_router_4_5_v_in_flit_R(cwr_HARDWARE_v_i_router_4_5_v_in_flit_R),
  .HARDWARE_v_i_router_4_5_v_in_flit_U(cwr_HARDWARE_v_i_router_4_5_v_in_flit_U),
  .HARDWARE_v_i_router_4_5_v_in_flit_B(cwr_HARDWARE_v_i_router_4_5_v_in_flit_B),
  .HARDWARE_v_i_router_4_5_v_in_flit_C(cwr_HARDWARE_v_i_router_4_5_v_in_flit_C),
  .HARDWARE_v_i_router_4_5_v_in_req_L(cwr_HARDWARE_v_i_router_4_5_v_in_req_L),
  .HARDWARE_v_i_router_4_5_v_in_req_R(cwr_HARDWARE_v_i_router_4_5_v_in_req_R),
  .HARDWARE_v_i_router_4_5_v_in_req_U(cwr_HARDWARE_v_i_router_4_5_v_in_req_U),
  .HARDWARE_v_i_router_4_5_v_in_req_B(cwr_HARDWARE_v_i_router_4_5_v_in_req_B),
  .HARDWARE_v_i_router_4_5_v_in_req_C(cwr_HARDWARE_v_i_router_4_5_v_in_req_C),
  .HARDWARE_v_i_router_4_5_v_out_ack_L(cwr_HARDWARE_v_i_router_4_5_v_out_ack_L),
  .HARDWARE_v_i_router_4_5_v_out_ack_R(cwr_HARDWARE_v_i_router_4_5_v_out_ack_R),
  .HARDWARE_v_i_router_4_5_v_out_ack_U(cwr_HARDWARE_v_i_router_4_5_v_out_ack_U),
  .HARDWARE_v_i_router_4_5_v_out_ack_B(cwr_HARDWARE_v_i_router_4_5_v_out_ack_B),
  .HARDWARE_v_i_router_4_5_v_out_ack_C(cwr_HARDWARE_v_i_router_4_5_v_out_ack_C),
  .HARDWARE_v_i_router_4_6_v_clk(cwr_HARDWARE_v_i_router_4_6_v_clk),
  .HARDWARE_v_i_router_4_6_v_rst(cwr_HARDWARE_v_i_router_4_6_v_rst),
  .HARDWARE_v_i_router_4_6_v_out_flit_L(cwr_HARDWARE_v_i_router_4_6_v_out_flit_L),
  .HARDWARE_v_i_router_4_6_v_out_flit_R(cwr_HARDWARE_v_i_router_4_6_v_out_flit_R),
  .HARDWARE_v_i_router_4_6_v_out_flit_U(cwr_HARDWARE_v_i_router_4_6_v_out_flit_U),
  .HARDWARE_v_i_router_4_6_v_out_flit_B(cwr_HARDWARE_v_i_router_4_6_v_out_flit_B),
  .HARDWARE_v_i_router_4_6_v_out_flit_C(cwr_HARDWARE_v_i_router_4_6_v_out_flit_C),
  .HARDWARE_v_i_router_4_6_v_out_req_L(cwr_HARDWARE_v_i_router_4_6_v_out_req_L),
  .HARDWARE_v_i_router_4_6_v_out_req_R(cwr_HARDWARE_v_i_router_4_6_v_out_req_R),
  .HARDWARE_v_i_router_4_6_v_out_req_U(cwr_HARDWARE_v_i_router_4_6_v_out_req_U),
  .HARDWARE_v_i_router_4_6_v_out_req_B(cwr_HARDWARE_v_i_router_4_6_v_out_req_B),
  .HARDWARE_v_i_router_4_6_v_out_req_C(cwr_HARDWARE_v_i_router_4_6_v_out_req_C),
  .HARDWARE_v_i_router_4_6_v_in_ack_L(cwr_HARDWARE_v_i_router_4_6_v_in_ack_L),
  .HARDWARE_v_i_router_4_6_v_in_ack_R(cwr_HARDWARE_v_i_router_4_6_v_in_ack_R),
  .HARDWARE_v_i_router_4_6_v_in_ack_U(cwr_HARDWARE_v_i_router_4_6_v_in_ack_U),
  .HARDWARE_v_i_router_4_6_v_in_ack_B(cwr_HARDWARE_v_i_router_4_6_v_in_ack_B),
  .HARDWARE_v_i_router_4_6_v_in_ack_C(cwr_HARDWARE_v_i_router_4_6_v_in_ack_C),
  .HARDWARE_v_i_router_4_6_v_in_flit_L(cwr_HARDWARE_v_i_router_4_6_v_in_flit_L),
  .HARDWARE_v_i_router_4_6_v_in_flit_R(cwr_HARDWARE_v_i_router_4_6_v_in_flit_R),
  .HARDWARE_v_i_router_4_6_v_in_flit_U(cwr_HARDWARE_v_i_router_4_6_v_in_flit_U),
  .HARDWARE_v_i_router_4_6_v_in_flit_B(cwr_HARDWARE_v_i_router_4_6_v_in_flit_B),
  .HARDWARE_v_i_router_4_6_v_in_flit_C(cwr_HARDWARE_v_i_router_4_6_v_in_flit_C),
  .HARDWARE_v_i_router_4_6_v_in_req_L(cwr_HARDWARE_v_i_router_4_6_v_in_req_L),
  .HARDWARE_v_i_router_4_6_v_in_req_R(cwr_HARDWARE_v_i_router_4_6_v_in_req_R),
  .HARDWARE_v_i_router_4_6_v_in_req_U(cwr_HARDWARE_v_i_router_4_6_v_in_req_U),
  .HARDWARE_v_i_router_4_6_v_in_req_B(cwr_HARDWARE_v_i_router_4_6_v_in_req_B),
  .HARDWARE_v_i_router_4_6_v_in_req_C(cwr_HARDWARE_v_i_router_4_6_v_in_req_C),
  .HARDWARE_v_i_router_4_6_v_out_ack_L(cwr_HARDWARE_v_i_router_4_6_v_out_ack_L),
  .HARDWARE_v_i_router_4_6_v_out_ack_R(cwr_HARDWARE_v_i_router_4_6_v_out_ack_R),
  .HARDWARE_v_i_router_4_6_v_out_ack_U(cwr_HARDWARE_v_i_router_4_6_v_out_ack_U),
  .HARDWARE_v_i_router_4_6_v_out_ack_B(cwr_HARDWARE_v_i_router_4_6_v_out_ack_B),
  .HARDWARE_v_i_router_4_6_v_out_ack_C(cwr_HARDWARE_v_i_router_4_6_v_out_ack_C),
  .HARDWARE_v_i_router_4_7_v_clk(cwr_HARDWARE_v_i_router_4_7_v_clk),
  .HARDWARE_v_i_router_4_7_v_rst(cwr_HARDWARE_v_i_router_4_7_v_rst),
  .HARDWARE_v_i_router_4_7_v_out_flit_L(cwr_HARDWARE_v_i_router_4_7_v_out_flit_L),
  .HARDWARE_v_i_router_4_7_v_out_flit_R(cwr_HARDWARE_v_i_router_4_7_v_out_flit_R),
  .HARDWARE_v_i_router_4_7_v_out_flit_U(cwr_HARDWARE_v_i_router_4_7_v_out_flit_U),
  .HARDWARE_v_i_router_4_7_v_out_flit_B(cwr_HARDWARE_v_i_router_4_7_v_out_flit_B),
  .HARDWARE_v_i_router_4_7_v_out_flit_C(cwr_HARDWARE_v_i_router_4_7_v_out_flit_C),
  .HARDWARE_v_i_router_4_7_v_out_req_L(cwr_HARDWARE_v_i_router_4_7_v_out_req_L),
  .HARDWARE_v_i_router_4_7_v_out_req_R(cwr_HARDWARE_v_i_router_4_7_v_out_req_R),
  .HARDWARE_v_i_router_4_7_v_out_req_U(cwr_HARDWARE_v_i_router_4_7_v_out_req_U),
  .HARDWARE_v_i_router_4_7_v_out_req_B(cwr_HARDWARE_v_i_router_4_7_v_out_req_B),
  .HARDWARE_v_i_router_4_7_v_out_req_C(cwr_HARDWARE_v_i_router_4_7_v_out_req_C),
  .HARDWARE_v_i_router_4_7_v_in_ack_L(cwr_HARDWARE_v_i_router_4_7_v_in_ack_L),
  .HARDWARE_v_i_router_4_7_v_in_ack_R(cwr_HARDWARE_v_i_router_4_7_v_in_ack_R),
  .HARDWARE_v_i_router_4_7_v_in_ack_U(cwr_HARDWARE_v_i_router_4_7_v_in_ack_U),
  .HARDWARE_v_i_router_4_7_v_in_ack_B(cwr_HARDWARE_v_i_router_4_7_v_in_ack_B),
  .HARDWARE_v_i_router_4_7_v_in_ack_C(cwr_HARDWARE_v_i_router_4_7_v_in_ack_C),
  .HARDWARE_v_i_router_4_7_v_in_flit_L(cwr_HARDWARE_v_i_router_4_7_v_in_flit_L),
  .HARDWARE_v_i_router_4_7_v_in_flit_R(cwr_HARDWARE_v_i_router_4_7_v_in_flit_R),
  .HARDWARE_v_i_router_4_7_v_in_flit_U(cwr_HARDWARE_v_i_router_4_7_v_in_flit_U),
  .HARDWARE_v_i_router_4_7_v_in_flit_B(cwr_HARDWARE_v_i_router_4_7_v_in_flit_B),
  .HARDWARE_v_i_router_4_7_v_in_flit_C(cwr_HARDWARE_v_i_router_4_7_v_in_flit_C),
  .HARDWARE_v_i_router_4_7_v_in_req_L(cwr_HARDWARE_v_i_router_4_7_v_in_req_L),
  .HARDWARE_v_i_router_4_7_v_in_req_R(cwr_HARDWARE_v_i_router_4_7_v_in_req_R),
  .HARDWARE_v_i_router_4_7_v_in_req_U(cwr_HARDWARE_v_i_router_4_7_v_in_req_U),
  .HARDWARE_v_i_router_4_7_v_in_req_B(cwr_HARDWARE_v_i_router_4_7_v_in_req_B),
  .HARDWARE_v_i_router_4_7_v_in_req_C(cwr_HARDWARE_v_i_router_4_7_v_in_req_C),
  .HARDWARE_v_i_router_4_7_v_out_ack_L(cwr_HARDWARE_v_i_router_4_7_v_out_ack_L),
  .HARDWARE_v_i_router_4_7_v_out_ack_R(cwr_HARDWARE_v_i_router_4_7_v_out_ack_R),
  .HARDWARE_v_i_router_4_7_v_out_ack_U(cwr_HARDWARE_v_i_router_4_7_v_out_ack_U),
  .HARDWARE_v_i_router_4_7_v_out_ack_B(cwr_HARDWARE_v_i_router_4_7_v_out_ack_B),
  .HARDWARE_v_i_router_4_7_v_out_ack_C(cwr_HARDWARE_v_i_router_4_7_v_out_ack_C),
  .HARDWARE_v_i_router_4_8_v_clk(cwr_HARDWARE_v_i_router_4_8_v_clk),
  .HARDWARE_v_i_router_4_8_v_rst(cwr_HARDWARE_v_i_router_4_8_v_rst),
  .HARDWARE_v_i_router_4_8_v_out_flit_L(cwr_HARDWARE_v_i_router_4_8_v_out_flit_L),
  .HARDWARE_v_i_router_4_8_v_out_flit_R(cwr_HARDWARE_v_i_router_4_8_v_out_flit_R),
  .HARDWARE_v_i_router_4_8_v_out_flit_U(cwr_HARDWARE_v_i_router_4_8_v_out_flit_U),
  .HARDWARE_v_i_router_4_8_v_out_flit_B(cwr_HARDWARE_v_i_router_4_8_v_out_flit_B),
  .HARDWARE_v_i_router_4_8_v_out_flit_C(cwr_HARDWARE_v_i_router_4_8_v_out_flit_C),
  .HARDWARE_v_i_router_4_8_v_out_req_L(cwr_HARDWARE_v_i_router_4_8_v_out_req_L),
  .HARDWARE_v_i_router_4_8_v_out_req_R(cwr_HARDWARE_v_i_router_4_8_v_out_req_R),
  .HARDWARE_v_i_router_4_8_v_out_req_U(cwr_HARDWARE_v_i_router_4_8_v_out_req_U),
  .HARDWARE_v_i_router_4_8_v_out_req_B(cwr_HARDWARE_v_i_router_4_8_v_out_req_B),
  .HARDWARE_v_i_router_4_8_v_out_req_C(cwr_HARDWARE_v_i_router_4_8_v_out_req_C),
  .HARDWARE_v_i_router_4_8_v_in_ack_L(cwr_HARDWARE_v_i_router_4_8_v_in_ack_L),
  .HARDWARE_v_i_router_4_8_v_in_ack_R(cwr_HARDWARE_v_i_router_4_8_v_in_ack_R),
  .HARDWARE_v_i_router_4_8_v_in_ack_U(cwr_HARDWARE_v_i_router_4_8_v_in_ack_U),
  .HARDWARE_v_i_router_4_8_v_in_ack_B(cwr_HARDWARE_v_i_router_4_8_v_in_ack_B),
  .HARDWARE_v_i_router_4_8_v_in_ack_C(cwr_HARDWARE_v_i_router_4_8_v_in_ack_C),
  .HARDWARE_v_i_router_4_8_v_in_flit_L(cwr_HARDWARE_v_i_router_4_8_v_in_flit_L),
  .HARDWARE_v_i_router_4_8_v_in_flit_R(cwr_HARDWARE_v_i_router_4_8_v_in_flit_R),
  .HARDWARE_v_i_router_4_8_v_in_flit_U(cwr_HARDWARE_v_i_router_4_8_v_in_flit_U),
  .HARDWARE_v_i_router_4_8_v_in_flit_B(cwr_HARDWARE_v_i_router_4_8_v_in_flit_B),
  .HARDWARE_v_i_router_4_8_v_in_flit_C(cwr_HARDWARE_v_i_router_4_8_v_in_flit_C),
  .HARDWARE_v_i_router_4_8_v_in_req_L(cwr_HARDWARE_v_i_router_4_8_v_in_req_L),
  .HARDWARE_v_i_router_4_8_v_in_req_R(cwr_HARDWARE_v_i_router_4_8_v_in_req_R),
  .HARDWARE_v_i_router_4_8_v_in_req_U(cwr_HARDWARE_v_i_router_4_8_v_in_req_U),
  .HARDWARE_v_i_router_4_8_v_in_req_B(cwr_HARDWARE_v_i_router_4_8_v_in_req_B),
  .HARDWARE_v_i_router_4_8_v_in_req_C(cwr_HARDWARE_v_i_router_4_8_v_in_req_C),
  .HARDWARE_v_i_router_4_8_v_out_ack_L(cwr_HARDWARE_v_i_router_4_8_v_out_ack_L),
  .HARDWARE_v_i_router_4_8_v_out_ack_R(cwr_HARDWARE_v_i_router_4_8_v_out_ack_R),
  .HARDWARE_v_i_router_4_8_v_out_ack_U(cwr_HARDWARE_v_i_router_4_8_v_out_ack_U),
  .HARDWARE_v_i_router_4_8_v_out_ack_B(cwr_HARDWARE_v_i_router_4_8_v_out_ack_B),
  .HARDWARE_v_i_router_4_8_v_out_ack_C(cwr_HARDWARE_v_i_router_4_8_v_out_ack_C),
  .HARDWARE_v_i_router_4_9_v_clk(cwr_HARDWARE_v_i_router_4_9_v_clk),
  .HARDWARE_v_i_router_4_9_v_rst(cwr_HARDWARE_v_i_router_4_9_v_rst),
  .HARDWARE_v_i_router_4_9_v_out_flit_L(cwr_HARDWARE_v_i_router_4_9_v_out_flit_L),
  .HARDWARE_v_i_router_4_9_v_out_flit_R(cwr_HARDWARE_v_i_router_4_9_v_out_flit_R),
  .HARDWARE_v_i_router_4_9_v_out_flit_U(cwr_HARDWARE_v_i_router_4_9_v_out_flit_U),
  .HARDWARE_v_i_router_4_9_v_out_flit_B(cwr_HARDWARE_v_i_router_4_9_v_out_flit_B),
  .HARDWARE_v_i_router_4_9_v_out_flit_C(cwr_HARDWARE_v_i_router_4_9_v_out_flit_C),
  .HARDWARE_v_i_router_4_9_v_out_req_L(cwr_HARDWARE_v_i_router_4_9_v_out_req_L),
  .HARDWARE_v_i_router_4_9_v_out_req_R(cwr_HARDWARE_v_i_router_4_9_v_out_req_R),
  .HARDWARE_v_i_router_4_9_v_out_req_U(cwr_HARDWARE_v_i_router_4_9_v_out_req_U),
  .HARDWARE_v_i_router_4_9_v_out_req_B(cwr_HARDWARE_v_i_router_4_9_v_out_req_B),
  .HARDWARE_v_i_router_4_9_v_out_req_C(cwr_HARDWARE_v_i_router_4_9_v_out_req_C),
  .HARDWARE_v_i_router_4_9_v_in_ack_L(cwr_HARDWARE_v_i_router_4_9_v_in_ack_L),
  .HARDWARE_v_i_router_4_9_v_in_ack_R(cwr_HARDWARE_v_i_router_4_9_v_in_ack_R),
  .HARDWARE_v_i_router_4_9_v_in_ack_U(cwr_HARDWARE_v_i_router_4_9_v_in_ack_U),
  .HARDWARE_v_i_router_4_9_v_in_ack_B(cwr_HARDWARE_v_i_router_4_9_v_in_ack_B),
  .HARDWARE_v_i_router_4_9_v_in_ack_C(cwr_HARDWARE_v_i_router_4_9_v_in_ack_C),
  .HARDWARE_v_i_router_4_9_v_in_flit_L(cwr_HARDWARE_v_i_router_4_9_v_in_flit_L),
  .HARDWARE_v_i_router_4_9_v_in_flit_R(cwr_HARDWARE_v_i_router_4_9_v_in_flit_R),
  .HARDWARE_v_i_router_4_9_v_in_flit_U(cwr_HARDWARE_v_i_router_4_9_v_in_flit_U),
  .HARDWARE_v_i_router_4_9_v_in_flit_B(cwr_HARDWARE_v_i_router_4_9_v_in_flit_B),
  .HARDWARE_v_i_router_4_9_v_in_flit_C(cwr_HARDWARE_v_i_router_4_9_v_in_flit_C),
  .HARDWARE_v_i_router_4_9_v_in_req_L(cwr_HARDWARE_v_i_router_4_9_v_in_req_L),
  .HARDWARE_v_i_router_4_9_v_in_req_R(cwr_HARDWARE_v_i_router_4_9_v_in_req_R),
  .HARDWARE_v_i_router_4_9_v_in_req_U(cwr_HARDWARE_v_i_router_4_9_v_in_req_U),
  .HARDWARE_v_i_router_4_9_v_in_req_B(cwr_HARDWARE_v_i_router_4_9_v_in_req_B),
  .HARDWARE_v_i_router_4_9_v_in_req_C(cwr_HARDWARE_v_i_router_4_9_v_in_req_C),
  .HARDWARE_v_i_router_4_9_v_out_ack_L(cwr_HARDWARE_v_i_router_4_9_v_out_ack_L),
  .HARDWARE_v_i_router_4_9_v_out_ack_R(cwr_HARDWARE_v_i_router_4_9_v_out_ack_R),
  .HARDWARE_v_i_router_4_9_v_out_ack_U(cwr_HARDWARE_v_i_router_4_9_v_out_ack_U),
  .HARDWARE_v_i_router_4_9_v_out_ack_B(cwr_HARDWARE_v_i_router_4_9_v_out_ack_B),
  .HARDWARE_v_i_router_4_9_v_out_ack_C(cwr_HARDWARE_v_i_router_4_9_v_out_ack_C),
  .HARDWARE_v_i_router_4_10_v_clk(cwr_HARDWARE_v_i_router_4_10_v_clk),
  .HARDWARE_v_i_router_4_10_v_rst(cwr_HARDWARE_v_i_router_4_10_v_rst),
  .HARDWARE_v_i_router_4_10_v_out_flit_L(cwr_HARDWARE_v_i_router_4_10_v_out_flit_L),
  .HARDWARE_v_i_router_4_10_v_out_flit_R(cwr_HARDWARE_v_i_router_4_10_v_out_flit_R),
  .HARDWARE_v_i_router_4_10_v_out_flit_U(cwr_HARDWARE_v_i_router_4_10_v_out_flit_U),
  .HARDWARE_v_i_router_4_10_v_out_flit_B(cwr_HARDWARE_v_i_router_4_10_v_out_flit_B),
  .HARDWARE_v_i_router_4_10_v_out_flit_C(cwr_HARDWARE_v_i_router_4_10_v_out_flit_C),
  .HARDWARE_v_i_router_4_10_v_out_req_L(cwr_HARDWARE_v_i_router_4_10_v_out_req_L),
  .HARDWARE_v_i_router_4_10_v_out_req_R(cwr_HARDWARE_v_i_router_4_10_v_out_req_R),
  .HARDWARE_v_i_router_4_10_v_out_req_U(cwr_HARDWARE_v_i_router_4_10_v_out_req_U),
  .HARDWARE_v_i_router_4_10_v_out_req_B(cwr_HARDWARE_v_i_router_4_10_v_out_req_B),
  .HARDWARE_v_i_router_4_10_v_out_req_C(cwr_HARDWARE_v_i_router_4_10_v_out_req_C),
  .HARDWARE_v_i_router_4_10_v_in_ack_L(cwr_HARDWARE_v_i_router_4_10_v_in_ack_L),
  .HARDWARE_v_i_router_4_10_v_in_ack_R(cwr_HARDWARE_v_i_router_4_10_v_in_ack_R),
  .HARDWARE_v_i_router_4_10_v_in_ack_U(cwr_HARDWARE_v_i_router_4_10_v_in_ack_U),
  .HARDWARE_v_i_router_4_10_v_in_ack_B(cwr_HARDWARE_v_i_router_4_10_v_in_ack_B),
  .HARDWARE_v_i_router_4_10_v_in_ack_C(cwr_HARDWARE_v_i_router_4_10_v_in_ack_C),
  .HARDWARE_v_i_router_4_10_v_in_flit_L(cwr_HARDWARE_v_i_router_4_10_v_in_flit_L),
  .HARDWARE_v_i_router_4_10_v_in_flit_R(cwr_HARDWARE_v_i_router_4_10_v_in_flit_R),
  .HARDWARE_v_i_router_4_10_v_in_flit_U(cwr_HARDWARE_v_i_router_4_10_v_in_flit_U),
  .HARDWARE_v_i_router_4_10_v_in_flit_B(cwr_HARDWARE_v_i_router_4_10_v_in_flit_B),
  .HARDWARE_v_i_router_4_10_v_in_flit_C(cwr_HARDWARE_v_i_router_4_10_v_in_flit_C),
  .HARDWARE_v_i_router_4_10_v_in_req_L(cwr_HARDWARE_v_i_router_4_10_v_in_req_L),
  .HARDWARE_v_i_router_4_10_v_in_req_R(cwr_HARDWARE_v_i_router_4_10_v_in_req_R),
  .HARDWARE_v_i_router_4_10_v_in_req_U(cwr_HARDWARE_v_i_router_4_10_v_in_req_U),
  .HARDWARE_v_i_router_4_10_v_in_req_B(cwr_HARDWARE_v_i_router_4_10_v_in_req_B),
  .HARDWARE_v_i_router_4_10_v_in_req_C(cwr_HARDWARE_v_i_router_4_10_v_in_req_C),
  .HARDWARE_v_i_router_4_10_v_out_ack_L(cwr_HARDWARE_v_i_router_4_10_v_out_ack_L),
  .HARDWARE_v_i_router_4_10_v_out_ack_R(cwr_HARDWARE_v_i_router_4_10_v_out_ack_R),
  .HARDWARE_v_i_router_4_10_v_out_ack_U(cwr_HARDWARE_v_i_router_4_10_v_out_ack_U),
  .HARDWARE_v_i_router_4_10_v_out_ack_B(cwr_HARDWARE_v_i_router_4_10_v_out_ack_B),
  .HARDWARE_v_i_router_4_10_v_out_ack_C(cwr_HARDWARE_v_i_router_4_10_v_out_ack_C),
  .HARDWARE_v_i_router_4_11_v_clk(cwr_HARDWARE_v_i_router_4_11_v_clk),
  .HARDWARE_v_i_router_4_11_v_rst(cwr_HARDWARE_v_i_router_4_11_v_rst),
  .HARDWARE_v_i_router_4_11_v_out_flit_L(cwr_HARDWARE_v_i_router_4_11_v_out_flit_L),
  .HARDWARE_v_i_router_4_11_v_out_flit_R(cwr_HARDWARE_v_i_router_4_11_v_out_flit_R),
  .HARDWARE_v_i_router_4_11_v_out_flit_U(cwr_HARDWARE_v_i_router_4_11_v_out_flit_U),
  .HARDWARE_v_i_router_4_11_v_out_flit_B(cwr_HARDWARE_v_i_router_4_11_v_out_flit_B),
  .HARDWARE_v_i_router_4_11_v_out_flit_C(cwr_HARDWARE_v_i_router_4_11_v_out_flit_C),
  .HARDWARE_v_i_router_4_11_v_out_req_L(cwr_HARDWARE_v_i_router_4_11_v_out_req_L),
  .HARDWARE_v_i_router_4_11_v_out_req_R(cwr_HARDWARE_v_i_router_4_11_v_out_req_R),
  .HARDWARE_v_i_router_4_11_v_out_req_U(cwr_HARDWARE_v_i_router_4_11_v_out_req_U),
  .HARDWARE_v_i_router_4_11_v_out_req_B(cwr_HARDWARE_v_i_router_4_11_v_out_req_B),
  .HARDWARE_v_i_router_4_11_v_out_req_C(cwr_HARDWARE_v_i_router_4_11_v_out_req_C),
  .HARDWARE_v_i_router_4_11_v_in_ack_L(cwr_HARDWARE_v_i_router_4_11_v_in_ack_L),
  .HARDWARE_v_i_router_4_11_v_in_ack_R(cwr_HARDWARE_v_i_router_4_11_v_in_ack_R),
  .HARDWARE_v_i_router_4_11_v_in_ack_U(cwr_HARDWARE_v_i_router_4_11_v_in_ack_U),
  .HARDWARE_v_i_router_4_11_v_in_ack_B(cwr_HARDWARE_v_i_router_4_11_v_in_ack_B),
  .HARDWARE_v_i_router_4_11_v_in_ack_C(cwr_HARDWARE_v_i_router_4_11_v_in_ack_C),
  .HARDWARE_v_i_router_4_11_v_in_flit_L(cwr_HARDWARE_v_i_router_4_11_v_in_flit_L),
  .HARDWARE_v_i_router_4_11_v_in_flit_R(cwr_HARDWARE_v_i_router_4_11_v_in_flit_R),
  .HARDWARE_v_i_router_4_11_v_in_flit_U(cwr_HARDWARE_v_i_router_4_11_v_in_flit_U),
  .HARDWARE_v_i_router_4_11_v_in_flit_B(cwr_HARDWARE_v_i_router_4_11_v_in_flit_B),
  .HARDWARE_v_i_router_4_11_v_in_flit_C(cwr_HARDWARE_v_i_router_4_11_v_in_flit_C),
  .HARDWARE_v_i_router_4_11_v_in_req_L(cwr_HARDWARE_v_i_router_4_11_v_in_req_L),
  .HARDWARE_v_i_router_4_11_v_in_req_R(cwr_HARDWARE_v_i_router_4_11_v_in_req_R),
  .HARDWARE_v_i_router_4_11_v_in_req_U(cwr_HARDWARE_v_i_router_4_11_v_in_req_U),
  .HARDWARE_v_i_router_4_11_v_in_req_B(cwr_HARDWARE_v_i_router_4_11_v_in_req_B),
  .HARDWARE_v_i_router_4_11_v_in_req_C(cwr_HARDWARE_v_i_router_4_11_v_in_req_C),
  .HARDWARE_v_i_router_4_11_v_out_ack_L(cwr_HARDWARE_v_i_router_4_11_v_out_ack_L),
  .HARDWARE_v_i_router_4_11_v_out_ack_R(cwr_HARDWARE_v_i_router_4_11_v_out_ack_R),
  .HARDWARE_v_i_router_4_11_v_out_ack_U(cwr_HARDWARE_v_i_router_4_11_v_out_ack_U),
  .HARDWARE_v_i_router_4_11_v_out_ack_B(cwr_HARDWARE_v_i_router_4_11_v_out_ack_B),
  .HARDWARE_v_i_router_4_11_v_out_ack_C(cwr_HARDWARE_v_i_router_4_11_v_out_ack_C),
  .HARDWARE_v_i_router_4_12_v_clk(cwr_HARDWARE_v_i_router_4_12_v_clk),
  .HARDWARE_v_i_router_4_12_v_rst(cwr_HARDWARE_v_i_router_4_12_v_rst),
  .HARDWARE_v_i_router_4_12_v_out_flit_L(cwr_HARDWARE_v_i_router_4_12_v_out_flit_L),
  .HARDWARE_v_i_router_4_12_v_out_flit_R(cwr_HARDWARE_v_i_router_4_12_v_out_flit_R),
  .HARDWARE_v_i_router_4_12_v_out_flit_U(cwr_HARDWARE_v_i_router_4_12_v_out_flit_U),
  .HARDWARE_v_i_router_4_12_v_out_flit_B(cwr_HARDWARE_v_i_router_4_12_v_out_flit_B),
  .HARDWARE_v_i_router_4_12_v_out_flit_C(cwr_HARDWARE_v_i_router_4_12_v_out_flit_C),
  .HARDWARE_v_i_router_4_12_v_out_req_L(cwr_HARDWARE_v_i_router_4_12_v_out_req_L),
  .HARDWARE_v_i_router_4_12_v_out_req_R(cwr_HARDWARE_v_i_router_4_12_v_out_req_R),
  .HARDWARE_v_i_router_4_12_v_out_req_U(cwr_HARDWARE_v_i_router_4_12_v_out_req_U),
  .HARDWARE_v_i_router_4_12_v_out_req_B(cwr_HARDWARE_v_i_router_4_12_v_out_req_B),
  .HARDWARE_v_i_router_4_12_v_out_req_C(cwr_HARDWARE_v_i_router_4_12_v_out_req_C),
  .HARDWARE_v_i_router_4_12_v_in_ack_L(cwr_HARDWARE_v_i_router_4_12_v_in_ack_L),
  .HARDWARE_v_i_router_4_12_v_in_ack_R(cwr_HARDWARE_v_i_router_4_12_v_in_ack_R),
  .HARDWARE_v_i_router_4_12_v_in_ack_U(cwr_HARDWARE_v_i_router_4_12_v_in_ack_U),
  .HARDWARE_v_i_router_4_12_v_in_ack_B(cwr_HARDWARE_v_i_router_4_12_v_in_ack_B),
  .HARDWARE_v_i_router_4_12_v_in_ack_C(cwr_HARDWARE_v_i_router_4_12_v_in_ack_C),
  .HARDWARE_v_i_router_4_12_v_in_flit_L(cwr_HARDWARE_v_i_router_4_12_v_in_flit_L),
  .HARDWARE_v_i_router_4_12_v_in_flit_R(cwr_HARDWARE_v_i_router_4_12_v_in_flit_R),
  .HARDWARE_v_i_router_4_12_v_in_flit_U(cwr_HARDWARE_v_i_router_4_12_v_in_flit_U),
  .HARDWARE_v_i_router_4_12_v_in_flit_B(cwr_HARDWARE_v_i_router_4_12_v_in_flit_B),
  .HARDWARE_v_i_router_4_12_v_in_flit_C(cwr_HARDWARE_v_i_router_4_12_v_in_flit_C),
  .HARDWARE_v_i_router_4_12_v_in_req_L(cwr_HARDWARE_v_i_router_4_12_v_in_req_L),
  .HARDWARE_v_i_router_4_12_v_in_req_R(cwr_HARDWARE_v_i_router_4_12_v_in_req_R),
  .HARDWARE_v_i_router_4_12_v_in_req_U(cwr_HARDWARE_v_i_router_4_12_v_in_req_U),
  .HARDWARE_v_i_router_4_12_v_in_req_B(cwr_HARDWARE_v_i_router_4_12_v_in_req_B),
  .HARDWARE_v_i_router_4_12_v_in_req_C(cwr_HARDWARE_v_i_router_4_12_v_in_req_C),
  .HARDWARE_v_i_router_4_12_v_out_ack_L(cwr_HARDWARE_v_i_router_4_12_v_out_ack_L),
  .HARDWARE_v_i_router_4_12_v_out_ack_R(cwr_HARDWARE_v_i_router_4_12_v_out_ack_R),
  .HARDWARE_v_i_router_4_12_v_out_ack_U(cwr_HARDWARE_v_i_router_4_12_v_out_ack_U),
  .HARDWARE_v_i_router_4_12_v_out_ack_B(cwr_HARDWARE_v_i_router_4_12_v_out_ack_B),
  .HARDWARE_v_i_router_4_12_v_out_ack_C(cwr_HARDWARE_v_i_router_4_12_v_out_ack_C)
);

endmodule

