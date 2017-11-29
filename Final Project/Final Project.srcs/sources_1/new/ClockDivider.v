<<<<<<< HEAD
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2017 09:30:26 AM
// Design Name: 
// Module Name: ClockDivider
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


module ClockDivider(
    input clkin,
    output reg clkout
    );
    
    reg [24:0] count;
    
        initial begin
        
        count = 0;
        clkout = 0;
        end
        
        always @(posedge clkin) begin
           // if ( count == 25'd25_000_000) begin
           if(count == 25'd2) begin
                count <=0;
                clkout<= ~clkout;
            end
            else begin
                count <= count + 1;
            end
        end
    
    
    
    
    
    
endmodule
=======
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2017 09:30:26 AM
// Design Name: 
// Module Name: ClockDivider
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


module ClockDivider(
    input clkin,
    output reg clkout
    );
    
    reg [24:0] count;
    
        initial begin
        
        count = 0;
        clkout = 0;
        end
        
        always @(posedge clkin) begin
           // if ( count == 25'd25_000_000) begin
           if(count == 25'd2) begin
                count <=0;
                clkout<= ~clkout;
            end
            else begin
                count <= count + 1;
            end
        end
    
    
    
    
    
    
endmodule
>>>>>>> 76c970f25758e2bb1b41a5ac5205bcf7e290a559
