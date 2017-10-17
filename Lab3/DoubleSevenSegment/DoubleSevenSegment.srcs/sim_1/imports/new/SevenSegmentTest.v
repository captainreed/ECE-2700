`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2017 10:02:21 AM
// Design Name: 
// Module Name: SevenSegmentTest
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


module SevenSegmentTest();

reg clk;
reg [3:0] wxyz;

wire [6:0] segNew;
wire [6:0] segTruthTable; 
wire [6:0] err;
wire not_the_same;

sevensegment DUT (
    .wxyz(wxyz),
    .seg(segNew)
    );
    
SevenSegmentTruthTable REF (
        .wxyz(wxyz),
        .a(segTruthTable)
        );
    
    assign err = segNew^segTruthTable;
    assign not_the_same = |err;
    
    initial begin
    wxyz = 0;
    clk = 0;
    
    
    #100;
    
    forever #10 clk = ~clk;
    
    end
    
    always @(posedge clk) begin
        wxyz = wxyz+1;
    end
    
endmodule
