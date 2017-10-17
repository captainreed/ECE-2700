`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2017 09:46:29 AM
// Design Name: 
// Module Name: SevenSegmentTruthTable
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


module SevenSegmentTruthTable(

  input w, x, y,z
    output reg [6:0] D
    );
    
    always @(*) begin
        case(wxyz)
        
        4'b0000: D = 7'b1111110;
        4'b0001: D = 7'b0110000;
        4'b0010: D = 7'b1101101;
        4'b0011: D = 7'b1111001;
        4'b0100: D = 7'b0110011;
        4'b0101: D = 7'b1011011;
        4'b0110: D = 7'b1011111;
        4'b0111: D = 7'b1110000;
        4'b1000: D = 7'b1111111;
        4'b1001: D = 7'b1110011;
        
        default:D=7'b0000000;
        
        endcase
    
    end
    
endmodule
