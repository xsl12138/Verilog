`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/18 21:38:57
// Design Name: 
// Module Name: divider
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


module divider(clk, clk_N);
input clk;                      // 系统时钟
output reg clk_N;                   // 分频后的时钟
parameter N = 20_000_000;      // 1Hz的时钟,N=fclk/fclk_N
reg [31:0] counter;             /* 计数器变量，通过计数实现分频。当计数器从0计数到(N/2-1)时，输出时钟翻转，计数器清零 */
initial
begin
    clk_N = 0;
    counter = 0;
end
always @(posedge clk)  begin    // 时钟上升沿
    counter <= counter + 1;                        // 功能实现
//    counter = counter + 1;                        //时序逻辑电路一般用非阻塞赋值，而不用阻塞赋值
    if(counter == N/2 - 1) begin
        counter <= 0;
        clk_N <= ~clk_N;
//        counter = 0;
//        clk_N = ~clk_N;
    end
end          
endmodule
