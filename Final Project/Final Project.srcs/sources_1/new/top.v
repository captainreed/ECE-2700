`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2017 12:35:04 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
input paddle1,
input paddle2,
input clk
);

reg [8:0]score;
wire clear;
reg [15:0] display;
wire paddle1hit;
wire paddle2hit;
wire detectendzone;
wire detectswitch;
wire detectrecieving;
wire detectdirection;
wire gameclock;



endmodule
