`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2017 12:00:33 PM
// Design Name: 
// Module Name: decoder4_16Test
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


module decoder4_16Test();
reg [3:0] dgt;
reg en;
wire [15:0] out;
reg clk;
reg [5:0] count;
    
    
decoder4_16 DC(
    .dgt(dgt),
    .op(out)
);

initial begin

dgt = 0;
en = 0;
clk = 0;
count = 0;

#100

forever #10 clk = ~clk;

end

    always @(posedge clk) begin
    count <= count + 1;
    if (count == 15) begin
    en <= ~en;
    count <= 0;
    end
    
    end
    
    
endmodule
