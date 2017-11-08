`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2017 09:06:16 AM
// Design Name: 
// Module Name: testfsm
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


module testfsm(

    );
reg button;
wire out;
reg clk;
reg [8:0] count;
wire c;
      
    initial begin
    button = 0;
    clk = 0;
    count = 0;
    forever #10 clk = ~clk;
    
    end
    
    FSM dut(.b(button),.mclk(clk),.c(c),.d(out));
    
        always @(posedge clk) begin
        count = count+1;
        
        if(count%50 == 0) begin
        button <= ~button;
        //count = 0;
        end
        if(count%75 == 0) begin
                button <= ~button;
                //count = 0;
                end
        
        end
    
    
    endmodule
