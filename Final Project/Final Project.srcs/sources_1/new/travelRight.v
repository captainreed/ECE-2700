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
input clear,
output wire [15:0] display,
output wire endzone, // true if the ball is within the last 2 pixels
output reg recieving, //true if the person on the right is recieving
//output wire lastpixel, //indicates that the ball is at the final pixel and must either increment score or travel the other way
output reg switch //indicates that the ball is at the final pixel and must either increment score or travel the other way
    );


wire lastpixelright;
wire lastpixelleft;
reg [15:0] displaymonitor;

assign lastpixelright = displaymonitor[0];
assign lastpixelleft = displaymonitor[15];
assign display = displaymonitor;

assign endzone = displaymonitor[15]|displaymonitor[14]|displaymonitor[13]|displaymonitor[2]|displaymonitor[1]|displaymonitor[0];

initial begin
switch = 0;
recieving = direction;
displaymonitor = 16'b0100000000000000;
end

    
always @(posedge clk) begin

if((direction&lastpixelleft)|(direction&~lastpixelright))begin
displaymonitor <= displaymonitor >> 1;
switch <= 0;
recieving <= 1;
end

if(direction&lastpixelright)begin
switch <= 1;
end

if((~direction&lastpixelright)|(~direction&~lastpixelleft))begin 
displaymonitor <= displaymonitor << 1;      
switch <= 0;
recieving <= 1;                           
end

if(~direction&lastpixelleft)begin
switch <= 1;
end

if(clear)begin
displaymonitor = 0;
end

end
    
endmodule
