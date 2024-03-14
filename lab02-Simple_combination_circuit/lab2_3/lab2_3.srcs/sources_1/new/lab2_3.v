`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 20:28:38
// Design Name: 
// Module Name: _7Seg_Driver_Choice
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


module _7Seg_Driver_Choice(SW, SEG, AN, LED);
    input [15:0] SW;   // 16位拨动开关
    output [7:0] SEG;  // 7段数码管驱动，低电平有效
    output [7:0] AN;// 7段数码管片选信号，低电平有效
    output [15:0] LED;   // 16位LED显示
    
    assign LED[15:0] = SW[15:0];
    //函数的调用是结构描述
    SELECTOR_MOUDLE(.in(SW[15:13]),.out(AN[7:0]));  //用于选择哪一个七段数码管来显示数字
    DECODER_MOUDLE(.in(SW[3:0]),.out(SEG[7:0]));   //用于将输入的二进制码转换成对应的十进制数字（进一步哪些段数码管要亮）
    
endmodule
