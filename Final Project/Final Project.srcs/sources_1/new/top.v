`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2017 12:35:04 PM
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
input paddle1,
input paddle2,
input clk
);
reg [15:0] display;
wire paddle1hit;
wire paddle2hit;
wire detectendzone;
wire detectswitch;
wire detectrecieving;
wire gameclock;


ClockDivider gameclk(.clkin(clk),.clkout(gameclock));
travelControl ctrl(.clk(gameclock),.direction(),.display(display),.endzone(detectendzone),.recieving(detectrecieving),.switch(detectswitch));


PaddleControl p1(.paddle(paddle1),.clk(gameclock),.recieving(detectrecieving),.endzone(detectendzone),.switch(detectswitch),.hit(paddle1hit));
PaddleControl p2(.paddle(paddle2),.clk(gameclock),.recieving(detectrecieving),.endzone(detectendzone),.switch(detectswitch),.hit(paddle2hit));

Gamestate game(.displaymonitor(),.paddle1hit(),.paddl2hit(),.detectendzone(),.detectswitch(),.detectrecieving(),.score(),direction());


endmodule
