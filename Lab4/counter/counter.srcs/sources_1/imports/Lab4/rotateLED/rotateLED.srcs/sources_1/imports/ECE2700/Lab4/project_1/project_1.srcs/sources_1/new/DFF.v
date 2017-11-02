`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2017 09:44:46 AM
// Design Name: 
// Module Name: DFF
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


module DFF(
input d,
output q,
input clk
    );
   
    wire q1;
    wire clkb = ~clk;
//    wire qb;
    
    dlatch d1(.d(d),.q(q1),.clk(clk));
    dlatch d2(.d(q1),.q(q),.clk(clkb));
  

endmodule
