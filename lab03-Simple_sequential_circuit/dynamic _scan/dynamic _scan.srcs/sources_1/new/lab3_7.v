`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/28 20:42:53
// Design Name: 
// Module Name: dynamic_scan_plus
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


module dynamic_scan_plus(clk, SW, SEG, AN);
input clk;              // ϵͳʱ��
input [3:0] SW;         //��������Ƶķ���
output [7:0] SEG;  		// �ֱ��ӦCA��CB��CC��CD��CE��CF��CG��DP
output [7:0] AN;        // 8λ�����Ƭѡ�ź�
wire clk_N;
wire [3:0] code;
//wire [2:0] num;
wire [2:0] num;

    divider d2(.clk(clk), .clk_N(clk_N));                     // ����ʵ��
//always@(SW)
//    if(SW[1] == 1)
//             ;               //��ͣ
//    else if(SW[2] == 1)     //������
////        counter c2(.clk(clk_N), .out(num));   //���ǽṹ���������ܺ���Ϊ������if-else��Ƕ��ʹ��
//        num <= num + 1;
//    else //������
////        counter_sub c_s(.clk(clk_N), .out(num));
//        num <= num - 1;
    counter_plus(.clk(clk_N), .sw(SW), .out(num));
    decoder3_8_plus decoder(.num(num), .sw(SW), .sel(AN));
    rom8x4 rom2(.addr(num), .data(code));
    pattern p2(.code(code), .patt(SEG));
    
endmodule