`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 12:34:15 AM
// Design Name: 
// Module Name: Gamestate
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


module Gamestate(
input [15:0] displaymonitor,
input paddle1hit,
input paddle2hit,
input detectendzone,
input detectswitch,
input detectrecieving,
input gameclock,
output reg [8:0]score,
output direction

    );
endmodule
