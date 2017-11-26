`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2017 01:12:40 PM
// Design Name: 
// Module Name: paddlesim
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


module paddlesim();

    reg p1;
    reg p2;
    reg reset;
    reg direction;
    reg clear;
    wire endzone;
    wire recieving;
    wire switch;
    reg clk;
    reg [10:0] paddleclock;
    wire [15:0]display;
    wire p1hit;
    wire p2hit;

    
    
    travelControl ctrl(.clk(clk),.direction(direction),.reset(clear),.displaymonitor(display),.endzone(endzone),.recieving(recieving),.switch(switch));

    PaddleControl pad1(.paddle(p1),.clk(clk),.recieving(recieving),.endzone(endzone),.switch(switch),.hit(p1hit));
    PaddleControl pad2(.paddle(p2),.clk(clk),.recieving(~recieving),.endzone(endzone),.switch(switch),.hit(p2hit));
    
    initial begin
    clear = 0;
    p1 = 0;
    p2 = 0;
    reset = 0;
    clk = 0;
    paddleclock = 0;
    direction = 1;
    
    forever #10 clk =~clk;
    end
    
    
    always @(posedge clk)begin
    
    if(p1hit|p2hit)begin
    direction = ~direction;
    end
    
    if(paddleclock ==12)begin
    p1 <= 1;
    p2 <= 1;
    end
    
    
    if(paddleclock ==18)begin
        p1 <= 0;
        p2 <= 0;
        end
       
        
    if(paddleclock ==27)begin
            p1 <= 1;
            p2 <= 1;
            end
            
    if(paddleclock ==32)begin
          p1 <= 0;
          p2 <= 0;
            end
            
     if(paddleclock ==45)begin
                       p1 <= 1;
                       p2 <= 1;
                       end
                       
               if(paddleclock ==48)begin
                     p1 <= 0;
                     p2 <= 0;
                       end
                
     paddleclock = paddleclock +1;
     end

endmodule
