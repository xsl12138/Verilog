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
    input [15:0] SW;   // 16λ��������
    output [7:0] SEG;  // 7��������������͵�ƽ��Ч
    output [7:0] AN;// 7�������Ƭѡ�źţ��͵�ƽ��Ч
    output [15:0] LED;   // 16λLED��ʾ
    
    assign LED[15:0] = SW[15:0];
    //�����ĵ����ǽṹ����
    SELECTOR_MOUDLE(.in(SW[15:13]),.out(AN[7:0]));  //����ѡ����һ���߶����������ʾ����
    DECODER_MOUDLE(.in(SW[3:0]),.out(SEG[7:0]));   //���ڽ�����Ķ�������ת���ɶ�Ӧ��ʮ�������֣���һ����Щ�������Ҫ����
    
endmodule
