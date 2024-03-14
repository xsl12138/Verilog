`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 21:10:48
// Design Name: 
// Module Name: DECODER_MOUDLE
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


module DECODER_MOUDLE(in1, in2, out);
    input [3:0] in1;
    input in2;
    output reg [7:0] out;
    
    always@(in1 or in2) //表达或者要用 or
    begin
        case(in2)
            1'b0 : 
            case(in1)
                4'b0000 : out[7:0] = 8'b11000000;
                4'b0001 : out[7:0] = 8'b11111001;
                4'b0010 : out[7:0] = 8'b10100100;
                4'b0011 : out[7:0] = 8'b10110000;
                4'b0100 : out[7:0] = 8'b10011001;
                4'b0101 : out[7:0] = 8'b10010010;
                4'b0110 : out[7:0] = 8'b10000010;
                4'b0111 : out[7:0] = 8'b11111000;
                4'b1000 : out[7:0] = 8'b10000000;
                4'b1001 : out[7:0] = 8'b10011000;  
                4'b1010 : out[7:0] = 8'b11000000;
                4'b1011 : out[7:0] = 8'b11111001;
                4'b1100 : out[7:0] = 8'b10100100;
                4'b1101 : out[7:0] = 8'b10110000;
                4'b1110 : out[7:0] = 8'b10011001;
                default : out[7:0] = 8'b10010010;  
            endcase     
            1'b1 :
            case(in1)
                4'b0000 : out[7:0] = 8'b11000000;
                4'b0001 : out[7:0] = 8'b11000000;
                4'b0010 : out[7:0] = 8'b11000000;
                4'b0011 : out[7:0] = 8'b11000000;
                4'b0100 : out[7:0] = 8'b11000000;
                4'b0101 : out[7:0] = 8'b11000000;
                4'b0110 : out[7:0] = 8'b11000000;
                4'b0111 : out[7:0] = 8'b11000000;
                4'b1000 : out[7:0] = 8'b11000000;
                4'b1001 : out[7:0] = 8'b11000000;  
                default : out[7:0] = 8'b11111001;
            endcase //in1
        endcase     //in2

    end

endmodule
