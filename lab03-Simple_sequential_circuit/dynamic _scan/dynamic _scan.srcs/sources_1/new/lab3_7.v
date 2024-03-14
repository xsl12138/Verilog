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
input clk;              // 系统时钟
input [3:0] SW;         //控制跑马灯的方向
output [7:0] SEG;  		// 分别对应CA、CB、CC、CD、CE、CF、CG和DP
output [7:0] AN;        // 8位数码管片选信号
wire clk_N;
wire [3:0] code;
//wire [2:0] num;
wire [2:0] num;

    divider d2(.clk(clk), .clk_N(clk_N));                     // 功能实现
//always@(SW)
//    if(SW[1] == 1)
//             ;               //暂停
//    else if(SW[2] == 1)     //向左跑
////        counter c2(.clk(clk_N), .out(num));   //这是结构描述，不能和行为描述（if-else）嵌套使用
//        num <= num + 1;
//    else //向右跑
////        counter_sub c_s(.clk(clk_N), .out(num));
//        num <= num - 1;
    counter_plus(.clk(clk_N), .sw(SW), .out(num));
    decoder3_8_plus decoder(.num(num), .sw(SW), .sel(AN));
    rom8x4 rom2(.addr(num), .data(code));
    pattern p2(.code(code), .patt(SEG));
    
endmodule