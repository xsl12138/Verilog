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
input clk;                    // ����ʱ��
output reg [2:0] out;             // ����ֵ

always @(posedge clk)  begin  // ��ʱ�������ؼ�������1    //�˴���clkʵ���Ƕ���ģ���clk_N
    out <= out + 1;                         // ����ʵ��
end                           
endmodule
