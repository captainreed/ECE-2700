`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2017 09:13:56 AM
// Design Name: 
// Module Name: latchTest
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


module latchTest();

// Inputs
reg d;
reg clk;

// Outputs
wire q;

// Other signals :
reg mclk;
reg [2:0] count;

// Instantiate the Unit Under Test ( UUT )
DFF_dataflow uut (
.clk(clk),
.d(d),
.q(q)
);

    initial begin
// Initialize Inputs
    clk = 0;
    d = 0;
    count = 0;
    mclk = 0;
    clk = 0;

        forever #10 mclk = ~mclk;
    end

    always @(posedge mclk) begin
    count = count + 1;
    clk = count[2]^count[0];
    d = count[1];
    end

endmodule
