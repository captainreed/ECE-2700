`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2017 07:46:17 AM
// Design Name: 
// Module Name: DFF_dataflow
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


module DFF_dataflow(
input d,
output q,
input clk
    );
    
    
    
    wire q1;
    wire clkb = ~clk;
    wire qb;
    
    Latch_dataflow d1(.d(d),.q(q1),.clk(clk));
    Latch_dataflow d2(.d(q1),.q(q),.clk(clkb));
    
    
    
endmodule
