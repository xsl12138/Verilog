`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 19:03:51
// Design Name: 
// Module Name: datapath_top
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


module datapath#(parameter DATA_WIDTH = 32)(clk, rst, SUM_SEL, NEXT_SEL, A_SEL, LD_SUM, LD_NEXT, NEXT_ZERO, sum_out);
    input clk, rst, SUM_SEL, NEXT_SEL, A_SEL, LD_SUM, LD_NEXT;    
    output NEXT_ZERO;
    output [DATA_WIDTH - 1:0] sum_out;
    
    wire [DATA_WIDTH - 1:0] a1, a2;
    wire [DATA_WIDTH - 1:0] s1, s2, s3;
    wire [DATA_WIDTH - 1:0] r1, r2;
    wire [DATA_WIDTH - 1:0] ram_data;
    
    assign sum_out = r1;
    
    register #(DATA_WIDTH) R1(.clk(clk), .rst(rst), .load(LD_SUM), .d(s1), .q(r1));
    register #(DATA_WIDTH) R2(.clk(clk), .rst(rst), .load(LD_NEXT), .d(s2), .q(r2));
    
    full_adder #(DATA_WIDTH) A1(.a(r1), .b(ram_data), .c_in(0), .sum(a1));
    full_adder #(DATA_WIDTH) A2(.a(1), .b(r2), .c_in(0), .sum(a2));
    
    selector #(DATA_WIDTH) S1(.a(a1), .b(0), .sel(SUM_SEL), .out(s1));
    selector #(DATA_WIDTH) S2(.a(ram_data), .b(0), .sel(NEXT_SEL), .out(s2));
    selector #(DATA_WIDTH) S3(.a(a2), .b(r2), .sel(A_SEL), .out(s3));
    
    comparator #(DATA_WIDTH) C1(.a(s2), .b(0), .is_equal(NEXT_ZERO));

    memory #(DATA_WIDTH, 16) M1(.clk(clk), .read_addr(s3), .q(ram_data));
endmodule
