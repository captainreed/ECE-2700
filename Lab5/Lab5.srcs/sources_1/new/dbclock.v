`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2017 08:53:49 AM
// Design Name: 
// Module Name: dbclock
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


module dbclock(
 input clkin,
 input c,
 output reg clkout
        );
        
        reg [24:0] count;
        
            initial begin
            
            count = 0;
            clkout = 0;
            end
            
            always @(posedge clkin) begin
            
            if(c) begin
            count <=0;
            end
            
            if ( count == 25'd5_000) begin
              // if(count == 25'd8) begin
            count <=0;
            clkout<= ~clkout;
            end
            else begin
            count <= count + 1;
            end
            
            
            end
        
        
        
        
        
        
    endmodule
