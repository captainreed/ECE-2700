`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2017 12:11:57 PM
// Design Name: 
// Module Name: JKFF
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


module JKFF(
input j,
input k,
output q,
input clk
);

wire din;

assign din = ((j&k)&~q)|(j&~k)|((~j&~k)&q);

DFF D1(.d(din),.q(q),.clk(clk));
endmodule
