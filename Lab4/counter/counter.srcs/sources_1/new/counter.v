`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2017 04:23:03 PM
// Design Name: 
// Module Name: counter
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


module counter(
input mclk,
input incr,
input rst,
output reg [7:0] Q


    );
    
    reg [7:0] j;
    wire jinit;
    wire kinit;
    wire clkdriver;
      
    ClockDivider clkdiv(.clkin(mclk),.clkout(clkdriver));
    
    assign j[0] = incr&~rst;
    assign kinit = incr|rst;
    
    
    JKFF j0(.j(j[0]),.k(kinit),.q(Q[0]),.clk(clkdriver));
    
       genvar i;
    
    generate 
    
    for(i = 1; i < 8; i = i+1) begin : flipping
         JKFF j1(.j(Q[i-1]&~rst&j[i-1]),.k(Q[i-1]&~rst&j[i-1]),.q(Q[i]),.clk(clkdriver));
     end
    endgenerate
    
    
    
endmodule
