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
input incre,
input rst,
output [7:0] Q


    );
    
    wire [7:0] j;
    wire clkdriver;
      
    ClockDivider clkdiv(.clkin(mclk),.clkout(clkdriver));
    

    
    
   
    
       genvar i;
    
    generate 
    
    for(i = 0; i < 8; i = i+1) begin : flipping
    
    if(i==0)begin
    assign j[0] = incre&~rst;
     JKFF j0(.j(j[0]),.k(incre|rst),.q(Q[0]),.clk(clkdriver));
    end
    else begin
        assign j[i] = Q[i-1]&~rst&j[i-1];
         JKFF j1(.j(j[i]),.k(j[i]|rst),.q(Q[i]),.clk(clkdriver));
     end
     end
    endgenerate
    
    
    
endmodule
