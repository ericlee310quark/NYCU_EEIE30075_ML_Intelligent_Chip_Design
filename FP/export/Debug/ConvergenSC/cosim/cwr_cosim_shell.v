`timescale 1 ps / 1 ps

module cwr_cosim_shell (
  HARDWARE_v_i_router_v_clk,
  HARDWARE_v_i_router_v_rst,
  HARDWARE_v_i_router_v_out_flit_L,
  HARDWARE_v_i_router_v_out_flit_R,
  HARDWARE_v_i_router_v_out_flit_U,
  HARDWARE_v_i_router_v_out_flit_B,
  HARDWARE_v_i_router_v_out_flit_C,
  HARDWARE_v_i_router_v_out_req_L,
  HARDWARE_v_i_router_v_out_req_R,
  HARDWARE_v_i_router_v_out_req_U,
  HARDWARE_v_i_router_v_out_req_B,
  HARDWARE_v_i_router_v_out_req_C,
  HARDWARE_v_i_router_v_in_ack_L,
  HARDWARE_v_i_router_v_in_ack_R,
  HARDWARE_v_i_router_v_in_ack_U,
  HARDWARE_v_i_router_v_in_ack_B,
  HARDWARE_v_i_router_v_in_ack_C,
  HARDWARE_v_i_router_v_in_flit_L,
  HARDWARE_v_i_router_v_in_flit_R,
  HARDWARE_v_i_router_v_in_flit_U,
  HARDWARE_v_i_router_v_in_flit_B,
  HARDWARE_v_i_router_v_in_flit_C,
  HARDWARE_v_i_router_v_in_req_L,
  HARDWARE_v_i_router_v_in_req_R,
  HARDWARE_v_i_router_v_in_req_U,
  HARDWARE_v_i_router_v_in_req_B,
  HARDWARE_v_i_router_v_in_req_C,
  HARDWARE_v_i_router_v_out_ack_L,
  HARDWARE_v_i_router_v_out_ack_R,
  HARDWARE_v_i_router_v_out_ack_U,
  HARDWARE_v_i_router_v_out_ack_B,
  HARDWARE_v_i_router_v_out_ack_C,
  HARDWARE_v_i_router_1_v_clk,
  HARDWARE_v_i_router_1_v_rst,
  HARDWARE_v_i_router_1_v_out_flit_L,
  HARDWARE_v_i_router_1_v_out_flit_R,
  HARDWARE_v_i_router_1_v_out_flit_U,
  HARDWARE_v_i_router_1_v_out_flit_B,
  HARDWARE_v_i_router_1_v_out_flit_C,
  HARDWARE_v_i_router_1_v_out_req_L,
  HARDWARE_v_i_router_1_v_out_req_R,
  HARDWARE_v_i_router_1_v_out_req_U,
  HARDWARE_v_i_router_1_v_out_req_B,
  HARDWARE_v_i_router_1_v_out_req_C,
  HARDWARE_v_i_router_1_v_in_ack_L,
  HARDWARE_v_i_router_1_v_in_ack_R,
  HARDWARE_v_i_router_1_v_in_ack_U,
  HARDWARE_v_i_router_1_v_in_ack_B,
  HARDWARE_v_i_router_1_v_in_ack_C,
  HARDWARE_v_i_router_1_v_in_flit_L,
  HARDWARE_v_i_router_1_v_in_flit_R,
  HARDWARE_v_i_router_1_v_in_flit_U,
  HARDWARE_v_i_router_1_v_in_flit_B,
  HARDWARE_v_i_router_1_v_in_flit_C,
  HARDWARE_v_i_router_1_v_in_req_L,
  HARDWARE_v_i_router_1_v_in_req_R,
  HARDWARE_v_i_router_1_v_in_req_U,
  HARDWARE_v_i_router_1_v_in_req_B,
  HARDWARE_v_i_router_1_v_in_req_C,
  HARDWARE_v_i_router_1_v_out_ack_L,
  HARDWARE_v_i_router_1_v_out_ack_R,
  HARDWARE_v_i_router_1_v_out_ack_U,
  HARDWARE_v_i_router_1_v_out_ack_B,
  HARDWARE_v_i_router_1_v_out_ack_C,
  HARDWARE_v_i_router_2_v_clk,
  HARDWARE_v_i_router_2_v_rst,
  HARDWARE_v_i_router_2_v_out_flit_L,
  HARDWARE_v_i_router_2_v_out_flit_R,
  HARDWARE_v_i_router_2_v_out_flit_U,
  HARDWARE_v_i_router_2_v_out_flit_B,
  HARDWARE_v_i_router_2_v_out_flit_C,
  HARDWARE_v_i_router_2_v_out_req_L,
  HARDWARE_v_i_router_2_v_out_req_R,
  HARDWARE_v_i_router_2_v_out_req_U,
  HARDWARE_v_i_router_2_v_out_req_B,
  HARDWARE_v_i_router_2_v_out_req_C,
  HARDWARE_v_i_router_2_v_in_ack_L,
  HARDWARE_v_i_router_2_v_in_ack_R,
  HARDWARE_v_i_router_2_v_in_ack_U,
  HARDWARE_v_i_router_2_v_in_ack_B,
  HARDWARE_v_i_router_2_v_in_ack_C,
  HARDWARE_v_i_router_2_v_in_flit_L,
  HARDWARE_v_i_router_2_v_in_flit_R,
  HARDWARE_v_i_router_2_v_in_flit_U,
  HARDWARE_v_i_router_2_v_in_flit_B,
  HARDWARE_v_i_router_2_v_in_flit_C,
  HARDWARE_v_i_router_2_v_in_req_L,
  HARDWARE_v_i_router_2_v_in_req_R,
  HARDWARE_v_i_router_2_v_in_req_U,
  HARDWARE_v_i_router_2_v_in_req_B,
  HARDWARE_v_i_router_2_v_in_req_C,
  HARDWARE_v_i_router_2_v_out_ack_L,
  HARDWARE_v_i_router_2_v_out_ack_R,
  HARDWARE_v_i_router_2_v_out_ack_U,
  HARDWARE_v_i_router_2_v_out_ack_B,
  HARDWARE_v_i_router_2_v_out_ack_C,
  HARDWARE_v_i_router_3_v_clk,
  HARDWARE_v_i_router_3_v_rst,
  HARDWARE_v_i_router_3_v_out_flit_L,
  HARDWARE_v_i_router_3_v_out_flit_R,
  HARDWARE_v_i_router_3_v_out_flit_U,
  HARDWARE_v_i_router_3_v_out_flit_B,
  HARDWARE_v_i_router_3_v_out_flit_C,
  HARDWARE_v_i_router_3_v_out_req_L,
  HARDWARE_v_i_router_3_v_out_req_R,
  HARDWARE_v_i_router_3_v_out_req_U,
  HARDWARE_v_i_router_3_v_out_req_B,
  HARDWARE_v_i_router_3_v_out_req_C,
  HARDWARE_v_i_router_3_v_in_ack_L,
  HARDWARE_v_i_router_3_v_in_ack_R,
  HARDWARE_v_i_router_3_v_in_ack_U,
  HARDWARE_v_i_router_3_v_in_ack_B,
  HARDWARE_v_i_router_3_v_in_ack_C,
  HARDWARE_v_i_router_3_v_in_flit_L,
  HARDWARE_v_i_router_3_v_in_flit_R,
  HARDWARE_v_i_router_3_v_in_flit_U,
  HARDWARE_v_i_router_3_v_in_flit_B,
  HARDWARE_v_i_router_3_v_in_flit_C,
  HARDWARE_v_i_router_3_v_in_req_L,
  HARDWARE_v_i_router_3_v_in_req_R,
  HARDWARE_v_i_router_3_v_in_req_U,
  HARDWARE_v_i_router_3_v_in_req_B,
  HARDWARE_v_i_router_3_v_in_req_C,
  HARDWARE_v_i_router_3_v_out_ack_L,
  HARDWARE_v_i_router_3_v_out_ack_R,
  HARDWARE_v_i_router_3_v_out_ack_U,
  HARDWARE_v_i_router_3_v_out_ack_B,
  HARDWARE_v_i_router_3_v_out_ack_C,
  HARDWARE_v_i_router_4_v_clk,
  HARDWARE_v_i_router_4_v_rst,
  HARDWARE_v_i_router_4_v_out_flit_L,
  HARDWARE_v_i_router_4_v_out_flit_R,
  HARDWARE_v_i_router_4_v_out_flit_U,
  HARDWARE_v_i_router_4_v_out_flit_B,
  HARDWARE_v_i_router_4_v_out_flit_C,
  HARDWARE_v_i_router_4_v_out_req_L,
  HARDWARE_v_i_router_4_v_out_req_R,
  HARDWARE_v_i_router_4_v_out_req_U,
  HARDWARE_v_i_router_4_v_out_req_B,
  HARDWARE_v_i_router_4_v_out_req_C,
  HARDWARE_v_i_router_4_v_in_ack_L,
  HARDWARE_v_i_router_4_v_in_ack_R,
  HARDWARE_v_i_router_4_v_in_ack_U,
  HARDWARE_v_i_router_4_v_in_ack_B,
  HARDWARE_v_i_router_4_v_in_ack_C,
  HARDWARE_v_i_router_4_v_in_flit_L,
  HARDWARE_v_i_router_4_v_in_flit_R,
  HARDWARE_v_i_router_4_v_in_flit_U,
  HARDWARE_v_i_router_4_v_in_flit_B,
  HARDWARE_v_i_router_4_v_in_flit_C,
  HARDWARE_v_i_router_4_v_in_req_L,
  HARDWARE_v_i_router_4_v_in_req_R,
  HARDWARE_v_i_router_4_v_in_req_U,
  HARDWARE_v_i_router_4_v_in_req_B,
  HARDWARE_v_i_router_4_v_in_req_C,
  HARDWARE_v_i_router_4_v_out_ack_L,
  HARDWARE_v_i_router_4_v_out_ack_R,
  HARDWARE_v_i_router_4_v_out_ack_U,
  HARDWARE_v_i_router_4_v_out_ack_B,
  HARDWARE_v_i_router_4_v_out_ack_C,
  HARDWARE_v_i_router_4_1_v_clk,
  HARDWARE_v_i_router_4_1_v_rst,
  HARDWARE_v_i_router_4_1_v_out_flit_L,
  HARDWARE_v_i_router_4_1_v_out_flit_R,
  HARDWARE_v_i_router_4_1_v_out_flit_U,
  HARDWARE_v_i_router_4_1_v_out_flit_B,
  HARDWARE_v_i_router_4_1_v_out_flit_C,
  HARDWARE_v_i_router_4_1_v_out_req_L,
  HARDWARE_v_i_router_4_1_v_out_req_R,
  HARDWARE_v_i_router_4_1_v_out_req_U,
  HARDWARE_v_i_router_4_1_v_out_req_B,
  HARDWARE_v_i_router_4_1_v_out_req_C,
  HARDWARE_v_i_router_4_1_v_in_ack_L,
  HARDWARE_v_i_router_4_1_v_in_ack_R,
  HARDWARE_v_i_router_4_1_v_in_ack_U,
  HARDWARE_v_i_router_4_1_v_in_ack_B,
  HARDWARE_v_i_router_4_1_v_in_ack_C,
  HARDWARE_v_i_router_4_1_v_in_flit_L,
  HARDWARE_v_i_router_4_1_v_in_flit_R,
  HARDWARE_v_i_router_4_1_v_in_flit_U,
  HARDWARE_v_i_router_4_1_v_in_flit_B,
  HARDWARE_v_i_router_4_1_v_in_flit_C,
  HARDWARE_v_i_router_4_1_v_in_req_L,
  HARDWARE_v_i_router_4_1_v_in_req_R,
  HARDWARE_v_i_router_4_1_v_in_req_U,
  HARDWARE_v_i_router_4_1_v_in_req_B,
  HARDWARE_v_i_router_4_1_v_in_req_C,
  HARDWARE_v_i_router_4_1_v_out_ack_L,
  HARDWARE_v_i_router_4_1_v_out_ack_R,
  HARDWARE_v_i_router_4_1_v_out_ack_U,
  HARDWARE_v_i_router_4_1_v_out_ack_B,
  HARDWARE_v_i_router_4_1_v_out_ack_C,
  HARDWARE_v_i_router_4_3_v_clk,
  HARDWARE_v_i_router_4_3_v_rst,
  HARDWARE_v_i_router_4_3_v_out_flit_L,
  HARDWARE_v_i_router_4_3_v_out_flit_R,
  HARDWARE_v_i_router_4_3_v_out_flit_U,
  HARDWARE_v_i_router_4_3_v_out_flit_B,
  HARDWARE_v_i_router_4_3_v_out_flit_C,
  HARDWARE_v_i_router_4_3_v_out_req_L,
  HARDWARE_v_i_router_4_3_v_out_req_R,
  HARDWARE_v_i_router_4_3_v_out_req_U,
  HARDWARE_v_i_router_4_3_v_out_req_B,
  HARDWARE_v_i_router_4_3_v_out_req_C,
  HARDWARE_v_i_router_4_3_v_in_ack_L,
  HARDWARE_v_i_router_4_3_v_in_ack_R,
  HARDWARE_v_i_router_4_3_v_in_ack_U,
  HARDWARE_v_i_router_4_3_v_in_ack_B,
  HARDWARE_v_i_router_4_3_v_in_ack_C,
  HARDWARE_v_i_router_4_3_v_in_flit_L,
  HARDWARE_v_i_router_4_3_v_in_flit_R,
  HARDWARE_v_i_router_4_3_v_in_flit_U,
  HARDWARE_v_i_router_4_3_v_in_flit_B,
  HARDWARE_v_i_router_4_3_v_in_flit_C,
  HARDWARE_v_i_router_4_3_v_in_req_L,
  HARDWARE_v_i_router_4_3_v_in_req_R,
  HARDWARE_v_i_router_4_3_v_in_req_U,
  HARDWARE_v_i_router_4_3_v_in_req_B,
  HARDWARE_v_i_router_4_3_v_in_req_C,
  HARDWARE_v_i_router_4_3_v_out_ack_L,
  HARDWARE_v_i_router_4_3_v_out_ack_R,
  HARDWARE_v_i_router_4_3_v_out_ack_U,
  HARDWARE_v_i_router_4_3_v_out_ack_B,
  HARDWARE_v_i_router_4_3_v_out_ack_C,
  HARDWARE_v_i_router_4_4_v_clk,
  HARDWARE_v_i_router_4_4_v_rst,
  HARDWARE_v_i_router_4_4_v_out_flit_L,
  HARDWARE_v_i_router_4_4_v_out_flit_R,
  HARDWARE_v_i_router_4_4_v_out_flit_U,
  HARDWARE_v_i_router_4_4_v_out_flit_B,
  HARDWARE_v_i_router_4_4_v_out_flit_C,
  HARDWARE_v_i_router_4_4_v_out_req_L,
  HARDWARE_v_i_router_4_4_v_out_req_R,
  HARDWARE_v_i_router_4_4_v_out_req_U,
  HARDWARE_v_i_router_4_4_v_out_req_B,
  HARDWARE_v_i_router_4_4_v_out_req_C,
  HARDWARE_v_i_router_4_4_v_in_ack_L,
  HARDWARE_v_i_router_4_4_v_in_ack_R,
  HARDWARE_v_i_router_4_4_v_in_ack_U,
  HARDWARE_v_i_router_4_4_v_in_ack_B,
  HARDWARE_v_i_router_4_4_v_in_ack_C,
  HARDWARE_v_i_router_4_4_v_in_flit_L,
  HARDWARE_v_i_router_4_4_v_in_flit_R,
  HARDWARE_v_i_router_4_4_v_in_flit_U,
  HARDWARE_v_i_router_4_4_v_in_flit_B,
  HARDWARE_v_i_router_4_4_v_in_flit_C,
  HARDWARE_v_i_router_4_4_v_in_req_L,
  HARDWARE_v_i_router_4_4_v_in_req_R,
  HARDWARE_v_i_router_4_4_v_in_req_U,
  HARDWARE_v_i_router_4_4_v_in_req_B,
  HARDWARE_v_i_router_4_4_v_in_req_C,
  HARDWARE_v_i_router_4_4_v_out_ack_L,
  HARDWARE_v_i_router_4_4_v_out_ack_R,
  HARDWARE_v_i_router_4_4_v_out_ack_U,
  HARDWARE_v_i_router_4_4_v_out_ack_B,
  HARDWARE_v_i_router_4_4_v_out_ack_C,
  HARDWARE_v_i_router_4_5_v_clk,
  HARDWARE_v_i_router_4_5_v_rst,
  HARDWARE_v_i_router_4_5_v_out_flit_L,
  HARDWARE_v_i_router_4_5_v_out_flit_R,
  HARDWARE_v_i_router_4_5_v_out_flit_U,
  HARDWARE_v_i_router_4_5_v_out_flit_B,
  HARDWARE_v_i_router_4_5_v_out_flit_C,
  HARDWARE_v_i_router_4_5_v_out_req_L,
  HARDWARE_v_i_router_4_5_v_out_req_R,
  HARDWARE_v_i_router_4_5_v_out_req_U,
  HARDWARE_v_i_router_4_5_v_out_req_B,
  HARDWARE_v_i_router_4_5_v_out_req_C,
  HARDWARE_v_i_router_4_5_v_in_ack_L,
  HARDWARE_v_i_router_4_5_v_in_ack_R,
  HARDWARE_v_i_router_4_5_v_in_ack_U,
  HARDWARE_v_i_router_4_5_v_in_ack_B,
  HARDWARE_v_i_router_4_5_v_in_ack_C,
  HARDWARE_v_i_router_4_5_v_in_flit_L,
  HARDWARE_v_i_router_4_5_v_in_flit_R,
  HARDWARE_v_i_router_4_5_v_in_flit_U,
  HARDWARE_v_i_router_4_5_v_in_flit_B,
  HARDWARE_v_i_router_4_5_v_in_flit_C,
  HARDWARE_v_i_router_4_5_v_in_req_L,
  HARDWARE_v_i_router_4_5_v_in_req_R,
  HARDWARE_v_i_router_4_5_v_in_req_U,
  HARDWARE_v_i_router_4_5_v_in_req_B,
  HARDWARE_v_i_router_4_5_v_in_req_C,
  HARDWARE_v_i_router_4_5_v_out_ack_L,
  HARDWARE_v_i_router_4_5_v_out_ack_R,
  HARDWARE_v_i_router_4_5_v_out_ack_U,
  HARDWARE_v_i_router_4_5_v_out_ack_B,
  HARDWARE_v_i_router_4_5_v_out_ack_C,
  HARDWARE_v_i_router_4_6_v_clk,
  HARDWARE_v_i_router_4_6_v_rst,
  HARDWARE_v_i_router_4_6_v_out_flit_L,
  HARDWARE_v_i_router_4_6_v_out_flit_R,
  HARDWARE_v_i_router_4_6_v_out_flit_U,
  HARDWARE_v_i_router_4_6_v_out_flit_B,
  HARDWARE_v_i_router_4_6_v_out_flit_C,
  HARDWARE_v_i_router_4_6_v_out_req_L,
  HARDWARE_v_i_router_4_6_v_out_req_R,
  HARDWARE_v_i_router_4_6_v_out_req_U,
  HARDWARE_v_i_router_4_6_v_out_req_B,
  HARDWARE_v_i_router_4_6_v_out_req_C,
  HARDWARE_v_i_router_4_6_v_in_ack_L,
  HARDWARE_v_i_router_4_6_v_in_ack_R,
  HARDWARE_v_i_router_4_6_v_in_ack_U,
  HARDWARE_v_i_router_4_6_v_in_ack_B,
  HARDWARE_v_i_router_4_6_v_in_ack_C,
  HARDWARE_v_i_router_4_6_v_in_flit_L,
  HARDWARE_v_i_router_4_6_v_in_flit_R,
  HARDWARE_v_i_router_4_6_v_in_flit_U,
  HARDWARE_v_i_router_4_6_v_in_flit_B,
  HARDWARE_v_i_router_4_6_v_in_flit_C,
  HARDWARE_v_i_router_4_6_v_in_req_L,
  HARDWARE_v_i_router_4_6_v_in_req_R,
  HARDWARE_v_i_router_4_6_v_in_req_U,
  HARDWARE_v_i_router_4_6_v_in_req_B,
  HARDWARE_v_i_router_4_6_v_in_req_C,
  HARDWARE_v_i_router_4_6_v_out_ack_L,
  HARDWARE_v_i_router_4_6_v_out_ack_R,
  HARDWARE_v_i_router_4_6_v_out_ack_U,
  HARDWARE_v_i_router_4_6_v_out_ack_B,
  HARDWARE_v_i_router_4_6_v_out_ack_C,
  HARDWARE_v_i_router_4_7_v_clk,
  HARDWARE_v_i_router_4_7_v_rst,
  HARDWARE_v_i_router_4_7_v_out_flit_L,
  HARDWARE_v_i_router_4_7_v_out_flit_R,
  HARDWARE_v_i_router_4_7_v_out_flit_U,
  HARDWARE_v_i_router_4_7_v_out_flit_B,
  HARDWARE_v_i_router_4_7_v_out_flit_C,
  HARDWARE_v_i_router_4_7_v_out_req_L,
  HARDWARE_v_i_router_4_7_v_out_req_R,
  HARDWARE_v_i_router_4_7_v_out_req_U,
  HARDWARE_v_i_router_4_7_v_out_req_B,
  HARDWARE_v_i_router_4_7_v_out_req_C,
  HARDWARE_v_i_router_4_7_v_in_ack_L,
  HARDWARE_v_i_router_4_7_v_in_ack_R,
  HARDWARE_v_i_router_4_7_v_in_ack_U,
  HARDWARE_v_i_router_4_7_v_in_ack_B,
  HARDWARE_v_i_router_4_7_v_in_ack_C,
  HARDWARE_v_i_router_4_7_v_in_flit_L,
  HARDWARE_v_i_router_4_7_v_in_flit_R,
  HARDWARE_v_i_router_4_7_v_in_flit_U,
  HARDWARE_v_i_router_4_7_v_in_flit_B,
  HARDWARE_v_i_router_4_7_v_in_flit_C,
  HARDWARE_v_i_router_4_7_v_in_req_L,
  HARDWARE_v_i_router_4_7_v_in_req_R,
  HARDWARE_v_i_router_4_7_v_in_req_U,
  HARDWARE_v_i_router_4_7_v_in_req_B,
  HARDWARE_v_i_router_4_7_v_in_req_C,
  HARDWARE_v_i_router_4_7_v_out_ack_L,
  HARDWARE_v_i_router_4_7_v_out_ack_R,
  HARDWARE_v_i_router_4_7_v_out_ack_U,
  HARDWARE_v_i_router_4_7_v_out_ack_B,
  HARDWARE_v_i_router_4_7_v_out_ack_C,
  HARDWARE_v_i_router_4_8_v_clk,
  HARDWARE_v_i_router_4_8_v_rst,
  HARDWARE_v_i_router_4_8_v_out_flit_L,
  HARDWARE_v_i_router_4_8_v_out_flit_R,
  HARDWARE_v_i_router_4_8_v_out_flit_U,
  HARDWARE_v_i_router_4_8_v_out_flit_B,
  HARDWARE_v_i_router_4_8_v_out_flit_C,
  HARDWARE_v_i_router_4_8_v_out_req_L,
  HARDWARE_v_i_router_4_8_v_out_req_R,
  HARDWARE_v_i_router_4_8_v_out_req_U,
  HARDWARE_v_i_router_4_8_v_out_req_B,
  HARDWARE_v_i_router_4_8_v_out_req_C,
  HARDWARE_v_i_router_4_8_v_in_ack_L,
  HARDWARE_v_i_router_4_8_v_in_ack_R,
  HARDWARE_v_i_router_4_8_v_in_ack_U,
  HARDWARE_v_i_router_4_8_v_in_ack_B,
  HARDWARE_v_i_router_4_8_v_in_ack_C,
  HARDWARE_v_i_router_4_8_v_in_flit_L,
  HARDWARE_v_i_router_4_8_v_in_flit_R,
  HARDWARE_v_i_router_4_8_v_in_flit_U,
  HARDWARE_v_i_router_4_8_v_in_flit_B,
  HARDWARE_v_i_router_4_8_v_in_flit_C,
  HARDWARE_v_i_router_4_8_v_in_req_L,
  HARDWARE_v_i_router_4_8_v_in_req_R,
  HARDWARE_v_i_router_4_8_v_in_req_U,
  HARDWARE_v_i_router_4_8_v_in_req_B,
  HARDWARE_v_i_router_4_8_v_in_req_C,
  HARDWARE_v_i_router_4_8_v_out_ack_L,
  HARDWARE_v_i_router_4_8_v_out_ack_R,
  HARDWARE_v_i_router_4_8_v_out_ack_U,
  HARDWARE_v_i_router_4_8_v_out_ack_B,
  HARDWARE_v_i_router_4_8_v_out_ack_C,
  HARDWARE_v_i_router_4_9_v_clk,
  HARDWARE_v_i_router_4_9_v_rst,
  HARDWARE_v_i_router_4_9_v_out_flit_L,
  HARDWARE_v_i_router_4_9_v_out_flit_R,
  HARDWARE_v_i_router_4_9_v_out_flit_U,
  HARDWARE_v_i_router_4_9_v_out_flit_B,
  HARDWARE_v_i_router_4_9_v_out_flit_C,
  HARDWARE_v_i_router_4_9_v_out_req_L,
  HARDWARE_v_i_router_4_9_v_out_req_R,
  HARDWARE_v_i_router_4_9_v_out_req_U,
  HARDWARE_v_i_router_4_9_v_out_req_B,
  HARDWARE_v_i_router_4_9_v_out_req_C,
  HARDWARE_v_i_router_4_9_v_in_ack_L,
  HARDWARE_v_i_router_4_9_v_in_ack_R,
  HARDWARE_v_i_router_4_9_v_in_ack_U,
  HARDWARE_v_i_router_4_9_v_in_ack_B,
  HARDWARE_v_i_router_4_9_v_in_ack_C,
  HARDWARE_v_i_router_4_9_v_in_flit_L,
  HARDWARE_v_i_router_4_9_v_in_flit_R,
  HARDWARE_v_i_router_4_9_v_in_flit_U,
  HARDWARE_v_i_router_4_9_v_in_flit_B,
  HARDWARE_v_i_router_4_9_v_in_flit_C,
  HARDWARE_v_i_router_4_9_v_in_req_L,
  HARDWARE_v_i_router_4_9_v_in_req_R,
  HARDWARE_v_i_router_4_9_v_in_req_U,
  HARDWARE_v_i_router_4_9_v_in_req_B,
  HARDWARE_v_i_router_4_9_v_in_req_C,
  HARDWARE_v_i_router_4_9_v_out_ack_L,
  HARDWARE_v_i_router_4_9_v_out_ack_R,
  HARDWARE_v_i_router_4_9_v_out_ack_U,
  HARDWARE_v_i_router_4_9_v_out_ack_B,
  HARDWARE_v_i_router_4_9_v_out_ack_C,
  HARDWARE_v_i_router_4_10_v_clk,
  HARDWARE_v_i_router_4_10_v_rst,
  HARDWARE_v_i_router_4_10_v_out_flit_L,
  HARDWARE_v_i_router_4_10_v_out_flit_R,
  HARDWARE_v_i_router_4_10_v_out_flit_U,
  HARDWARE_v_i_router_4_10_v_out_flit_B,
  HARDWARE_v_i_router_4_10_v_out_flit_C,
  HARDWARE_v_i_router_4_10_v_out_req_L,
  HARDWARE_v_i_router_4_10_v_out_req_R,
  HARDWARE_v_i_router_4_10_v_out_req_U,
  HARDWARE_v_i_router_4_10_v_out_req_B,
  HARDWARE_v_i_router_4_10_v_out_req_C,
  HARDWARE_v_i_router_4_10_v_in_ack_L,
  HARDWARE_v_i_router_4_10_v_in_ack_R,
  HARDWARE_v_i_router_4_10_v_in_ack_U,
  HARDWARE_v_i_router_4_10_v_in_ack_B,
  HARDWARE_v_i_router_4_10_v_in_ack_C,
  HARDWARE_v_i_router_4_10_v_in_flit_L,
  HARDWARE_v_i_router_4_10_v_in_flit_R,
  HARDWARE_v_i_router_4_10_v_in_flit_U,
  HARDWARE_v_i_router_4_10_v_in_flit_B,
  HARDWARE_v_i_router_4_10_v_in_flit_C,
  HARDWARE_v_i_router_4_10_v_in_req_L,
  HARDWARE_v_i_router_4_10_v_in_req_R,
  HARDWARE_v_i_router_4_10_v_in_req_U,
  HARDWARE_v_i_router_4_10_v_in_req_B,
  HARDWARE_v_i_router_4_10_v_in_req_C,
  HARDWARE_v_i_router_4_10_v_out_ack_L,
  HARDWARE_v_i_router_4_10_v_out_ack_R,
  HARDWARE_v_i_router_4_10_v_out_ack_U,
  HARDWARE_v_i_router_4_10_v_out_ack_B,
  HARDWARE_v_i_router_4_10_v_out_ack_C,
  HARDWARE_v_i_router_4_11_v_clk,
  HARDWARE_v_i_router_4_11_v_rst,
  HARDWARE_v_i_router_4_11_v_out_flit_L,
  HARDWARE_v_i_router_4_11_v_out_flit_R,
  HARDWARE_v_i_router_4_11_v_out_flit_U,
  HARDWARE_v_i_router_4_11_v_out_flit_B,
  HARDWARE_v_i_router_4_11_v_out_flit_C,
  HARDWARE_v_i_router_4_11_v_out_req_L,
  HARDWARE_v_i_router_4_11_v_out_req_R,
  HARDWARE_v_i_router_4_11_v_out_req_U,
  HARDWARE_v_i_router_4_11_v_out_req_B,
  HARDWARE_v_i_router_4_11_v_out_req_C,
  HARDWARE_v_i_router_4_11_v_in_ack_L,
  HARDWARE_v_i_router_4_11_v_in_ack_R,
  HARDWARE_v_i_router_4_11_v_in_ack_U,
  HARDWARE_v_i_router_4_11_v_in_ack_B,
  HARDWARE_v_i_router_4_11_v_in_ack_C,
  HARDWARE_v_i_router_4_11_v_in_flit_L,
  HARDWARE_v_i_router_4_11_v_in_flit_R,
  HARDWARE_v_i_router_4_11_v_in_flit_U,
  HARDWARE_v_i_router_4_11_v_in_flit_B,
  HARDWARE_v_i_router_4_11_v_in_flit_C,
  HARDWARE_v_i_router_4_11_v_in_req_L,
  HARDWARE_v_i_router_4_11_v_in_req_R,
  HARDWARE_v_i_router_4_11_v_in_req_U,
  HARDWARE_v_i_router_4_11_v_in_req_B,
  HARDWARE_v_i_router_4_11_v_in_req_C,
  HARDWARE_v_i_router_4_11_v_out_ack_L,
  HARDWARE_v_i_router_4_11_v_out_ack_R,
  HARDWARE_v_i_router_4_11_v_out_ack_U,
  HARDWARE_v_i_router_4_11_v_out_ack_B,
  HARDWARE_v_i_router_4_11_v_out_ack_C,
  HARDWARE_v_i_router_4_12_v_clk,
  HARDWARE_v_i_router_4_12_v_rst,
  HARDWARE_v_i_router_4_12_v_out_flit_L,
  HARDWARE_v_i_router_4_12_v_out_flit_R,
  HARDWARE_v_i_router_4_12_v_out_flit_U,
  HARDWARE_v_i_router_4_12_v_out_flit_B,
  HARDWARE_v_i_router_4_12_v_out_flit_C,
  HARDWARE_v_i_router_4_12_v_out_req_L,
  HARDWARE_v_i_router_4_12_v_out_req_R,
  HARDWARE_v_i_router_4_12_v_out_req_U,
  HARDWARE_v_i_router_4_12_v_out_req_B,
  HARDWARE_v_i_router_4_12_v_out_req_C,
  HARDWARE_v_i_router_4_12_v_in_ack_L,
  HARDWARE_v_i_router_4_12_v_in_ack_R,
  HARDWARE_v_i_router_4_12_v_in_ack_U,
  HARDWARE_v_i_router_4_12_v_in_ack_B,
  HARDWARE_v_i_router_4_12_v_in_ack_C,
  HARDWARE_v_i_router_4_12_v_in_flit_L,
  HARDWARE_v_i_router_4_12_v_in_flit_R,
  HARDWARE_v_i_router_4_12_v_in_flit_U,
  HARDWARE_v_i_router_4_12_v_in_flit_B,
  HARDWARE_v_i_router_4_12_v_in_flit_C,
  HARDWARE_v_i_router_4_12_v_in_req_L,
  HARDWARE_v_i_router_4_12_v_in_req_R,
  HARDWARE_v_i_router_4_12_v_in_req_U,
  HARDWARE_v_i_router_4_12_v_in_req_B,
  HARDWARE_v_i_router_4_12_v_in_req_C,
  HARDWARE_v_i_router_4_12_v_out_ack_L,
  HARDWARE_v_i_router_4_12_v_out_ack_R,
  HARDWARE_v_i_router_4_12_v_out_ack_U,
  HARDWARE_v_i_router_4_12_v_out_ack_B,
  HARDWARE_v_i_router_4_12_v_out_ack_C
);

output         HARDWARE_v_i_router_v_clk;
output         HARDWARE_v_i_router_v_rst;
input   [33:0] HARDWARE_v_i_router_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_v_out_flit_C;
input          HARDWARE_v_i_router_v_out_req_L;
input          HARDWARE_v_i_router_v_out_req_R;
input          HARDWARE_v_i_router_v_out_req_U;
input          HARDWARE_v_i_router_v_out_req_B;
input          HARDWARE_v_i_router_v_out_req_C;
output         HARDWARE_v_i_router_v_in_ack_L;
output         HARDWARE_v_i_router_v_in_ack_R;
output         HARDWARE_v_i_router_v_in_ack_U;
output         HARDWARE_v_i_router_v_in_ack_B;
output         HARDWARE_v_i_router_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_v_in_flit_C;
output         HARDWARE_v_i_router_v_in_req_L;
output         HARDWARE_v_i_router_v_in_req_R;
output         HARDWARE_v_i_router_v_in_req_U;
output         HARDWARE_v_i_router_v_in_req_B;
output         HARDWARE_v_i_router_v_in_req_C;
input          HARDWARE_v_i_router_v_out_ack_L;
input          HARDWARE_v_i_router_v_out_ack_R;
input          HARDWARE_v_i_router_v_out_ack_U;
input          HARDWARE_v_i_router_v_out_ack_B;
input          HARDWARE_v_i_router_v_out_ack_C;
output         HARDWARE_v_i_router_1_v_clk;
output         HARDWARE_v_i_router_1_v_rst;
input   [33:0] HARDWARE_v_i_router_1_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_1_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_1_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_1_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_1_v_out_flit_C;
input          HARDWARE_v_i_router_1_v_out_req_L;
input          HARDWARE_v_i_router_1_v_out_req_R;
input          HARDWARE_v_i_router_1_v_out_req_U;
input          HARDWARE_v_i_router_1_v_out_req_B;
input          HARDWARE_v_i_router_1_v_out_req_C;
output         HARDWARE_v_i_router_1_v_in_ack_L;
output         HARDWARE_v_i_router_1_v_in_ack_R;
output         HARDWARE_v_i_router_1_v_in_ack_U;
output         HARDWARE_v_i_router_1_v_in_ack_B;
output         HARDWARE_v_i_router_1_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_1_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_1_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_1_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_1_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_1_v_in_flit_C;
output         HARDWARE_v_i_router_1_v_in_req_L;
output         HARDWARE_v_i_router_1_v_in_req_R;
output         HARDWARE_v_i_router_1_v_in_req_U;
output         HARDWARE_v_i_router_1_v_in_req_B;
output         HARDWARE_v_i_router_1_v_in_req_C;
input          HARDWARE_v_i_router_1_v_out_ack_L;
input          HARDWARE_v_i_router_1_v_out_ack_R;
input          HARDWARE_v_i_router_1_v_out_ack_U;
input          HARDWARE_v_i_router_1_v_out_ack_B;
input          HARDWARE_v_i_router_1_v_out_ack_C;
output         HARDWARE_v_i_router_2_v_clk;
output         HARDWARE_v_i_router_2_v_rst;
input   [33:0] HARDWARE_v_i_router_2_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_2_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_2_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_2_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_2_v_out_flit_C;
input          HARDWARE_v_i_router_2_v_out_req_L;
input          HARDWARE_v_i_router_2_v_out_req_R;
input          HARDWARE_v_i_router_2_v_out_req_U;
input          HARDWARE_v_i_router_2_v_out_req_B;
input          HARDWARE_v_i_router_2_v_out_req_C;
output         HARDWARE_v_i_router_2_v_in_ack_L;
output         HARDWARE_v_i_router_2_v_in_ack_R;
output         HARDWARE_v_i_router_2_v_in_ack_U;
output         HARDWARE_v_i_router_2_v_in_ack_B;
output         HARDWARE_v_i_router_2_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_2_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_2_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_2_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_2_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_2_v_in_flit_C;
output         HARDWARE_v_i_router_2_v_in_req_L;
output         HARDWARE_v_i_router_2_v_in_req_R;
output         HARDWARE_v_i_router_2_v_in_req_U;
output         HARDWARE_v_i_router_2_v_in_req_B;
output         HARDWARE_v_i_router_2_v_in_req_C;
input          HARDWARE_v_i_router_2_v_out_ack_L;
input          HARDWARE_v_i_router_2_v_out_ack_R;
input          HARDWARE_v_i_router_2_v_out_ack_U;
input          HARDWARE_v_i_router_2_v_out_ack_B;
input          HARDWARE_v_i_router_2_v_out_ack_C;
output         HARDWARE_v_i_router_3_v_clk;
output         HARDWARE_v_i_router_3_v_rst;
input   [33:0] HARDWARE_v_i_router_3_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_3_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_3_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_3_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_3_v_out_flit_C;
input          HARDWARE_v_i_router_3_v_out_req_L;
input          HARDWARE_v_i_router_3_v_out_req_R;
input          HARDWARE_v_i_router_3_v_out_req_U;
input          HARDWARE_v_i_router_3_v_out_req_B;
input          HARDWARE_v_i_router_3_v_out_req_C;
output         HARDWARE_v_i_router_3_v_in_ack_L;
output         HARDWARE_v_i_router_3_v_in_ack_R;
output         HARDWARE_v_i_router_3_v_in_ack_U;
output         HARDWARE_v_i_router_3_v_in_ack_B;
output         HARDWARE_v_i_router_3_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_3_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_3_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_3_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_3_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_3_v_in_flit_C;
output         HARDWARE_v_i_router_3_v_in_req_L;
output         HARDWARE_v_i_router_3_v_in_req_R;
output         HARDWARE_v_i_router_3_v_in_req_U;
output         HARDWARE_v_i_router_3_v_in_req_B;
output         HARDWARE_v_i_router_3_v_in_req_C;
input          HARDWARE_v_i_router_3_v_out_ack_L;
input          HARDWARE_v_i_router_3_v_out_ack_R;
input          HARDWARE_v_i_router_3_v_out_ack_U;
input          HARDWARE_v_i_router_3_v_out_ack_B;
input          HARDWARE_v_i_router_3_v_out_ack_C;
output         HARDWARE_v_i_router_4_v_clk;
output         HARDWARE_v_i_router_4_v_rst;
input   [33:0] HARDWARE_v_i_router_4_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_v_out_flit_C;
input          HARDWARE_v_i_router_4_v_out_req_L;
input          HARDWARE_v_i_router_4_v_out_req_R;
input          HARDWARE_v_i_router_4_v_out_req_U;
input          HARDWARE_v_i_router_4_v_out_req_B;
input          HARDWARE_v_i_router_4_v_out_req_C;
output         HARDWARE_v_i_router_4_v_in_ack_L;
output         HARDWARE_v_i_router_4_v_in_ack_R;
output         HARDWARE_v_i_router_4_v_in_ack_U;
output         HARDWARE_v_i_router_4_v_in_ack_B;
output         HARDWARE_v_i_router_4_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_v_in_flit_C;
output         HARDWARE_v_i_router_4_v_in_req_L;
output         HARDWARE_v_i_router_4_v_in_req_R;
output         HARDWARE_v_i_router_4_v_in_req_U;
output         HARDWARE_v_i_router_4_v_in_req_B;
output         HARDWARE_v_i_router_4_v_in_req_C;
input          HARDWARE_v_i_router_4_v_out_ack_L;
input          HARDWARE_v_i_router_4_v_out_ack_R;
input          HARDWARE_v_i_router_4_v_out_ack_U;
input          HARDWARE_v_i_router_4_v_out_ack_B;
input          HARDWARE_v_i_router_4_v_out_ack_C;
output         HARDWARE_v_i_router_4_1_v_clk;
output         HARDWARE_v_i_router_4_1_v_rst;
input   [33:0] HARDWARE_v_i_router_4_1_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_1_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_1_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_1_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_1_v_out_flit_C;
input          HARDWARE_v_i_router_4_1_v_out_req_L;
input          HARDWARE_v_i_router_4_1_v_out_req_R;
input          HARDWARE_v_i_router_4_1_v_out_req_U;
input          HARDWARE_v_i_router_4_1_v_out_req_B;
input          HARDWARE_v_i_router_4_1_v_out_req_C;
output         HARDWARE_v_i_router_4_1_v_in_ack_L;
output         HARDWARE_v_i_router_4_1_v_in_ack_R;
output         HARDWARE_v_i_router_4_1_v_in_ack_U;
output         HARDWARE_v_i_router_4_1_v_in_ack_B;
output         HARDWARE_v_i_router_4_1_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_1_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_1_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_1_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_1_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_1_v_in_flit_C;
output         HARDWARE_v_i_router_4_1_v_in_req_L;
output         HARDWARE_v_i_router_4_1_v_in_req_R;
output         HARDWARE_v_i_router_4_1_v_in_req_U;
output         HARDWARE_v_i_router_4_1_v_in_req_B;
output         HARDWARE_v_i_router_4_1_v_in_req_C;
input          HARDWARE_v_i_router_4_1_v_out_ack_L;
input          HARDWARE_v_i_router_4_1_v_out_ack_R;
input          HARDWARE_v_i_router_4_1_v_out_ack_U;
input          HARDWARE_v_i_router_4_1_v_out_ack_B;
input          HARDWARE_v_i_router_4_1_v_out_ack_C;
output         HARDWARE_v_i_router_4_3_v_clk;
output         HARDWARE_v_i_router_4_3_v_rst;
input   [33:0] HARDWARE_v_i_router_4_3_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_3_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_3_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_3_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_3_v_out_flit_C;
input          HARDWARE_v_i_router_4_3_v_out_req_L;
input          HARDWARE_v_i_router_4_3_v_out_req_R;
input          HARDWARE_v_i_router_4_3_v_out_req_U;
input          HARDWARE_v_i_router_4_3_v_out_req_B;
input          HARDWARE_v_i_router_4_3_v_out_req_C;
output         HARDWARE_v_i_router_4_3_v_in_ack_L;
output         HARDWARE_v_i_router_4_3_v_in_ack_R;
output         HARDWARE_v_i_router_4_3_v_in_ack_U;
output         HARDWARE_v_i_router_4_3_v_in_ack_B;
output         HARDWARE_v_i_router_4_3_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_3_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_3_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_3_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_3_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_3_v_in_flit_C;
output         HARDWARE_v_i_router_4_3_v_in_req_L;
output         HARDWARE_v_i_router_4_3_v_in_req_R;
output         HARDWARE_v_i_router_4_3_v_in_req_U;
output         HARDWARE_v_i_router_4_3_v_in_req_B;
output         HARDWARE_v_i_router_4_3_v_in_req_C;
input          HARDWARE_v_i_router_4_3_v_out_ack_L;
input          HARDWARE_v_i_router_4_3_v_out_ack_R;
input          HARDWARE_v_i_router_4_3_v_out_ack_U;
input          HARDWARE_v_i_router_4_3_v_out_ack_B;
input          HARDWARE_v_i_router_4_3_v_out_ack_C;
output         HARDWARE_v_i_router_4_4_v_clk;
output         HARDWARE_v_i_router_4_4_v_rst;
input   [33:0] HARDWARE_v_i_router_4_4_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_4_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_4_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_4_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_4_v_out_flit_C;
input          HARDWARE_v_i_router_4_4_v_out_req_L;
input          HARDWARE_v_i_router_4_4_v_out_req_R;
input          HARDWARE_v_i_router_4_4_v_out_req_U;
input          HARDWARE_v_i_router_4_4_v_out_req_B;
input          HARDWARE_v_i_router_4_4_v_out_req_C;
output         HARDWARE_v_i_router_4_4_v_in_ack_L;
output         HARDWARE_v_i_router_4_4_v_in_ack_R;
output         HARDWARE_v_i_router_4_4_v_in_ack_U;
output         HARDWARE_v_i_router_4_4_v_in_ack_B;
output         HARDWARE_v_i_router_4_4_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_4_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_4_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_4_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_4_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_4_v_in_flit_C;
output         HARDWARE_v_i_router_4_4_v_in_req_L;
output         HARDWARE_v_i_router_4_4_v_in_req_R;
output         HARDWARE_v_i_router_4_4_v_in_req_U;
output         HARDWARE_v_i_router_4_4_v_in_req_B;
output         HARDWARE_v_i_router_4_4_v_in_req_C;
input          HARDWARE_v_i_router_4_4_v_out_ack_L;
input          HARDWARE_v_i_router_4_4_v_out_ack_R;
input          HARDWARE_v_i_router_4_4_v_out_ack_U;
input          HARDWARE_v_i_router_4_4_v_out_ack_B;
input          HARDWARE_v_i_router_4_4_v_out_ack_C;
output         HARDWARE_v_i_router_4_5_v_clk;
output         HARDWARE_v_i_router_4_5_v_rst;
input   [33:0] HARDWARE_v_i_router_4_5_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_5_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_5_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_5_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_5_v_out_flit_C;
input          HARDWARE_v_i_router_4_5_v_out_req_L;
input          HARDWARE_v_i_router_4_5_v_out_req_R;
input          HARDWARE_v_i_router_4_5_v_out_req_U;
input          HARDWARE_v_i_router_4_5_v_out_req_B;
input          HARDWARE_v_i_router_4_5_v_out_req_C;
output         HARDWARE_v_i_router_4_5_v_in_ack_L;
output         HARDWARE_v_i_router_4_5_v_in_ack_R;
output         HARDWARE_v_i_router_4_5_v_in_ack_U;
output         HARDWARE_v_i_router_4_5_v_in_ack_B;
output         HARDWARE_v_i_router_4_5_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_5_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_5_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_5_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_5_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_5_v_in_flit_C;
output         HARDWARE_v_i_router_4_5_v_in_req_L;
output         HARDWARE_v_i_router_4_5_v_in_req_R;
output         HARDWARE_v_i_router_4_5_v_in_req_U;
output         HARDWARE_v_i_router_4_5_v_in_req_B;
output         HARDWARE_v_i_router_4_5_v_in_req_C;
input          HARDWARE_v_i_router_4_5_v_out_ack_L;
input          HARDWARE_v_i_router_4_5_v_out_ack_R;
input          HARDWARE_v_i_router_4_5_v_out_ack_U;
input          HARDWARE_v_i_router_4_5_v_out_ack_B;
input          HARDWARE_v_i_router_4_5_v_out_ack_C;
output         HARDWARE_v_i_router_4_6_v_clk;
output         HARDWARE_v_i_router_4_6_v_rst;
input   [33:0] HARDWARE_v_i_router_4_6_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_6_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_6_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_6_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_6_v_out_flit_C;
input          HARDWARE_v_i_router_4_6_v_out_req_L;
input          HARDWARE_v_i_router_4_6_v_out_req_R;
input          HARDWARE_v_i_router_4_6_v_out_req_U;
input          HARDWARE_v_i_router_4_6_v_out_req_B;
input          HARDWARE_v_i_router_4_6_v_out_req_C;
output         HARDWARE_v_i_router_4_6_v_in_ack_L;
output         HARDWARE_v_i_router_4_6_v_in_ack_R;
output         HARDWARE_v_i_router_4_6_v_in_ack_U;
output         HARDWARE_v_i_router_4_6_v_in_ack_B;
output         HARDWARE_v_i_router_4_6_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_6_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_6_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_6_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_6_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_6_v_in_flit_C;
output         HARDWARE_v_i_router_4_6_v_in_req_L;
output         HARDWARE_v_i_router_4_6_v_in_req_R;
output         HARDWARE_v_i_router_4_6_v_in_req_U;
output         HARDWARE_v_i_router_4_6_v_in_req_B;
output         HARDWARE_v_i_router_4_6_v_in_req_C;
input          HARDWARE_v_i_router_4_6_v_out_ack_L;
input          HARDWARE_v_i_router_4_6_v_out_ack_R;
input          HARDWARE_v_i_router_4_6_v_out_ack_U;
input          HARDWARE_v_i_router_4_6_v_out_ack_B;
input          HARDWARE_v_i_router_4_6_v_out_ack_C;
output         HARDWARE_v_i_router_4_7_v_clk;
output         HARDWARE_v_i_router_4_7_v_rst;
input   [33:0] HARDWARE_v_i_router_4_7_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_7_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_7_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_7_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_7_v_out_flit_C;
input          HARDWARE_v_i_router_4_7_v_out_req_L;
input          HARDWARE_v_i_router_4_7_v_out_req_R;
input          HARDWARE_v_i_router_4_7_v_out_req_U;
input          HARDWARE_v_i_router_4_7_v_out_req_B;
input          HARDWARE_v_i_router_4_7_v_out_req_C;
output         HARDWARE_v_i_router_4_7_v_in_ack_L;
output         HARDWARE_v_i_router_4_7_v_in_ack_R;
output         HARDWARE_v_i_router_4_7_v_in_ack_U;
output         HARDWARE_v_i_router_4_7_v_in_ack_B;
output         HARDWARE_v_i_router_4_7_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_7_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_7_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_7_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_7_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_7_v_in_flit_C;
output         HARDWARE_v_i_router_4_7_v_in_req_L;
output         HARDWARE_v_i_router_4_7_v_in_req_R;
output         HARDWARE_v_i_router_4_7_v_in_req_U;
output         HARDWARE_v_i_router_4_7_v_in_req_B;
output         HARDWARE_v_i_router_4_7_v_in_req_C;
input          HARDWARE_v_i_router_4_7_v_out_ack_L;
input          HARDWARE_v_i_router_4_7_v_out_ack_R;
input          HARDWARE_v_i_router_4_7_v_out_ack_U;
input          HARDWARE_v_i_router_4_7_v_out_ack_B;
input          HARDWARE_v_i_router_4_7_v_out_ack_C;
output         HARDWARE_v_i_router_4_8_v_clk;
output         HARDWARE_v_i_router_4_8_v_rst;
input   [33:0] HARDWARE_v_i_router_4_8_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_8_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_8_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_8_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_8_v_out_flit_C;
input          HARDWARE_v_i_router_4_8_v_out_req_L;
input          HARDWARE_v_i_router_4_8_v_out_req_R;
input          HARDWARE_v_i_router_4_8_v_out_req_U;
input          HARDWARE_v_i_router_4_8_v_out_req_B;
input          HARDWARE_v_i_router_4_8_v_out_req_C;
output         HARDWARE_v_i_router_4_8_v_in_ack_L;
output         HARDWARE_v_i_router_4_8_v_in_ack_R;
output         HARDWARE_v_i_router_4_8_v_in_ack_U;
output         HARDWARE_v_i_router_4_8_v_in_ack_B;
output         HARDWARE_v_i_router_4_8_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_8_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_8_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_8_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_8_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_8_v_in_flit_C;
output         HARDWARE_v_i_router_4_8_v_in_req_L;
output         HARDWARE_v_i_router_4_8_v_in_req_R;
output         HARDWARE_v_i_router_4_8_v_in_req_U;
output         HARDWARE_v_i_router_4_8_v_in_req_B;
output         HARDWARE_v_i_router_4_8_v_in_req_C;
input          HARDWARE_v_i_router_4_8_v_out_ack_L;
input          HARDWARE_v_i_router_4_8_v_out_ack_R;
input          HARDWARE_v_i_router_4_8_v_out_ack_U;
input          HARDWARE_v_i_router_4_8_v_out_ack_B;
input          HARDWARE_v_i_router_4_8_v_out_ack_C;
output         HARDWARE_v_i_router_4_9_v_clk;
output         HARDWARE_v_i_router_4_9_v_rst;
input   [33:0] HARDWARE_v_i_router_4_9_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_9_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_9_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_9_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_9_v_out_flit_C;
input          HARDWARE_v_i_router_4_9_v_out_req_L;
input          HARDWARE_v_i_router_4_9_v_out_req_R;
input          HARDWARE_v_i_router_4_9_v_out_req_U;
input          HARDWARE_v_i_router_4_9_v_out_req_B;
input          HARDWARE_v_i_router_4_9_v_out_req_C;
output         HARDWARE_v_i_router_4_9_v_in_ack_L;
output         HARDWARE_v_i_router_4_9_v_in_ack_R;
output         HARDWARE_v_i_router_4_9_v_in_ack_U;
output         HARDWARE_v_i_router_4_9_v_in_ack_B;
output         HARDWARE_v_i_router_4_9_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_9_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_9_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_9_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_9_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_9_v_in_flit_C;
output         HARDWARE_v_i_router_4_9_v_in_req_L;
output         HARDWARE_v_i_router_4_9_v_in_req_R;
output         HARDWARE_v_i_router_4_9_v_in_req_U;
output         HARDWARE_v_i_router_4_9_v_in_req_B;
output         HARDWARE_v_i_router_4_9_v_in_req_C;
input          HARDWARE_v_i_router_4_9_v_out_ack_L;
input          HARDWARE_v_i_router_4_9_v_out_ack_R;
input          HARDWARE_v_i_router_4_9_v_out_ack_U;
input          HARDWARE_v_i_router_4_9_v_out_ack_B;
input          HARDWARE_v_i_router_4_9_v_out_ack_C;
output         HARDWARE_v_i_router_4_10_v_clk;
output         HARDWARE_v_i_router_4_10_v_rst;
input   [33:0] HARDWARE_v_i_router_4_10_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_10_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_10_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_10_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_10_v_out_flit_C;
input          HARDWARE_v_i_router_4_10_v_out_req_L;
input          HARDWARE_v_i_router_4_10_v_out_req_R;
input          HARDWARE_v_i_router_4_10_v_out_req_U;
input          HARDWARE_v_i_router_4_10_v_out_req_B;
input          HARDWARE_v_i_router_4_10_v_out_req_C;
output         HARDWARE_v_i_router_4_10_v_in_ack_L;
output         HARDWARE_v_i_router_4_10_v_in_ack_R;
output         HARDWARE_v_i_router_4_10_v_in_ack_U;
output         HARDWARE_v_i_router_4_10_v_in_ack_B;
output         HARDWARE_v_i_router_4_10_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_10_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_10_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_10_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_10_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_10_v_in_flit_C;
output         HARDWARE_v_i_router_4_10_v_in_req_L;
output         HARDWARE_v_i_router_4_10_v_in_req_R;
output         HARDWARE_v_i_router_4_10_v_in_req_U;
output         HARDWARE_v_i_router_4_10_v_in_req_B;
output         HARDWARE_v_i_router_4_10_v_in_req_C;
input          HARDWARE_v_i_router_4_10_v_out_ack_L;
input          HARDWARE_v_i_router_4_10_v_out_ack_R;
input          HARDWARE_v_i_router_4_10_v_out_ack_U;
input          HARDWARE_v_i_router_4_10_v_out_ack_B;
input          HARDWARE_v_i_router_4_10_v_out_ack_C;
output         HARDWARE_v_i_router_4_11_v_clk;
output         HARDWARE_v_i_router_4_11_v_rst;
input   [33:0] HARDWARE_v_i_router_4_11_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_11_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_11_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_11_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_11_v_out_flit_C;
input          HARDWARE_v_i_router_4_11_v_out_req_L;
input          HARDWARE_v_i_router_4_11_v_out_req_R;
input          HARDWARE_v_i_router_4_11_v_out_req_U;
input          HARDWARE_v_i_router_4_11_v_out_req_B;
input          HARDWARE_v_i_router_4_11_v_out_req_C;
output         HARDWARE_v_i_router_4_11_v_in_ack_L;
output         HARDWARE_v_i_router_4_11_v_in_ack_R;
output         HARDWARE_v_i_router_4_11_v_in_ack_U;
output         HARDWARE_v_i_router_4_11_v_in_ack_B;
output         HARDWARE_v_i_router_4_11_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_11_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_11_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_11_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_11_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_11_v_in_flit_C;
output         HARDWARE_v_i_router_4_11_v_in_req_L;
output         HARDWARE_v_i_router_4_11_v_in_req_R;
output         HARDWARE_v_i_router_4_11_v_in_req_U;
output         HARDWARE_v_i_router_4_11_v_in_req_B;
output         HARDWARE_v_i_router_4_11_v_in_req_C;
input          HARDWARE_v_i_router_4_11_v_out_ack_L;
input          HARDWARE_v_i_router_4_11_v_out_ack_R;
input          HARDWARE_v_i_router_4_11_v_out_ack_U;
input          HARDWARE_v_i_router_4_11_v_out_ack_B;
input          HARDWARE_v_i_router_4_11_v_out_ack_C;
output         HARDWARE_v_i_router_4_12_v_clk;
output         HARDWARE_v_i_router_4_12_v_rst;
input   [33:0] HARDWARE_v_i_router_4_12_v_out_flit_L;
input   [33:0] HARDWARE_v_i_router_4_12_v_out_flit_R;
input   [33:0] HARDWARE_v_i_router_4_12_v_out_flit_U;
input   [33:0] HARDWARE_v_i_router_4_12_v_out_flit_B;
input   [33:0] HARDWARE_v_i_router_4_12_v_out_flit_C;
input          HARDWARE_v_i_router_4_12_v_out_req_L;
input          HARDWARE_v_i_router_4_12_v_out_req_R;
input          HARDWARE_v_i_router_4_12_v_out_req_U;
input          HARDWARE_v_i_router_4_12_v_out_req_B;
input          HARDWARE_v_i_router_4_12_v_out_req_C;
output         HARDWARE_v_i_router_4_12_v_in_ack_L;
output         HARDWARE_v_i_router_4_12_v_in_ack_R;
output         HARDWARE_v_i_router_4_12_v_in_ack_U;
output         HARDWARE_v_i_router_4_12_v_in_ack_B;
output         HARDWARE_v_i_router_4_12_v_in_ack_C;
output  [33:0] HARDWARE_v_i_router_4_12_v_in_flit_L;
output  [33:0] HARDWARE_v_i_router_4_12_v_in_flit_R;
output  [33:0] HARDWARE_v_i_router_4_12_v_in_flit_U;
output  [33:0] HARDWARE_v_i_router_4_12_v_in_flit_B;
output  [33:0] HARDWARE_v_i_router_4_12_v_in_flit_C;
output         HARDWARE_v_i_router_4_12_v_in_req_L;
output         HARDWARE_v_i_router_4_12_v_in_req_R;
output         HARDWARE_v_i_router_4_12_v_in_req_U;
output         HARDWARE_v_i_router_4_12_v_in_req_B;
output         HARDWARE_v_i_router_4_12_v_in_req_C;
input          HARDWARE_v_i_router_4_12_v_out_ack_L;
input          HARDWARE_v_i_router_4_12_v_out_ack_R;
input          HARDWARE_v_i_router_4_12_v_out_ack_U;
input          HARDWARE_v_i_router_4_12_v_out_ack_B;
input          HARDWARE_v_i_router_4_12_v_out_ack_C;

reg            HARDWARE_v_i_router_v_clk;
reg            HARDWARE_v_i_router_v_rst;
reg            HARDWARE_v_i_router_v_in_ack_L;
reg            HARDWARE_v_i_router_v_in_ack_R;
reg            HARDWARE_v_i_router_v_in_ack_U;
reg            HARDWARE_v_i_router_v_in_ack_B;
reg            HARDWARE_v_i_router_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_v_in_flit_C;
reg            HARDWARE_v_i_router_v_in_req_L;
reg            HARDWARE_v_i_router_v_in_req_R;
reg            HARDWARE_v_i_router_v_in_req_U;
reg            HARDWARE_v_i_router_v_in_req_B;
reg            HARDWARE_v_i_router_v_in_req_C;
reg            HARDWARE_v_i_router_1_v_clk;
reg            HARDWARE_v_i_router_1_v_rst;
reg            HARDWARE_v_i_router_1_v_in_ack_L;
reg            HARDWARE_v_i_router_1_v_in_ack_R;
reg            HARDWARE_v_i_router_1_v_in_ack_U;
reg            HARDWARE_v_i_router_1_v_in_ack_B;
reg            HARDWARE_v_i_router_1_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_1_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_1_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_1_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_1_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_1_v_in_flit_C;
reg            HARDWARE_v_i_router_1_v_in_req_L;
reg            HARDWARE_v_i_router_1_v_in_req_R;
reg            HARDWARE_v_i_router_1_v_in_req_U;
reg            HARDWARE_v_i_router_1_v_in_req_B;
reg            HARDWARE_v_i_router_1_v_in_req_C;
reg            HARDWARE_v_i_router_2_v_clk;
reg            HARDWARE_v_i_router_2_v_rst;
reg            HARDWARE_v_i_router_2_v_in_ack_L;
reg            HARDWARE_v_i_router_2_v_in_ack_R;
reg            HARDWARE_v_i_router_2_v_in_ack_U;
reg            HARDWARE_v_i_router_2_v_in_ack_B;
reg            HARDWARE_v_i_router_2_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_2_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_2_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_2_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_2_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_2_v_in_flit_C;
reg            HARDWARE_v_i_router_2_v_in_req_L;
reg            HARDWARE_v_i_router_2_v_in_req_R;
reg            HARDWARE_v_i_router_2_v_in_req_U;
reg            HARDWARE_v_i_router_2_v_in_req_B;
reg            HARDWARE_v_i_router_2_v_in_req_C;
reg            HARDWARE_v_i_router_3_v_clk;
reg            HARDWARE_v_i_router_3_v_rst;
reg            HARDWARE_v_i_router_3_v_in_ack_L;
reg            HARDWARE_v_i_router_3_v_in_ack_R;
reg            HARDWARE_v_i_router_3_v_in_ack_U;
reg            HARDWARE_v_i_router_3_v_in_ack_B;
reg            HARDWARE_v_i_router_3_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_3_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_3_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_3_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_3_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_3_v_in_flit_C;
reg            HARDWARE_v_i_router_3_v_in_req_L;
reg            HARDWARE_v_i_router_3_v_in_req_R;
reg            HARDWARE_v_i_router_3_v_in_req_U;
reg            HARDWARE_v_i_router_3_v_in_req_B;
reg            HARDWARE_v_i_router_3_v_in_req_C;
reg            HARDWARE_v_i_router_4_v_clk;
reg            HARDWARE_v_i_router_4_v_rst;
reg            HARDWARE_v_i_router_4_v_in_ack_L;
reg            HARDWARE_v_i_router_4_v_in_ack_R;
reg            HARDWARE_v_i_router_4_v_in_ack_U;
reg            HARDWARE_v_i_router_4_v_in_ack_B;
reg            HARDWARE_v_i_router_4_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_v_in_flit_C;
reg            HARDWARE_v_i_router_4_v_in_req_L;
reg            HARDWARE_v_i_router_4_v_in_req_R;
reg            HARDWARE_v_i_router_4_v_in_req_U;
reg            HARDWARE_v_i_router_4_v_in_req_B;
reg            HARDWARE_v_i_router_4_v_in_req_C;
reg            HARDWARE_v_i_router_4_1_v_clk;
reg            HARDWARE_v_i_router_4_1_v_rst;
reg            HARDWARE_v_i_router_4_1_v_in_ack_L;
reg            HARDWARE_v_i_router_4_1_v_in_ack_R;
reg            HARDWARE_v_i_router_4_1_v_in_ack_U;
reg            HARDWARE_v_i_router_4_1_v_in_ack_B;
reg            HARDWARE_v_i_router_4_1_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_1_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_1_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_1_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_1_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_1_v_in_flit_C;
reg            HARDWARE_v_i_router_4_1_v_in_req_L;
reg            HARDWARE_v_i_router_4_1_v_in_req_R;
reg            HARDWARE_v_i_router_4_1_v_in_req_U;
reg            HARDWARE_v_i_router_4_1_v_in_req_B;
reg            HARDWARE_v_i_router_4_1_v_in_req_C;
reg            HARDWARE_v_i_router_4_3_v_clk;
reg            HARDWARE_v_i_router_4_3_v_rst;
reg            HARDWARE_v_i_router_4_3_v_in_ack_L;
reg            HARDWARE_v_i_router_4_3_v_in_ack_R;
reg            HARDWARE_v_i_router_4_3_v_in_ack_U;
reg            HARDWARE_v_i_router_4_3_v_in_ack_B;
reg            HARDWARE_v_i_router_4_3_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_3_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_3_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_3_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_3_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_3_v_in_flit_C;
reg            HARDWARE_v_i_router_4_3_v_in_req_L;
reg            HARDWARE_v_i_router_4_3_v_in_req_R;
reg            HARDWARE_v_i_router_4_3_v_in_req_U;
reg            HARDWARE_v_i_router_4_3_v_in_req_B;
reg            HARDWARE_v_i_router_4_3_v_in_req_C;
reg            HARDWARE_v_i_router_4_4_v_clk;
reg            HARDWARE_v_i_router_4_4_v_rst;
reg            HARDWARE_v_i_router_4_4_v_in_ack_L;
reg            HARDWARE_v_i_router_4_4_v_in_ack_R;
reg            HARDWARE_v_i_router_4_4_v_in_ack_U;
reg            HARDWARE_v_i_router_4_4_v_in_ack_B;
reg            HARDWARE_v_i_router_4_4_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_4_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_4_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_4_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_4_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_4_v_in_flit_C;
reg            HARDWARE_v_i_router_4_4_v_in_req_L;
reg            HARDWARE_v_i_router_4_4_v_in_req_R;
reg            HARDWARE_v_i_router_4_4_v_in_req_U;
reg            HARDWARE_v_i_router_4_4_v_in_req_B;
reg            HARDWARE_v_i_router_4_4_v_in_req_C;
reg            HARDWARE_v_i_router_4_5_v_clk;
reg            HARDWARE_v_i_router_4_5_v_rst;
reg            HARDWARE_v_i_router_4_5_v_in_ack_L;
reg            HARDWARE_v_i_router_4_5_v_in_ack_R;
reg            HARDWARE_v_i_router_4_5_v_in_ack_U;
reg            HARDWARE_v_i_router_4_5_v_in_ack_B;
reg            HARDWARE_v_i_router_4_5_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_5_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_5_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_5_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_5_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_5_v_in_flit_C;
reg            HARDWARE_v_i_router_4_5_v_in_req_L;
reg            HARDWARE_v_i_router_4_5_v_in_req_R;
reg            HARDWARE_v_i_router_4_5_v_in_req_U;
reg            HARDWARE_v_i_router_4_5_v_in_req_B;
reg            HARDWARE_v_i_router_4_5_v_in_req_C;
reg            HARDWARE_v_i_router_4_6_v_clk;
reg            HARDWARE_v_i_router_4_6_v_rst;
reg            HARDWARE_v_i_router_4_6_v_in_ack_L;
reg            HARDWARE_v_i_router_4_6_v_in_ack_R;
reg            HARDWARE_v_i_router_4_6_v_in_ack_U;
reg            HARDWARE_v_i_router_4_6_v_in_ack_B;
reg            HARDWARE_v_i_router_4_6_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_6_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_6_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_6_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_6_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_6_v_in_flit_C;
reg            HARDWARE_v_i_router_4_6_v_in_req_L;
reg            HARDWARE_v_i_router_4_6_v_in_req_R;
reg            HARDWARE_v_i_router_4_6_v_in_req_U;
reg            HARDWARE_v_i_router_4_6_v_in_req_B;
reg            HARDWARE_v_i_router_4_6_v_in_req_C;
reg            HARDWARE_v_i_router_4_7_v_clk;
reg            HARDWARE_v_i_router_4_7_v_rst;
reg            HARDWARE_v_i_router_4_7_v_in_ack_L;
reg            HARDWARE_v_i_router_4_7_v_in_ack_R;
reg            HARDWARE_v_i_router_4_7_v_in_ack_U;
reg            HARDWARE_v_i_router_4_7_v_in_ack_B;
reg            HARDWARE_v_i_router_4_7_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_7_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_7_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_7_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_7_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_7_v_in_flit_C;
reg            HARDWARE_v_i_router_4_7_v_in_req_L;
reg            HARDWARE_v_i_router_4_7_v_in_req_R;
reg            HARDWARE_v_i_router_4_7_v_in_req_U;
reg            HARDWARE_v_i_router_4_7_v_in_req_B;
reg            HARDWARE_v_i_router_4_7_v_in_req_C;
reg            HARDWARE_v_i_router_4_8_v_clk;
reg            HARDWARE_v_i_router_4_8_v_rst;
reg            HARDWARE_v_i_router_4_8_v_in_ack_L;
reg            HARDWARE_v_i_router_4_8_v_in_ack_R;
reg            HARDWARE_v_i_router_4_8_v_in_ack_U;
reg            HARDWARE_v_i_router_4_8_v_in_ack_B;
reg            HARDWARE_v_i_router_4_8_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_8_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_8_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_8_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_8_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_8_v_in_flit_C;
reg            HARDWARE_v_i_router_4_8_v_in_req_L;
reg            HARDWARE_v_i_router_4_8_v_in_req_R;
reg            HARDWARE_v_i_router_4_8_v_in_req_U;
reg            HARDWARE_v_i_router_4_8_v_in_req_B;
reg            HARDWARE_v_i_router_4_8_v_in_req_C;
reg            HARDWARE_v_i_router_4_9_v_clk;
reg            HARDWARE_v_i_router_4_9_v_rst;
reg            HARDWARE_v_i_router_4_9_v_in_ack_L;
reg            HARDWARE_v_i_router_4_9_v_in_ack_R;
reg            HARDWARE_v_i_router_4_9_v_in_ack_U;
reg            HARDWARE_v_i_router_4_9_v_in_ack_B;
reg            HARDWARE_v_i_router_4_9_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_9_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_9_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_9_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_9_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_9_v_in_flit_C;
reg            HARDWARE_v_i_router_4_9_v_in_req_L;
reg            HARDWARE_v_i_router_4_9_v_in_req_R;
reg            HARDWARE_v_i_router_4_9_v_in_req_U;
reg            HARDWARE_v_i_router_4_9_v_in_req_B;
reg            HARDWARE_v_i_router_4_9_v_in_req_C;
reg            HARDWARE_v_i_router_4_10_v_clk;
reg            HARDWARE_v_i_router_4_10_v_rst;
reg            HARDWARE_v_i_router_4_10_v_in_ack_L;
reg            HARDWARE_v_i_router_4_10_v_in_ack_R;
reg            HARDWARE_v_i_router_4_10_v_in_ack_U;
reg            HARDWARE_v_i_router_4_10_v_in_ack_B;
reg            HARDWARE_v_i_router_4_10_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_10_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_10_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_10_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_10_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_10_v_in_flit_C;
reg            HARDWARE_v_i_router_4_10_v_in_req_L;
reg            HARDWARE_v_i_router_4_10_v_in_req_R;
reg            HARDWARE_v_i_router_4_10_v_in_req_U;
reg            HARDWARE_v_i_router_4_10_v_in_req_B;
reg            HARDWARE_v_i_router_4_10_v_in_req_C;
reg            HARDWARE_v_i_router_4_11_v_clk;
reg            HARDWARE_v_i_router_4_11_v_rst;
reg            HARDWARE_v_i_router_4_11_v_in_ack_L;
reg            HARDWARE_v_i_router_4_11_v_in_ack_R;
reg            HARDWARE_v_i_router_4_11_v_in_ack_U;
reg            HARDWARE_v_i_router_4_11_v_in_ack_B;
reg            HARDWARE_v_i_router_4_11_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_11_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_11_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_11_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_11_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_11_v_in_flit_C;
reg            HARDWARE_v_i_router_4_11_v_in_req_L;
reg            HARDWARE_v_i_router_4_11_v_in_req_R;
reg            HARDWARE_v_i_router_4_11_v_in_req_U;
reg            HARDWARE_v_i_router_4_11_v_in_req_B;
reg            HARDWARE_v_i_router_4_11_v_in_req_C;
reg            HARDWARE_v_i_router_4_12_v_clk;
reg            HARDWARE_v_i_router_4_12_v_rst;
reg            HARDWARE_v_i_router_4_12_v_in_ack_L;
reg            HARDWARE_v_i_router_4_12_v_in_ack_R;
reg            HARDWARE_v_i_router_4_12_v_in_ack_U;
reg            HARDWARE_v_i_router_4_12_v_in_ack_B;
reg            HARDWARE_v_i_router_4_12_v_in_ack_C;
reg     [33:0] HARDWARE_v_i_router_4_12_v_in_flit_L;
reg     [33:0] HARDWARE_v_i_router_4_12_v_in_flit_R;
reg     [33:0] HARDWARE_v_i_router_4_12_v_in_flit_U;
reg     [33:0] HARDWARE_v_i_router_4_12_v_in_flit_B;
reg     [33:0] HARDWARE_v_i_router_4_12_v_in_flit_C;
reg            HARDWARE_v_i_router_4_12_v_in_req_L;
reg            HARDWARE_v_i_router_4_12_v_in_req_R;
reg            HARDWARE_v_i_router_4_12_v_in_req_U;
reg            HARDWARE_v_i_router_4_12_v_in_req_B;
reg            HARDWARE_v_i_router_4_12_v_in_req_C;

parameter CWR_HDL_SHELL = "primary";

initial
  begin
    $cwr_cosim_init;
  end

endmodule

