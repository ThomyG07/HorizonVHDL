// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Nov 23 10:41:27 2024
// Host        : LAPTOP-92BOST6C running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/vivado Projects/Projet
//               4A/VGA/VGA.sim/sim_1/synth/timing/xsim/VGA_testBench_time_synth.v}
// Design      : Horizon
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module Horizon
   (CLK100MHZ,
    VGA_R,
    VGA_G,
    VGA_B,
    VGA_HS,
    VGA_VS);
  input CLK100MHZ;
  output [3:0]VGA_R;
  output [3:0]VGA_G;
  output [3:0]VGA_B;
  output VGA_HS;
  output VGA_VS;

  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire CLK_Pixel;
  wire CLK_Pixel_BUFG;
  wire CLK_Pixel_s;
  wire CLK_Pixel_s_i_1_n_0;
  wire [3:0]VGA_B;
  wire [0:0]VGA_B_OBUF;
  wire [3:0]VGA_G;
  wire [1:0]VGA_G_OBUF;
  wire VGA_HS;
  wire VGA_HS_OBUF;
  wire [3:0]VGA_R;
  wire [2:2]VGA_R_OBUF;
  wire VGA_VS;
  wire VGA_VS_OBUF;
  wire [31:0]count;
  wire \count[31]_i_3_n_0 ;
  wire \count[31]_i_4_n_0 ;
  wire \count[31]_i_5_n_0 ;
  wire \count[31]_i_6_n_0 ;
  wire \count[31]_i_7_n_0 ;
  wire \count[31]_i_8_n_0 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_0 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[31]_i_2_n_2 ;
  wire \count_reg[31]_i_2_n_3 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire [31:0]p_1_in;
  wire [3:2]\NLW_count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[31]_i_2_O_UNCONNECTED ;

initial begin
 $sdf_annotate("VGA_testBench_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  BUFG CLK_Pixel_BUFG_inst
       (.I(CLK_Pixel),
        .O(CLK_Pixel_BUFG));
  LUT2 #(
    .INIT(4'h6)) 
    CLK_Pixel_s_i_1
       (.I0(CLK_Pixel_s),
        .I1(CLK_Pixel),
        .O(CLK_Pixel_s_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    CLK_Pixel_s_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(CLK_Pixel_s_i_1_n_0),
        .Q(CLK_Pixel),
        .R(1'b0));
  VGA VGA1
       (.CLK(CLK_Pixel_BUFG),
        .VGA_B_OBUF(VGA_B_OBUF),
        .VGA_G_OBUF(VGA_G_OBUF),
        .VGA_HS_OBUF(VGA_HS_OBUF),
        .VGA_R_OBUF(VGA_R_OBUF),
        .VGA_VS_OBUF(VGA_VS_OBUF));
  OBUF \VGA_B_OBUF[0]_inst 
       (.I(VGA_B_OBUF),
        .O(VGA_B[0]));
  OBUF \VGA_B_OBUF[1]_inst 
       (.I(VGA_B_OBUF),
        .O(VGA_B[1]));
  OBUF \VGA_B_OBUF[2]_inst 
       (.I(VGA_B_OBUF),
        .O(VGA_B[2]));
  OBUF \VGA_B_OBUF[3]_inst 
       (.I(VGA_B_OBUF),
        .O(VGA_B[3]));
  OBUF \VGA_G_OBUF[0]_inst 
       (.I(VGA_G_OBUF[0]),
        .O(VGA_G[0]));
  OBUF \VGA_G_OBUF[1]_inst 
       (.I(VGA_G_OBUF[1]),
        .O(VGA_G[1]));
  OBUF \VGA_G_OBUF[2]_inst 
       (.I(VGA_B_OBUF),
        .O(VGA_G[2]));
  OBUF \VGA_G_OBUF[3]_inst 
       (.I(VGA_B_OBUF),
        .O(VGA_G[3]));
  OBUF VGA_HS_OBUF_inst
       (.I(VGA_HS_OBUF),
        .O(VGA_HS));
  OBUF \VGA_R_OBUF[0]_inst 
       (.I(VGA_G_OBUF[0]),
        .O(VGA_R[0]));
  OBUF \VGA_R_OBUF[1]_inst 
       (.I(VGA_G_OBUF[1]),
        .O(VGA_R[1]));
  OBUF \VGA_R_OBUF[2]_inst 
       (.I(VGA_R_OBUF),
        .O(VGA_R[2]));
  OBUF \VGA_R_OBUF[3]_inst 
       (.I(VGA_G_OBUF[1]),
        .O(VGA_R[3]));
  OBUF VGA_VS_OBUF_inst
       (.I(VGA_VS_OBUF),
        .O(VGA_VS));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[31]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\count[31]_i_6_n_0 ),
        .I4(\count[31]_i_7_n_0 ),
        .I5(\count[31]_i_8_n_0 ),
        .O(CLK_Pixel_s));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[31]_i_3 
       (.I0(count[0]),
        .I1(count[1]),
        .O(\count[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \count[31]_i_4 
       (.I0(count[4]),
        .I1(count[5]),
        .I2(count[2]),
        .I3(count[3]),
        .I4(count[7]),
        .I5(count[6]),
        .O(\count[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[31]_i_5 
       (.I0(count[10]),
        .I1(count[11]),
        .I2(count[8]),
        .I3(count[9]),
        .I4(count[13]),
        .I5(count[12]),
        .O(\count[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[31]_i_6 
       (.I0(count[16]),
        .I1(count[17]),
        .I2(count[14]),
        .I3(count[15]),
        .I4(count[19]),
        .I5(count[18]),
        .O(\count[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[31]_i_7 
       (.I0(count[22]),
        .I1(count[23]),
        .I2(count[20]),
        .I3(count[21]),
        .I4(count[25]),
        .I5(count[24]),
        .O(\count[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[31]_i_8 
       (.I0(count[28]),
        .I1(count[29]),
        .I2(count[26]),
        .I3(count[27]),
        .I4(count[31]),
        .I5(count[30]),
        .O(\count[31]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(count[0]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(count[10]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(count[11]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(count[12]),
        .R(CLK_Pixel_s));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(count[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(count[13]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(count[14]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(count[15]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(count[16]),
        .R(CLK_Pixel_s));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(count[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(count[17]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(count[18]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(count[19]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(count[1]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(count[20]),
        .R(CLK_Pixel_s));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[20:17]),
        .S(count[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(count[21]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(count[22]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(count[23]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(count[24]),
        .R(CLK_Pixel_s));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[24:21]),
        .S(count[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(count[25]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(count[26]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[27]),
        .Q(count[27]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[28]),
        .Q(count[28]),
        .R(CLK_Pixel_s));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\count_reg[28]_i_1_n_0 ,\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[28:25]),
        .S(count[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[29]),
        .Q(count[29]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(count[2]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[30]),
        .Q(count[30]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[31]),
        .Q(count[31]),
        .R(CLK_Pixel_s));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[31]_i_2 
       (.CI(\count_reg[28]_i_1_n_0 ),
        .CO({\NLW_count_reg[31]_i_2_CO_UNCONNECTED [3:2],\count_reg[31]_i_2_n_2 ,\count_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[31]_i_2_O_UNCONNECTED [3],p_1_in[31:29]}),
        .S({1'b0,count[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(count[3]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(count[4]),
        .R(CLK_Pixel_s));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(count[5]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(count[6]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(count[7]),
        .R(CLK_Pixel_s));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(count[8]),
        .R(CLK_Pixel_s));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(count[9]),
        .R(CLK_Pixel_s));
endmodule

module VGA
   (VGA_HS_OBUF,
    VGA_VS_OBUF,
    VGA_B_OBUF,
    VGA_G_OBUF,
    VGA_R_OBUF,
    CLK);
  output VGA_HS_OBUF;
  output VGA_VS_OBUF;
  output [0:0]VGA_B_OBUF;
  output [1:0]VGA_G_OBUF;
  output [0:0]VGA_R_OBUF;
  input CLK;

  wire CLK;
  wire [9:0]Pixel_row;
  wire [0:0]VGA_B_OBUF;
  wire [1:0]VGA_G_OBUF;
  wire VGA_HS_OBUF;
  wire VGA_HS_s0;
  wire VGA_HS_s_i_2_n_0;
  wire VGA_HS_s_i_3_n_0;
  wire VGA_HS_s_i_4_n_0;
  wire [0:0]VGA_R_OBUF;
  wire \VGA_R_OBUF[0]_inst_i_2_n_0 ;
  wire \VGA_R_OBUF[3]_inst_i_2_n_0 ;
  wire \VGA_R_OBUF[3]_inst_i_3_n_0 ;
  wire VGA_VS_OBUF;
  wire VGA_VS_s0;
  wire VGA_VS_s_i_2_n_0;
  wire \h_count[7]_i_1_n_0 ;
  wire \h_count[8]_i_2_n_0 ;
  wire \h_count[9]_i_3_n_0 ;
  wire \h_count[9]_i_4_n_0 ;
  wire [9:0]h_count_reg;
  wire [9:0]plusOp;
  wire [9:0]plusOp__0;
  wire sel;
  wire v_count0;
  wire \v_count[9]_i_3_n_0 ;
  wire \v_count[9]_i_4_n_0 ;
  wire \v_count[9]_i_5_n_0 ;
  wire \v_count[9]_i_6_n_0 ;
  wire [9:0]v_count_reg;
  wire video_on_h;
  wire video_on_h_i_1_n_0;
  wire video_on_v;
  wire video_on_v_i_1_n_0;

  FDRE #(
    .INIT(1'b0)) 
    \Pixel_row_reg[0] 
       (.C(CLK),
        .CE(video_on_v_i_1_n_0),
        .D(v_count_reg[0]),
        .Q(Pixel_row[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pixel_row_reg[1] 
       (.C(CLK),
        .CE(video_on_v_i_1_n_0),
        .D(v_count_reg[1]),
        .Q(Pixel_row[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pixel_row_reg[2] 
       (.C(CLK),
        .CE(video_on_v_i_1_n_0),
        .D(v_count_reg[2]),
        .Q(Pixel_row[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pixel_row_reg[3] 
       (.C(CLK),
        .CE(video_on_v_i_1_n_0),
        .D(v_count_reg[3]),
        .Q(Pixel_row[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pixel_row_reg[4] 
       (.C(CLK),
        .CE(video_on_v_i_1_n_0),
        .D(v_count_reg[4]),
        .Q(Pixel_row[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pixel_row_reg[5] 
       (.C(CLK),
        .CE(video_on_v_i_1_n_0),
        .D(v_count_reg[5]),
        .Q(Pixel_row[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pixel_row_reg[6] 
       (.C(CLK),
        .CE(video_on_v_i_1_n_0),
        .D(v_count_reg[6]),
        .Q(Pixel_row[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pixel_row_reg[7] 
       (.C(CLK),
        .CE(video_on_v_i_1_n_0),
        .D(v_count_reg[7]),
        .Q(Pixel_row[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pixel_row_reg[8] 
       (.C(CLK),
        .CE(video_on_v_i_1_n_0),
        .D(v_count_reg[8]),
        .Q(Pixel_row[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Pixel_row_reg[9] 
       (.C(CLK),
        .CE(video_on_v_i_1_n_0),
        .D(v_count_reg[9]),
        .Q(Pixel_row[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF000100)) 
    \VGA_G_OBUF[3]_inst_i_1 
       (.I0(Pixel_row[3]),
        .I1(Pixel_row[1]),
        .I2(Pixel_row[0]),
        .I3(\VGA_R_OBUF[3]_inst_i_2_n_0 ),
        .I4(\VGA_R_OBUF[0]_inst_i_2_n_0 ),
        .O(VGA_B_OBUF));
  LUT5 #(
    .INIT(32'h00000080)) 
    VGA_HS_s_i_1
       (.I0(VGA_HS_s_i_2_n_0),
        .I1(h_count_reg[7]),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[8]),
        .I4(VGA_HS_s_i_3_n_0),
        .O(VGA_HS_s0));
  LUT6 #(
    .INIT(64'hFFFFFFEFEEEEEEEE)) 
    VGA_HS_s_i_2
       (.I0(h_count_reg[6]),
        .I1(h_count_reg[5]),
        .I2(VGA_HS_s_i_4_n_0),
        .I3(h_count_reg[3]),
        .I4(h_count_reg[2]),
        .I5(h_count_reg[4]),
        .O(VGA_HS_s_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    VGA_HS_s_i_3
       (.I0(h_count_reg[5]),
        .I1(h_count_reg[4]),
        .I2(h_count_reg[6]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[2]),
        .I5(h_count_reg[3]),
        .O(VGA_HS_s_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    VGA_HS_s_i_4
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .O(VGA_HS_s_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    VGA_HS_s_reg
       (.C(CLK),
        .CE(1'b1),
        .D(1'b1),
        .Q(VGA_HS_OBUF),
        .R(VGA_HS_s0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC0C0C040)) 
    \VGA_R_OBUF[0]_inst_i_1 
       (.I0(\VGA_R_OBUF[0]_inst_i_2_n_0 ),
        .I1(video_on_h),
        .I2(video_on_v),
        .I3(Pixel_row[8]),
        .I4(Pixel_row[9]),
        .O(VGA_G_OBUF[0]));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \VGA_R_OBUF[0]_inst_i_2 
       (.I0(Pixel_row[6]),
        .I1(Pixel_row[7]),
        .I2(Pixel_row[4]),
        .I3(Pixel_row[5]),
        .I4(Pixel_row[3]),
        .I5(Pixel_row[2]),
        .O(\VGA_R_OBUF[0]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \VGA_R_OBUF[2]_inst_i_1 
       (.I0(video_on_h),
        .I1(video_on_v),
        .O(VGA_R_OBUF));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \VGA_R_OBUF[3]_inst_i_1 
       (.I0(\VGA_R_OBUF[3]_inst_i_2_n_0 ),
        .I1(Pixel_row[1]),
        .I2(Pixel_row[0]),
        .I3(Pixel_row[3]),
        .I4(Pixel_row[2]),
        .I5(\VGA_R_OBUF[3]_inst_i_3_n_0 ),
        .O(VGA_G_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \VGA_R_OBUF[3]_inst_i_2 
       (.I0(video_on_v),
        .I1(video_on_h),
        .I2(Pixel_row[9]),
        .I3(Pixel_row[8]),
        .O(\VGA_R_OBUF[3]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \VGA_R_OBUF[3]_inst_i_3 
       (.I0(Pixel_row[5]),
        .I1(Pixel_row[4]),
        .I2(Pixel_row[7]),
        .I3(Pixel_row[6]),
        .O(\VGA_R_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    VGA_VS_s_i_1
       (.I0(VGA_VS_s_i_2_n_0),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[9]),
        .I3(v_count_reg[4]),
        .I4(v_count_reg[2]),
        .I5(v_count_reg[3]),
        .O(VGA_VS_s0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    VGA_VS_s_i_2
       (.I0(v_count_reg[6]),
        .I1(v_count_reg[5]),
        .I2(v_count_reg[8]),
        .I3(v_count_reg[7]),
        .O(VGA_VS_s_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    VGA_VS_s_reg
       (.C(CLK),
        .CE(1'b1),
        .D(1'b1),
        .Q(VGA_VS_OBUF),
        .R(VGA_VS_s0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(h_count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]_i_1 
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count[2]_i_1 
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_count[3]_i_1 
       (.I0(h_count_reg[3]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count[4]_i_1 
       (.I0(h_count_reg[4]),
        .I1(h_count_reg[2]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[0]),
        .I4(h_count_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_count[5]_i_1 
       (.I0(h_count_reg[5]),
        .I1(h_count_reg[3]),
        .I2(h_count_reg[0]),
        .I3(h_count_reg[1]),
        .I4(h_count_reg[2]),
        .I5(h_count_reg[4]),
        .O(plusOp[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \h_count[6]_i_1 
       (.I0(h_count_reg[6]),
        .I1(h_count_reg[5]),
        .I2(\h_count[9]_i_3_n_0 ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count[7]_i_1 
       (.I0(h_count_reg[7]),
        .I1(\h_count[8]_i_2_n_0 ),
        .I2(h_count_reg[6]),
        .I3(h_count_reg[4]),
        .I4(h_count_reg[5]),
        .O(\h_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_count[8]_i_1 
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[5]),
        .I2(h_count_reg[4]),
        .I3(h_count_reg[6]),
        .I4(\h_count[8]_i_2_n_0 ),
        .I5(h_count_reg[7]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \h_count[8]_i_2 
       (.I0(h_count_reg[3]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[2]),
        .O(\h_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \h_count[9]_i_1 
       (.I0(\h_count[9]_i_3_n_0 ),
        .I1(h_count_reg[8]),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[6]),
        .I5(h_count_reg[5]),
        .O(sel));
  LUT3 #(
    .INIT(8'h6A)) 
    \h_count[9]_i_2 
       (.I0(h_count_reg[9]),
        .I1(\h_count[9]_i_4_n_0 ),
        .I2(h_count_reg[8]),
        .O(plusOp[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \h_count[9]_i_3 
       (.I0(h_count_reg[4]),
        .I1(h_count_reg[2]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[0]),
        .I4(h_count_reg[3]),
        .O(\h_count[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \h_count[9]_i_4 
       (.I0(h_count_reg[7]),
        .I1(\h_count[8]_i_2_n_0 ),
        .I2(h_count_reg[6]),
        .I3(h_count_reg[4]),
        .I4(h_count_reg[5]),
        .O(\h_count[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(h_count_reg[0]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(h_count_reg[1]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(h_count_reg[2]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(h_count_reg[3]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(h_count_reg[4]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(h_count_reg[5]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(h_count_reg[6]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\h_count[7]_i_1_n_0 ),
        .Q(h_count_reg[7]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(h_count_reg[8]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(h_count_reg[9]),
        .R(sel));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_count[0]_i_1 
       (.I0(v_count_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[1]_i_1 
       (.I0(v_count_reg[0]),
        .I1(v_count_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_count[2]_i_1 
       (.I0(v_count_reg[0]),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_count[3]_i_1 
       (.I0(v_count_reg[3]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[2]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count[4]_i_1 
       (.I0(v_count_reg[4]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[2]),
        .I4(v_count_reg[3]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count[5]_i_1 
       (.I0(v_count_reg[5]),
        .I1(v_count_reg[4]),
        .I2(v_count_reg[0]),
        .I3(v_count_reg[1]),
        .I4(v_count_reg[2]),
        .I5(v_count_reg[3]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \v_count[6]_i_1 
       (.I0(v_count_reg[6]),
        .I1(\v_count[9]_i_5_n_0 ),
        .I2(v_count_reg[5]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \v_count[7]_i_1 
       (.I0(v_count_reg[7]),
        .I1(\v_count[9]_i_5_n_0 ),
        .I2(v_count_reg[5]),
        .I3(v_count_reg[6]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \v_count[8]_i_1 
       (.I0(v_count_reg[8]),
        .I1(v_count_reg[6]),
        .I2(\v_count[9]_i_5_n_0 ),
        .I3(v_count_reg[5]),
        .I4(v_count_reg[7]),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h00000000E0000000)) 
    \v_count[9]_i_1 
       (.I0(\v_count[9]_i_3_n_0 ),
        .I1(\h_count[9]_i_3_n_0 ),
        .I2(h_count_reg[9]),
        .I3(h_count_reg[8]),
        .I4(v_count_reg[9]),
        .I5(\v_count[9]_i_4_n_0 ),
        .O(v_count0));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \v_count[9]_i_2 
       (.I0(v_count_reg[9]),
        .I1(\v_count[9]_i_5_n_0 ),
        .I2(v_count_reg[6]),
        .I3(v_count_reg[5]),
        .I4(v_count_reg[8]),
        .I5(v_count_reg[7]),
        .O(plusOp__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \v_count[9]_i_3 
       (.I0(h_count_reg[7]),
        .I1(h_count_reg[6]),
        .I2(h_count_reg[5]),
        .O(\v_count[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \v_count[9]_i_4 
       (.I0(v_count_reg[6]),
        .I1(v_count_reg[4]),
        .I2(v_count_reg[5]),
        .I3(v_count_reg[7]),
        .I4(v_count_reg[8]),
        .I5(\v_count[9]_i_6_n_0 ),
        .O(\v_count[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \v_count[9]_i_5 
       (.I0(v_count_reg[4]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[2]),
        .I4(v_count_reg[3]),
        .O(\v_count[9]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \v_count[9]_i_6 
       (.I0(v_count_reg[2]),
        .I1(v_count_reg[3]),
        .O(\v_count[9]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[0] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp__0[0]),
        .Q(v_count_reg[0]),
        .R(v_count0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[1] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp__0[1]),
        .Q(v_count_reg[1]),
        .R(v_count0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[2] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp__0[2]),
        .Q(v_count_reg[2]),
        .R(v_count0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[3] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp__0[3]),
        .Q(v_count_reg[3]),
        .R(v_count0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[4] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp__0[4]),
        .Q(v_count_reg[4]),
        .R(v_count0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[5] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp__0[5]),
        .Q(v_count_reg[5]),
        .R(v_count0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[6] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp__0[6]),
        .Q(v_count_reg[6]),
        .R(v_count0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[7] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp__0[7]),
        .Q(v_count_reg[7]),
        .R(v_count0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[8] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp__0[8]),
        .Q(v_count_reg[8]),
        .R(v_count0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[9] 
       (.C(CLK),
        .CE(sel),
        .D(plusOp__0[9]),
        .Q(v_count_reg[9]),
        .R(v_count0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h37)) 
    video_on_h_i_1
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[9]),
        .I2(h_count_reg[7]),
        .O(video_on_h_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    video_on_h_reg
       (.C(CLK),
        .CE(1'b1),
        .D(video_on_h_i_1_n_0),
        .Q(video_on_h),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h15555555)) 
    video_on_v_i_1
       (.I0(v_count_reg[9]),
        .I1(v_count_reg[7]),
        .I2(v_count_reg[8]),
        .I3(v_count_reg[5]),
        .I4(v_count_reg[6]),
        .O(video_on_v_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    video_on_v_reg
       (.C(CLK),
        .CE(1'b1),
        .D(video_on_v_i_1_n_0),
        .Q(video_on_v),
        .R(1'b0));
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
