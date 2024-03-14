`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/18 18:44:00
// Design Name: 
// Module Name: auto_add_tb
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


module auto_add_tb();
    reg clk, rst, start;
    wire DONE;
    parameter DATA_WIDTH = 32;
    //wire [31:0] sum_out;
    wire [DATA_WIDTH - 1:0] sum_out;
    auto_calculate #(DATA_WIDTH) dut(clk, rst, start, DONE, sum_out);
    always begin    // ±÷”÷‹∆⁄20ns??
        clk <= 0;
        #10;
        clk <= 1;
        #10;
    end
    
    initial begin
        rst <= 1;
        start <= 0;
        @(posedge clk);
        #5 rst <= 0;
        #5 start <= 1;
        //#15 rst <= 0;    //15ns
        //#5 start <= 1; //20ns
    end
endmodule
