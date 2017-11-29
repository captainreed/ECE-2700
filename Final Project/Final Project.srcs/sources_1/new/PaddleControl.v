<<<<<<< HEAD
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
output reg hit,
output reg hitrecord
    );
    
    
reg prevpaddle;
//reg hitrecord;//value is 1 if the ball paddle has been up in the endzone during this cycle


    initial begin
    hit = 0;
    prevpaddle = 0;
    hitrecord = 0;
    end
    
    always @(posedge clk)begin
    
if(~recieving)begin
hitrecord <= 0;
end


if(~hitrecord)begin



    if(paddle&recieving&endzone)begin
    hit <= 1;
    hitrecord <= 1;
    end
    else begin
    hit <= 0;
    hitrecord <= 0;
    end
   // prevpaddle <= paddle;
 
end 
else begin
hit <= 0;
end
end

=======
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
reg hitrecord;//value is 1 if the ball paddle has been up in the endzone during this cycle


    initial begin
    hit = 0;
    prevpaddle = 0;
    hitrecord = 0;
    end
    
    always @(posedge clk)begin
    
if(~recieving|~endzone)begin
hitrecord = 0;
end


if((paddle == ~prevpaddle)&~hitrecord)begin

    if(paddle&recieving&endzone&~switch)begin
    hit = 1;
    hitrecord = 1;
    end
    else begin
    hit = 0;
    hitrecord = 0;
    end
    prevpaddle = paddle;
 
end 
else 
hit = 0;
hitrecord = 0;
end

>>>>>>> 76c970f25758e2bb1b41a5ac5205bcf7e290a559
endmodule