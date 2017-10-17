`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 01:06:18 PM
// Design Name: 
// Module Name: sevensegment
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


module sevensegment(
input [3:0] wxyz,
output [6:0] seg
    );
    
    wire [15:0] d;
    
    decoder4_16 D(.dgt(wxyz), .op(d));
    
    assign seg[0] = |(d&16'hB7C0); 
    assign seg[1] = |(d&16'hF9C0);
    assign seg[2] = |(d&16'hDFC0);
    assign seg[3] = |(d&16'hB6C0);
    assign seg[4] = |(d&16'hA280);
    assign seg[5] = |(d&16'h8EC0);
    assign seg[6] = |(d&16'h3EC0);
    
    
    
endmodule
