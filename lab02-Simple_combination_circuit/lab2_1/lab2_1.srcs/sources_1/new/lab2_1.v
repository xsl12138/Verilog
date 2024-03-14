`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Verilog Experiment 2.1
//
// Pan Yue
//
//////////////////////////////////////////////////////////////////////////////////


module _7Seg_Driver_Direct(SW, CA, CB, CC, CD, CE, CF, CG, DP, AN, LED);
    input [15:0] SW;                          // 16λ��������
	output CA, CB, CC, CD, CE, CF, CG, DP;    // 7��������������͵�ƽ��Ч
	output [7:0] AN;                          // 7�������Ƭѡ�źţ��͵�ƽ��Ч
	output [15:0] LED;                        // 16λLED��ʾ���ߵ�ƽ��Ч

	assign {CA, CB, CC, CD, CE, CF, CG, DP} = SW[7:0];
	//assign CA = SW[0];assign CB = SW[1];assign CC = SW[2];assign CD = SW[3];assign CE = SW[4];assign CF = SW[5];assign CG = SW[6];assign DP = SW[7]
	assign AN[7:0] = SW[15:8];
	assign LED[15:0] = SW[15:0];
endmodule