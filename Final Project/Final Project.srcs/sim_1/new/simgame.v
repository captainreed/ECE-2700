`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2017 12:51:33 PM
// Design Name: 
// Module Name: simgame
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

module simgame();

reg clear;
reg gameclock;
reg direc;
wire [15:0] disp;
wire endcheck;
wire recieve;
wire swcheck;
reg [5:0]waittime;


//ClockDivider clk1(.clkin(clk),.clkout(gameclock));
travelControl ctrl(.clk(gameclock),.direction(direc),.clear(clear),.display(disp),.endzone(endcheck),.recieving(recieve),.switch(swcheck));

//travelControl trv(.clk(gameclock),.direction(direc),.beginning(start),.display(disp),.endzone(endcheck),.recieving(recieve),.switch(swcheck));

initial begin
direc = 1;
gameclock = 0;
clear = 0;
waittime = 0;


forever #10 gameclock = ~gameclock;

end


always @(posedge gameclock)begin

if(swcheck)begin
direc = ~direc;
end


//waittime = waittime +1;

//if(swcheck&(waittime==20))begin
//direc = ~direc;
//end

end


endmodule
