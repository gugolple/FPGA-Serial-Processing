// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat Jul 11 13:58:48 2020
// Host        : xilinx-vivado running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ubuntu/XilinxProjects/GameOfLife/GameOfLife.srcs/sources_1/ip/GameOfLife/GameOfLife_sim_netlist.v
// Design      : GameOfLife
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GameOfLife,fun,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "fun,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module GameOfLife
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_Clk_A,
    a_Rst_A,
    a_EN_A,
    a_WEN_A,
    a_Addr_A,
    a_Din_A,
    a_Dout_A,
    b_Clk_A,
    b_Rst_A,
    b_EN_A,
    b_WEN_A,
    b_Addr_A,
    b_Din_A,
    b_Dout_A);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 a_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME a_PORTA, MEM_WIDTH 8, MEM_SIZE 1, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1" *) output a_Clk_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 a_PORTA RST" *) output a_Rst_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 a_PORTA EN" *) output a_EN_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 a_PORTA WE" *) output [0:0]a_WEN_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 a_PORTA ADDR" *) output [31:0]a_Addr_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 a_PORTA DIN" *) output [7:0]a_Din_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 a_PORTA DOUT" *) input [7:0]a_Dout_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 b_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME b_PORTA, MEM_WIDTH 8, MEM_SIZE 1, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1" *) output b_Clk_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 b_PORTA RST" *) output b_Rst_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 b_PORTA EN" *) output b_EN_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 b_PORTA WE" *) output [0:0]b_WEN_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 b_PORTA ADDR" *) output [31:0]b_Addr_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 b_PORTA DIN" *) output [7:0]b_Din_A;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 b_PORTA DOUT" *) input [7:0]b_Dout_A;

  wire [31:0]a_Addr_A;
  wire a_Clk_A;
  wire [7:0]a_Din_A;
  wire [7:0]a_Dout_A;
  wire a_EN_A;
  wire a_Rst_A;
  wire [0:0]a_WEN_A;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [31:0]b_Addr_A;
  wire b_Clk_A;
  wire [7:0]b_Din_A;
  wire [7:0]b_Dout_A;
  wire b_EN_A;
  wire b_Rst_A;
  wire [0:0]b_WEN_A;

  GameOfLife_fun U0
       (.a_Addr_A(a_Addr_A),
        .a_Clk_A(a_Clk_A),
        .a_Din_A(a_Din_A),
        .a_Dout_A(a_Dout_A),
        .a_EN_A(a_EN_A),
        .a_Rst_A(a_Rst_A),
        .a_WEN_A(a_WEN_A),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .b_Addr_A(b_Addr_A),
        .b_Clk_A(b_Clk_A),
        .b_Din_A(b_Din_A),
        .b_Dout_A(b_Dout_A),
        .b_EN_A(b_EN_A),
        .b_Rst_A(b_Rst_A),
        .b_WEN_A(b_WEN_A));
endmodule

(* ORIG_REF_NAME = "fun" *) 
module GameOfLife_fun
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a_Addr_A,
    a_EN_A,
    a_WEN_A,
    a_Din_A,
    a_Dout_A,
    a_Clk_A,
    a_Rst_A,
    b_Addr_A,
    b_EN_A,
    b_WEN_A,
    b_Din_A,
    b_Dout_A,
    b_Clk_A,
    b_Rst_A);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]a_Addr_A;
  output a_EN_A;
  output [0:0]a_WEN_A;
  output [7:0]a_Din_A;
  input [7:0]a_Dout_A;
  output a_Clk_A;
  output a_Rst_A;
  output [31:0]b_Addr_A;
  output b_EN_A;
  output [0:0]b_WEN_A;
  output [7:0]b_Din_A;
  input [7:0]b_Dout_A;
  output b_Clk_A;
  output b_Rst_A;

  wire \<const0> ;
  wire [7:0]\^a_Addr_A ;
  wire \a_Addr_A[0]_INST_0_i_1_n_0 ;
  wire \a_Addr_A[0]_INST_0_i_2_n_0 ;
  wire \a_Addr_A[0]_INST_0_i_3_n_0 ;
  wire \a_Addr_A[0]_INST_0_i_4_n_0 ;
  wire \a_Addr_A[0]_INST_0_n_0 ;
  wire \a_Addr_A[0]_INST_0_n_1 ;
  wire \a_Addr_A[0]_INST_0_n_2 ;
  wire \a_Addr_A[0]_INST_0_n_3 ;
  wire \a_Addr_A[4]_INST_0_i_1_n_0 ;
  wire \a_Addr_A[4]_INST_0_i_2_n_0 ;
  wire \a_Addr_A[4]_INST_0_i_3_n_0 ;
  wire \a_Addr_A[4]_INST_0_i_4_n_0 ;
  wire \a_Addr_A[4]_INST_0_n_1 ;
  wire \a_Addr_A[4]_INST_0_n_2 ;
  wire \a_Addr_A[4]_INST_0_n_3 ;
  wire [7:0]a_Dout_A;
  wire a_EN_A;
  wire [7:0]a_load_1_reg_347;
  wire [7:0]a_load_reg_337;
  wire [7:0]add_ln23_2_fu_263_p2;
  wire [7:0]add_ln23_2_reg_357;
  wire \add_ln23_2_reg_357[3]_i_2_n_0 ;
  wire \add_ln23_2_reg_357[3]_i_3_n_0 ;
  wire \add_ln23_2_reg_357[3]_i_4_n_0 ;
  wire \add_ln23_2_reg_357[3]_i_5_n_0 ;
  wire \add_ln23_2_reg_357[7]_i_2_n_0 ;
  wire \add_ln23_2_reg_357[7]_i_3_n_0 ;
  wire \add_ln23_2_reg_357[7]_i_4_n_0 ;
  wire \add_ln23_2_reg_357[7]_i_5_n_0 ;
  wire \add_ln23_2_reg_357_reg[3]_i_1_n_0 ;
  wire \add_ln23_2_reg_357_reg[3]_i_1_n_1 ;
  wire \add_ln23_2_reg_357_reg[3]_i_1_n_2 ;
  wire \add_ln23_2_reg_357_reg[3]_i_1_n_3 ;
  wire \add_ln23_2_reg_357_reg[7]_i_1_n_1 ;
  wire \add_ln23_2_reg_357_reg[7]_i_1_n_2 ;
  wire \add_ln23_2_reg_357_reg[7]_i_1_n_3 ;
  wire \ap_CS_fsm[0]_i_2_n_0 ;
  wire \ap_CS_fsm[0]_i_3_n_0 ;
  wire \ap_CS_fsm[3]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [2:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [7:0]\^b_Addr_A ;
  wire [7:0]b_Din_A;
  wire \b_Din_A[7]_INST_0_i_2_n_0 ;
  wire b_EN_A;
  wire cont_0_reg_146;
  wire cont_0_reg_14615_out;
  wire cont_0_reg_14618_out;
  wire \cont_0_reg_146[7]_i_2_n_0 ;
  wire \cont_0_reg_146[7]_i_4_n_0 ;
  wire \cont_0_reg_146_reg_n_0_[0] ;
  wire \cont_0_reg_146_reg_n_0_[1] ;
  wire \cont_0_reg_146_reg_n_0_[2] ;
  wire \cont_0_reg_146_reg_n_0_[3] ;
  wire \cont_0_reg_146_reg_n_0_[4] ;
  wire \cont_0_reg_146_reg_n_0_[5] ;
  wire \cont_0_reg_146_reg_n_0_[6] ;
  wire \cont_0_reg_146_reg_n_0_[7] ;
  wire [7:0]cont_1_fu_272_p2;
  wire [7:0]cont_1_reg_362;
  wire \cont_1_reg_362[3]_i_2_n_0 ;
  wire \cont_1_reg_362[3]_i_3_n_0 ;
  wire \cont_1_reg_362[3]_i_4_n_0 ;
  wire \cont_1_reg_362[3]_i_5_n_0 ;
  wire \cont_1_reg_362[3]_i_6_n_0 ;
  wire \cont_1_reg_362[3]_i_7_n_0 ;
  wire \cont_1_reg_362[3]_i_8_n_0 ;
  wire \cont_1_reg_362[7]_i_2_n_0 ;
  wire \cont_1_reg_362[7]_i_3_n_0 ;
  wire \cont_1_reg_362[7]_i_4_n_0 ;
  wire \cont_1_reg_362[7]_i_5_n_0 ;
  wire \cont_1_reg_362[7]_i_6_n_0 ;
  wire \cont_1_reg_362[7]_i_7_n_0 ;
  wire \cont_1_reg_362[7]_i_8_n_0 ;
  wire \cont_1_reg_362_reg[3]_i_1_n_0 ;
  wire \cont_1_reg_362_reg[3]_i_1_n_1 ;
  wire \cont_1_reg_362_reg[3]_i_1_n_2 ;
  wire \cont_1_reg_362_reg[3]_i_1_n_3 ;
  wire \cont_1_reg_362_reg[7]_i_1_n_1 ;
  wire \cont_1_reg_362_reg[7]_i_1_n_2 ;
  wire \cont_1_reg_362_reg[7]_i_1_n_3 ;
  wire [7:0]cont_reg_327;
  wire [4:0]i_fu_217_p2;
  wire [3:0]j_fu_285_p2;
  wire [7:0]p_1_in__0;
  wire [7:0]res_fu_212_p2;
  wire res_reg_3070;
  wire \res_reg_307[3]_i_2_n_0 ;
  wire \res_reg_307[3]_i_3_n_0 ;
  wire \res_reg_307[3]_i_4_n_0 ;
  wire \res_reg_307[7]_i_3_n_0 ;
  wire \res_reg_307[7]_i_4_n_0 ;
  wire \res_reg_307[7]_i_5_n_0 ;
  wire \res_reg_307[7]_i_6_n_0 ;
  wire \res_reg_307[7]_i_7_n_0 ;
  wire \res_reg_307_reg[3]_i_1_n_0 ;
  wire \res_reg_307_reg[3]_i_1_n_1 ;
  wire \res_reg_307_reg[3]_i_1_n_2 ;
  wire \res_reg_307_reg[3]_i_1_n_3 ;
  wire \res_reg_307_reg[7]_i_2_n_1 ;
  wire \res_reg_307_reg[7]_i_2_n_2 ;
  wire \res_reg_307_reg[7]_i_2_n_3 ;
  wire [7:3]shl_ln_reg_294;
  wire x_assign_reg_1340;
  wire [3:0]x_assign_reg_134_reg;
  wire y_assign_reg_122;
  wire [4:0]y_assign_reg_122_reg;
  wire [3:3]\NLW_a_Addr_A[4]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_add_ln23_2_reg_357_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cont_1_reg_362_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_res_reg_307_reg[7]_i_2_CO_UNCONNECTED ;

  assign a_Addr_A[31] = \<const0> ;
  assign a_Addr_A[30] = \<const0> ;
  assign a_Addr_A[29] = \<const0> ;
  assign a_Addr_A[28] = \<const0> ;
  assign a_Addr_A[27] = \<const0> ;
  assign a_Addr_A[26] = \<const0> ;
  assign a_Addr_A[25] = \<const0> ;
  assign a_Addr_A[24] = \<const0> ;
  assign a_Addr_A[23] = \<const0> ;
  assign a_Addr_A[22] = \<const0> ;
  assign a_Addr_A[21] = \<const0> ;
  assign a_Addr_A[20] = \<const0> ;
  assign a_Addr_A[19] = \<const0> ;
  assign a_Addr_A[18] = \<const0> ;
  assign a_Addr_A[17] = \<const0> ;
  assign a_Addr_A[16] = \<const0> ;
  assign a_Addr_A[15] = \<const0> ;
  assign a_Addr_A[14] = \<const0> ;
  assign a_Addr_A[13] = \<const0> ;
  assign a_Addr_A[12] = \<const0> ;
  assign a_Addr_A[11] = \<const0> ;
  assign a_Addr_A[10] = \<const0> ;
  assign a_Addr_A[9] = \<const0> ;
  assign a_Addr_A[8] = \<const0> ;
  assign a_Addr_A[7:0] = \^a_Addr_A [7:0];
  assign a_Clk_A = ap_clk;
  assign a_Din_A[7] = \<const0> ;
  assign a_Din_A[6] = \<const0> ;
  assign a_Din_A[5] = \<const0> ;
  assign a_Din_A[4] = \<const0> ;
  assign a_Din_A[3] = \<const0> ;
  assign a_Din_A[2] = \<const0> ;
  assign a_Din_A[1] = \<const0> ;
  assign a_Din_A[0] = \<const0> ;
  assign a_Rst_A = ap_rst;
  assign a_WEN_A[0] = \<const0> ;
  assign ap_done = ap_ready;
  assign b_Addr_A[31] = \<const0> ;
  assign b_Addr_A[30] = \<const0> ;
  assign b_Addr_A[29] = \<const0> ;
  assign b_Addr_A[28] = \<const0> ;
  assign b_Addr_A[27] = \<const0> ;
  assign b_Addr_A[26] = \<const0> ;
  assign b_Addr_A[25] = \<const0> ;
  assign b_Addr_A[24] = \<const0> ;
  assign b_Addr_A[23] = \<const0> ;
  assign b_Addr_A[22] = \<const0> ;
  assign b_Addr_A[21] = \<const0> ;
  assign b_Addr_A[20] = \<const0> ;
  assign b_Addr_A[19] = \<const0> ;
  assign b_Addr_A[18] = \<const0> ;
  assign b_Addr_A[17] = \<const0> ;
  assign b_Addr_A[16] = \<const0> ;
  assign b_Addr_A[15] = \<const0> ;
  assign b_Addr_A[14] = \<const0> ;
  assign b_Addr_A[13] = \<const0> ;
  assign b_Addr_A[12] = \<const0> ;
  assign b_Addr_A[11] = \<const0> ;
  assign b_Addr_A[10] = \<const0> ;
  assign b_Addr_A[9] = \<const0> ;
  assign b_Addr_A[8] = \<const0> ;
  assign b_Addr_A[7:0] = \^b_Addr_A [7:0];
  assign b_Clk_A = ap_clk;
  assign b_Rst_A = ap_rst;
  assign b_WEN_A[0] = b_EN_A;
  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \a_Addr_A[0]_INST_0 
       (.CI(1'b0),
        .CO({\a_Addr_A[0]_INST_0_n_0 ,\a_Addr_A[0]_INST_0_n_1 ,\a_Addr_A[0]_INST_0_n_2 ,\a_Addr_A[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(\^b_Addr_A [3:0]),
        .O(\^a_Addr_A [3:0]),
        .S({\a_Addr_A[0]_INST_0_i_1_n_0 ,\a_Addr_A[0]_INST_0_i_2_n_0 ,\a_Addr_A[0]_INST_0_i_3_n_0 ,\a_Addr_A[0]_INST_0_i_4_n_0 }));
  LUT5 #(
    .INIT(32'hAAAA6566)) 
    \a_Addr_A[0]_INST_0_i_1 
       (.I0(\^b_Addr_A [3]),
        .I1(ap_CS_fsm_state7),
        .I2(ap_CS_fsm_state6),
        .I3(ap_CS_fsm_state5),
        .I4(ap_CS_fsm_state9),
        .O(\a_Addr_A[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \a_Addr_A[0]_INST_0_i_2 
       (.I0(\^b_Addr_A [2]),
        .I1(ap_CS_fsm_state9),
        .I2(ap_CS_fsm_state6),
        .I3(ap_CS_fsm_state7),
        .O(\a_Addr_A[0]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA59)) 
    \a_Addr_A[0]_INST_0_i_3 
       (.I0(\^b_Addr_A [1]),
        .I1(ap_CS_fsm_state6),
        .I2(ap_CS_fsm_state7),
        .I3(ap_CS_fsm_state9),
        .O(\a_Addr_A[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA9A9A9AA)) 
    \a_Addr_A[0]_INST_0_i_4 
       (.I0(\^b_Addr_A [0]),
        .I1(ap_CS_fsm_state7),
        .I2(ap_CS_fsm_state9),
        .I3(ap_CS_fsm_state5),
        .I4(ap_CS_fsm_state6),
        .O(\a_Addr_A[0]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \a_Addr_A[4]_INST_0 
       (.CI(\a_Addr_A[0]_INST_0_n_0 ),
        .CO({\NLW_a_Addr_A[4]_INST_0_CO_UNCONNECTED [3],\a_Addr_A[4]_INST_0_n_1 ,\a_Addr_A[4]_INST_0_n_2 ,\a_Addr_A[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\^b_Addr_A [6:4]}),
        .O(\^a_Addr_A [7:4]),
        .S({\a_Addr_A[4]_INST_0_i_1_n_0 ,\a_Addr_A[4]_INST_0_i_2_n_0 ,\a_Addr_A[4]_INST_0_i_3_n_0 ,\a_Addr_A[4]_INST_0_i_4_n_0 }));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \a_Addr_A[4]_INST_0_i_1 
       (.I0(\^b_Addr_A [7]),
        .I1(ap_CS_fsm_state9),
        .I2(ap_CS_fsm_state6),
        .I3(ap_CS_fsm_state7),
        .O(\a_Addr_A[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \a_Addr_A[4]_INST_0_i_2 
       (.I0(\^b_Addr_A [6]),
        .I1(ap_CS_fsm_state9),
        .I2(ap_CS_fsm_state6),
        .I3(ap_CS_fsm_state7),
        .O(\a_Addr_A[4]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \a_Addr_A[4]_INST_0_i_3 
       (.I0(\^b_Addr_A [5]),
        .I1(ap_CS_fsm_state9),
        .I2(ap_CS_fsm_state6),
        .I3(ap_CS_fsm_state7),
        .O(\a_Addr_A[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \a_Addr_A[4]_INST_0_i_4 
       (.I0(\^b_Addr_A [4]),
        .I1(ap_CS_fsm_state9),
        .I2(ap_CS_fsm_state6),
        .I3(ap_CS_fsm_state7),
        .O(\a_Addr_A[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    a_EN_A_INST_0
       (.I0(ap_CS_fsm_state6),
        .I1(ap_CS_fsm_state7),
        .I2(ap_CS_fsm_state9),
        .I3(ap_CS_fsm_state4),
        .I4(ap_CS_fsm_state5),
        .O(a_EN_A));
  FDRE \a_load_1_reg_347_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(a_Dout_A[0]),
        .Q(a_load_1_reg_347[0]),
        .R(1'b0));
  FDRE \a_load_1_reg_347_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(a_Dout_A[1]),
        .Q(a_load_1_reg_347[1]),
        .R(1'b0));
  FDRE \a_load_1_reg_347_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(a_Dout_A[2]),
        .Q(a_load_1_reg_347[2]),
        .R(1'b0));
  FDRE \a_load_1_reg_347_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(a_Dout_A[3]),
        .Q(a_load_1_reg_347[3]),
        .R(1'b0));
  FDRE \a_load_1_reg_347_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(a_Dout_A[4]),
        .Q(a_load_1_reg_347[4]),
        .R(1'b0));
  FDRE \a_load_1_reg_347_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(a_Dout_A[5]),
        .Q(a_load_1_reg_347[5]),
        .R(1'b0));
  FDRE \a_load_1_reg_347_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(a_Dout_A[6]),
        .Q(a_load_1_reg_347[6]),
        .R(1'b0));
  FDRE \a_load_1_reg_347_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(a_Dout_A[7]),
        .Q(a_load_1_reg_347[7]),
        .R(1'b0));
  FDRE \a_load_reg_337_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(a_Dout_A[0]),
        .Q(a_load_reg_337[0]),
        .R(1'b0));
  FDRE \a_load_reg_337_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(a_Dout_A[1]),
        .Q(a_load_reg_337[1]),
        .R(1'b0));
  FDRE \a_load_reg_337_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(a_Dout_A[2]),
        .Q(a_load_reg_337[2]),
        .R(1'b0));
  FDRE \a_load_reg_337_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(a_Dout_A[3]),
        .Q(a_load_reg_337[3]),
        .R(1'b0));
  FDRE \a_load_reg_337_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(a_Dout_A[4]),
        .Q(a_load_reg_337[4]),
        .R(1'b0));
  FDRE \a_load_reg_337_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(a_Dout_A[5]),
        .Q(a_load_reg_337[5]),
        .R(1'b0));
  FDRE \a_load_reg_337_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(a_Dout_A[6]),
        .Q(a_load_reg_337[6]),
        .R(1'b0));
  FDRE \a_load_reg_337_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(a_Dout_A[7]),
        .Q(a_load_reg_337[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln23_2_reg_357[3]_i_2 
       (.I0(a_load_reg_337[3]),
        .I1(a_Dout_A[3]),
        .O(\add_ln23_2_reg_357[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln23_2_reg_357[3]_i_3 
       (.I0(a_load_reg_337[2]),
        .I1(a_Dout_A[2]),
        .O(\add_ln23_2_reg_357[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln23_2_reg_357[3]_i_4 
       (.I0(a_load_reg_337[1]),
        .I1(a_Dout_A[1]),
        .O(\add_ln23_2_reg_357[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln23_2_reg_357[3]_i_5 
       (.I0(a_load_reg_337[0]),
        .I1(a_Dout_A[0]),
        .O(\add_ln23_2_reg_357[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln23_2_reg_357[7]_i_2 
       (.I0(a_load_reg_337[7]),
        .I1(a_Dout_A[7]),
        .O(\add_ln23_2_reg_357[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln23_2_reg_357[7]_i_3 
       (.I0(a_load_reg_337[6]),
        .I1(a_Dout_A[6]),
        .O(\add_ln23_2_reg_357[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln23_2_reg_357[7]_i_4 
       (.I0(a_load_reg_337[5]),
        .I1(a_Dout_A[5]),
        .O(\add_ln23_2_reg_357[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln23_2_reg_357[7]_i_5 
       (.I0(a_load_reg_337[4]),
        .I1(a_Dout_A[4]),
        .O(\add_ln23_2_reg_357[7]_i_5_n_0 ));
  FDRE \add_ln23_2_reg_357_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(add_ln23_2_fu_263_p2[0]),
        .Q(add_ln23_2_reg_357[0]),
        .R(1'b0));
  FDRE \add_ln23_2_reg_357_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(add_ln23_2_fu_263_p2[1]),
        .Q(add_ln23_2_reg_357[1]),
        .R(1'b0));
  FDRE \add_ln23_2_reg_357_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(add_ln23_2_fu_263_p2[2]),
        .Q(add_ln23_2_reg_357[2]),
        .R(1'b0));
  FDRE \add_ln23_2_reg_357_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(add_ln23_2_fu_263_p2[3]),
        .Q(add_ln23_2_reg_357[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln23_2_reg_357_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\add_ln23_2_reg_357_reg[3]_i_1_n_0 ,\add_ln23_2_reg_357_reg[3]_i_1_n_1 ,\add_ln23_2_reg_357_reg[3]_i_1_n_2 ,\add_ln23_2_reg_357_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(a_load_reg_337[3:0]),
        .O(add_ln23_2_fu_263_p2[3:0]),
        .S({\add_ln23_2_reg_357[3]_i_2_n_0 ,\add_ln23_2_reg_357[3]_i_3_n_0 ,\add_ln23_2_reg_357[3]_i_4_n_0 ,\add_ln23_2_reg_357[3]_i_5_n_0 }));
  FDRE \add_ln23_2_reg_357_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(add_ln23_2_fu_263_p2[4]),
        .Q(add_ln23_2_reg_357[4]),
        .R(1'b0));
  FDRE \add_ln23_2_reg_357_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(add_ln23_2_fu_263_p2[5]),
        .Q(add_ln23_2_reg_357[5]),
        .R(1'b0));
  FDRE \add_ln23_2_reg_357_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(add_ln23_2_fu_263_p2[6]),
        .Q(add_ln23_2_reg_357[6]),
        .R(1'b0));
  FDRE \add_ln23_2_reg_357_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(add_ln23_2_fu_263_p2[7]),
        .Q(add_ln23_2_reg_357[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \add_ln23_2_reg_357_reg[7]_i_1 
       (.CI(\add_ln23_2_reg_357_reg[3]_i_1_n_0 ),
        .CO({\NLW_add_ln23_2_reg_357_reg[7]_i_1_CO_UNCONNECTED [3],\add_ln23_2_reg_357_reg[7]_i_1_n_1 ,\add_ln23_2_reg_357_reg[7]_i_1_n_2 ,\add_ln23_2_reg_357_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,a_load_reg_337[6:4]}),
        .O(add_ln23_2_fu_263_p2[7:4]),
        .S({\add_ln23_2_reg_357[7]_i_2_n_0 ,\add_ln23_2_reg_357[7]_i_3_n_0 ,\add_ln23_2_reg_357[7]_i_4_n_0 ,\add_ln23_2_reg_357[7]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44444474)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_ready),
        .I3(\ap_CS_fsm[0]_i_2_n_0 ),
        .I4(\ap_CS_fsm[0]_i_3_n_0 ),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(ap_CS_fsm_state6),
        .I1(ap_CS_fsm_state7),
        .I2(ap_CS_fsm_state4),
        .I3(ap_CS_fsm_state5),
        .O(\ap_CS_fsm[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[0]_i_3 
       (.I0(ap_CS_fsm_state3),
        .I1(b_EN_A),
        .I2(ap_CS_fsm_state8),
        .I3(ap_CS_fsm_state9),
        .O(\ap_CS_fsm[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(ap_NS_fsm1),
        .O(ap_NS_fsm[1]));
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(b_EN_A),
        .I1(ap_ready),
        .I2(ap_CS_fsm_state2),
        .O(ap_NS_fsm[2]));
  LUT5 #(
    .INIT(32'hA8AAAAAA)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(x_assign_reg_134_reg[1]),
        .I2(x_assign_reg_134_reg[2]),
        .I3(x_assign_reg_134_reg[0]),
        .I4(x_assign_reg_134_reg[3]),
        .O(\ap_CS_fsm[3]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[3]_i_1_n_0 ),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state4),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state5),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state6),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state7),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state8),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state9),
        .Q(b_EN_A),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    ap_ready_INST_0
       (.I0(y_assign_reg_122_reg[1]),
        .I1(y_assign_reg_122_reg[3]),
        .I2(y_assign_reg_122_reg[4]),
        .I3(y_assign_reg_122_reg[2]),
        .I4(y_assign_reg_122_reg[0]),
        .I5(ap_CS_fsm_state2),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_Din_A[0]_INST_0 
       (.I0(a_Dout_A[0]),
        .I1(\cont_0_reg_146_reg_n_0_[0] ),
        .I2(cont_0_reg_14618_out),
        .O(b_Din_A[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_Din_A[1]_INST_0 
       (.I0(a_Dout_A[1]),
        .I1(\cont_0_reg_146_reg_n_0_[1] ),
        .I2(cont_0_reg_14618_out),
        .O(b_Din_A[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_Din_A[2]_INST_0 
       (.I0(a_Dout_A[2]),
        .I1(\cont_0_reg_146_reg_n_0_[2] ),
        .I2(cont_0_reg_14618_out),
        .O(b_Din_A[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_Din_A[3]_INST_0 
       (.I0(a_Dout_A[3]),
        .I1(\cont_0_reg_146_reg_n_0_[3] ),
        .I2(cont_0_reg_14618_out),
        .O(b_Din_A[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_Din_A[4]_INST_0 
       (.I0(a_Dout_A[4]),
        .I1(\cont_0_reg_146_reg_n_0_[4] ),
        .I2(cont_0_reg_14618_out),
        .O(b_Din_A[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_Din_A[5]_INST_0 
       (.I0(a_Dout_A[5]),
        .I1(\cont_0_reg_146_reg_n_0_[5] ),
        .I2(cont_0_reg_14618_out),
        .O(b_Din_A[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_Din_A[6]_INST_0 
       (.I0(a_Dout_A[6]),
        .I1(\cont_0_reg_146_reg_n_0_[6] ),
        .I2(cont_0_reg_14618_out),
        .O(b_Din_A[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \b_Din_A[7]_INST_0 
       (.I0(a_Dout_A[7]),
        .I1(\cont_0_reg_146_reg_n_0_[7] ),
        .I2(cont_0_reg_14618_out),
        .O(b_Din_A[7]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \b_Din_A[7]_INST_0_i_1 
       (.I0(b_EN_A),
        .I1(\b_Din_A[7]_INST_0_i_2_n_0 ),
        .I2(cont_1_reg_362[7]),
        .I3(cont_1_reg_362[6]),
        .I4(cont_1_reg_362[4]),
        .I5(cont_1_reg_362[5]),
        .O(cont_0_reg_14618_out));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \b_Din_A[7]_INST_0_i_2 
       (.I0(cont_1_reg_362[2]),
        .I1(cont_1_reg_362[3]),
        .I2(cont_1_reg_362[1]),
        .I3(cont_1_reg_362[0]),
        .O(\b_Din_A[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \cont_0_reg_146[0]_i_1 
       (.I0(cont_1_fu_272_p2[0]),
        .I1(cont_0_reg_14615_out),
        .I2(cont_0_reg_14618_out),
        .I3(a_Dout_A[0]),
        .O(p_1_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \cont_0_reg_146[1]_i_1 
       (.I0(cont_1_fu_272_p2[1]),
        .I1(cont_0_reg_14615_out),
        .I2(cont_0_reg_14618_out),
        .I3(a_Dout_A[1]),
        .O(p_1_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \cont_0_reg_146[2]_i_1 
       (.I0(cont_1_fu_272_p2[2]),
        .I1(cont_0_reg_14615_out),
        .I2(cont_0_reg_14618_out),
        .I3(a_Dout_A[2]),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \cont_0_reg_146[3]_i_1 
       (.I0(cont_1_fu_272_p2[3]),
        .I1(cont_0_reg_14615_out),
        .I2(cont_0_reg_14618_out),
        .I3(a_Dout_A[3]),
        .O(p_1_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \cont_0_reg_146[4]_i_1 
       (.I0(cont_1_fu_272_p2[4]),
        .I1(cont_0_reg_14615_out),
        .I2(cont_0_reg_14618_out),
        .I3(a_Dout_A[4]),
        .O(p_1_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \cont_0_reg_146[5]_i_1 
       (.I0(cont_1_fu_272_p2[5]),
        .I1(cont_0_reg_14615_out),
        .I2(cont_0_reg_14618_out),
        .I3(a_Dout_A[5]),
        .O(p_1_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \cont_0_reg_146[6]_i_1 
       (.I0(cont_1_fu_272_p2[6]),
        .I1(cont_0_reg_14615_out),
        .I2(cont_0_reg_14618_out),
        .I3(a_Dout_A[6]),
        .O(p_1_in__0[6]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \cont_0_reg_146[7]_i_1 
       (.I0(cont_1_fu_272_p2[0]),
        .I1(\cont_0_reg_146[7]_i_4_n_0 ),
        .I2(cont_1_fu_272_p2[2]),
        .I3(cont_1_fu_272_p2[1]),
        .I4(ap_CS_fsm_state9),
        .O(cont_0_reg_146));
  LUT5 #(
    .INIT(32'hFFFF8AAA)) 
    \cont_0_reg_146[7]_i_2 
       (.I0(ap_CS_fsm_state9),
        .I1(cont_1_fu_272_p2[2]),
        .I2(\cont_0_reg_146[7]_i_4_n_0 ),
        .I3(cont_1_fu_272_p2[1]),
        .I4(cont_0_reg_14618_out),
        .O(\cont_0_reg_146[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \cont_0_reg_146[7]_i_3 
       (.I0(cont_1_fu_272_p2[7]),
        .I1(cont_0_reg_14615_out),
        .I2(cont_0_reg_14618_out),
        .I3(a_Dout_A[7]),
        .O(p_1_in__0[7]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cont_0_reg_146[7]_i_4 
       (.I0(cont_1_fu_272_p2[6]),
        .I1(cont_1_fu_272_p2[4]),
        .I2(cont_1_fu_272_p2[3]),
        .I3(cont_1_fu_272_p2[7]),
        .I4(cont_1_fu_272_p2[5]),
        .O(\cont_0_reg_146[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0AA80AA)) 
    \cont_0_reg_146[7]_i_5 
       (.I0(ap_CS_fsm_state9),
        .I1(cont_1_fu_272_p2[1]),
        .I2(cont_1_fu_272_p2[2]),
        .I3(\cont_0_reg_146[7]_i_4_n_0 ),
        .I4(cont_1_fu_272_p2[0]),
        .O(cont_0_reg_14615_out));
  FDSE \cont_0_reg_146_reg[0] 
       (.C(ap_clk),
        .CE(\cont_0_reg_146[7]_i_2_n_0 ),
        .D(p_1_in__0[0]),
        .Q(\cont_0_reg_146_reg_n_0_[0] ),
        .S(cont_0_reg_146));
  FDRE \cont_0_reg_146_reg[1] 
       (.C(ap_clk),
        .CE(\cont_0_reg_146[7]_i_2_n_0 ),
        .D(p_1_in__0[1]),
        .Q(\cont_0_reg_146_reg_n_0_[1] ),
        .R(cont_0_reg_146));
  FDRE \cont_0_reg_146_reg[2] 
       (.C(ap_clk),
        .CE(\cont_0_reg_146[7]_i_2_n_0 ),
        .D(p_1_in__0[2]),
        .Q(\cont_0_reg_146_reg_n_0_[2] ),
        .R(cont_0_reg_146));
  FDRE \cont_0_reg_146_reg[3] 
       (.C(ap_clk),
        .CE(\cont_0_reg_146[7]_i_2_n_0 ),
        .D(p_1_in__0[3]),
        .Q(\cont_0_reg_146_reg_n_0_[3] ),
        .R(cont_0_reg_146));
  FDRE \cont_0_reg_146_reg[4] 
       (.C(ap_clk),
        .CE(\cont_0_reg_146[7]_i_2_n_0 ),
        .D(p_1_in__0[4]),
        .Q(\cont_0_reg_146_reg_n_0_[4] ),
        .R(cont_0_reg_146));
  FDRE \cont_0_reg_146_reg[5] 
       (.C(ap_clk),
        .CE(\cont_0_reg_146[7]_i_2_n_0 ),
        .D(p_1_in__0[5]),
        .Q(\cont_0_reg_146_reg_n_0_[5] ),
        .R(cont_0_reg_146));
  FDRE \cont_0_reg_146_reg[6] 
       (.C(ap_clk),
        .CE(\cont_0_reg_146[7]_i_2_n_0 ),
        .D(p_1_in__0[6]),
        .Q(\cont_0_reg_146_reg_n_0_[6] ),
        .R(cont_0_reg_146));
  FDRE \cont_0_reg_146_reg[7] 
       (.C(ap_clk),
        .CE(\cont_0_reg_146[7]_i_2_n_0 ),
        .D(p_1_in__0[7]),
        .Q(\cont_0_reg_146_reg_n_0_[7] ),
        .R(cont_0_reg_146));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cont_1_reg_362[3]_i_2 
       (.I0(a_load_1_reg_347[2]),
        .I1(cont_reg_327[2]),
        .I2(add_ln23_2_reg_357[2]),
        .O(\cont_1_reg_362[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cont_1_reg_362[3]_i_3 
       (.I0(a_load_1_reg_347[1]),
        .I1(cont_reg_327[1]),
        .I2(add_ln23_2_reg_357[1]),
        .O(\cont_1_reg_362[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cont_1_reg_362[3]_i_4 
       (.I0(a_load_1_reg_347[0]),
        .I1(cont_reg_327[0]),
        .I2(add_ln23_2_reg_357[0]),
        .O(\cont_1_reg_362[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cont_1_reg_362[3]_i_5 
       (.I0(a_load_1_reg_347[3]),
        .I1(cont_reg_327[3]),
        .I2(add_ln23_2_reg_357[3]),
        .I3(\cont_1_reg_362[3]_i_2_n_0 ),
        .O(\cont_1_reg_362[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cont_1_reg_362[3]_i_6 
       (.I0(a_load_1_reg_347[2]),
        .I1(cont_reg_327[2]),
        .I2(add_ln23_2_reg_357[2]),
        .I3(\cont_1_reg_362[3]_i_3_n_0 ),
        .O(\cont_1_reg_362[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cont_1_reg_362[3]_i_7 
       (.I0(a_load_1_reg_347[1]),
        .I1(cont_reg_327[1]),
        .I2(add_ln23_2_reg_357[1]),
        .I3(\cont_1_reg_362[3]_i_4_n_0 ),
        .O(\cont_1_reg_362[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cont_1_reg_362[3]_i_8 
       (.I0(a_load_1_reg_347[0]),
        .I1(cont_reg_327[0]),
        .I2(add_ln23_2_reg_357[0]),
        .O(\cont_1_reg_362[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cont_1_reg_362[7]_i_2 
       (.I0(a_load_1_reg_347[5]),
        .I1(cont_reg_327[5]),
        .I2(add_ln23_2_reg_357[5]),
        .O(\cont_1_reg_362[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cont_1_reg_362[7]_i_3 
       (.I0(a_load_1_reg_347[4]),
        .I1(cont_reg_327[4]),
        .I2(add_ln23_2_reg_357[4]),
        .O(\cont_1_reg_362[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \cont_1_reg_362[7]_i_4 
       (.I0(a_load_1_reg_347[3]),
        .I1(cont_reg_327[3]),
        .I2(add_ln23_2_reg_357[3]),
        .O(\cont_1_reg_362[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \cont_1_reg_362[7]_i_5 
       (.I0(add_ln23_2_reg_357[6]),
        .I1(cont_reg_327[6]),
        .I2(a_load_1_reg_347[6]),
        .I3(cont_reg_327[7]),
        .I4(a_load_1_reg_347[7]),
        .I5(add_ln23_2_reg_357[7]),
        .O(\cont_1_reg_362[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \cont_1_reg_362[7]_i_6 
       (.I0(\cont_1_reg_362[7]_i_2_n_0 ),
        .I1(cont_reg_327[6]),
        .I2(a_load_1_reg_347[6]),
        .I3(add_ln23_2_reg_357[6]),
        .O(\cont_1_reg_362[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cont_1_reg_362[7]_i_7 
       (.I0(a_load_1_reg_347[5]),
        .I1(cont_reg_327[5]),
        .I2(add_ln23_2_reg_357[5]),
        .I3(\cont_1_reg_362[7]_i_3_n_0 ),
        .O(\cont_1_reg_362[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cont_1_reg_362[7]_i_8 
       (.I0(a_load_1_reg_347[4]),
        .I1(cont_reg_327[4]),
        .I2(add_ln23_2_reg_357[4]),
        .I3(\cont_1_reg_362[7]_i_4_n_0 ),
        .O(\cont_1_reg_362[7]_i_8_n_0 ));
  FDRE \cont_1_reg_362_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(cont_1_fu_272_p2[0]),
        .Q(cont_1_reg_362[0]),
        .R(1'b0));
  FDRE \cont_1_reg_362_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(cont_1_fu_272_p2[1]),
        .Q(cont_1_reg_362[1]),
        .R(1'b0));
  FDRE \cont_1_reg_362_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(cont_1_fu_272_p2[2]),
        .Q(cont_1_reg_362[2]),
        .R(1'b0));
  FDRE \cont_1_reg_362_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(cont_1_fu_272_p2[3]),
        .Q(cont_1_reg_362[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cont_1_reg_362_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\cont_1_reg_362_reg[3]_i_1_n_0 ,\cont_1_reg_362_reg[3]_i_1_n_1 ,\cont_1_reg_362_reg[3]_i_1_n_2 ,\cont_1_reg_362_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cont_1_reg_362[3]_i_2_n_0 ,\cont_1_reg_362[3]_i_3_n_0 ,\cont_1_reg_362[3]_i_4_n_0 ,1'b0}),
        .O(cont_1_fu_272_p2[3:0]),
        .S({\cont_1_reg_362[3]_i_5_n_0 ,\cont_1_reg_362[3]_i_6_n_0 ,\cont_1_reg_362[3]_i_7_n_0 ,\cont_1_reg_362[3]_i_8_n_0 }));
  FDRE \cont_1_reg_362_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(cont_1_fu_272_p2[4]),
        .Q(cont_1_reg_362[4]),
        .R(1'b0));
  FDRE \cont_1_reg_362_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(cont_1_fu_272_p2[5]),
        .Q(cont_1_reg_362[5]),
        .R(1'b0));
  FDRE \cont_1_reg_362_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(cont_1_fu_272_p2[6]),
        .Q(cont_1_reg_362[6]),
        .R(1'b0));
  FDRE \cont_1_reg_362_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(cont_1_fu_272_p2[7]),
        .Q(cont_1_reg_362[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cont_1_reg_362_reg[7]_i_1 
       (.CI(\cont_1_reg_362_reg[3]_i_1_n_0 ),
        .CO({\NLW_cont_1_reg_362_reg[7]_i_1_CO_UNCONNECTED [3],\cont_1_reg_362_reg[7]_i_1_n_1 ,\cont_1_reg_362_reg[7]_i_1_n_2 ,\cont_1_reg_362_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\cont_1_reg_362[7]_i_2_n_0 ,\cont_1_reg_362[7]_i_3_n_0 ,\cont_1_reg_362[7]_i_4_n_0 }),
        .O(cont_1_fu_272_p2[7:4]),
        .S({\cont_1_reg_362[7]_i_5_n_0 ,\cont_1_reg_362[7]_i_6_n_0 ,\cont_1_reg_362[7]_i_7_n_0 ,\cont_1_reg_362[7]_i_8_n_0 }));
  FDRE \cont_reg_327_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(a_Dout_A[0]),
        .Q(cont_reg_327[0]),
        .R(1'b0));
  FDRE \cont_reg_327_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(a_Dout_A[1]),
        .Q(cont_reg_327[1]),
        .R(1'b0));
  FDRE \cont_reg_327_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(a_Dout_A[2]),
        .Q(cont_reg_327[2]),
        .R(1'b0));
  FDRE \cont_reg_327_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(a_Dout_A[3]),
        .Q(cont_reg_327[3]),
        .R(1'b0));
  FDRE \cont_reg_327_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(a_Dout_A[4]),
        .Q(cont_reg_327[4]),
        .R(1'b0));
  FDRE \cont_reg_327_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(a_Dout_A[5]),
        .Q(cont_reg_327[5]),
        .R(1'b0));
  FDRE \cont_reg_327_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(a_Dout_A[6]),
        .Q(cont_reg_327[6]),
        .R(1'b0));
  FDRE \cont_reg_327_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(a_Dout_A[7]),
        .Q(cont_reg_327[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \res_reg_307[3]_i_2 
       (.I0(x_assign_reg_134_reg[3]),
        .I1(shl_ln_reg_294[5]),
        .I2(shl_ln_reg_294[3]),
        .O(\res_reg_307[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_reg_307[3]_i_3 
       (.I0(shl_ln_reg_294[4]),
        .I1(x_assign_reg_134_reg[2]),
        .O(\res_reg_307[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_reg_307[3]_i_4 
       (.I0(shl_ln_reg_294[3]),
        .I1(x_assign_reg_134_reg[1]),
        .O(\res_reg_307[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA2A)) 
    \res_reg_307[7]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(x_assign_reg_134_reg[3]),
        .I2(x_assign_reg_134_reg[0]),
        .I3(x_assign_reg_134_reg[2]),
        .I4(x_assign_reg_134_reg[1]),
        .O(res_reg_3070));
  LUT2 #(
    .INIT(4'h8)) 
    \res_reg_307[7]_i_3 
       (.I0(shl_ln_reg_294[6]),
        .I1(shl_ln_reg_294[4]),
        .O(\res_reg_307[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \res_reg_307[7]_i_4 
       (.I0(x_assign_reg_134_reg[3]),
        .I1(shl_ln_reg_294[5]),
        .O(\res_reg_307[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \res_reg_307[7]_i_5 
       (.I0(shl_ln_reg_294[5]),
        .I1(shl_ln_reg_294[7]),
        .I2(shl_ln_reg_294[6]),
        .O(\res_reg_307[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \res_reg_307[7]_i_6 
       (.I0(shl_ln_reg_294[4]),
        .I1(shl_ln_reg_294[6]),
        .I2(shl_ln_reg_294[7]),
        .I3(shl_ln_reg_294[5]),
        .O(\res_reg_307[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \res_reg_307[7]_i_7 
       (.I0(shl_ln_reg_294[5]),
        .I1(x_assign_reg_134_reg[3]),
        .I2(shl_ln_reg_294[6]),
        .I3(shl_ln_reg_294[4]),
        .O(\res_reg_307[7]_i_7_n_0 ));
  FDRE \res_reg_307_reg[0] 
       (.C(ap_clk),
        .CE(res_reg_3070),
        .D(res_fu_212_p2[0]),
        .Q(\^b_Addr_A [0]),
        .R(1'b0));
  FDRE \res_reg_307_reg[1] 
       (.C(ap_clk),
        .CE(res_reg_3070),
        .D(res_fu_212_p2[1]),
        .Q(\^b_Addr_A [1]),
        .R(1'b0));
  FDRE \res_reg_307_reg[2] 
       (.C(ap_clk),
        .CE(res_reg_3070),
        .D(res_fu_212_p2[2]),
        .Q(\^b_Addr_A [2]),
        .R(1'b0));
  FDRE \res_reg_307_reg[3] 
       (.C(ap_clk),
        .CE(res_reg_3070),
        .D(res_fu_212_p2[3]),
        .Q(\^b_Addr_A [3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_reg_307_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\res_reg_307_reg[3]_i_1_n_0 ,\res_reg_307_reg[3]_i_1_n_1 ,\res_reg_307_reg[3]_i_1_n_2 ,\res_reg_307_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({shl_ln_reg_294[3],shl_ln_reg_294[4:3],1'b0}),
        .O(res_fu_212_p2[3:0]),
        .S({\res_reg_307[3]_i_2_n_0 ,\res_reg_307[3]_i_3_n_0 ,\res_reg_307[3]_i_4_n_0 ,x_assign_reg_134_reg[0]}));
  FDRE \res_reg_307_reg[4] 
       (.C(ap_clk),
        .CE(res_reg_3070),
        .D(res_fu_212_p2[4]),
        .Q(\^b_Addr_A [4]),
        .R(1'b0));
  FDRE \res_reg_307_reg[5] 
       (.C(ap_clk),
        .CE(res_reg_3070),
        .D(res_fu_212_p2[5]),
        .Q(\^b_Addr_A [5]),
        .R(1'b0));
  FDRE \res_reg_307_reg[6] 
       (.C(ap_clk),
        .CE(res_reg_3070),
        .D(res_fu_212_p2[6]),
        .Q(\^b_Addr_A [6]),
        .R(1'b0));
  FDRE \res_reg_307_reg[7] 
       (.C(ap_clk),
        .CE(res_reg_3070),
        .D(res_fu_212_p2[7]),
        .Q(\^b_Addr_A [7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_reg_307_reg[7]_i_2 
       (.CI(\res_reg_307_reg[3]_i_1_n_0 ),
        .CO({\NLW_res_reg_307_reg[7]_i_2_CO_UNCONNECTED [3],\res_reg_307_reg[7]_i_2_n_1 ,\res_reg_307_reg[7]_i_2_n_2 ,\res_reg_307_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,shl_ln_reg_294[6],\res_reg_307[7]_i_3_n_0 ,\res_reg_307[7]_i_4_n_0 }),
        .O(res_fu_212_p2[7:4]),
        .S({shl_ln_reg_294[7],\res_reg_307[7]_i_5_n_0 ,\res_reg_307[7]_i_6_n_0 ,\res_reg_307[7]_i_7_n_0 }));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \shl_ln_reg_294[3]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(y_assign_reg_122_reg[1]),
        .I2(y_assign_reg_122_reg[3]),
        .I3(y_assign_reg_122_reg[4]),
        .I4(y_assign_reg_122_reg[2]),
        .I5(y_assign_reg_122_reg[0]),
        .O(x_assign_reg_1340));
  FDRE \shl_ln_reg_294_reg[3] 
       (.C(ap_clk),
        .CE(x_assign_reg_1340),
        .D(y_assign_reg_122_reg[0]),
        .Q(shl_ln_reg_294[3]),
        .R(1'b0));
  FDRE \shl_ln_reg_294_reg[4] 
       (.C(ap_clk),
        .CE(x_assign_reg_1340),
        .D(y_assign_reg_122_reg[1]),
        .Q(shl_ln_reg_294[4]),
        .R(1'b0));
  FDRE \shl_ln_reg_294_reg[5] 
       (.C(ap_clk),
        .CE(x_assign_reg_1340),
        .D(y_assign_reg_122_reg[2]),
        .Q(shl_ln_reg_294[5]),
        .R(1'b0));
  FDRE \shl_ln_reg_294_reg[6] 
       (.C(ap_clk),
        .CE(x_assign_reg_1340),
        .D(y_assign_reg_122_reg[3]),
        .Q(shl_ln_reg_294[6]),
        .R(1'b0));
  FDRE \shl_ln_reg_294_reg[7] 
       (.C(ap_clk),
        .CE(x_assign_reg_1340),
        .D(y_assign_reg_122_reg[4]),
        .Q(shl_ln_reg_294[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \x_assign_reg_134[0]_i_1 
       (.I0(x_assign_reg_134_reg[0]),
        .O(j_fu_285_p2[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \x_assign_reg_134[1]_i_1 
       (.I0(x_assign_reg_134_reg[0]),
        .I1(x_assign_reg_134_reg[1]),
        .O(j_fu_285_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x_assign_reg_134[2]_i_1 
       (.I0(x_assign_reg_134_reg[0]),
        .I1(x_assign_reg_134_reg[1]),
        .I2(x_assign_reg_134_reg[2]),
        .O(j_fu_285_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x_assign_reg_134[3]_i_1 
       (.I0(x_assign_reg_134_reg[1]),
        .I1(x_assign_reg_134_reg[0]),
        .I2(x_assign_reg_134_reg[2]),
        .I3(x_assign_reg_134_reg[3]),
        .O(j_fu_285_p2[3]));
  FDSE \x_assign_reg_134_reg[0] 
       (.C(ap_clk),
        .CE(b_EN_A),
        .D(j_fu_285_p2[0]),
        .Q(x_assign_reg_134_reg[0]),
        .S(x_assign_reg_1340));
  FDRE \x_assign_reg_134_reg[1] 
       (.C(ap_clk),
        .CE(b_EN_A),
        .D(j_fu_285_p2[1]),
        .Q(x_assign_reg_134_reg[1]),
        .R(x_assign_reg_1340));
  FDRE \x_assign_reg_134_reg[2] 
       (.C(ap_clk),
        .CE(b_EN_A),
        .D(j_fu_285_p2[2]),
        .Q(x_assign_reg_134_reg[2]),
        .R(x_assign_reg_1340));
  FDRE \x_assign_reg_134_reg[3] 
       (.C(ap_clk),
        .CE(b_EN_A),
        .D(j_fu_285_p2[3]),
        .Q(x_assign_reg_134_reg[3]),
        .R(x_assign_reg_1340));
  LUT1 #(
    .INIT(2'h1)) 
    \y_assign_reg_122[0]_i_1 
       (.I0(y_assign_reg_122_reg[0]),
        .O(i_fu_217_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y_assign_reg_122[1]_i_1 
       (.I0(y_assign_reg_122_reg[0]),
        .I1(y_assign_reg_122_reg[1]),
        .O(i_fu_217_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \y_assign_reg_122[2]_i_1 
       (.I0(y_assign_reg_122_reg[0]),
        .I1(y_assign_reg_122_reg[1]),
        .I2(y_assign_reg_122_reg[2]),
        .O(i_fu_217_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \y_assign_reg_122[3]_i_1 
       (.I0(y_assign_reg_122_reg[1]),
        .I1(y_assign_reg_122_reg[0]),
        .I2(y_assign_reg_122_reg[2]),
        .I3(y_assign_reg_122_reg[3]),
        .O(i_fu_217_p2[3]));
  LUT3 #(
    .INIT(8'h08)) 
    \y_assign_reg_122[4]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_NS_fsm1),
        .O(y_assign_reg_122));
  LUT5 #(
    .INIT(32'h00080000)) 
    \y_assign_reg_122[4]_i_2 
       (.I0(x_assign_reg_134_reg[3]),
        .I1(x_assign_reg_134_reg[0]),
        .I2(x_assign_reg_134_reg[2]),
        .I3(x_assign_reg_134_reg[1]),
        .I4(ap_CS_fsm_state3),
        .O(ap_NS_fsm1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \y_assign_reg_122[4]_i_3 
       (.I0(y_assign_reg_122_reg[2]),
        .I1(y_assign_reg_122_reg[0]),
        .I2(y_assign_reg_122_reg[1]),
        .I3(y_assign_reg_122_reg[3]),
        .I4(y_assign_reg_122_reg[4]),
        .O(i_fu_217_p2[4]));
  FDSE \y_assign_reg_122_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_fu_217_p2[0]),
        .Q(y_assign_reg_122_reg[0]),
        .S(y_assign_reg_122));
  FDRE \y_assign_reg_122_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_fu_217_p2[1]),
        .Q(y_assign_reg_122_reg[1]),
        .R(y_assign_reg_122));
  FDRE \y_assign_reg_122_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_fu_217_p2[2]),
        .Q(y_assign_reg_122_reg[2]),
        .R(y_assign_reg_122));
  FDRE \y_assign_reg_122_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_fu_217_p2[3]),
        .Q(y_assign_reg_122_reg[3]),
        .R(y_assign_reg_122));
  FDRE \y_assign_reg_122_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_fu_217_p2[4]),
        .Q(y_assign_reg_122_reg[4]),
        .R(y_assign_reg_122));
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
