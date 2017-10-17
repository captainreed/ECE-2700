`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2017 12:22:47 PM
// Design Name: 
// Module Name: jkfftest
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


module jkfftest(
input reg j;
input reg k;
input reg clk;

output wire q;
output integer idx;
);

wire [11:0] jvals = 8'b0110_1010;
wire [11:0] kvals = 8'b0111_0001;

JKFF uut (
.clk(clk),
.j(j),
.k(k),
.q(q)
);

initial begin
    j = 0;
    k = 1;
    idx = 0;
    clk = 1;
    
forever #10 clk=~clk;
end

always @(posedge clk) begin
    idx = (idx +1)%8;
    j = jvals[idx];
end
endmodule
