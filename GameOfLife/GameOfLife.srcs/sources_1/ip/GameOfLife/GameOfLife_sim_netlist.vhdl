-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sat Jul 11 13:58:48 2020
-- Host        : xilinx-vivado running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ubuntu/XilinxProjects/GameOfLife/GameOfLife.srcs/sources_1/ip/GameOfLife/GameOfLife_sim_netlist.vhdl
-- Design      : GameOfLife
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GameOfLife_fun is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a_EN_A : out STD_LOGIC;
    a_WEN_A : out STD_LOGIC_VECTOR ( 0 to 0 );
    a_Din_A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a_Dout_A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a_Clk_A : out STD_LOGIC;
    a_Rst_A : out STD_LOGIC;
    b_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    b_EN_A : out STD_LOGIC;
    b_WEN_A : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_Din_A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b_Dout_A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_Clk_A : out STD_LOGIC;
    b_Rst_A : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GameOfLife_fun : entity is "fun";
end GameOfLife_fun;

architecture STRUCTURE of GameOfLife_fun is
  signal \<const0>\ : STD_LOGIC;
  signal \^a_addr_a\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \a_Addr_A[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \a_Addr_A[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \a_Addr_A[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \a_Addr_A[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \a_Addr_A[0]_INST_0_n_0\ : STD_LOGIC;
  signal \a_Addr_A[0]_INST_0_n_1\ : STD_LOGIC;
  signal \a_Addr_A[0]_INST_0_n_2\ : STD_LOGIC;
  signal \a_Addr_A[0]_INST_0_n_3\ : STD_LOGIC;
  signal \a_Addr_A[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \a_Addr_A[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \a_Addr_A[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \a_Addr_A[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \a_Addr_A[4]_INST_0_n_1\ : STD_LOGIC;
  signal \a_Addr_A[4]_INST_0_n_2\ : STD_LOGIC;
  signal \a_Addr_A[4]_INST_0_n_3\ : STD_LOGIC;
  signal a_load_1_reg_347 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal a_load_reg_337 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal add_ln23_2_fu_263_p2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal add_ln23_2_reg_357 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \add_ln23_2_reg_357[3]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln23_2_reg_357[3]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln23_2_reg_357[3]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln23_2_reg_357[3]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln23_2_reg_357[7]_i_2_n_0\ : STD_LOGIC;
  signal \add_ln23_2_reg_357[7]_i_3_n_0\ : STD_LOGIC;
  signal \add_ln23_2_reg_357[7]_i_4_n_0\ : STD_LOGIC;
  signal \add_ln23_2_reg_357[7]_i_5_n_0\ : STD_LOGIC;
  signal \add_ln23_2_reg_357_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \add_ln23_2_reg_357_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln23_2_reg_357_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln23_2_reg_357_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \add_ln23_2_reg_357_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \add_ln23_2_reg_357_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \add_ln23_2_reg_357_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_3_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal \^ap_clk\ : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal \^ap_rst\ : STD_LOGIC;
  signal \^b_addr_a\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \b_Din_A[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^b_en_a\ : STD_LOGIC;
  signal cont_0_reg_146 : STD_LOGIC;
  signal cont_0_reg_14615_out : STD_LOGIC;
  signal cont_0_reg_14618_out : STD_LOGIC;
  signal \cont_0_reg_146[7]_i_2_n_0\ : STD_LOGIC;
  signal \cont_0_reg_146[7]_i_4_n_0\ : STD_LOGIC;
  signal \cont_0_reg_146_reg_n_0_[0]\ : STD_LOGIC;
  signal \cont_0_reg_146_reg_n_0_[1]\ : STD_LOGIC;
  signal \cont_0_reg_146_reg_n_0_[2]\ : STD_LOGIC;
  signal \cont_0_reg_146_reg_n_0_[3]\ : STD_LOGIC;
  signal \cont_0_reg_146_reg_n_0_[4]\ : STD_LOGIC;
  signal \cont_0_reg_146_reg_n_0_[5]\ : STD_LOGIC;
  signal \cont_0_reg_146_reg_n_0_[6]\ : STD_LOGIC;
  signal \cont_0_reg_146_reg_n_0_[7]\ : STD_LOGIC;
  signal cont_1_fu_272_p2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cont_1_reg_362 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cont_1_reg_362[3]_i_2_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[3]_i_3_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[3]_i_4_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[3]_i_5_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[3]_i_6_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[3]_i_7_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[3]_i_8_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[7]_i_2_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[7]_i_3_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[7]_i_4_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[7]_i_5_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[7]_i_6_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[7]_i_7_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362[7]_i_8_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \cont_1_reg_362_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \cont_1_reg_362_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \cont_1_reg_362_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \cont_1_reg_362_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \cont_1_reg_362_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \cont_1_reg_362_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal cont_reg_327 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_fu_217_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal j_fu_285_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal res_fu_212_p2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal res_reg_3070 : STD_LOGIC;
  signal \res_reg_307[3]_i_2_n_0\ : STD_LOGIC;
  signal \res_reg_307[3]_i_3_n_0\ : STD_LOGIC;
  signal \res_reg_307[3]_i_4_n_0\ : STD_LOGIC;
  signal \res_reg_307[7]_i_3_n_0\ : STD_LOGIC;
  signal \res_reg_307[7]_i_4_n_0\ : STD_LOGIC;
  signal \res_reg_307[7]_i_5_n_0\ : STD_LOGIC;
  signal \res_reg_307[7]_i_6_n_0\ : STD_LOGIC;
  signal \res_reg_307[7]_i_7_n_0\ : STD_LOGIC;
  signal \res_reg_307_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \res_reg_307_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \res_reg_307_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \res_reg_307_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \res_reg_307_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \res_reg_307_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \res_reg_307_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal shl_ln_reg_294 : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal x_assign_reg_1340 : STD_LOGIC;
  signal x_assign_reg_134_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal y_assign_reg_122 : STD_LOGIC;
  signal y_assign_reg_122_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_a_Addr_A[4]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_add_ln23_2_reg_357_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cont_1_reg_362_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_res_reg_307_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \a_Addr_A[0]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \a_Addr_A[4]_INST_0\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of a_EN_A_INST_0 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of \add_ln23_2_reg_357_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \add_ln23_2_reg_357_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \b_Din_A[0]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \b_Din_A[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \b_Din_A[2]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \b_Din_A[3]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \b_Din_A[4]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \b_Din_A[5]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \b_Din_A[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \b_Din_A[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cont_0_reg_146[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cont_0_reg_146[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cont_0_reg_146[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cont_0_reg_146[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cont_0_reg_146[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cont_0_reg_146[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cont_0_reg_146[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cont_0_reg_146[7]_i_3\ : label is "soft_lutpair3";
  attribute HLUTNM : string;
  attribute HLUTNM of \cont_1_reg_362[3]_i_2\ : label is "lutpair2";
  attribute HLUTNM of \cont_1_reg_362[3]_i_3\ : label is "lutpair1";
  attribute HLUTNM of \cont_1_reg_362[3]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \cont_1_reg_362[3]_i_5\ : label is "lutpair3";
  attribute HLUTNM of \cont_1_reg_362[3]_i_6\ : label is "lutpair2";
  attribute HLUTNM of \cont_1_reg_362[3]_i_7\ : label is "lutpair1";
  attribute HLUTNM of \cont_1_reg_362[3]_i_8\ : label is "lutpair0";
  attribute HLUTNM of \cont_1_reg_362[7]_i_2\ : label is "lutpair5";
  attribute HLUTNM of \cont_1_reg_362[7]_i_3\ : label is "lutpair4";
  attribute HLUTNM of \cont_1_reg_362[7]_i_4\ : label is "lutpair3";
  attribute HLUTNM of \cont_1_reg_362[7]_i_7\ : label is "lutpair5";
  attribute HLUTNM of \cont_1_reg_362[7]_i_8\ : label is "lutpair4";
  attribute ADDER_THRESHOLD of \cont_1_reg_362_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \cont_1_reg_362_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \res_reg_307_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \res_reg_307_reg[7]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \x_assign_reg_134[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \x_assign_reg_134[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \y_assign_reg_122[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \y_assign_reg_122[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \y_assign_reg_122[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \y_assign_reg_122[4]_i_3\ : label is "soft_lutpair1";
begin
  \^ap_clk\ <= ap_clk;
  \^ap_rst\ <= ap_rst;
  a_Addr_A(31) <= \<const0>\;
  a_Addr_A(30) <= \<const0>\;
  a_Addr_A(29) <= \<const0>\;
  a_Addr_A(28) <= \<const0>\;
  a_Addr_A(27) <= \<const0>\;
  a_Addr_A(26) <= \<const0>\;
  a_Addr_A(25) <= \<const0>\;
  a_Addr_A(24) <= \<const0>\;
  a_Addr_A(23) <= \<const0>\;
  a_Addr_A(22) <= \<const0>\;
  a_Addr_A(21) <= \<const0>\;
  a_Addr_A(20) <= \<const0>\;
  a_Addr_A(19) <= \<const0>\;
  a_Addr_A(18) <= \<const0>\;
  a_Addr_A(17) <= \<const0>\;
  a_Addr_A(16) <= \<const0>\;
  a_Addr_A(15) <= \<const0>\;
  a_Addr_A(14) <= \<const0>\;
  a_Addr_A(13) <= \<const0>\;
  a_Addr_A(12) <= \<const0>\;
  a_Addr_A(11) <= \<const0>\;
  a_Addr_A(10) <= \<const0>\;
  a_Addr_A(9) <= \<const0>\;
  a_Addr_A(8) <= \<const0>\;
  a_Addr_A(7 downto 0) <= \^a_addr_a\(7 downto 0);
  a_Clk_A <= \^ap_clk\;
  a_Din_A(7) <= \<const0>\;
  a_Din_A(6) <= \<const0>\;
  a_Din_A(5) <= \<const0>\;
  a_Din_A(4) <= \<const0>\;
  a_Din_A(3) <= \<const0>\;
  a_Din_A(2) <= \<const0>\;
  a_Din_A(1) <= \<const0>\;
  a_Din_A(0) <= \<const0>\;
  a_Rst_A <= \^ap_rst\;
  a_WEN_A(0) <= \<const0>\;
  ap_done <= \^ap_ready\;
  ap_ready <= \^ap_ready\;
  b_Addr_A(31) <= \<const0>\;
  b_Addr_A(30) <= \<const0>\;
  b_Addr_A(29) <= \<const0>\;
  b_Addr_A(28) <= \<const0>\;
  b_Addr_A(27) <= \<const0>\;
  b_Addr_A(26) <= \<const0>\;
  b_Addr_A(25) <= \<const0>\;
  b_Addr_A(24) <= \<const0>\;
  b_Addr_A(23) <= \<const0>\;
  b_Addr_A(22) <= \<const0>\;
  b_Addr_A(21) <= \<const0>\;
  b_Addr_A(20) <= \<const0>\;
  b_Addr_A(19) <= \<const0>\;
  b_Addr_A(18) <= \<const0>\;
  b_Addr_A(17) <= \<const0>\;
  b_Addr_A(16) <= \<const0>\;
  b_Addr_A(15) <= \<const0>\;
  b_Addr_A(14) <= \<const0>\;
  b_Addr_A(13) <= \<const0>\;
  b_Addr_A(12) <= \<const0>\;
  b_Addr_A(11) <= \<const0>\;
  b_Addr_A(10) <= \<const0>\;
  b_Addr_A(9) <= \<const0>\;
  b_Addr_A(8) <= \<const0>\;
  b_Addr_A(7 downto 0) <= \^b_addr_a\(7 downto 0);
  b_Clk_A <= \^ap_clk\;
  b_EN_A <= \^b_en_a\;
  b_Rst_A <= \^ap_rst\;
  b_WEN_A(0) <= \^b_en_a\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\a_Addr_A[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \a_Addr_A[0]_INST_0_n_0\,
      CO(2) => \a_Addr_A[0]_INST_0_n_1\,
      CO(1) => \a_Addr_A[0]_INST_0_n_2\,
      CO(0) => \a_Addr_A[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^b_addr_a\(3 downto 0),
      O(3 downto 0) => \^a_addr_a\(3 downto 0),
      S(3) => \a_Addr_A[0]_INST_0_i_1_n_0\,
      S(2) => \a_Addr_A[0]_INST_0_i_2_n_0\,
      S(1) => \a_Addr_A[0]_INST_0_i_3_n_0\,
      S(0) => \a_Addr_A[0]_INST_0_i_4_n_0\
    );
\a_Addr_A[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6566"
    )
        port map (
      I0 => \^b_addr_a\(3),
      I1 => ap_CS_fsm_state7,
      I2 => ap_CS_fsm_state6,
      I3 => ap_CS_fsm_state5,
      I4 => ap_CS_fsm_state9,
      O => \a_Addr_A[0]_INST_0_i_1_n_0\
    );
\a_Addr_A[0]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \^b_addr_a\(2),
      I1 => ap_CS_fsm_state9,
      I2 => ap_CS_fsm_state6,
      I3 => ap_CS_fsm_state7,
      O => \a_Addr_A[0]_INST_0_i_2_n_0\
    );
\a_Addr_A[0]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA59"
    )
        port map (
      I0 => \^b_addr_a\(1),
      I1 => ap_CS_fsm_state6,
      I2 => ap_CS_fsm_state7,
      I3 => ap_CS_fsm_state9,
      O => \a_Addr_A[0]_INST_0_i_3_n_0\
    );
\a_Addr_A[0]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9A9A9AA"
    )
        port map (
      I0 => \^b_addr_a\(0),
      I1 => ap_CS_fsm_state7,
      I2 => ap_CS_fsm_state9,
      I3 => ap_CS_fsm_state5,
      I4 => ap_CS_fsm_state6,
      O => \a_Addr_A[0]_INST_0_i_4_n_0\
    );
\a_Addr_A[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \a_Addr_A[0]_INST_0_n_0\,
      CO(3) => \NLW_a_Addr_A[4]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \a_Addr_A[4]_INST_0_n_1\,
      CO(1) => \a_Addr_A[4]_INST_0_n_2\,
      CO(0) => \a_Addr_A[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^b_addr_a\(6 downto 4),
      O(3 downto 0) => \^a_addr_a\(7 downto 4),
      S(3) => \a_Addr_A[4]_INST_0_i_1_n_0\,
      S(2) => \a_Addr_A[4]_INST_0_i_2_n_0\,
      S(1) => \a_Addr_A[4]_INST_0_i_3_n_0\,
      S(0) => \a_Addr_A[4]_INST_0_i_4_n_0\
    );
\a_Addr_A[4]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \^b_addr_a\(7),
      I1 => ap_CS_fsm_state9,
      I2 => ap_CS_fsm_state6,
      I3 => ap_CS_fsm_state7,
      O => \a_Addr_A[4]_INST_0_i_1_n_0\
    );
\a_Addr_A[4]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \^b_addr_a\(6),
      I1 => ap_CS_fsm_state9,
      I2 => ap_CS_fsm_state6,
      I3 => ap_CS_fsm_state7,
      O => \a_Addr_A[4]_INST_0_i_2_n_0\
    );
\a_Addr_A[4]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \^b_addr_a\(5),
      I1 => ap_CS_fsm_state9,
      I2 => ap_CS_fsm_state6,
      I3 => ap_CS_fsm_state7,
      O => \a_Addr_A[4]_INST_0_i_3_n_0\
    );
\a_Addr_A[4]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \^b_addr_a\(4),
      I1 => ap_CS_fsm_state9,
      I2 => ap_CS_fsm_state6,
      I3 => ap_CS_fsm_state7,
      O => \a_Addr_A[4]_INST_0_i_4_n_0\
    );
a_EN_A_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => ap_CS_fsm_state7,
      I2 => ap_CS_fsm_state9,
      I3 => ap_CS_fsm_state4,
      I4 => ap_CS_fsm_state5,
      O => a_EN_A
    );
\a_load_1_reg_347_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state7,
      D => a_Dout_A(0),
      Q => a_load_1_reg_347(0),
      R => '0'
    );
\a_load_1_reg_347_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state7,
      D => a_Dout_A(1),
      Q => a_load_1_reg_347(1),
      R => '0'
    );
\a_load_1_reg_347_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state7,
      D => a_Dout_A(2),
      Q => a_load_1_reg_347(2),
      R => '0'
    );
\a_load_1_reg_347_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state7,
      D => a_Dout_A(3),
      Q => a_load_1_reg_347(3),
      R => '0'
    );
\a_load_1_reg_347_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state7,
      D => a_Dout_A(4),
      Q => a_load_1_reg_347(4),
      R => '0'
    );
\a_load_1_reg_347_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state7,
      D => a_Dout_A(5),
      Q => a_load_1_reg_347(5),
      R => '0'
    );
\a_load_1_reg_347_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state7,
      D => a_Dout_A(6),
      Q => a_load_1_reg_347(6),
      R => '0'
    );
\a_load_1_reg_347_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state7,
      D => a_Dout_A(7),
      Q => a_load_1_reg_347(7),
      R => '0'
    );
\a_load_reg_337_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => a_Dout_A(0),
      Q => a_load_reg_337(0),
      R => '0'
    );
\a_load_reg_337_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => a_Dout_A(1),
      Q => a_load_reg_337(1),
      R => '0'
    );
\a_load_reg_337_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => a_Dout_A(2),
      Q => a_load_reg_337(2),
      R => '0'
    );
\a_load_reg_337_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => a_Dout_A(3),
      Q => a_load_reg_337(3),
      R => '0'
    );
\a_load_reg_337_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => a_Dout_A(4),
      Q => a_load_reg_337(4),
      R => '0'
    );
\a_load_reg_337_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => a_Dout_A(5),
      Q => a_load_reg_337(5),
      R => '0'
    );
\a_load_reg_337_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => a_Dout_A(6),
      Q => a_load_reg_337(6),
      R => '0'
    );
\a_load_reg_337_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state6,
      D => a_Dout_A(7),
      Q => a_load_reg_337(7),
      R => '0'
    );
\add_ln23_2_reg_357[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a_load_reg_337(3),
      I1 => a_Dout_A(3),
      O => \add_ln23_2_reg_357[3]_i_2_n_0\
    );
\add_ln23_2_reg_357[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a_load_reg_337(2),
      I1 => a_Dout_A(2),
      O => \add_ln23_2_reg_357[3]_i_3_n_0\
    );
\add_ln23_2_reg_357[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a_load_reg_337(1),
      I1 => a_Dout_A(1),
      O => \add_ln23_2_reg_357[3]_i_4_n_0\
    );
\add_ln23_2_reg_357[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a_load_reg_337(0),
      I1 => a_Dout_A(0),
      O => \add_ln23_2_reg_357[3]_i_5_n_0\
    );
\add_ln23_2_reg_357[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a_load_reg_337(7),
      I1 => a_Dout_A(7),
      O => \add_ln23_2_reg_357[7]_i_2_n_0\
    );
\add_ln23_2_reg_357[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a_load_reg_337(6),
      I1 => a_Dout_A(6),
      O => \add_ln23_2_reg_357[7]_i_3_n_0\
    );
\add_ln23_2_reg_357[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a_load_reg_337(5),
      I1 => a_Dout_A(5),
      O => \add_ln23_2_reg_357[7]_i_4_n_0\
    );
\add_ln23_2_reg_357[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a_load_reg_337(4),
      I1 => a_Dout_A(4),
      O => \add_ln23_2_reg_357[7]_i_5_n_0\
    );
\add_ln23_2_reg_357_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state8,
      D => add_ln23_2_fu_263_p2(0),
      Q => add_ln23_2_reg_357(0),
      R => '0'
    );
\add_ln23_2_reg_357_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state8,
      D => add_ln23_2_fu_263_p2(1),
      Q => add_ln23_2_reg_357(1),
      R => '0'
    );
\add_ln23_2_reg_357_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state8,
      D => add_ln23_2_fu_263_p2(2),
      Q => add_ln23_2_reg_357(2),
      R => '0'
    );
\add_ln23_2_reg_357_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state8,
      D => add_ln23_2_fu_263_p2(3),
      Q => add_ln23_2_reg_357(3),
      R => '0'
    );
\add_ln23_2_reg_357_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \add_ln23_2_reg_357_reg[3]_i_1_n_0\,
      CO(2) => \add_ln23_2_reg_357_reg[3]_i_1_n_1\,
      CO(1) => \add_ln23_2_reg_357_reg[3]_i_1_n_2\,
      CO(0) => \add_ln23_2_reg_357_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a_load_reg_337(3 downto 0),
      O(3 downto 0) => add_ln23_2_fu_263_p2(3 downto 0),
      S(3) => \add_ln23_2_reg_357[3]_i_2_n_0\,
      S(2) => \add_ln23_2_reg_357[3]_i_3_n_0\,
      S(1) => \add_ln23_2_reg_357[3]_i_4_n_0\,
      S(0) => \add_ln23_2_reg_357[3]_i_5_n_0\
    );
\add_ln23_2_reg_357_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state8,
      D => add_ln23_2_fu_263_p2(4),
      Q => add_ln23_2_reg_357(4),
      R => '0'
    );
\add_ln23_2_reg_357_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state8,
      D => add_ln23_2_fu_263_p2(5),
      Q => add_ln23_2_reg_357(5),
      R => '0'
    );
\add_ln23_2_reg_357_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state8,
      D => add_ln23_2_fu_263_p2(6),
      Q => add_ln23_2_reg_357(6),
      R => '0'
    );
\add_ln23_2_reg_357_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state8,
      D => add_ln23_2_fu_263_p2(7),
      Q => add_ln23_2_reg_357(7),
      R => '0'
    );
\add_ln23_2_reg_357_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln23_2_reg_357_reg[3]_i_1_n_0\,
      CO(3) => \NLW_add_ln23_2_reg_357_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \add_ln23_2_reg_357_reg[7]_i_1_n_1\,
      CO(1) => \add_ln23_2_reg_357_reg[7]_i_1_n_2\,
      CO(0) => \add_ln23_2_reg_357_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => a_load_reg_337(6 downto 4),
      O(3 downto 0) => add_ln23_2_fu_263_p2(7 downto 4),
      S(3) => \add_ln23_2_reg_357[7]_i_2_n_0\,
      S(2) => \add_ln23_2_reg_357[7]_i_3_n_0\,
      S(1) => \add_ln23_2_reg_357[7]_i_4_n_0\,
      S(0) => \add_ln23_2_reg_357[7]_i_5_n_0\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444474"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => \^ap_ready\,
      I3 => \ap_CS_fsm[0]_i_2_n_0\,
      I4 => \ap_CS_fsm[0]_i_3_n_0\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => ap_CS_fsm_state7,
      I2 => ap_CS_fsm_state4,
      I3 => ap_CS_fsm_state5,
      O => \ap_CS_fsm[0]_i_2_n_0\
    );
\ap_CS_fsm[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \^b_en_a\,
      I2 => ap_CS_fsm_state8,
      I3 => ap_CS_fsm_state9,
      O => \ap_CS_fsm[0]_i_3_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state3,
      I3 => ap_NS_fsm1,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^b_en_a\,
      I1 => \^ap_ready\,
      I2 => ap_CS_fsm_state2,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => x_assign_reg_134_reg(1),
      I2 => x_assign_reg_134_reg(2),
      I3 => x_assign_reg_134_reg(0),
      I4 => x_assign_reg_134_reg(3),
      O => \ap_CS_fsm[3]_i_1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => \^ap_rst\
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => \^ap_rst\
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => \^ap_rst\
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => \ap_CS_fsm[3]_i_1_n_0\,
      Q => ap_CS_fsm_state4,
      R => \^ap_rst\
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_CS_fsm_state4,
      Q => ap_CS_fsm_state5,
      R => \^ap_rst\
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_CS_fsm_state5,
      Q => ap_CS_fsm_state6,
      R => \^ap_rst\
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_CS_fsm_state6,
      Q => ap_CS_fsm_state7,
      R => \^ap_rst\
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_CS_fsm_state7,
      Q => ap_CS_fsm_state8,
      R => \^ap_rst\
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_CS_fsm_state8,
      Q => ap_CS_fsm_state9,
      R => \^ap_rst\
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^ap_clk\,
      CE => '1',
      D => ap_CS_fsm_state9,
      Q => \^b_en_a\,
      R => \^ap_rst\
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => y_assign_reg_122_reg(1),
      I1 => y_assign_reg_122_reg(3),
      I2 => y_assign_reg_122_reg(4),
      I3 => y_assign_reg_122_reg(2),
      I4 => y_assign_reg_122_reg(0),
      I5 => ap_CS_fsm_state2,
      O => \^ap_ready\
    );
\b_Din_A[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_Dout_A(0),
      I1 => \cont_0_reg_146_reg_n_0_[0]\,
      I2 => cont_0_reg_14618_out,
      O => b_Din_A(0)
    );
\b_Din_A[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_Dout_A(1),
      I1 => \cont_0_reg_146_reg_n_0_[1]\,
      I2 => cont_0_reg_14618_out,
      O => b_Din_A(1)
    );
\b_Din_A[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_Dout_A(2),
      I1 => \cont_0_reg_146_reg_n_0_[2]\,
      I2 => cont_0_reg_14618_out,
      O => b_Din_A(2)
    );
\b_Din_A[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_Dout_A(3),
      I1 => \cont_0_reg_146_reg_n_0_[3]\,
      I2 => cont_0_reg_14618_out,
      O => b_Din_A(3)
    );
\b_Din_A[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_Dout_A(4),
      I1 => \cont_0_reg_146_reg_n_0_[4]\,
      I2 => cont_0_reg_14618_out,
      O => b_Din_A(4)
    );
\b_Din_A[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_Dout_A(5),
      I1 => \cont_0_reg_146_reg_n_0_[5]\,
      I2 => cont_0_reg_14618_out,
      O => b_Din_A(5)
    );
\b_Din_A[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_Dout_A(6),
      I1 => \cont_0_reg_146_reg_n_0_[6]\,
      I2 => cont_0_reg_14618_out,
      O => b_Din_A(6)
    );
\b_Din_A[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a_Dout_A(7),
      I1 => \cont_0_reg_146_reg_n_0_[7]\,
      I2 => cont_0_reg_14618_out,
      O => b_Din_A(7)
    );
\b_Din_A[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \^b_en_a\,
      I1 => \b_Din_A[7]_INST_0_i_2_n_0\,
      I2 => cont_1_reg_362(7),
      I3 => cont_1_reg_362(6),
      I4 => cont_1_reg_362(4),
      I5 => cont_1_reg_362(5),
      O => cont_0_reg_14618_out
    );
\b_Din_A[7]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => cont_1_reg_362(2),
      I1 => cont_1_reg_362(3),
      I2 => cont_1_reg_362(1),
      I3 => cont_1_reg_362(0),
      O => \b_Din_A[7]_INST_0_i_2_n_0\
    );
\cont_0_reg_146[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => cont_1_fu_272_p2(0),
      I1 => cont_0_reg_14615_out,
      I2 => cont_0_reg_14618_out,
      I3 => a_Dout_A(0),
      O => \p_1_in__0\(0)
    );
\cont_0_reg_146[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => cont_1_fu_272_p2(1),
      I1 => cont_0_reg_14615_out,
      I2 => cont_0_reg_14618_out,
      I3 => a_Dout_A(1),
      O => \p_1_in__0\(1)
    );
\cont_0_reg_146[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => cont_1_fu_272_p2(2),
      I1 => cont_0_reg_14615_out,
      I2 => cont_0_reg_14618_out,
      I3 => a_Dout_A(2),
      O => \p_1_in__0\(2)
    );
\cont_0_reg_146[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => cont_1_fu_272_p2(3),
      I1 => cont_0_reg_14615_out,
      I2 => cont_0_reg_14618_out,
      I3 => a_Dout_A(3),
      O => \p_1_in__0\(3)
    );
\cont_0_reg_146[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => cont_1_fu_272_p2(4),
      I1 => cont_0_reg_14615_out,
      I2 => cont_0_reg_14618_out,
      I3 => a_Dout_A(4),
      O => \p_1_in__0\(4)
    );
\cont_0_reg_146[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => cont_1_fu_272_p2(5),
      I1 => cont_0_reg_14615_out,
      I2 => cont_0_reg_14618_out,
      I3 => a_Dout_A(5),
      O => \p_1_in__0\(5)
    );
\cont_0_reg_146[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => cont_1_fu_272_p2(6),
      I1 => cont_0_reg_14615_out,
      I2 => cont_0_reg_14618_out,
      I3 => a_Dout_A(6),
      O => \p_1_in__0\(6)
    );
\cont_0_reg_146[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => cont_1_fu_272_p2(0),
      I1 => \cont_0_reg_146[7]_i_4_n_0\,
      I2 => cont_1_fu_272_p2(2),
      I3 => cont_1_fu_272_p2(1),
      I4 => ap_CS_fsm_state9,
      O => cont_0_reg_146
    );
\cont_0_reg_146[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
        port map (
      I0 => ap_CS_fsm_state9,
      I1 => cont_1_fu_272_p2(2),
      I2 => \cont_0_reg_146[7]_i_4_n_0\,
      I3 => cont_1_fu_272_p2(1),
      I4 => cont_0_reg_14618_out,
      O => \cont_0_reg_146[7]_i_2_n_0\
    );
\cont_0_reg_146[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => cont_1_fu_272_p2(7),
      I1 => cont_0_reg_14615_out,
      I2 => cont_0_reg_14618_out,
      I3 => a_Dout_A(7),
      O => \p_1_in__0\(7)
    );
\cont_0_reg_146[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cont_1_fu_272_p2(6),
      I1 => cont_1_fu_272_p2(4),
      I2 => cont_1_fu_272_p2(3),
      I3 => cont_1_fu_272_p2(7),
      I4 => cont_1_fu_272_p2(5),
      O => \cont_0_reg_146[7]_i_4_n_0\
    );
\cont_0_reg_146[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0AA80AA"
    )
        port map (
      I0 => ap_CS_fsm_state9,
      I1 => cont_1_fu_272_p2(1),
      I2 => cont_1_fu_272_p2(2),
      I3 => \cont_0_reg_146[7]_i_4_n_0\,
      I4 => cont_1_fu_272_p2(0),
      O => cont_0_reg_14615_out
    );
\cont_0_reg_146_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => \^ap_clk\,
      CE => \cont_0_reg_146[7]_i_2_n_0\,
      D => \p_1_in__0\(0),
      Q => \cont_0_reg_146_reg_n_0_[0]\,
      S => cont_0_reg_146
    );
\cont_0_reg_146_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => \cont_0_reg_146[7]_i_2_n_0\,
      D => \p_1_in__0\(1),
      Q => \cont_0_reg_146_reg_n_0_[1]\,
      R => cont_0_reg_146
    );
\cont_0_reg_146_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => \cont_0_reg_146[7]_i_2_n_0\,
      D => \p_1_in__0\(2),
      Q => \cont_0_reg_146_reg_n_0_[2]\,
      R => cont_0_reg_146
    );
\cont_0_reg_146_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => \cont_0_reg_146[7]_i_2_n_0\,
      D => \p_1_in__0\(3),
      Q => \cont_0_reg_146_reg_n_0_[3]\,
      R => cont_0_reg_146
    );
\cont_0_reg_146_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => \cont_0_reg_146[7]_i_2_n_0\,
      D => \p_1_in__0\(4),
      Q => \cont_0_reg_146_reg_n_0_[4]\,
      R => cont_0_reg_146
    );
\cont_0_reg_146_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => \cont_0_reg_146[7]_i_2_n_0\,
      D => \p_1_in__0\(5),
      Q => \cont_0_reg_146_reg_n_0_[5]\,
      R => cont_0_reg_146
    );
\cont_0_reg_146_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => \cont_0_reg_146[7]_i_2_n_0\,
      D => \p_1_in__0\(6),
      Q => \cont_0_reg_146_reg_n_0_[6]\,
      R => cont_0_reg_146
    );
\cont_0_reg_146_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => \cont_0_reg_146[7]_i_2_n_0\,
      D => \p_1_in__0\(7),
      Q => \cont_0_reg_146_reg_n_0_[7]\,
      R => cont_0_reg_146
    );
\cont_1_reg_362[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a_load_1_reg_347(2),
      I1 => cont_reg_327(2),
      I2 => add_ln23_2_reg_357(2),
      O => \cont_1_reg_362[3]_i_2_n_0\
    );
\cont_1_reg_362[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a_load_1_reg_347(1),
      I1 => cont_reg_327(1),
      I2 => add_ln23_2_reg_357(1),
      O => \cont_1_reg_362[3]_i_3_n_0\
    );
\cont_1_reg_362[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a_load_1_reg_347(0),
      I1 => cont_reg_327(0),
      I2 => add_ln23_2_reg_357(0),
      O => \cont_1_reg_362[3]_i_4_n_0\
    );
\cont_1_reg_362[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => a_load_1_reg_347(3),
      I1 => cont_reg_327(3),
      I2 => add_ln23_2_reg_357(3),
      I3 => \cont_1_reg_362[3]_i_2_n_0\,
      O => \cont_1_reg_362[3]_i_5_n_0\
    );
\cont_1_reg_362[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => a_load_1_reg_347(2),
      I1 => cont_reg_327(2),
      I2 => add_ln23_2_reg_357(2),
      I3 => \cont_1_reg_362[3]_i_3_n_0\,
      O => \cont_1_reg_362[3]_i_6_n_0\
    );
\cont_1_reg_362[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => a_load_1_reg_347(1),
      I1 => cont_reg_327(1),
      I2 => add_ln23_2_reg_357(1),
      I3 => \cont_1_reg_362[3]_i_4_n_0\,
      O => \cont_1_reg_362[3]_i_7_n_0\
    );
\cont_1_reg_362[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a_load_1_reg_347(0),
      I1 => cont_reg_327(0),
      I2 => add_ln23_2_reg_357(0),
      O => \cont_1_reg_362[3]_i_8_n_0\
    );
\cont_1_reg_362[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a_load_1_reg_347(5),
      I1 => cont_reg_327(5),
      I2 => add_ln23_2_reg_357(5),
      O => \cont_1_reg_362[7]_i_2_n_0\
    );
\cont_1_reg_362[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a_load_1_reg_347(4),
      I1 => cont_reg_327(4),
      I2 => add_ln23_2_reg_357(4),
      O => \cont_1_reg_362[7]_i_3_n_0\
    );
\cont_1_reg_362[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => a_load_1_reg_347(3),
      I1 => cont_reg_327(3),
      I2 => add_ln23_2_reg_357(3),
      O => \cont_1_reg_362[7]_i_4_n_0\
    );
\cont_1_reg_362[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => add_ln23_2_reg_357(6),
      I1 => cont_reg_327(6),
      I2 => a_load_1_reg_347(6),
      I3 => cont_reg_327(7),
      I4 => a_load_1_reg_347(7),
      I5 => add_ln23_2_reg_357(7),
      O => \cont_1_reg_362[7]_i_5_n_0\
    );
\cont_1_reg_362[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \cont_1_reg_362[7]_i_2_n_0\,
      I1 => cont_reg_327(6),
      I2 => a_load_1_reg_347(6),
      I3 => add_ln23_2_reg_357(6),
      O => \cont_1_reg_362[7]_i_6_n_0\
    );
\cont_1_reg_362[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => a_load_1_reg_347(5),
      I1 => cont_reg_327(5),
      I2 => add_ln23_2_reg_357(5),
      I3 => \cont_1_reg_362[7]_i_3_n_0\,
      O => \cont_1_reg_362[7]_i_7_n_0\
    );
\cont_1_reg_362[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => a_load_1_reg_347(4),
      I1 => cont_reg_327(4),
      I2 => add_ln23_2_reg_357(4),
      I3 => \cont_1_reg_362[7]_i_4_n_0\,
      O => \cont_1_reg_362[7]_i_8_n_0\
    );
\cont_1_reg_362_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state9,
      D => cont_1_fu_272_p2(0),
      Q => cont_1_reg_362(0),
      R => '0'
    );
\cont_1_reg_362_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state9,
      D => cont_1_fu_272_p2(1),
      Q => cont_1_reg_362(1),
      R => '0'
    );
\cont_1_reg_362_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state9,
      D => cont_1_fu_272_p2(2),
      Q => cont_1_reg_362(2),
      R => '0'
    );
\cont_1_reg_362_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state9,
      D => cont_1_fu_272_p2(3),
      Q => cont_1_reg_362(3),
      R => '0'
    );
\cont_1_reg_362_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cont_1_reg_362_reg[3]_i_1_n_0\,
      CO(2) => \cont_1_reg_362_reg[3]_i_1_n_1\,
      CO(1) => \cont_1_reg_362_reg[3]_i_1_n_2\,
      CO(0) => \cont_1_reg_362_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \cont_1_reg_362[3]_i_2_n_0\,
      DI(2) => \cont_1_reg_362[3]_i_3_n_0\,
      DI(1) => \cont_1_reg_362[3]_i_4_n_0\,
      DI(0) => '0',
      O(3 downto 0) => cont_1_fu_272_p2(3 downto 0),
      S(3) => \cont_1_reg_362[3]_i_5_n_0\,
      S(2) => \cont_1_reg_362[3]_i_6_n_0\,
      S(1) => \cont_1_reg_362[3]_i_7_n_0\,
      S(0) => \cont_1_reg_362[3]_i_8_n_0\
    );
\cont_1_reg_362_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state9,
      D => cont_1_fu_272_p2(4),
      Q => cont_1_reg_362(4),
      R => '0'
    );
\cont_1_reg_362_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state9,
      D => cont_1_fu_272_p2(5),
      Q => cont_1_reg_362(5),
      R => '0'
    );
\cont_1_reg_362_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state9,
      D => cont_1_fu_272_p2(6),
      Q => cont_1_reg_362(6),
      R => '0'
    );
\cont_1_reg_362_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state9,
      D => cont_1_fu_272_p2(7),
      Q => cont_1_reg_362(7),
      R => '0'
    );
\cont_1_reg_362_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cont_1_reg_362_reg[3]_i_1_n_0\,
      CO(3) => \NLW_cont_1_reg_362_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cont_1_reg_362_reg[7]_i_1_n_1\,
      CO(1) => \cont_1_reg_362_reg[7]_i_1_n_2\,
      CO(0) => \cont_1_reg_362_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \cont_1_reg_362[7]_i_2_n_0\,
      DI(1) => \cont_1_reg_362[7]_i_3_n_0\,
      DI(0) => \cont_1_reg_362[7]_i_4_n_0\,
      O(3 downto 0) => cont_1_fu_272_p2(7 downto 4),
      S(3) => \cont_1_reg_362[7]_i_5_n_0\,
      S(2) => \cont_1_reg_362[7]_i_6_n_0\,
      S(1) => \cont_1_reg_362[7]_i_7_n_0\,
      S(0) => \cont_1_reg_362[7]_i_8_n_0\
    );
\cont_reg_327_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => a_Dout_A(0),
      Q => cont_reg_327(0),
      R => '0'
    );
\cont_reg_327_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => a_Dout_A(1),
      Q => cont_reg_327(1),
      R => '0'
    );
\cont_reg_327_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => a_Dout_A(2),
      Q => cont_reg_327(2),
      R => '0'
    );
\cont_reg_327_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => a_Dout_A(3),
      Q => cont_reg_327(3),
      R => '0'
    );
\cont_reg_327_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => a_Dout_A(4),
      Q => cont_reg_327(4),
      R => '0'
    );
\cont_reg_327_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => a_Dout_A(5),
      Q => cont_reg_327(5),
      R => '0'
    );
\cont_reg_327_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => a_Dout_A(6),
      Q => cont_reg_327(6),
      R => '0'
    );
\cont_reg_327_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_CS_fsm_state5,
      D => a_Dout_A(7),
      Q => cont_reg_327(7),
      R => '0'
    );
\res_reg_307[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x_assign_reg_134_reg(3),
      I1 => shl_ln_reg_294(5),
      I2 => shl_ln_reg_294(3),
      O => \res_reg_307[3]_i_2_n_0\
    );
\res_reg_307[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => shl_ln_reg_294(4),
      I1 => x_assign_reg_134_reg(2),
      O => \res_reg_307[3]_i_3_n_0\
    );
\res_reg_307[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => shl_ln_reg_294(3),
      I1 => x_assign_reg_134_reg(1),
      O => \res_reg_307[3]_i_4_n_0\
    );
\res_reg_307[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA2A"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => x_assign_reg_134_reg(3),
      I2 => x_assign_reg_134_reg(0),
      I3 => x_assign_reg_134_reg(2),
      I4 => x_assign_reg_134_reg(1),
      O => res_reg_3070
    );
\res_reg_307[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => shl_ln_reg_294(6),
      I1 => shl_ln_reg_294(4),
      O => \res_reg_307[7]_i_3_n_0\
    );
\res_reg_307[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => x_assign_reg_134_reg(3),
      I1 => shl_ln_reg_294(5),
      O => \res_reg_307[7]_i_4_n_0\
    );
\res_reg_307[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => shl_ln_reg_294(5),
      I1 => shl_ln_reg_294(7),
      I2 => shl_ln_reg_294(6),
      O => \res_reg_307[7]_i_5_n_0\
    );
\res_reg_307[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => shl_ln_reg_294(4),
      I1 => shl_ln_reg_294(6),
      I2 => shl_ln_reg_294(7),
      I3 => shl_ln_reg_294(5),
      O => \res_reg_307[7]_i_6_n_0\
    );
\res_reg_307[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => shl_ln_reg_294(5),
      I1 => x_assign_reg_134_reg(3),
      I2 => shl_ln_reg_294(6),
      I3 => shl_ln_reg_294(4),
      O => \res_reg_307[7]_i_7_n_0\
    );
\res_reg_307_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => res_reg_3070,
      D => res_fu_212_p2(0),
      Q => \^b_addr_a\(0),
      R => '0'
    );
\res_reg_307_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => res_reg_3070,
      D => res_fu_212_p2(1),
      Q => \^b_addr_a\(1),
      R => '0'
    );
\res_reg_307_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => res_reg_3070,
      D => res_fu_212_p2(2),
      Q => \^b_addr_a\(2),
      R => '0'
    );
\res_reg_307_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => res_reg_3070,
      D => res_fu_212_p2(3),
      Q => \^b_addr_a\(3),
      R => '0'
    );
\res_reg_307_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \res_reg_307_reg[3]_i_1_n_0\,
      CO(2) => \res_reg_307_reg[3]_i_1_n_1\,
      CO(1) => \res_reg_307_reg[3]_i_1_n_2\,
      CO(0) => \res_reg_307_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => shl_ln_reg_294(3),
      DI(2 downto 1) => shl_ln_reg_294(4 downto 3),
      DI(0) => '0',
      O(3 downto 0) => res_fu_212_p2(3 downto 0),
      S(3) => \res_reg_307[3]_i_2_n_0\,
      S(2) => \res_reg_307[3]_i_3_n_0\,
      S(1) => \res_reg_307[3]_i_4_n_0\,
      S(0) => x_assign_reg_134_reg(0)
    );
\res_reg_307_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => res_reg_3070,
      D => res_fu_212_p2(4),
      Q => \^b_addr_a\(4),
      R => '0'
    );
\res_reg_307_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => res_reg_3070,
      D => res_fu_212_p2(5),
      Q => \^b_addr_a\(5),
      R => '0'
    );
\res_reg_307_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => res_reg_3070,
      D => res_fu_212_p2(6),
      Q => \^b_addr_a\(6),
      R => '0'
    );
\res_reg_307_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => res_reg_3070,
      D => res_fu_212_p2(7),
      Q => \^b_addr_a\(7),
      R => '0'
    );
\res_reg_307_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_reg_307_reg[3]_i_1_n_0\,
      CO(3) => \NLW_res_reg_307_reg[7]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \res_reg_307_reg[7]_i_2_n_1\,
      CO(1) => \res_reg_307_reg[7]_i_2_n_2\,
      CO(0) => \res_reg_307_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => shl_ln_reg_294(6),
      DI(1) => \res_reg_307[7]_i_3_n_0\,
      DI(0) => \res_reg_307[7]_i_4_n_0\,
      O(3 downto 0) => res_fu_212_p2(7 downto 4),
      S(3) => shl_ln_reg_294(7),
      S(2) => \res_reg_307[7]_i_5_n_0\,
      S(1) => \res_reg_307[7]_i_6_n_0\,
      S(0) => \res_reg_307[7]_i_7_n_0\
    );
\shl_ln_reg_294[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => y_assign_reg_122_reg(1),
      I2 => y_assign_reg_122_reg(3),
      I3 => y_assign_reg_122_reg(4),
      I4 => y_assign_reg_122_reg(2),
      I5 => y_assign_reg_122_reg(0),
      O => x_assign_reg_1340
    );
\shl_ln_reg_294_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => x_assign_reg_1340,
      D => y_assign_reg_122_reg(0),
      Q => shl_ln_reg_294(3),
      R => '0'
    );
\shl_ln_reg_294_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => x_assign_reg_1340,
      D => y_assign_reg_122_reg(1),
      Q => shl_ln_reg_294(4),
      R => '0'
    );
\shl_ln_reg_294_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => x_assign_reg_1340,
      D => y_assign_reg_122_reg(2),
      Q => shl_ln_reg_294(5),
      R => '0'
    );
\shl_ln_reg_294_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => x_assign_reg_1340,
      D => y_assign_reg_122_reg(3),
      Q => shl_ln_reg_294(6),
      R => '0'
    );
\shl_ln_reg_294_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => x_assign_reg_1340,
      D => y_assign_reg_122_reg(4),
      Q => shl_ln_reg_294(7),
      R => '0'
    );
\x_assign_reg_134[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_assign_reg_134_reg(0),
      O => j_fu_285_p2(0)
    );
\x_assign_reg_134[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x_assign_reg_134_reg(0),
      I1 => x_assign_reg_134_reg(1),
      O => j_fu_285_p2(1)
    );
\x_assign_reg_134[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => x_assign_reg_134_reg(0),
      I1 => x_assign_reg_134_reg(1),
      I2 => x_assign_reg_134_reg(2),
      O => j_fu_285_p2(2)
    );
\x_assign_reg_134[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => x_assign_reg_134_reg(1),
      I1 => x_assign_reg_134_reg(0),
      I2 => x_assign_reg_134_reg(2),
      I3 => x_assign_reg_134_reg(3),
      O => j_fu_285_p2(3)
    );
\x_assign_reg_134_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => \^ap_clk\,
      CE => \^b_en_a\,
      D => j_fu_285_p2(0),
      Q => x_assign_reg_134_reg(0),
      S => x_assign_reg_1340
    );
\x_assign_reg_134_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => \^b_en_a\,
      D => j_fu_285_p2(1),
      Q => x_assign_reg_134_reg(1),
      R => x_assign_reg_1340
    );
\x_assign_reg_134_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => \^b_en_a\,
      D => j_fu_285_p2(2),
      Q => x_assign_reg_134_reg(2),
      R => x_assign_reg_1340
    );
\x_assign_reg_134_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => \^b_en_a\,
      D => j_fu_285_p2(3),
      Q => x_assign_reg_134_reg(3),
      R => x_assign_reg_1340
    );
\y_assign_reg_122[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_assign_reg_122_reg(0),
      O => i_fu_217_p2(0)
    );
\y_assign_reg_122[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_assign_reg_122_reg(0),
      I1 => y_assign_reg_122_reg(1),
      O => i_fu_217_p2(1)
    );
\y_assign_reg_122[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => y_assign_reg_122_reg(0),
      I1 => y_assign_reg_122_reg(1),
      I2 => y_assign_reg_122_reg(2),
      O => i_fu_217_p2(2)
    );
\y_assign_reg_122[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => y_assign_reg_122_reg(1),
      I1 => y_assign_reg_122_reg(0),
      I2 => y_assign_reg_122_reg(2),
      I3 => y_assign_reg_122_reg(3),
      O => i_fu_217_p2(3)
    );
\y_assign_reg_122[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_NS_fsm1,
      O => y_assign_reg_122
    );
\y_assign_reg_122[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => x_assign_reg_134_reg(3),
      I1 => x_assign_reg_134_reg(0),
      I2 => x_assign_reg_134_reg(2),
      I3 => x_assign_reg_134_reg(1),
      I4 => ap_CS_fsm_state3,
      O => ap_NS_fsm1
    );
\y_assign_reg_122[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => y_assign_reg_122_reg(2),
      I1 => y_assign_reg_122_reg(0),
      I2 => y_assign_reg_122_reg(1),
      I3 => y_assign_reg_122_reg(3),
      I4 => y_assign_reg_122_reg(4),
      O => i_fu_217_p2(4)
    );
\y_assign_reg_122_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm1,
      D => i_fu_217_p2(0),
      Q => y_assign_reg_122_reg(0),
      S => y_assign_reg_122
    );
\y_assign_reg_122_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm1,
      D => i_fu_217_p2(1),
      Q => y_assign_reg_122_reg(1),
      R => y_assign_reg_122
    );
\y_assign_reg_122_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm1,
      D => i_fu_217_p2(2),
      Q => y_assign_reg_122_reg(2),
      R => y_assign_reg_122
    );
\y_assign_reg_122_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm1,
      D => i_fu_217_p2(3),
      Q => y_assign_reg_122_reg(3),
      R => y_assign_reg_122
    );
\y_assign_reg_122_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^ap_clk\,
      CE => ap_NS_fsm1,
      D => i_fu_217_p2(4),
      Q => y_assign_reg_122_reg(4),
      R => y_assign_reg_122
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GameOfLife is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_Clk_A : out STD_LOGIC;
    a_Rst_A : out STD_LOGIC;
    a_EN_A : out STD_LOGIC;
    a_WEN_A : out STD_LOGIC_VECTOR ( 0 to 0 );
    a_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a_Din_A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a_Dout_A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_Clk_A : out STD_LOGIC;
    b_Rst_A : out STD_LOGIC;
    b_EN_A : out STD_LOGIC;
    b_WEN_A : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    b_Din_A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b_Dout_A : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of GameOfLife : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of GameOfLife : entity is "GameOfLife,fun,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of GameOfLife : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of GameOfLife : entity is "HLS";
  attribute x_core_info : string;
  attribute x_core_info of GameOfLife : entity is "fun,Vivado 2020.1";
end GameOfLife;

architecture STRUCTURE of GameOfLife is
  attribute x_interface_info : string;
  attribute x_interface_info of a_Clk_A : signal is "xilinx.com:interface:bram:1.0 a_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of a_Clk_A : signal is "XIL_INTERFACENAME a_PORTA, MEM_WIDTH 8, MEM_SIZE 1, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of a_EN_A : signal is "xilinx.com:interface:bram:1.0 a_PORTA EN";
  attribute x_interface_info of a_Rst_A : signal is "xilinx.com:interface:bram:1.0 a_PORTA RST";
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute x_interface_info of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute x_interface_info of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute x_interface_info of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute x_interface_parameter of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute x_interface_info of b_Clk_A : signal is "xilinx.com:interface:bram:1.0 b_PORTA CLK";
  attribute x_interface_parameter of b_Clk_A : signal is "XIL_INTERFACENAME b_PORTA, MEM_WIDTH 8, MEM_SIZE 1, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1";
  attribute x_interface_info of b_EN_A : signal is "xilinx.com:interface:bram:1.0 b_PORTA EN";
  attribute x_interface_info of b_Rst_A : signal is "xilinx.com:interface:bram:1.0 b_PORTA RST";
  attribute x_interface_info of a_Addr_A : signal is "xilinx.com:interface:bram:1.0 a_PORTA ADDR";
  attribute x_interface_info of a_Din_A : signal is "xilinx.com:interface:bram:1.0 a_PORTA DIN";
  attribute x_interface_info of a_Dout_A : signal is "xilinx.com:interface:bram:1.0 a_PORTA DOUT";
  attribute x_interface_info of a_WEN_A : signal is "xilinx.com:interface:bram:1.0 a_PORTA WE";
  attribute x_interface_info of b_Addr_A : signal is "xilinx.com:interface:bram:1.0 b_PORTA ADDR";
  attribute x_interface_info of b_Din_A : signal is "xilinx.com:interface:bram:1.0 b_PORTA DIN";
  attribute x_interface_info of b_Dout_A : signal is "xilinx.com:interface:bram:1.0 b_PORTA DOUT";
  attribute x_interface_info of b_WEN_A : signal is "xilinx.com:interface:bram:1.0 b_PORTA WE";
begin
U0: entity work.GameOfLife_fun
     port map (
      a_Addr_A(31 downto 0) => a_Addr_A(31 downto 0),
      a_Clk_A => a_Clk_A,
      a_Din_A(7 downto 0) => a_Din_A(7 downto 0),
      a_Dout_A(7 downto 0) => a_Dout_A(7 downto 0),
      a_EN_A => a_EN_A,
      a_Rst_A => a_Rst_A,
      a_WEN_A(0) => a_WEN_A(0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b_Addr_A(31 downto 0) => b_Addr_A(31 downto 0),
      b_Clk_A => b_Clk_A,
      b_Din_A(7 downto 0) => b_Din_A(7 downto 0),
      b_Dout_A(7 downto 0) => b_Dout_A(7 downto 0),
      b_EN_A => b_EN_A,
      b_Rst_A => b_Rst_A,
      b_WEN_A(0) => b_WEN_A(0)
    );
end STRUCTURE;
