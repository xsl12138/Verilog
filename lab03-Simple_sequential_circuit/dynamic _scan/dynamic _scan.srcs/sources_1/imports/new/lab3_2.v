`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/28 19:13:06
// Design Name: 
// Module Name: counter
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


module counter(clk, out);
input clk;                    // 计数时钟
output reg [2:0] out;             // 计数值

always @(posedge clk)  begin  // 在时钟上升沿计数器加1
    out <= out + 1;                         // 功能实现
end                           
endmodule
