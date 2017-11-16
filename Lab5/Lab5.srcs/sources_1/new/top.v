`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2017 10:00:22 AM
// Design Name: 
// Module Name: top
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


module top(
input button,
input rst,
input clock,
output wire [7:0] Q
    );
    
wire [1:0] cout;
wire [1:0] dout;
//wire [7:0] Q;
    
FSM b1(.b(button),.mclk(clock),.c(cout[0]),.d(dout[0]));
FSM b2(.b(rst),.mclk(clock),.c(cout[1]),.d(dout[1]));

counter c1(.clk(clock),.incr(dout[0]),.rst(dout[1]),.q(Q));
    
endmodule
