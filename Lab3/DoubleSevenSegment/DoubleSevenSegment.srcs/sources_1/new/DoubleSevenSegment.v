`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2017 10:18:44 AM
// Design Name: 
// Module Name: DoubleSevenSegment
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


module DoubleSevenSegment(
input clk,
input [7:0] sw,
output [6:0] seg,
output [3:0] AN

    );
    
wire sel;
wire [6:0] flipper;
    
wire [3:0] d;



    
    assign AN[0] = sel;
    assign AN[1] = ~sel;
    assign AN[2] = 1;
    assign AN[3] = 1;
    
   ClockDivider(.clkin(clk), .clkout(sel));
   mux_array (.a(sw[3:0]), .b(sw[7:4]), .o(d[3:0]),.sel(sel));
   sevensegment( .wxyz(d),.seg(flipper));
   assign seg = ~flipper; 
    
endmodule
