`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 21:44:04
// Design Name: 
// Module Name: auto_calculate
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


module auto_calculate#(parameter DATA_WIDTH = 32)(clk, rst, start, DONE, sum_out);
    input clk, rst, start;
    output DONE;
    output [DATA_WIDTH - 1:0] sum_out;
    
    wire SUM_SEL, NEXT_SEL, A_SEL, LD_SUM, LD_NEXT, NEXT_ZERO;
    
    datapath #(32) dp(clk, rst, SUM_SEL, NEXT_SEL, A_SEL, LD_SUM, LD_NEXT, NEXT_ZERO, sum_out);
    FSM fsm(clk, rst, start, NEXT_ZERO, LD_SUM, LD_NEXT, SUM_SEL, NEXT_SEL, A_SEL, DONE);
    
    
endmodule
