`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2017 12:35:39 PM
// Design Name: 
// Module Name: travelRight
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


module travelControl(
input clk,
input [1:0]direction, //if direction is true the ball will travel right
input reset,
output reg [15:0] displaymonitor,
//output wire [15:0] display,
output wire leftendzone, // true if the ball is within the last 2 pixels
output wire rightendzone,
output wire recieving, //true if the person on the right is recieving
//output wire lastpixel, //indicates that the ball is at the final pixel and must either increment score or travel the other way
output wire switch //indicates that the ball is at the final pixel and must either increment score or travel the other way
    );

reg [15:0]start;
wire lastpixelright;
wire lastpixelleft;
//reg [15:0] displaymonitor;

assign lastpixelright = displaymonitor[0];
assign lastpixelleft = displaymonitor[15];
//assign display = displaymonitor;
assign recieving = direction;

assign leftendzone = displaymonitor[15]|displaymonitor[14]|displaymonitor[13];
assign rightendzone = displaymonitor[2]|displaymonitor[1]|displaymonitor[0];
assign switch = displaymonitor[15]|displaymonitor[0];

initial begin
//switch = 0;
start = 16'b0100000000000000;
displaymonitor = start;
end
    
always @(posedge clk) begin

if(direction ==2)begin
displaymonitor = start;
end


if(direction ==1)begin
if(lastpixelleft|~lastpixelright)begin
displaymonitor <= displaymonitor >> 1;
end
end


if(direction == 0)begin
if(lastpixelright|~lastpixelleft)begin 
displaymonitor <= displaymonitor << 1;                             
end
end

if(reset)begin
displaymonitor = start;
end

end
    
endmodule
