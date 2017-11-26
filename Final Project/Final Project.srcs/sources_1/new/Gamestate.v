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
output wire [15:0] display,
output [8:0]p1score,
output [8:0]p2score
);

wire [15:0] gamedisplay;//will display the ball going back and forth
reg [15:0] beginning;//the beginning screen
reg [15:0] endscreen;//the end screen

wire gameclock;
reg [1:0] direction;
reg gameon;
reg [8:0]maxscore;
reg hasbegun;
reg [1:0]dspSelect;


wire paddle1hit;
wire paddle2hit;
wire leftendzone;
wire rightendzone;
wire detectswitch;
wire recieving;
wire scored;


ClockDivider gameclk(.clkin(clk),.clkout(gameclock));

PaddleControl p1(.paddle(paddle1),.clk(gameclock),.recieving(recieving),.endzone(rightendzone),.switch(detectswitch),.hit(paddle1hit));
PaddleControl p2(.paddle(paddle2),.clk(gameclock),.recieving(~recieving),.endzone(leftendzone),.switch(detectswitch),.hit(paddle2hit));

travelControl ctrl(.clk(gameclock),.direction(direction),.reset(reset),.displaymonitor(gamedisplay),.leftendzone(leftendzone),.rightendzone(rightendzone),.recieving(recieving),.switch(detectswitch));

ScoreCount scoreboard(.clock(gameclock),.p1hit(paddle1hit),.p2hit(paddle2hit),.recieving(recieving),.switch(detectswitch),.reset(reset),.p1score(p1score),.p2score(p2score),.scored(scored));
 
displayMux dmux(.beginning(beginning),.ending(endscreen),.gamedisplay(gamedisplay),.dspSelect(dspSelect),.dspout(display));

initial begin

endscreen = 16'b1111111111111111;
direction = 2;
beginning = 16'b0000000000000000;
gameon = 0;
maxscore = 10;
hasbegun = 0;
end

always @(posedge gameclock)begin

if(~gameon&~hasbegun)begin
dspSelect = 2'b00;
end

if(reset)begin
gameon <= 1;
hasbegun <= 1;
direction <= 1;
dspSelect <= 2'b01;
end


    if(gameon)begin//instructions for gameplay while game is running
    
        if((p1score == maxscore)|(p2score == maxscore))begin
        gameon <= 0;
        dspSelect <= 2'b10;
        end
        
            if(paddle1hit|paddle2hit|scored)begin
            
                if(direction == 0)begin
                direction = 1;
                end
                else if(direction ==1)begin
                direction = 0;
                end
        
            end
    
    end// end of gameplay instructions

end

endmodule