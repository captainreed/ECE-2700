`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2017 08:22:44 AM
// Design Name: 
// Module Name: rotateLed
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


module rotateLed(
    input mclk,
    input shift,
    input rst,
    input [7:0] d0,
    output [7:0] Q
    );
    
    //this might need to be a register
    wire clkdriver;
   
   ClockDivider clkdiv(.clkin(mclk),.clkout(clkdriver));
     Dregester d0(
    .d(Q[7]),
    .d0(d0[0]),
    .rst(rst),
    .shift(shift),
    .clk(clkdriver),
    .q(Q[0]));


   genvar i;
   
   generate 
   
   for(i = 1; i < 8; i = i+1) begin : rotating
        Dregester d1(.d(Q[i-1]),.d0(d0[i]),.rst(rst),.shift(shift),.clk(clkdriver),.q(Q[i]));
    end
   endgenerate
    
    
    
endmodule
