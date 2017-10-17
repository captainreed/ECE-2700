`timescale 1ns / 1ps


module SevenSegmentCombinational(
    input w, x, y, z,
    output a, b, c, d, e, f, g
    );

    assign a = w|y|x&z|~x&~z;
    assign b = ~x|y&z|~y&~z;
    assign c = x|~y|z;
    assign d = w|~x&y|y&~z|~x&~z|x&~y&z;
    assign e = ~x&~z|y&~z;
    assign f = w|~y&~z|x&~z|x&~y;
    assign g = y&~z|x&~y|w|~x&y;
    
    
    
endmodule 