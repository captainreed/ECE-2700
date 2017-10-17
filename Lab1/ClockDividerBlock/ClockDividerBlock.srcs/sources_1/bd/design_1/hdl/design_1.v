//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Thu Sep  7 10:20:45 2017
//Host        : vlsi-25.engr.usu.edu running 64-bit CentOS Linux release 7.1.1503 (Core)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clkin,
    clkout);
  input clkin;
  output [0:0]clkout;

  wire c_counter_binary_0_THRESH0;
  wire [0:0]c_counter_binary_1_Q;
  wire clkin_1;

  assign clkin_1 = clkin;
  assign clkout[0] = c_counter_binary_1_Q;
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(clkin_1),
        .THRESH0(c_counter_binary_0_THRESH0));
  design_1_c_counter_binary_1_0 c_counter_binary_1
       (.CLK(c_counter_binary_0_THRESH0),
        .Q(c_counter_binary_1_Q));
endmodule
