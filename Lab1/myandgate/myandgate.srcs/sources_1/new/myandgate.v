`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Brandon Reed
// 
// Create Date: 09/07/2017 08:20:15 AM
// Design Name: Lab1
// Module Name: myandgate
// Project Name: myandgate
// Target Devices: basys3
// Tool Versions: Vivado 2015.4
// Description: 
//  a trivial module to implement and and gate
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module myandgate(
    output F,
    input A,
    input B
    );
    
    and U1(F,A,B);
    
endmodule
