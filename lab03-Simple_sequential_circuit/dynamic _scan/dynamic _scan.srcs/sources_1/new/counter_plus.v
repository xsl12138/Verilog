`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/28 21:29:15
// Design Name: 
// Module Name: counter_plus
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


module counter_plus(clk, sw, out);
    input clk;                    // 计数时钟
    input [2:0] sw;
    output reg [2:0] out;             // 计数值
    
    always @(posedge clk)  begin  // 在时钟上升沿计数器加1
        if(sw[1] == 1);
        else if(sw[2] == 1)
            out <= out + 1;                         // 功能实现
        else if(sw[0] == 1)
            out <= out - 1;
        else    ;
    end
endmodule
