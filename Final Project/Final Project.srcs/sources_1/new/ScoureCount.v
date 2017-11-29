<<<<<<< HEAD
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
input p1hit,
input p2hit,
input hitrecord,
input recieving,
input leftendzone,
input rightendzone,
input switch,
input reset,
output reg [8:0] p1score,
output reg [8:0] p2score,
output reg scored
    );
    
    reg prevrecieve;
    
    initial begin
    prevrecieve = 1;
    p1score = 0;
    p2score = 0;
    scored = 0;
    end
    
always @(posedge clock)begin

if(~scored)begin

if(recieving&rightendzone&switch&~hitrecord)begin
p1score <= p1score +1;
scored <= 1;
end
else begin
scored = 0;
end

if(~recieving&leftendzone&switch&~hitrecord)begin
p2score <= p2score +1;
scored <=1;
end
else begin
scored = 0;
end 

end

if((prevrecieve==~recieving))begin
scored <=0;
prevrecieve <= recieving;
end

if(reset)begin
p1score = 0;
p2score = 0;
end

end
endmodule
=======
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
input p1hit,
input p2hit,
input recieving,
input switch,
input reset,
output reg [8:0] p1score,
output reg [8:0] p2score,
output reg scored
    );
    
    initial begin
    p1score = 0;
    p2score = 0;
    scored = 0;
    end
    
always @(posedge clock)begin

if(recieving&switch&~p1hit)begin
p2score <= p2score +1;
scored <= 1;
end
else begin
scored = 0;
end

if(~recieving&switch&~p2hit)begin
p1score <= p1score +1;
scored <=1;
end
else begin
scored = 0;
end

if(reset)begin
p1score = 0;
p2score = 0;
end

end
endmodule
>>>>>>> 76c970f25758e2bb1b41a5ac5205bcf7e290a559
