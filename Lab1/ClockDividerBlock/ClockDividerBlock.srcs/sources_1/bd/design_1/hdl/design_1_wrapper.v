//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Thu Sep  7 10:20:45 2017
//Host        : vlsi-25.engr.usu.edu running 64-bit CentOS Linux release 7.1.1503 (Core)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clkin,
    clkout);
  input clkin;
  output [0:0]clkout;

  wire clkin;
  wire [0:0]clkout;

  design_1 design_1_i
       (.clkin(clkin),
        .clkout(clkout));
endmodule
