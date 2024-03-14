`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/28 20:12:24
// Design Name: 
// Module Name: dynamic_scan
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


module dynamic_scan(clk,  SEG, AN);
input clk;              // ϵͳʱ��
output [7:0] SEG;  		// �ֱ��ӦCA��CB��CC��CD��CE��CF��CG��DP
output [7:0] AN;        // 8λ�����Ƭѡ�ź�
wire clk_N;
wire [3:0] code;
wire [2:0] num;

    divider d(.clk(clk), .clk_N(clk_N));                     // ����ʵ��
    counter c(.clk(clk_N), .out(num));
    decoder3_8 decoder(.num(num), .sel(AN));
    rom8x4 rom(.addr(num), .data(code));
    pattern p(.code(code), .patt(SEG));
    
endmodule
