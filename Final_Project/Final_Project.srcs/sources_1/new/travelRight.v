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


module travelRight(
input clk,
input direction, //if direction is true the ball will travel right
output wire [16:0] display,
output endzone, // true if the ball is within the last 2 pixels
output recieving, //true if the person on the right is recieving
output switch //indicates that the ball is at the final pixel and must either increment score or travel the other way
    );

wire lastpixel;

initial begin
endzone = 0;
recieving = 1;
switch = 0;
assign display = 16'b0100000000000000;
assign lastpixel = display[15]|display[0];
assign endzone = display[15]|display[14]|display[1]|display[0];
end

    
always @(posedge clk) begin

if(direction&~lastpixel)begin
assign display = display >> 1;
switch = 0;
end
if(direction&lastpixel)begin
switch = 1;
end
if(~direction&~lastpixel)begin
assign display = display << 1;
switch = 0;
end
if(~direction&lastpixel)begin
switch = 1;
end
    
end
    
endmodule
