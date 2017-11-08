`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2017 10:01:55 AM
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


module counter (
input clk ,
input incr ,
input rst ,
output reg [7:0] q
);
always @ ( posedge clk ) begin
if ( rst )
q <= 0;
else if ( incr )
q <= q + 1;
end
endmodule
