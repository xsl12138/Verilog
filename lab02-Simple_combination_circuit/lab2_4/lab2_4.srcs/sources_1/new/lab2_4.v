`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 21:03:52
// Design Name: 
// Module Name: Binary_to_BCD
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


module Binary_to_BCD(SW, SEG, AN, LED);
    input [15:0] SW;   // 16位拨动开关
    output [7:0] SEG;  // 7段数码管驱动，低电平有效
    output [7:0] AN;// 7段数码管片选信号，低电平有效
    output [15:0] LED;   // 16位LED显示
    
    DECODER_MOUDLE(.in1(SW[3:0]), .in2(SW[15]), .out(SEG[7:0]));
    SELECT_MOUDLE(.in(SW[14:12]), .out(AN[7:0]));
    
    assign LED[15:0] = SW[15:0];
endmodule
