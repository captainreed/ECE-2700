`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2017 08:30:26 PM
// Design Name: 
// Module Name: displayMux
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

module displayMux(
input [15:0] beginning,
input [15:0] ending,
input [15:0] gamedisplay,
input [1:0] dspSelect,
output reg [15:0] dspout
    );
    
    reg [15:0]blank;
    
    initial begin
    blank = 16'b0000000000000000;
    end
    
    always @(*)begin
    case(dspSelect)
        2'b00 : dspout <=beginning;
        2'b01 : dspout <=gamedisplay;
        2'b10 : dspout <=ending;
        2'b11 : dspout <=blank;
    endcase
    end
endmodule
