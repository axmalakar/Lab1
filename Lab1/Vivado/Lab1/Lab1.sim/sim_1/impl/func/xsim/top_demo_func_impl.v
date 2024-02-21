// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (win64) Build 3900603 Fri Jun 16 19:31:24 MDT 2023
// Date        : Wed Feb 21 16:30:10 2024
// Host        : CEAT-ENDV350-04 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/amalaka/Lab1/Lab1/Vivado/Lab1/Lab1.sim/sim_1/impl/func/xsim/top_demo_func_impl.v
// Design      : top_demo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module segment_driver
   (smol_clk,
    sseg_an_OBUF,
    sseg_dp_OBUF,
    sseg_cg_OBUF,
    sseg_ca_OBUF,
    sseg_cb_OBUF,
    sseg_cd_OBUF,
    sseg_cf_OBUF,
    sseg_ce_OBUF,
    sseg_cc_OBUF,
    CURRENT_COUNT_reg,
    btn_IBUF,
    sw_IBUF);
  output smol_clk;
  output [3:0]sseg_an_OBUF;
  output sseg_dp_OBUF;
  output sseg_cg_OBUF;
  output sseg_ca_OBUF;
  output sseg_cb_OBUF;
  output sseg_cd_OBUF;
  output sseg_cf_OBUF;
  output sseg_ce_OBUF;
  output sseg_cc_OBUF;
  input [16:0]CURRENT_COUNT_reg;
  input [3:0]btn_IBUF;
  input [7:0]sw_IBUF;

  wire [16:0]CURRENT_COUNT_reg;
  wire [1:0]CURRENT_STATE;
  wire \FSM_sequential_CURRENT_STATE[0]_i_1_n_0 ;
  wire \FSM_sequential_CURRENT_STATE[1]_i_1_n_0 ;
  wire \FSM_sequential_CURRENT_STATE[1]_i_3_n_0 ;
  wire \FSM_sequential_CURRENT_STATE[1]_i_4_n_0 ;
  wire \FSM_sequential_CURRENT_STATE[1]_i_5_n_0 ;
  wire [3:0]btn_IBUF;
  wire \dut/int_cout_1 ;
  wire smol_clk;
  wire [3:0]sseg_an_OBUF;
  wire sseg_ca_OBUF;
  wire sseg_ca_OBUF_inst_i_2_n_0;
  wire sseg_ca_OBUF_inst_i_3_n_0;
  wire sseg_ca_OBUF_inst_i_4_n_0;
  wire sseg_ca_OBUF_inst_i_5_n_0;
  wire sseg_cb_OBUF;
  wire sseg_cb_OBUF_inst_i_2_n_0;
  wire sseg_cb_OBUF_inst_i_3_n_0;
  wire sseg_cb_OBUF_inst_i_4_n_0;
  wire sseg_cc_OBUF;
  wire sseg_cc_OBUF_inst_i_2_n_0;
  wire sseg_cc_OBUF_inst_i_3_n_0;
  wire sseg_cc_OBUF_inst_i_4_n_0;
  wire sseg_cd_OBUF;
  wire sseg_cd_OBUF_inst_i_2_n_0;
  wire sseg_cd_OBUF_inst_i_3_n_0;
  wire sseg_cd_OBUF_inst_i_4_n_0;
  wire sseg_ce_OBUF;
  wire sseg_ce_OBUF_inst_i_2_n_0;
  wire sseg_ce_OBUF_inst_i_3_n_0;
  wire sseg_ce_OBUF_inst_i_4_n_0;
  wire sseg_cf_OBUF;
  wire sseg_cf_OBUF_inst_i_2_n_0;
  wire sseg_cf_OBUF_inst_i_3_n_0;
  wire sseg_cf_OBUF_inst_i_4_n_0;
  wire sseg_cg_OBUF;
  wire sseg_cg_OBUF_inst_i_2_n_0;
  wire sseg_cg_OBUF_inst_i_3_n_0;
  wire sseg_cg_OBUF_inst_i_4_n_0;
  wire sseg_dp_OBUF;
  wire [3:0]sum;
  wire [7:0]sw_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_CURRENT_STATE[0]_i_1 
       (.I0(CURRENT_STATE[0]),
        .I1(btn_IBUF[3]),
        .O(\FSM_sequential_CURRENT_STATE[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_CURRENT_STATE[1]_i_1 
       (.I0(CURRENT_STATE[1]),
        .I1(CURRENT_STATE[0]),
        .I2(btn_IBUF[3]),
        .O(\FSM_sequential_CURRENT_STATE[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_CURRENT_STATE[1]_i_2 
       (.I0(\FSM_sequential_CURRENT_STATE[1]_i_3_n_0 ),
        .I1(\FSM_sequential_CURRENT_STATE[1]_i_4_n_0 ),
        .I2(\FSM_sequential_CURRENT_STATE[1]_i_5_n_0 ),
        .I3(CURRENT_COUNT_reg[3]),
        .I4(CURRENT_COUNT_reg[12]),
        .I5(CURRENT_COUNT_reg[1]),
        .O(smol_clk));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \FSM_sequential_CURRENT_STATE[1]_i_3 
       (.I0(CURRENT_COUNT_reg[7]),
        .I1(CURRENT_COUNT_reg[15]),
        .I2(CURRENT_COUNT_reg[14]),
        .I3(CURRENT_COUNT_reg[16]),
        .I4(CURRENT_COUNT_reg[11]),
        .I5(CURRENT_COUNT_reg[6]),
        .O(\FSM_sequential_CURRENT_STATE[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_CURRENT_STATE[1]_i_4 
       (.I0(CURRENT_COUNT_reg[5]),
        .I1(CURRENT_COUNT_reg[4]),
        .I2(CURRENT_COUNT_reg[8]),
        .I3(CURRENT_COUNT_reg[2]),
        .O(\FSM_sequential_CURRENT_STATE[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_CURRENT_STATE[1]_i_5 
       (.I0(CURRENT_COUNT_reg[10]),
        .I1(CURRENT_COUNT_reg[13]),
        .I2(CURRENT_COUNT_reg[9]),
        .I3(CURRENT_COUNT_reg[0]),
        .O(\FSM_sequential_CURRENT_STATE[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "DIGIT_ZERO:00,DIGIT_ONE:01,DIGIT_TWO:10,DIGIT_THREE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CURRENT_STATE_reg[0] 
       (.C(smol_clk),
        .CE(1'b1),
        .D(\FSM_sequential_CURRENT_STATE[0]_i_1_n_0 ),
        .Q(CURRENT_STATE[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DIGIT_ZERO:00,DIGIT_ONE:01,DIGIT_TWO:10,DIGIT_THREE:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CURRENT_STATE_reg[1] 
       (.C(smol_clk),
        .CE(1'b1),
        .D(\FSM_sequential_CURRENT_STATE[1]_i_1_n_0 ),
        .Q(CURRENT_STATE[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \sseg_an_OBUF[0]_inst_i_1 
       (.I0(CURRENT_STATE[0]),
        .I1(CURRENT_STATE[1]),
        .O(sseg_an_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sseg_an_OBUF[1]_inst_i_1 
       (.I0(CURRENT_STATE[1]),
        .I1(CURRENT_STATE[0]),
        .O(sseg_an_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sseg_an_OBUF[2]_inst_i_1 
       (.I0(CURRENT_STATE[0]),
        .I1(CURRENT_STATE[1]),
        .O(sseg_an_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sseg_an_OBUF[3]_inst_i_1 
       (.I0(CURRENT_STATE[0]),
        .I1(CURRENT_STATE[1]),
        .O(sseg_an_OBUF[3]));
  MUXF7 sseg_ca_OBUF_inst_i_1
       (.I0(sseg_ca_OBUF_inst_i_2_n_0),
        .I1(sseg_ca_OBUF_inst_i_3_n_0),
        .O(sseg_ca_OBUF),
        .S(CURRENT_STATE[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    sseg_ca_OBUF_inst_i_10
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[4]),
        .I2(sw_IBUF[0]),
        .I3(btn_IBUF[0]),
        .I4(sw_IBUF[1]),
        .O(\dut/int_cout_1 ));
  LUT6 #(
    .INIT(64'h2094FFFF20940000)) 
    sseg_ca_OBUF_inst_i_2
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[5]),
        .I4(CURRENT_STATE[0]),
        .I5(sseg_ca_OBUF_inst_i_4_n_0),
        .O(sseg_ca_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h88B88888B88B8B88)) 
    sseg_ca_OBUF_inst_i_3
       (.I0(sseg_ca_OBUF_inst_i_5_n_0),
        .I1(CURRENT_STATE[0]),
        .I2(sum[3]),
        .I3(sum[2]),
        .I4(sum[0]),
        .I5(sum[1]),
        .O(sseg_ca_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    sseg_ca_OBUF_inst_i_4
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .O(sseg_ca_OBUF_inst_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    sseg_ca_OBUF_inst_i_5
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[2]),
        .I2(\dut/int_cout_1 ),
        .I3(sw_IBUF[6]),
        .I4(sw_IBUF[7]),
        .O(sseg_ca_OBUF_inst_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    sseg_ca_OBUF_inst_i_6
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[3]),
        .I2(sw_IBUF[6]),
        .I3(\dut/int_cout_1 ),
        .I4(sw_IBUF[2]),
        .O(sum[3]));
  LUT3 #(
    .INIT(8'h96)) 
    sseg_ca_OBUF_inst_i_7
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[2]),
        .I2(\dut/int_cout_1 ),
        .O(sum[2]));
  LUT3 #(
    .INIT(8'h96)) 
    sseg_ca_OBUF_inst_i_8
       (.I0(sw_IBUF[4]),
        .I1(sw_IBUF[0]),
        .I2(btn_IBUF[0]),
        .O(sum[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    sseg_ca_OBUF_inst_i_9
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[1]),
        .I2(btn_IBUF[0]),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[4]),
        .O(sum[1]));
  MUXF7 sseg_cb_OBUF_inst_i_1
       (.I0(sseg_cb_OBUF_inst_i_2_n_0),
        .I1(sseg_cb_OBUF_inst_i_3_n_0),
        .O(sseg_cb_OBUF),
        .S(CURRENT_STATE[1]));
  LUT6 #(
    .INIT(64'hB680FFFFB6800000)) 
    sseg_cb_OBUF_inst_i_2
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[4]),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[6]),
        .I4(CURRENT_STATE[0]),
        .I5(sseg_cb_OBUF_inst_i_4_n_0),
        .O(sseg_cb_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h0000B860)) 
    sseg_cb_OBUF_inst_i_3
       (.I0(sum[1]),
        .I1(sum[0]),
        .I2(sum[2]),
        .I3(sum[3]),
        .I4(CURRENT_STATE[0]),
        .O(sseg_cb_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB680)) 
    sseg_cb_OBUF_inst_i_4
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[2]),
        .O(sseg_cb_OBUF_inst_i_4_n_0));
  MUXF7 sseg_cc_OBUF_inst_i_1
       (.I0(sseg_cc_OBUF_inst_i_2_n_0),
        .I1(sseg_cc_OBUF_inst_i_3_n_0),
        .O(sseg_cc_OBUF),
        .S(CURRENT_STATE[1]));
  LUT6 #(
    .INIT(64'hA210FFFFA2100000)) 
    sseg_cc_OBUF_inst_i_2
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[4]),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[6]),
        .I4(CURRENT_STATE[0]),
        .I5(sseg_cc_OBUF_inst_i_4_n_0),
        .O(sseg_cc_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h00008A04)) 
    sseg_cc_OBUF_inst_i_3
       (.I0(sum[2]),
        .I1(sum[1]),
        .I2(sum[0]),
        .I3(sum[3]),
        .I4(CURRENT_STATE[0]),
        .O(sseg_cc_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    sseg_cc_OBUF_inst_i_4
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[2]),
        .O(sseg_cc_OBUF_inst_i_4_n_0));
  MUXF7 sseg_cd_OBUF_inst_i_1
       (.I0(sseg_cd_OBUF_inst_i_2_n_0),
        .I1(sseg_cd_OBUF_inst_i_3_n_0),
        .O(sseg_cd_OBUF),
        .S(CURRENT_STATE[1]));
  LUT6 #(
    .INIT(64'hC214FFFFC2140000)) 
    sseg_cd_OBUF_inst_i_2
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[5]),
        .I4(CURRENT_STATE[0]),
        .I5(sseg_cd_OBUF_inst_i_4_n_0),
        .O(sseg_cd_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hBB8888B8888B8B88)) 
    sseg_cd_OBUF_inst_i_3
       (.I0(sseg_ca_OBUF_inst_i_5_n_0),
        .I1(CURRENT_STATE[0]),
        .I2(sum[3]),
        .I3(sum[2]),
        .I4(sum[0]),
        .I5(sum[1]),
        .O(sseg_cd_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    sseg_cd_OBUF_inst_i_4
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .O(sseg_cd_OBUF_inst_i_4_n_0));
  MUXF7 sseg_ce_OBUF_inst_i_1
       (.I0(sseg_ce_OBUF_inst_i_2_n_0),
        .I1(sseg_ce_OBUF_inst_i_3_n_0),
        .O(sseg_ce_OBUF),
        .S(CURRENT_STATE[1]));
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    sseg_ce_OBUF_inst_i_2
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[5]),
        .I2(sw_IBUF[6]),
        .I3(sw_IBUF[4]),
        .I4(CURRENT_STATE[0]),
        .I5(sseg_ce_OBUF_inst_i_4_n_0),
        .O(sseg_ce_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h8B8B8BBB888B8888)) 
    sseg_ce_OBUF_inst_i_3
       (.I0(sseg_ca_OBUF_inst_i_5_n_0),
        .I1(CURRENT_STATE[0]),
        .I2(sum[3]),
        .I3(sum[1]),
        .I4(sum[2]),
        .I5(sum[0]),
        .O(sseg_ce_OBUF_inst_i_3_n_0));
  LUT4 #(
    .INIT(16'h5710)) 
    sseg_ce_OBUF_inst_i_4
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[0]),
        .O(sseg_ce_OBUF_inst_i_4_n_0));
  MUXF7 sseg_cf_OBUF_inst_i_1
       (.I0(sseg_cf_OBUF_inst_i_2_n_0),
        .I1(sseg_cf_OBUF_inst_i_3_n_0),
        .O(sseg_cf_OBUF),
        .S(CURRENT_STATE[1]));
  LUT6 #(
    .INIT(64'h5910FFFF59100000)) 
    sseg_cf_OBUF_inst_i_2
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[6]),
        .I2(sw_IBUF[5]),
        .I3(sw_IBUF[4]),
        .I4(CURRENT_STATE[0]),
        .I5(sseg_cf_OBUF_inst_i_4_n_0),
        .O(sseg_cf_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h8B8BB88B888B8888)) 
    sseg_cf_OBUF_inst_i_3
       (.I0(sseg_ca_OBUF_inst_i_5_n_0),
        .I1(CURRENT_STATE[0]),
        .I2(sum[3]),
        .I3(sum[2]),
        .I4(sum[1]),
        .I5(sum[0]),
        .O(sseg_cf_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5910)) 
    sseg_cf_OBUF_inst_i_4
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .O(sseg_cf_OBUF_inst_i_4_n_0));
  MUXF7 sseg_cg_OBUF_inst_i_1
       (.I0(sseg_cg_OBUF_inst_i_2_n_0),
        .I1(sseg_cg_OBUF_inst_i_3_n_0),
        .O(sseg_cg_OBUF),
        .S(CURRENT_STATE[1]));
  LUT6 #(
    .INIT(64'h4025FFFF40250000)) 
    sseg_cg_OBUF_inst_i_2
       (.I0(sw_IBUF[7]),
        .I1(sw_IBUF[4]),
        .I2(sw_IBUF[6]),
        .I3(sw_IBUF[5]),
        .I4(CURRENT_STATE[0]),
        .I5(sseg_cg_OBUF_inst_i_4_n_0),
        .O(sseg_cg_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFF0491)) 
    sseg_cg_OBUF_inst_i_3
       (.I0(sum[1]),
        .I1(sum[2]),
        .I2(sum[0]),
        .I3(sum[3]),
        .I4(CURRENT_STATE[0]),
        .O(sseg_cg_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    sseg_cg_OBUF_inst_i_4
       (.I0(sw_IBUF[3]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[1]),
        .O(sseg_cg_OBUF_inst_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    sseg_dp_OBUF_inst_i_1
       (.I0(btn_IBUF[2]),
        .I1(CURRENT_STATE[1]),
        .I2(btn_IBUF[1]),
        .I3(CURRENT_STATE[0]),
        .I4(btn_IBUF[0]),
        .O(sseg_dp_OBUF));
endmodule

(* ECO_CHECKSUM = "ee6362f8" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top_demo
   (sw,
    btn,
    sysclk_125mhz,
    rst,
    led,
    sseg_ca,
    sseg_cb,
    sseg_cc,
    sseg_cd,
    sseg_ce,
    sseg_cf,
    sseg_cg,
    sseg_dp,
    sseg_an);
  input [7:0]sw;
  input [3:0]btn;
  input sysclk_125mhz;
  input rst;
  output [7:0]led;
  output sseg_ca;
  output sseg_cb;
  output sseg_cc;
  output sseg_cd;
  output sseg_ce;
  output sseg_cf;
  output sseg_cg;
  output sseg_dp;
  output [3:0]sseg_an;

  wire \CURRENT_COUNT[0]_i_1_n_0 ;
  wire \CURRENT_COUNT[0]_i_3_n_0 ;
  wire [16:0]CURRENT_COUNT_reg;
  wire \CURRENT_COUNT_reg[0]_i_2_n_0 ;
  wire \CURRENT_COUNT_reg[0]_i_2_n_4 ;
  wire \CURRENT_COUNT_reg[0]_i_2_n_5 ;
  wire \CURRENT_COUNT_reg[0]_i_2_n_6 ;
  wire \CURRENT_COUNT_reg[0]_i_2_n_7 ;
  wire \CURRENT_COUNT_reg[12]_i_1_n_0 ;
  wire \CURRENT_COUNT_reg[12]_i_1_n_4 ;
  wire \CURRENT_COUNT_reg[12]_i_1_n_5 ;
  wire \CURRENT_COUNT_reg[12]_i_1_n_6 ;
  wire \CURRENT_COUNT_reg[12]_i_1_n_7 ;
  wire \CURRENT_COUNT_reg[16]_i_1_n_7 ;
  wire \CURRENT_COUNT_reg[4]_i_1_n_0 ;
  wire \CURRENT_COUNT_reg[4]_i_1_n_4 ;
  wire \CURRENT_COUNT_reg[4]_i_1_n_5 ;
  wire \CURRENT_COUNT_reg[4]_i_1_n_6 ;
  wire \CURRENT_COUNT_reg[4]_i_1_n_7 ;
  wire \CURRENT_COUNT_reg[8]_i_1_n_0 ;
  wire \CURRENT_COUNT_reg[8]_i_1_n_4 ;
  wire \CURRENT_COUNT_reg[8]_i_1_n_5 ;
  wire \CURRENT_COUNT_reg[8]_i_1_n_6 ;
  wire \CURRENT_COUNT_reg[8]_i_1_n_7 ;
  wire [3:0]btn;
  wire [3:0]btn_IBUF;
  wire [7:0]led;
  wire smol_clk;
  wire [3:0]sseg_an;
  wire [3:0]sseg_an_OBUF;
  wire sseg_ca;
  wire sseg_ca_OBUF;
  wire sseg_cb;
  wire sseg_cb_OBUF;
  wire sseg_cc;
  wire sseg_cc_OBUF;
  wire sseg_cd;
  wire sseg_cd_OBUF;
  wire sseg_ce;
  wire sseg_ce_OBUF;
  wire sseg_cf;
  wire sseg_cf_OBUF;
  wire sseg_cg;
  wire sseg_cg_OBUF;
  wire sseg_dp;
  wire sseg_dp_OBUF;
  wire [7:0]sw;
  wire [7:0]sw_IBUF;
  wire sysclk_125mhz;
  wire sysclk_125mhz_IBUF;
  wire sysclk_125mhz_IBUF_BUFG;
  wire [2:0]\NLW_CURRENT_COUNT_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_CURRENT_COUNT_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_CURRENT_COUNT_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_CURRENT_COUNT_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_CURRENT_COUNT_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_CURRENT_COUNT_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \CURRENT_COUNT[0]_i_1 
       (.I0(btn_IBUF[3]),
        .I1(smol_clk),
        .O(\CURRENT_COUNT[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CURRENT_COUNT[0]_i_3 
       (.I0(CURRENT_COUNT_reg[0]),
        .O(\CURRENT_COUNT[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[0] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[0]_i_2_n_7 ),
        .Q(CURRENT_COUNT_reg[0]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \CURRENT_COUNT_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\CURRENT_COUNT_reg[0]_i_2_n_0 ,\NLW_CURRENT_COUNT_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\CURRENT_COUNT_reg[0]_i_2_n_4 ,\CURRENT_COUNT_reg[0]_i_2_n_5 ,\CURRENT_COUNT_reg[0]_i_2_n_6 ,\CURRENT_COUNT_reg[0]_i_2_n_7 }),
        .S({CURRENT_COUNT_reg[3:1],\CURRENT_COUNT[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[10] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[8]_i_1_n_5 ),
        .Q(CURRENT_COUNT_reg[10]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[11] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[8]_i_1_n_4 ),
        .Q(CURRENT_COUNT_reg[11]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[12] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[12]_i_1_n_7 ),
        .Q(CURRENT_COUNT_reg[12]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \CURRENT_COUNT_reg[12]_i_1 
       (.CI(\CURRENT_COUNT_reg[8]_i_1_n_0 ),
        .CO({\CURRENT_COUNT_reg[12]_i_1_n_0 ,\NLW_CURRENT_COUNT_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\CURRENT_COUNT_reg[12]_i_1_n_4 ,\CURRENT_COUNT_reg[12]_i_1_n_5 ,\CURRENT_COUNT_reg[12]_i_1_n_6 ,\CURRENT_COUNT_reg[12]_i_1_n_7 }),
        .S(CURRENT_COUNT_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[13] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[12]_i_1_n_6 ),
        .Q(CURRENT_COUNT_reg[13]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[14] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[12]_i_1_n_5 ),
        .Q(CURRENT_COUNT_reg[14]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[15] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[12]_i_1_n_4 ),
        .Q(CURRENT_COUNT_reg[15]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[16] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[16]_i_1_n_7 ),
        .Q(CURRENT_COUNT_reg[16]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \CURRENT_COUNT_reg[16]_i_1 
       (.CI(\CURRENT_COUNT_reg[12]_i_1_n_0 ),
        .CO(\NLW_CURRENT_COUNT_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_CURRENT_COUNT_reg[16]_i_1_O_UNCONNECTED [3:1],\CURRENT_COUNT_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,CURRENT_COUNT_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[1] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[0]_i_2_n_6 ),
        .Q(CURRENT_COUNT_reg[1]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[2] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[0]_i_2_n_5 ),
        .Q(CURRENT_COUNT_reg[2]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[3] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[0]_i_2_n_4 ),
        .Q(CURRENT_COUNT_reg[3]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[4] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[4]_i_1_n_7 ),
        .Q(CURRENT_COUNT_reg[4]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \CURRENT_COUNT_reg[4]_i_1 
       (.CI(\CURRENT_COUNT_reg[0]_i_2_n_0 ),
        .CO({\CURRENT_COUNT_reg[4]_i_1_n_0 ,\NLW_CURRENT_COUNT_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\CURRENT_COUNT_reg[4]_i_1_n_4 ,\CURRENT_COUNT_reg[4]_i_1_n_5 ,\CURRENT_COUNT_reg[4]_i_1_n_6 ,\CURRENT_COUNT_reg[4]_i_1_n_7 }),
        .S(CURRENT_COUNT_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[5] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[4]_i_1_n_6 ),
        .Q(CURRENT_COUNT_reg[5]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[6] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[4]_i_1_n_5 ),
        .Q(CURRENT_COUNT_reg[6]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[7] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[4]_i_1_n_4 ),
        .Q(CURRENT_COUNT_reg[7]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[8] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[8]_i_1_n_7 ),
        .Q(CURRENT_COUNT_reg[8]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \CURRENT_COUNT_reg[8]_i_1 
       (.CI(\CURRENT_COUNT_reg[4]_i_1_n_0 ),
        .CO({\CURRENT_COUNT_reg[8]_i_1_n_0 ,\NLW_CURRENT_COUNT_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\CURRENT_COUNT_reg[8]_i_1_n_4 ,\CURRENT_COUNT_reg[8]_i_1_n_5 ,\CURRENT_COUNT_reg[8]_i_1_n_6 ,\CURRENT_COUNT_reg[8]_i_1_n_7 }),
        .S(CURRENT_COUNT_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \CURRENT_COUNT_reg[9] 
       (.C(sysclk_125mhz_IBUF_BUFG),
        .CE(1'b1),
        .D(\CURRENT_COUNT_reg[8]_i_1_n_6 ),
        .Q(CURRENT_COUNT_reg[9]),
        .R(\CURRENT_COUNT[0]_i_1_n_0 ));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF[0]));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF[1]));
  IBUF \btn_IBUF[2]_inst 
       (.I(btn[2]),
        .O(btn_IBUF[2]));
  IBUF \btn_IBUF[3]_inst 
       (.I(btn[3]),
        .O(btn_IBUF[3]));
  segment_driver driver
       (.CURRENT_COUNT_reg(CURRENT_COUNT_reg),
        .btn_IBUF(btn_IBUF),
        .smol_clk(smol_clk),
        .sseg_an_OBUF(sseg_an_OBUF),
        .sseg_ca_OBUF(sseg_ca_OBUF),
        .sseg_cb_OBUF(sseg_cb_OBUF),
        .sseg_cc_OBUF(sseg_cc_OBUF),
        .sseg_cd_OBUF(sseg_cd_OBUF),
        .sseg_ce_OBUF(sseg_ce_OBUF),
        .sseg_cf_OBUF(sseg_cf_OBUF),
        .sseg_cg_OBUF(sseg_cg_OBUF),
        .sseg_dp_OBUF(sseg_dp_OBUF),
        .sw_IBUF(sw_IBUF));
  OBUFT \led_OBUF[0]_inst 
       (.I(1'b0),
        .O(led[0]),
        .T(1'b1));
  OBUFT \led_OBUF[1]_inst 
       (.I(1'b0),
        .O(led[1]),
        .T(1'b1));
  OBUFT \led_OBUF[2]_inst 
       (.I(1'b0),
        .O(led[2]),
        .T(1'b1));
  OBUFT \led_OBUF[3]_inst 
       (.I(1'b0),
        .O(led[3]),
        .T(1'b1));
  OBUFT \led_OBUF[4]_inst 
       (.I(1'b0),
        .O(led[4]),
        .T(1'b1));
  OBUFT \led_OBUF[5]_inst 
       (.I(1'b0),
        .O(led[5]),
        .T(1'b1));
  OBUFT \led_OBUF[6]_inst 
       (.I(1'b0),
        .O(led[6]),
        .T(1'b1));
  OBUFT \led_OBUF[7]_inst 
       (.I(1'b0),
        .O(led[7]),
        .T(1'b1));
  OBUF \sseg_an_OBUF[0]_inst 
       (.I(sseg_an_OBUF[0]),
        .O(sseg_an[0]));
  OBUF \sseg_an_OBUF[1]_inst 
       (.I(sseg_an_OBUF[1]),
        .O(sseg_an[1]));
  OBUF \sseg_an_OBUF[2]_inst 
       (.I(sseg_an_OBUF[2]),
        .O(sseg_an[2]));
  OBUF \sseg_an_OBUF[3]_inst 
       (.I(sseg_an_OBUF[3]),
        .O(sseg_an[3]));
  OBUF sseg_ca_OBUF_inst
       (.I(sseg_ca_OBUF),
        .O(sseg_ca));
  OBUF sseg_cb_OBUF_inst
       (.I(sseg_cb_OBUF),
        .O(sseg_cb));
  OBUF sseg_cc_OBUF_inst
       (.I(sseg_cc_OBUF),
        .O(sseg_cc));
  OBUF sseg_cd_OBUF_inst
       (.I(sseg_cd_OBUF),
        .O(sseg_cd));
  OBUF sseg_ce_OBUF_inst
       (.I(sseg_ce_OBUF),
        .O(sseg_ce));
  OBUF sseg_cf_OBUF_inst
       (.I(sseg_cf_OBUF),
        .O(sseg_cf));
  OBUF sseg_cg_OBUF_inst
       (.I(sseg_cg_OBUF),
        .O(sseg_cg));
  OBUF sseg_dp_OBUF_inst
       (.I(sseg_dp_OBUF),
        .O(sseg_dp));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  BUFG sysclk_125mhz_IBUF_BUFG_inst
       (.I(sysclk_125mhz_IBUF),
        .O(sysclk_125mhz_IBUF_BUFG));
  IBUF sysclk_125mhz_IBUF_inst
       (.I(sysclk_125mhz),
        .O(sysclk_125mhz_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
