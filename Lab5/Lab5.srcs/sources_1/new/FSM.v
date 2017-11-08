`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2017 08:14:06 AM
// Design Name: 
// Module Name: FSM
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


module FSM(
input b,
//input tc,
input mclk,
output reg c,
output reg d
    );
    
reg [1:0] state;
wire tc;


initial begin
state = 0;
end

dbclock d1(.clkin(mclk),.c(c),.clkout(tc));

always @(posedge mclk ) begin
    case (state)
    2'b00: begin //wait state
        state[0] <= b;
        state[1] <= 0;
        d <= 0; 
        c <= b;
    end
    2'b01: begin //pressed state
        state[0] <= b;
        state[1] <= tc;
        d <= 0;
        c <= b&~tc;
    end
    2'b11: begin // held state
        state[0] <= 1;
        state[1] <=b;
        d <= 0;
        c <= ~b;
    end
    2'b10: begin // released state
        state[0] <= b;
        state[1] <= ~tc;
        d <= ~b&tc;
        c <= ~b&~tc;
    end
    endcase
end






    
    
endmodule
