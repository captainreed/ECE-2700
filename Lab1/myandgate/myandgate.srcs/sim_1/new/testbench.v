`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2017 08:26:01 AM
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg A,B;
    wire F;
    
    myandgate DUT(F,A,B);
    
    initial begin
        A = 0; B = 0;
        #10
        A = 1; B = 0;
        #10
        A = 0; B = 1;
        #10
        A = 1; B = 1;
        #10
        $finish;
    end
   
endmodule
