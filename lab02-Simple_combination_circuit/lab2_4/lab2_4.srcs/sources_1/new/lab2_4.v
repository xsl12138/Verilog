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
    input [15:0] SW;   // 16λ��������
    output [7:0] SEG;  // 7��������������͵�ƽ��Ч
    output [7:0] AN;// 7�������Ƭѡ�źţ��͵�ƽ��Ч
    output [15:0] LED;   // 16λLED��ʾ
    
    DECODER_MOUDLE(.in1(SW[3:0]), .in2(SW[15]), .out(SEG[7:0]));
    SELECT_MOUDLE(.in(SW[14:12]), .out(AN[7:0]));
    
    assign LED[15:0] = SW[15:0];
endmodule
