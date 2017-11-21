`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2017 12:51:04 PM
// Design Name: 
// Module Name: PaddleControl
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


module PaddleControl(
input paddle,
input clk,
input recieving,
input endzone,
input switch,
output reg hit
    );
    
    
reg prevpaddle;


    initial begin
    hit = 0;
    prevpaddle = 0;
    end
    
    always @(posedge clk)begin


if(paddle == ~prevpaddle)begin

    if(paddle&recieving&endzone&~switch)begin
    hit = 1;
    end
    else 
    hit = 0;
    end
    
prevpaddle = paddle;
end



    
    
endmodule
