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
input clk;                      // ϵͳʱ��
output reg clk_N;                   // ��Ƶ���ʱ��
parameter N = 20_000_000;      // 1Hz��ʱ��,N=fclk/fclk_N
reg [31:0] counter;             /* ������������ͨ������ʵ�ַ�Ƶ������������0������(N/2-1)ʱ�����ʱ�ӷ�ת������������ */
initial
begin
    clk_N = 0;
    counter = 0;
end
always @(posedge clk)  begin    // ʱ��������
    counter <= counter + 1;                        // ����ʵ��
//    counter = counter + 1;                        //ʱ���߼���·һ���÷�������ֵ��������������ֵ
    if(counter == N/2 - 1) begin
        counter <= 0;
        clk_N <= ~clk_N;
//        counter = 0;
//        clk_N = ~clk_N;
    end
end          
endmodule
