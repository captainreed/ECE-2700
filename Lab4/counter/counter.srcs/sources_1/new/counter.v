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
    
    wire jinit;
    wire kinit;
    wire clkdriver;
      
    ClockDivider clkdiv(.clkin(mclk),.clkout(clkdriver));
    
    assign jinit = incr&~rst;
    assign kinit = incr|rst;
    
    
    JKFF j0(.j(jinit),.k(kinit),.q(Q[0],clk(clkdriver)),
    
       genvar i;
    
    generate 
    
    for(i = 1; i < 9; i = i+1) begin : flipping
         JKFF j1(.j(),.k(),.q(),.clk(clkdriver));
     end
    endgenerate
    
    
    
endmodule
