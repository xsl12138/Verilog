`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 20:47:55
// Design Name: 
// Module Name: FSM_tb
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


module FSM_tb();
    reg clk, rst, start, next_zero;
    wire ld_sum, ld_next, sum_sel, next_sel, a_sel, done;
    FSM dut(clk, rst, start, next_zero, ld_sum, ld_next, sum_sel, next_sel, a_sel, done);
    always begin    //周期20ns的时钟
        clk <= 0;
        #10;
        clk <= 1;
        #10;
    end
    
    initial begin
        rst <= 1;   //复位启动
        start <= 0;
        next_zero <= 0;
        #13 rst <= 0;    //13ns
        #22 start <= 1; //35ns
        #85 next_zero <= 1; //120ns
        #20 start <= 0; //140ns
    end
endmodule
