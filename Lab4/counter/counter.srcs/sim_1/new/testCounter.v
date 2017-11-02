`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2017 10:06:39 PM
// Design Name: 
// Module Name: testCounter
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


module testCounter();

//inputs
reg incriment;
reg reset;
reg theclock;

reg [7:0] count;

//output
wire [7:0] qfinal;


counter uut( .incr(incriment),.rst(reset),.mclk(theclock),.Q(qfinal));

    initial begin
    
        theclock = 0;
        reset = 0;
        incriment = 0;
        count = 0;
    
        forever #50 theclock = ~theclock;
    end
    
    always @(posedge theclock) begin
    
    count = count + 1;
    incriment = incriment +1;
    
    if (count == 255)begin
    reset = ~ reset;
    end
    
    end


endmodule
