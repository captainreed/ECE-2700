`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2017 09:47:41 AM
// Design Name: 
// Module Name: SevenSegmentCombinational
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


module SevenSegmentCombinational(
    input w, x, y, z
output a, b, c, d, e, f, g
);

assign a = w|y|x&z|~x&~z;
assign b = ~x|y&z|~y&z;
assign c = x|~y|z;
assign d = w|~x&y|y&~z|~x&~z|x&~y&z;
assign e = ~x&~z|y&~z;
assign f = w|~y&~z|x&~z|x&~y;
assign g = y&~z|x&~y|w|~x&y;

endmodule
