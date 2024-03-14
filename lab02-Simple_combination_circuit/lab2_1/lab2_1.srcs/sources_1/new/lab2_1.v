`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// HUST Verilog Experiment 2.1
//
// Pan Yue
//
//////////////////////////////////////////////////////////////////////////////////


module _7Seg_Driver_Direct(SW, CA, CB, CC, CD, CE, CF, CG, DP, AN, LED);
    input [15:0] SW;                          // 16位拨动开关
	output CA, CB, CC, CD, CE, CF, CG, DP;    // 7段数码管驱动，低电平有效
	output [7:0] AN;                          // 7段数码管片选信号，低电平有效
	output [15:0] LED;                        // 16位LED显示，高电平有效

	assign {CA, CB, CC, CD, CE, CF, CG, DP} = SW[7:0];
	//assign CA = SW[0];assign CB = SW[1];assign CC = SW[2];assign CD = SW[3];assign CE = SW[4];assign CF = SW[5];assign CG = SW[6];assign DP = SW[7]
	assign AN[7:0] = SW[15:8];
	assign LED[15:0] = SW[15:0];
endmodule