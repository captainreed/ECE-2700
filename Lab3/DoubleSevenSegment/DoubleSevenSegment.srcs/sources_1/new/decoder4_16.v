`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2017 08:49:02 AM
// Design Name: 
// Module Name: decoder4_16
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


module decoder4_16(
    input [3:0] dgt,
    output [15:0] op

    );
    
    wire en1, en2;   
    
    assign en2 = dgt[3];
    assign en1 = ~en2;
    
//    //if (dgt[3] == 0)
//       // begin
//           assign en1 = 1;
//           assign en2 = 0;
//        end
//    else
//        begin
//           assign en1 = 0;
//           assign en2 = 1;
//        end
    
    
    decoder3_8 d1(
        .en(en1),
        .d(dgt[2:0]),
        .o(op[7:0])
        
        );
       
     decoder3_8 d2(
               .en(en2),
               .d(dgt[2:0]),
               .o(op[15:8])
               
               );
    
    
endmodule
