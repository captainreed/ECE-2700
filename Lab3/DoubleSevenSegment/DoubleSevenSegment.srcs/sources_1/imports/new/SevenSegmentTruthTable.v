`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2017 08:17:19 AM
// Design Name: 
// Module Name: SevenSegmentTruthTable
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module SevenSegmentTruthTable(
    input[3:0] wxyz,
    output [6:0] a
    );
    
    
     reg [6:0] D;
     
     
     
     assign a[0] = D[6];
     assign a[1] = D[5];
     assign a[2] = D[4];
     assign a[3] = D[3];
     assign a[4] = D[2];
     assign a[5] = D[1];
     assign a[6] = D[0];
          
     
    //always @(*) begin
    //case(N)
    always @(*) begin
        case(wxyz) 
        //case(N)
        
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
        
        default: D = 7'b0000000;
        
        endcase
    
    end
    
    
endmodule
