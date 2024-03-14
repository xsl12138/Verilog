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
input clk;              // 系统时钟
output [7:0] SEG;  		// 分别对应CA、CB、CC、CD、CE、CF、CG和DP
output [7:0] AN;        // 8位数码管片选信号
wire clk_N;
wire [3:0] code;
wire [2:0] num;

    divider d(.clk(clk), .clk_N(clk_N));                     // 功能实现
    counter c(.clk(clk_N), .out(num));
    decoder3_8 decoder(.num(num), .sel(AN));
    rom8x4 rom(.addr(num), .data(code));
    pattern p(.code(code), .patt(SEG));
    
endmodule
