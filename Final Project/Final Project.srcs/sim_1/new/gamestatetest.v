<<<<<<< HEAD
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2017 01:26:38 PM
// Design Name: 
// Module Name: gamestatetest
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


module gamestatetest();
reg p1;
reg p2;
reg reset;
reg clk;
reg [15:0]clkcount;
wire [15:0]display;
wire [8:0]p1score;
wire [8:0]p2score;
wire gameclock;

ClockDivider gameclk(.clkin(clk),.clkout(gameclock));
Gamestate game(.paddle1(p1),.paddle2(p2),.reset(reset),.gameclock(gameclock),.display(display),.p1score(p1score),.p2score(p2score));

initial begin

p1 = 0;
p2 = 0;
reset = 0;
clk = 0;
clkcount = 0;

forever #10 clk =~clk;
end


always @(posedge gameclock)begin

if(clkcount ==3)begin
  reset = 1;
   end
if(clkcount ==4)begin
     reset = 0;
      end
   

 if(clkcount ==17)begin
   p1 <= 1;
   p2 <= 1;
   end
   
   
   if(clkcount ==22)begin
       p1 <= 0;
       p2 <= 0;
       end
      
       
//   if(clkcount ==29)begin
//    p1 <= 1;
//    p2 <= 1;
//    end
           
//   if(clkcount ==35)begin
//    p1 <= 0;
//    p2 <= 0;
//    end
           
    if(clkcount ==50)begin
    p1 <= 1;
    p2 <= 1;
    end
                      
   if(clkcount ==56)begin
   p1 <= 0;
   p2 <= 0;
   end
   
   clkcount = clkcount +1;
               
end



endmodule
=======
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2017 01:26:38 PM
// Design Name: 
// Module Name: gamestatetest
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


module gamestatetest();
reg p1;
reg p2;
reg reset;
reg clk;
reg [15:0]clkcount;
wire [15:0]display;
wire [8:0]p1score;
wire [8:0]p2score;


Gamestate game(.paddle1(p1),.paddle2(p2),.reset(reset),.clk(clk),.display(display),.p1score(p1score),.p2score(p2score));

initial begin

p1 = 0;
p2 = 0;
reset = 0;
clk = 0;
clkcount = 0;

forever #10 clk =~clk;
end


always @(posedge clk)begin

if(clkcount ==8)begin
  reset = 1;
   end
if(clkcount ==10)begin
     reset = 0;
      end
   

 if(clkcount ==14)begin
   p1 <= 1;
   p2 <= 1;
   end
   
   
   if(clkcount ==18)begin
       p1 <= 0;
       p2 <= 0;
       end
      
       
   if(clkcount ==27)begin
    p1 <= 1;
    p2 <= 1;
    end
           
   if(clkcount ==32)begin
    p1 <= 0;
    p2 <= 0;
    end
           
    if(clkcount ==45)begin
    p1 <= 1;
    p2 <= 1;
    end
                      
   if(clkcount ==48)begin
   p1 <= 0;
   p2 <= 0;
   end
   
   clkcount = clkcount +1;
               
end



endmodule
>>>>>>> 76c970f25758e2bb1b41a5ac5205bcf7e290a559
