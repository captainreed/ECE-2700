`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2017 01:26:38 PM
// Design Name: 
// Module Name: gamestatetest
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


module gamestatetest();
reg p1;
reg p2;
reg reset;
reg clk;
reg [15:0]paddleclock;
wire [15:0]display;


Gamestate game(.paddle1(p1),.paddle2(p2),.reset(reset),.clk(clk),.display(display));

initial begin

p1 = 0;
p2 = 0;
reset = 0;
clk = 0;
paddleclock = 0;

forever #10 clk =~clk;
end


always @(posedge clk)begin
if(paddleclock%14 ==0)begin
p1 <= ~p1;
p2 <= ~p2;
end
paddleclock = paddleclock +1;

end



endmodule
