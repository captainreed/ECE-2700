`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2017 09:48:10 AM
// Design Name: 
// Module Name: SevenSegmentTop
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


module SevenSegmentTop(
output [6:0] seg,
output [3:0] an,
input [7:0] sw
);

wire [6:0] D;
assign seg = ~D;
assign an = ~sw[7:4];

//SevenSegmentTruthTable S1(
SevenSegmentCombinational S1(
    .w(sw[3]),
    .x(sw[2]),
    .y(sw[1]),
    .z(sw[0]),
    .a(D[0]),
    .b(D[1]),
    .c(D[2]),
    .d(D[3]),
    .e(D[4]),
    .f(D[5]),
    .g(D[6]),
    
    );
    
endmodule
