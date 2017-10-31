`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 12:03:07 PM
// Design Name: 
// Module Name: testcount
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


module testcount();

reg mclk;
reg increment;
reg reset;
wire [7:0] Q;
reg [7:0] counter;


initial begin
mclk =0;
increment = 0;
reset = 0;
counter = 0;

#100

forever #1 mclk = ~mclk;

end

counter c1(.mclk(mclk),.incre(increment),.rst(reset),.Q(Q));


always @(posedge mclk) begin
increment = ~increment;
if(increment)
counter = counter +1;

if(counter == 255) begin
reset = ~reset;
end



end



endmodule
