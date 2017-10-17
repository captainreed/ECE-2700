`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 10:02:31 AM
// Design Name: 
// Module Name: test_mux
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


module test_mux();

reg [1:0] i;
reg sel;
wire out;

mux DUT(
    .i(i),
    .sel(sel),
    .o(out)
);

    initial begin

        i = 2'd1;
        sel = 0;
    

        #100;

        forever #100 sel = ~sel;
     end


endmodule
