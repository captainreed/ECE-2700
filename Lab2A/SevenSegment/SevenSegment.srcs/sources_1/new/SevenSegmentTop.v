`timescale 1ns / 1ps


module SevenSegmentTop(
output [6:0] seg,
output [3:0] an,
input [7:0] sw
);

wire [6:0] D;

wire NAN = sw[3]&sw[1] | sw[3]&sw[2];
//sw 3 = w
// sw 2 = x


assign seg =~(D&~{7{NAN}});
assign an = ~sw[7:4];

//SevenSegmentTruthTable S1(
SevenSegmentCombinational S1(
    .w(sw[3]),
    .x(sw[2]),
    .y(sw[1]),
    .z(sw[0]),
    .a(D[0]),
    .b(D[1]),
    .c(D[2]),
    .d(D[3]),
    .e(D[4]),
    .f(D[5]),
    .g(D[6])
    
    );
    
    
    
endmodule
    
 