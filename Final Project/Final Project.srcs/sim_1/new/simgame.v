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
reg clk;
wire gameclock;
reg direc;
wire [16:0] disp;
wire endcheck;
wire recieve;
wire swcheck;



initial begin
direc = 1;


forever clk = ~clk;

end


ClockDivider clk1(.clkin(clk),.clkout(gameclock));

travelRight trv(.clk(gameclock),.direction(direc),.display(disp),.endzone(endcheck),.recieving(recieve),.switch(swcheck));


always @(posedge gameclock)begin
if(swcheck)begin
direc = ~direc;
end

end


endmodule
