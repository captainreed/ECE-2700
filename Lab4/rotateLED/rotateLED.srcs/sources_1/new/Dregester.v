`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2017 08:20:38 AM
// Design Name: 
// Module Name: Dregester
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


module Dregester(
input d,
input d0,
input rst,
input shift,
input clk,
//output reg q
output q
    );
    
wire din;

    
    
    
    assign din = (~rst&~shift&q)|(rst&d0)|(~rst&shift&d);
    
    DFF D1(.d(din),.q(q),.clk(clk)); 
    
    
endmodule
