-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sat Nov 23 14:31:46 2024
-- Host        : LAPTOP-92BOST6C running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {D:/vivado Projects/Projet
--               4A/VGA/VGA.sim/sim_1/impl/func/xsim/VGA_testBench_func_impl.vhd}
-- Design      : Horizon
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA is
  port (
    VGA_HS_OBUF : out STD_LOGIC;
    VGA_VS_OBUF : out STD_LOGIC;
    VGA_B_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VGA_R_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    VGA_G_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC
  );
end VGA;

architecture STRUCTURE of VGA is
  signal \^led_obuf\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Pixel_row : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \VGA_G_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal VGA_HS_s0 : STD_LOGIC;
  signal VGA_HS_s_i_2_n_0 : STD_LOGIC;
  signal VGA_HS_s_i_3_n_0 : STD_LOGIC;
  signal VGA_HS_s_i_4_n_0 : STD_LOGIC;
  signal \^vga_r_obuf\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \VGA_R_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \VGA_R_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal VGA_VS_s0 : STD_LOGIC;
  signal VGA_VS_s_i_2_n_0 : STD_LOGIC;
  signal \h_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[9]_i_4_n_0\ : STD_LOGIC;
  signal h_count_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sel : STD_LOGIC;
  signal v_count0 : STD_LOGIC;
  signal \v_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_6_n_0\ : STD_LOGIC;
  signal v_count_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal video_on_h : STD_LOGIC;
  signal video_on_h_i_1_n_0 : STD_LOGIC;
  signal video_on_v : STD_LOGIC;
  signal video_on_v_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LED_OBUF[0]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \VGA_G_OBUF[3]_inst_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of VGA_HS_s_i_4 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \VGA_R_OBUF[0]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \VGA_R_OBUF[2]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of VGA_VS_s_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_count[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \h_count[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \h_count[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \h_count[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \h_count[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \h_count[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_count[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \h_count[9]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \h_count[9]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \v_count[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \v_count[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \v_count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_count[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_count[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_count[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_count[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_count[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_count[9]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \v_count[9]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of video_on_h_i_1 : label is "soft_lutpair9";
begin
  LED_OBUF(1 downto 0) <= \^led_obuf\(1 downto 0);
  VGA_R_OBUF(0) <= \^vga_r_obuf\(0);
\LED_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEFFFE"
    )
        port map (
      I0 => Pixel_row(9),
      I1 => Pixel_row(8),
      I2 => Pixel_row(2),
      I3 => Pixel_row(3),
      I4 => \VGA_R_OBUF[3]_inst_i_3_n_0\,
      O => \^led_obuf\(0)
    );
\LED_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \VGA_G_OBUF[3]_inst_i_2_n_0\,
      I1 => Pixel_row(1),
      I2 => Pixel_row(0),
      I3 => Pixel_row(3),
      I4 => Pixel_row(2),
      I5 => \VGA_R_OBUF[3]_inst_i_3_n_0\,
      O => \^led_obuf\(1)
    );
\Pixel_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => video_on_v_i_1_n_0,
      D => v_count_reg(0),
      Q => Pixel_row(0),
      R => '0'
    );
\Pixel_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => video_on_v_i_1_n_0,
      D => v_count_reg(1),
      Q => Pixel_row(1),
      R => '0'
    );
\Pixel_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => video_on_v_i_1_n_0,
      D => v_count_reg(2),
      Q => Pixel_row(2),
      R => '0'
    );
\Pixel_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => video_on_v_i_1_n_0,
      D => v_count_reg(3),
      Q => Pixel_row(3),
      R => '0'
    );
\Pixel_row_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => video_on_v_i_1_n_0,
      D => v_count_reg(4),
      Q => Pixel_row(4),
      R => '0'
    );
\Pixel_row_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => video_on_v_i_1_n_0,
      D => v_count_reg(5),
      Q => Pixel_row(5),
      R => '0'
    );
\Pixel_row_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => video_on_v_i_1_n_0,
      D => v_count_reg(6),
      Q => Pixel_row(6),
      R => '0'
    );
\Pixel_row_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => video_on_v_i_1_n_0,
      D => v_count_reg(7),
      Q => Pixel_row(7),
      R => '0'
    );
\Pixel_row_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => video_on_v_i_1_n_0,
      D => v_count_reg(8),
      Q => Pixel_row(8),
      R => '0'
    );
\Pixel_row_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => video_on_v_i_1_n_0,
      D => v_count_reg(9),
      Q => Pixel_row(9),
      R => '0'
    );
\VGA_G_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00000000"
    )
        port map (
      I0 => Pixel_row(3),
      I1 => Pixel_row(1),
      I2 => Pixel_row(0),
      I3 => \VGA_G_OBUF[3]_inst_i_2_n_0\,
      I4 => \^led_obuf\(0),
      I5 => \^vga_r_obuf\(0),
      O => VGA_B_OBUF(0)
    );
\VGA_G_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Pixel_row(8),
      I1 => Pixel_row(9),
      O => \VGA_G_OBUF[3]_inst_i_2_n_0\
    );
VGA_HS_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => VGA_HS_s_i_2_n_0,
      I1 => h_count_reg(7),
      I2 => h_count_reg(9),
      I3 => h_count_reg(8),
      I4 => VGA_HS_s_i_3_n_0,
      O => VGA_HS_s0
    );
VGA_HS_s_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFEEEEEEEE"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => h_count_reg(5),
      I2 => VGA_HS_s_i_4_n_0,
      I3 => h_count_reg(3),
      I4 => h_count_reg(2),
      I5 => h_count_reg(4),
      O => VGA_HS_s_i_2_n_0
    );
VGA_HS_s_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800080000000"
    )
        port map (
      I0 => h_count_reg(5),
      I1 => h_count_reg(4),
      I2 => h_count_reg(6),
      I3 => h_count_reg(7),
      I4 => h_count_reg(2),
      I5 => h_count_reg(3),
      O => VGA_HS_s_i_3_n_0
    );
VGA_HS_s_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => h_count_reg(1),
      O => VGA_HS_s_i_4_n_0
    );
VGA_HS_s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '1',
      Q => VGA_HS_OBUF,
      R => VGA_HS_s0
    );
\VGA_R_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^led_obuf\(0),
      I1 => video_on_v,
      I2 => video_on_h,
      O => VGA_G_OBUF(0)
    );
\VGA_R_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => video_on_h,
      I1 => video_on_v,
      O => \^vga_r_obuf\(0)
    );
\VGA_R_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \VGA_R_OBUF[3]_inst_i_2_n_0\,
      I1 => video_on_v,
      I2 => video_on_h,
      I3 => Pixel_row(9),
      I4 => Pixel_row(8),
      I5 => \VGA_R_OBUF[3]_inst_i_3_n_0\,
      O => VGA_G_OBUF(1)
    );
\VGA_R_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => Pixel_row(1),
      I1 => Pixel_row(0),
      I2 => Pixel_row(3),
      I3 => Pixel_row(2),
      O => \VGA_R_OBUF[3]_inst_i_2_n_0\
    );
\VGA_R_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Pixel_row(5),
      I1 => Pixel_row(4),
      I2 => Pixel_row(7),
      I3 => Pixel_row(6),
      O => \VGA_R_OBUF[3]_inst_i_3_n_0\
    );
VGA_VS_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => VGA_VS_s_i_2_n_0,
      I1 => v_count_reg(1),
      I2 => v_count_reg(9),
      I3 => v_count_reg(4),
      I4 => v_count_reg(2),
      I5 => v_count_reg(3),
      O => VGA_VS_s0
    );
VGA_VS_s_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => v_count_reg(6),
      I1 => v_count_reg(5),
      I2 => v_count_reg(8),
      I3 => v_count_reg(7),
      O => VGA_VS_s_i_2_n_0
    );
VGA_VS_s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '1',
      Q => VGA_VS_OBUF,
      R => VGA_VS_s0
    );
\h_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_count_reg(0),
      O => plusOp(0)
    );
\h_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => h_count_reg(1),
      O => plusOp(1)
    );
\h_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_count_reg(0),
      I1 => h_count_reg(1),
      I2 => h_count_reg(2),
      O => plusOp(2)
    );
\h_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => h_count_reg(0),
      I2 => h_count_reg(1),
      I3 => h_count_reg(2),
      O => plusOp(3)
    );
\h_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => h_count_reg(4),
      I1 => h_count_reg(2),
      I2 => h_count_reg(1),
      I3 => h_count_reg(0),
      I4 => h_count_reg(3),
      O => plusOp(4)
    );
\h_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => h_count_reg(5),
      I1 => h_count_reg(3),
      I2 => h_count_reg(0),
      I3 => h_count_reg(1),
      I4 => h_count_reg(2),
      I5 => h_count_reg(4),
      O => plusOp(5)
    );
\h_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => h_count_reg(6),
      I1 => h_count_reg(5),
      I2 => \h_count[9]_i_3_n_0\,
      O => plusOp(6)
    );
\h_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => h_count_reg(7),
      I1 => \h_count[8]_i_2_n_0\,
      I2 => h_count_reg(6),
      I3 => h_count_reg(4),
      I4 => h_count_reg(5),
      O => \h_count[7]_i_1_n_0\
    );
\h_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => h_count_reg(8),
      I1 => h_count_reg(5),
      I2 => h_count_reg(4),
      I3 => h_count_reg(6),
      I4 => \h_count[8]_i_2_n_0\,
      I5 => h_count_reg(7),
      O => plusOp(8)
    );
\h_count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => h_count_reg(3),
      I1 => h_count_reg(0),
      I2 => h_count_reg(1),
      I3 => h_count_reg(2),
      O => \h_count[8]_i_2_n_0\
    );
\h_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \h_count[9]_i_3_n_0\,
      I1 => h_count_reg(8),
      I2 => h_count_reg(9),
      I3 => h_count_reg(7),
      I4 => h_count_reg(6),
      I5 => h_count_reg(5),
      O => sel
    );
\h_count[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => h_count_reg(9),
      I1 => \h_count[9]_i_4_n_0\,
      I2 => h_count_reg(8),
      O => plusOp(9)
    );
\h_count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => h_count_reg(4),
      I1 => h_count_reg(2),
      I2 => h_count_reg(1),
      I3 => h_count_reg(0),
      I4 => h_count_reg(3),
      O => \h_count[9]_i_3_n_0\
    );
\h_count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => h_count_reg(7),
      I1 => \h_count[8]_i_2_n_0\,
      I2 => h_count_reg(6),
      I3 => h_count_reg(4),
      I4 => h_count_reg(5),
      O => \h_count[9]_i_4_n_0\
    );
\h_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(0),
      Q => h_count_reg(0),
      R => sel
    );
\h_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(1),
      Q => h_count_reg(1),
      R => sel
    );
\h_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(2),
      Q => h_count_reg(2),
      R => sel
    );
\h_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(3),
      Q => h_count_reg(3),
      R => sel
    );
\h_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(4),
      Q => h_count_reg(4),
      R => sel
    );
\h_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(5),
      Q => h_count_reg(5),
      R => sel
    );
\h_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(6),
      Q => h_count_reg(6),
      R => sel
    );
\h_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \h_count[7]_i_1_n_0\,
      Q => h_count_reg(7),
      R => sel
    );
\h_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(8),
      Q => h_count_reg(8),
      R => sel
    );
\h_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(9),
      Q => h_count_reg(9),
      R => sel
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_count_reg(0),
      O => \plusOp__0\(0)
    );
\v_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_count_reg(0),
      I1 => v_count_reg(1),
      O => \plusOp__0\(1)
    );
\v_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_count_reg(0),
      I1 => v_count_reg(1),
      I2 => v_count_reg(2),
      O => \plusOp__0\(2)
    );
\v_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => v_count_reg(3),
      I1 => v_count_reg(0),
      I2 => v_count_reg(1),
      I3 => v_count_reg(2),
      O => \plusOp__0\(3)
    );
\v_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => v_count_reg(4),
      I1 => v_count_reg(0),
      I2 => v_count_reg(1),
      I3 => v_count_reg(2),
      I4 => v_count_reg(3),
      O => \plusOp__0\(4)
    );
\v_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => v_count_reg(5),
      I1 => v_count_reg(4),
      I2 => v_count_reg(0),
      I3 => v_count_reg(1),
      I4 => v_count_reg(2),
      I5 => v_count_reg(3),
      O => \plusOp__0\(5)
    );
\v_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => v_count_reg(6),
      I1 => \v_count[9]_i_5_n_0\,
      I2 => v_count_reg(5),
      O => \plusOp__0\(6)
    );
\v_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => v_count_reg(7),
      I1 => \v_count[9]_i_5_n_0\,
      I2 => v_count_reg(5),
      I3 => v_count_reg(6),
      O => \plusOp__0\(7)
    );
\v_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => v_count_reg(8),
      I1 => v_count_reg(6),
      I2 => \v_count[9]_i_5_n_0\,
      I3 => v_count_reg(5),
      I4 => v_count_reg(7),
      O => \plusOp__0\(8)
    );
\v_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0000000"
    )
        port map (
      I0 => \v_count[9]_i_3_n_0\,
      I1 => \h_count[9]_i_3_n_0\,
      I2 => h_count_reg(9),
      I3 => h_count_reg(8),
      I4 => v_count_reg(9),
      I5 => \v_count[9]_i_4_n_0\,
      O => v_count0
    );
\v_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => v_count_reg(9),
      I1 => \v_count[9]_i_5_n_0\,
      I2 => v_count_reg(6),
      I3 => v_count_reg(5),
      I4 => v_count_reg(8),
      I5 => v_count_reg(7),
      O => \plusOp__0\(9)
    );
\v_count[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => h_count_reg(7),
      I1 => h_count_reg(6),
      I2 => h_count_reg(5),
      O => \v_count[9]_i_3_n_0\
    );
\v_count[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => v_count_reg(6),
      I1 => v_count_reg(4),
      I2 => v_count_reg(5),
      I3 => v_count_reg(7),
      I4 => v_count_reg(8),
      I5 => \v_count[9]_i_6_n_0\,
      O => \v_count[9]_i_4_n_0\
    );
\v_count[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => v_count_reg(4),
      I1 => v_count_reg(0),
      I2 => v_count_reg(1),
      I3 => v_count_reg(2),
      I4 => v_count_reg(3),
      O => \v_count[9]_i_5_n_0\
    );
\v_count[9]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => v_count_reg(2),
      I1 => v_count_reg(3),
      O => \v_count[9]_i_6_n_0\
    );
\v_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \plusOp__0\(0),
      Q => v_count_reg(0),
      R => v_count0
    );
\v_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \plusOp__0\(1),
      Q => v_count_reg(1),
      R => v_count0
    );
\v_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \plusOp__0\(2),
      Q => v_count_reg(2),
      R => v_count0
    );
\v_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \plusOp__0\(3),
      Q => v_count_reg(3),
      R => v_count0
    );
\v_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \plusOp__0\(4),
      Q => v_count_reg(4),
      R => v_count0
    );
\v_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \plusOp__0\(5),
      Q => v_count_reg(5),
      R => v_count0
    );
\v_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \plusOp__0\(6),
      Q => v_count_reg(6),
      R => v_count0
    );
\v_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \plusOp__0\(7),
      Q => v_count_reg(7),
      R => v_count0
    );
\v_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \plusOp__0\(8),
      Q => v_count_reg(8),
      R => v_count0
    );
\v_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => \plusOp__0\(9),
      Q => v_count_reg(9),
      R => v_count0
    );
video_on_h_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"37"
    )
        port map (
      I0 => h_count_reg(8),
      I1 => h_count_reg(9),
      I2 => h_count_reg(7),
      O => video_on_h_i_1_n_0
    );
video_on_h_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => video_on_h_i_1_n_0,
      Q => video_on_h,
      R => '0'
    );
video_on_v_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15555555"
    )
        port map (
      I0 => v_count_reg(9),
      I1 => v_count_reg(7),
      I2 => v_count_reg(8),
      I3 => v_count_reg(5),
      I4 => v_count_reg(6),
      O => video_on_v_i_1_n_0
    );
video_on_v_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => video_on_v_i_1_n_0,
      Q => video_on_v,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Horizon is
  port (
    CLK100MHZ : in STD_LOGIC;
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_HS : out STD_LOGIC;
    VGA_VS : out STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Horizon : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Horizon : entity is "72e957b3";
end Horizon;

architecture STRUCTURE of Horizon is
  signal CLK100MHZ_IBUF : STD_LOGIC;
  signal CLK100MHZ_IBUF_BUFG : STD_LOGIC;
  signal CLK_Pixel : STD_LOGIC;
  signal CLK_Pixel_BUFG : STD_LOGIC;
  signal CLK_Pixel_s : STD_LOGIC;
  signal CLK_Pixel_s_i_1_n_0 : STD_LOGIC;
  signal LED_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal VGA_B_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal VGA_G_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal VGA_HS_OBUF : STD_LOGIC;
  signal VGA_R_OBUF : STD_LOGIC_VECTOR ( 2 to 2 );
  signal VGA_VS_OBUF : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count[31]_i_3_n_0\ : STD_LOGIC;
  signal \count[31]_i_4_n_0\ : STD_LOGIC;
  signal \count[31]_i_5_n_0\ : STD_LOGIC;
  signal \count[31]_i_6_n_0\ : STD_LOGIC;
  signal \count[31]_i_7_n_0\ : STD_LOGIC;
  signal \count[31]_i_8_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[31]_i_3\ : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 35;
begin
CLK100MHZ_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK100MHZ_IBUF,
      O => CLK100MHZ_IBUF_BUFG
    );
CLK100MHZ_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => CLK100MHZ,
      O => CLK100MHZ_IBUF
    );
CLK_Pixel_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_Pixel,
      O => CLK_Pixel_BUFG
    );
CLK_Pixel_s_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => CLK_Pixel_s,
      I1 => CLK_Pixel,
      O => CLK_Pixel_s_i_1_n_0
    );
CLK_Pixel_s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => CLK_Pixel_s_i_1_n_0,
      Q => CLK_Pixel,
      R => '0'
    );
\LED_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(0),
      O => LED(0)
    );
\LED_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(1),
      O => LED(1)
    );
\LED_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => LED(2)
    );
\LED_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(1),
      O => LED(3)
    );
VGA1: entity work.VGA
     port map (
      CLK => CLK_Pixel_BUFG,
      LED_OBUF(1 downto 0) => LED_OBUF(1 downto 0),
      VGA_B_OBUF(0) => VGA_B_OBUF(0),
      VGA_G_OBUF(1 downto 0) => VGA_G_OBUF(1 downto 0),
      VGA_HS_OBUF => VGA_HS_OBUF,
      VGA_R_OBUF(0) => VGA_R_OBUF(2),
      VGA_VS_OBUF => VGA_VS_OBUF
    );
\VGA_B_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_B_OBUF(0),
      O => VGA_B(0)
    );
\VGA_B_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_B_OBUF(0),
      O => VGA_B(1)
    );
\VGA_B_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_B_OBUF(0),
      O => VGA_B(2)
    );
\VGA_B_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_B_OBUF(0),
      O => VGA_B(3)
    );
\VGA_G_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(0),
      O => VGA_G(0)
    );
\VGA_G_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(1),
      O => VGA_G(1)
    );
\VGA_G_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_B_OBUF(0),
      O => VGA_G(2)
    );
\VGA_G_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_B_OBUF(0),
      O => VGA_G(3)
    );
VGA_HS_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => VGA_HS_OBUF,
      O => VGA_HS
    );
\VGA_R_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(0),
      O => VGA_R(0)
    );
\VGA_R_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(1),
      O => VGA_R(1)
    );
\VGA_R_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_R_OBUF(2),
      O => VGA_R(2)
    );
\VGA_R_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => VGA_G_OBUF(1),
      O => VGA_R(3)
    );
VGA_VS_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => VGA_VS_OBUF,
      O => VGA_VS
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => p_1_in(0)
    );
\count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count[31]_i_4_n_0\,
      I2 => \count[31]_i_5_n_0\,
      I3 => \count[31]_i_6_n_0\,
      I4 => \count[31]_i_7_n_0\,
      I5 => \count[31]_i_8_n_0\,
      O => CLK_Pixel_s
    );
\count[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      O => \count[31]_i_3_n_0\
    );
\count[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => count(4),
      I1 => count(5),
      I2 => count(2),
      I3 => count(3),
      I4 => count(7),
      I5 => count(6),
      O => \count[31]_i_4_n_0\
    );
\count[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count(10),
      I1 => count(11),
      I2 => count(8),
      I3 => count(9),
      I4 => count(13),
      I5 => count(12),
      O => \count[31]_i_5_n_0\
    );
\count[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count(16),
      I1 => count(17),
      I2 => count(14),
      I3 => count(15),
      I4 => count(19),
      I5 => count(18),
      O => \count[31]_i_6_n_0\
    );
\count[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count(22),
      I1 => count(23),
      I2 => count(20),
      I3 => count(21),
      I4 => count(25),
      I5 => count(24),
      O => \count[31]_i_7_n_0\
    );
\count[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count(28),
      I1 => count(29),
      I2 => count(26),
      I3 => count(27),
      I4 => count(31),
      I5 => count(30),
      O => \count[31]_i_8_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(0),
      Q => count(0),
      R => CLK_Pixel_s
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(10),
      Q => count(10),
      R => CLK_Pixel_s
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(11),
      Q => count(11),
      R => CLK_Pixel_s
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(12),
      Q => count(12),
      R => CLK_Pixel_s
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3 downto 0) => count(12 downto 9)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(13),
      Q => count(13),
      R => CLK_Pixel_s
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(14),
      Q => count(14),
      R => CLK_Pixel_s
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(15),
      Q => count(15),
      R => CLK_Pixel_s
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(16),
      Q => count(16),
      R => CLK_Pixel_s
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => count(16 downto 13)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(17),
      Q => count(17),
      R => CLK_Pixel_s
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(18),
      Q => count(18),
      R => CLK_Pixel_s
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(19),
      Q => count(19),
      R => CLK_Pixel_s
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(1),
      Q => count(1),
      R => CLK_Pixel_s
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(20),
      Q => count(20),
      R => CLK_Pixel_s
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \count_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(20 downto 17),
      S(3 downto 0) => count(20 downto 17)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(21),
      Q => count(21),
      R => CLK_Pixel_s
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(22),
      Q => count(22),
      R => CLK_Pixel_s
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(23),
      Q => count(23),
      R => CLK_Pixel_s
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(24),
      Q => count(24),
      R => CLK_Pixel_s
    );
\count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1_n_0\,
      CO(3) => \count_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(24 downto 21),
      S(3 downto 0) => count(24 downto 21)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(25),
      Q => count(25),
      R => CLK_Pixel_s
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(26),
      Q => count(26),
      R => CLK_Pixel_s
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(27),
      Q => count(27),
      R => CLK_Pixel_s
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(28),
      Q => count(28),
      R => CLK_Pixel_s
    );
\count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1_n_0\,
      CO(3) => \count_reg[28]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[28]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(28 downto 25),
      S(3 downto 0) => count(28 downto 25)
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(29),
      Q => count(29),
      R => CLK_Pixel_s
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(2),
      Q => count(2),
      R => CLK_Pixel_s
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(30),
      Q => count(30),
      R => CLK_Pixel_s
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(31),
      Q => count(31),
      R => CLK_Pixel_s
    );
\count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[28]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_reg[31]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_1_in(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => count(31 downto 29)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(3),
      Q => count(3),
      R => CLK_Pixel_s
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(4),
      Q => count(4),
      R => CLK_Pixel_s
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => count(4 downto 1)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(5),
      Q => count(5),
      R => CLK_Pixel_s
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(6),
      Q => count(6),
      R => CLK_Pixel_s
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(7),
      Q => count(7),
      R => CLK_Pixel_s
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(8),
      Q => count(8),
      R => CLK_Pixel_s
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => count(8 downto 5)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_1_in(9),
      Q => count(9),
      R => CLK_Pixel_s
    );
end STRUCTURE;
