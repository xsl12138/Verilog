`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 21:10:01
// Design Name: 
// Module Name: SELECT_MOUDLE
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


module SELECT_MOUDLE(in ,out);
    input [3:0] in;
    output reg [7:0] out;

    always@(in)
    begin
        case(in)
            3'b000 : out[7:0] = 8'b11111110;
            3'b001 : out[7:0] = 8'b11111101;
            3'b010 : out[7:0] = 8'b11111011;
            3'b011 : out[7:0] = 8'b11110111;
            3'b100 : out[7:0] = 8'b11101111;
            3'b101 : out[7:0] = 8'b11011111;
            3'b110 : out[7:0] = 8'b10111111;
            default : out[7:0] = 8'b01111111;
        endcase
    end

endmodule
