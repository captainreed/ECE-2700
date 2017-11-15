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
input direction, //if direction is true the ball will travel right
output reg [16:0] display,
output wire endzone, // true if the ball is within the last 2 pixels
output reg recieving, //true if the person on the right is recieving
//output wire lastpixel, //indicates that the ball is at the final pixel and must either increment score or travel the other way
output reg switch //indicates that the ball is at the final pixel and must either increment score or travel the other way
    );


wire lastpixelright;
wire lastpixelleft;


assign lastpixelright = display[0];
assign lastpixelleft = display[16];

assign endzone = display[16]|display[15]|display[1]|display[0];


initial begin
recieving = 1;
switch = 0;
display = 16'b1000000000000000;
end

    
always @(posedge clk) begin

if(direction&~lastpixelright)begin
assign display = display >> 1;
switch = 0;
recieving = 1;
end

if(lastpixelright)begin
switch = 1;
end

if(~direction&~lastpixelleft)begin
assign display = display << 1;
switch = 0;
recieving = 0;
end

if(lastpixelleft)begin
switch = 1;
end





end
    
endmodule
