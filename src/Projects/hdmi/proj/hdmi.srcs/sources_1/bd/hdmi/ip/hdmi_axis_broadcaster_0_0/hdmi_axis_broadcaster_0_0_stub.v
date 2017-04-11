// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Mon Mar 27 11:29:58 2017
// Host        : SFB520WS28 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_axis_broadcaster_0_0/hdmi_axis_broadcaster_0_0_stub.v
// Design      : hdmi_axis_broadcaster_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top_hdmi_axis_broadcaster_0_0,Vivado 2016.2" *)
module hdmi_axis_broadcaster_0_0(aclk, aresetn, s_axis_tvalid, s_axis_tready, s_axis_tdata, s_axis_tkeep, s_axis_tlast, s_axis_tuser, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tkeep, m_axis_tlast, m_axis_tuser)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[23:0],s_axis_tkeep[2:0],s_axis_tlast,s_axis_tuser[0:0],m_axis_tvalid[1:0],m_axis_tready[1:0],m_axis_tdata[47:0],m_axis_tkeep[5:0],m_axis_tlast[1:0],m_axis_tuser[1:0]" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tuser;
  output [1:0]m_axis_tvalid;
  input [1:0]m_axis_tready;
  output [47:0]m_axis_tdata;
  output [5:0]m_axis_tkeep;
  output [1:0]m_axis_tlast;
  output [1:0]m_axis_tuser;
endmodule
