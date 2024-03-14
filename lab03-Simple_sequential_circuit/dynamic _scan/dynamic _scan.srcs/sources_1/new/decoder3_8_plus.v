`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/28 21:40:34
// Design Name: 
// Module Name: decoder3_8_plus
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


module decoder3_8_plus(num, sw, sel);
    input [2:0] num;       // 数码管编号：0~7
    input [2:0] sw;
    output reg [7:0] sel;       // 7段数码管片选信号，低电平有效
        always@(num or sw) begin
        if(sw[0] == 0 && sw[1] == 0 && sw[2] == 0)
            sel[7:0] = 8'b11111111;
        else
            case(num)
                3'b000 : sel[7:0] = 8'b11111110;
                3'b001 : sel[7:0] = 8'b11111101;
                3'b010 : sel[7:0] = 8'b11111011;
                3'b011 : sel[7:0] = 8'b11110111;
                3'b100 : sel[7:0] = 8'b11101111;
                3'b101 : sel[7:0] = 8'b11011111;
                3'b110 : sel[7:0] = 8'b10111111;
                default : sel[7:0] = 8'b01111111;
            endcase
        end 
endmodule
