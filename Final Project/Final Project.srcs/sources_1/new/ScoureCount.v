`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2017 09:04:10 PM
// Design Name: 
// Module Name: ScoureCount
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


module ScoreCount(
input clock,
input p1,
input p2,
input recieving,
input switch,
input reset,
output reg [8:0] p1score,
output reg [8:0] p2score
    );
    
    initial begin
    p1score = 0;
    p2score = 0;
    end
    
always @(posedge clock)begin
if(recieving&switch&~p1)begin
p2score = p2score +1;
end

if(~recieving&switch&~p2)begin
p1score = p1score +1;
end

if(reset)begin
p1score = 0;
p2score = 0;
end

end
endmodule
