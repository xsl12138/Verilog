`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/28 19:16:24
// Design Name: 
// Module Name: divide_and_counter
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


module divide_and_counter(clk, out);
input clk;
output [2:0] out;
wire clk_N;

    divider d(.clk(clk), .clk_N(clk_N));    //实例化调用
    counter c(.clk(clk_N), .out(out));
    
endmodule
