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


module Gamestate(
input paddle1,
input paddle2,
input reset,
input clk,
output [15:0] display
);


wire [8:0]p1score;
wire [8:0]p2score;

reg [15:0] display;//active display tied to the leds
reg [15:0] gamedisplay;//will display the ball going back and forth
reg [15:0] beginning;//the beginning screen
reg [15:0] endscreen;//the end screen
reg clear;
wire gameclock;
reg direction;
reg gameon;
reg maxscore;


wire paddle1hit;
wire paddle2hit;
wire detectendzone;
wire detectswitch;
wire detectrecieving;



ClockDivider gameclk(.clkin(clk),.clkout(gameclock));

PaddleControl p1(.paddle(paddle1),.clk(gameclock),.recieving(detectrecieving),.endzone(detectendzone),.switch(detectswitch),.hit(paddle1hit));
PaddleControl p2(.paddle(paddle2),.clk(gameclock),.recieving(detectrecieving),.endzone(detectendzone),.switch(detectswitch),.hit(paddle2hit));

travelControl ctrl(.clk(gameclock),.direction(direction),.clear(clear),.display(gamedisplay),.endzone(detectendzone),.recieving(detectrecieving),.switch(detectswitch));

ScoreCount scoreboard(.clock(gameclock),.p1(paddle1hit),.p2(paddle2hit),.recieving(detectrecieving),.switch(detectswitch),.reset(reset),.score1(p1score),.score2(p2score));

initial begin
endscreen = 16'b1111111111111111;
clear = 0;
gameclock = 0;
direction = 1;
display = 16'b0000000000000000;
gameon = 0;
maxscore = 10;
end

always @(posedge gameclock)begin

if(gameon)begin
display = gamedisplay;
end

if(reset)begin
gameon = 1;
end

if((p1score == maxscore)|(p2score == maxscore))begin
gameon = 0;
display = endscreen;
end

end

endmodule