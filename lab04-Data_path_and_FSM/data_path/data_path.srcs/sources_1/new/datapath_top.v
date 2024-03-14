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


module datapath(clk, rst, SUM_SEL, NEXT_SEL, A_SEL, LD_SUM, LD_NEXT, NEXT_ZERO, sum_out);
    input clk, rst, SUM_SEL, NEXT_SEL, A_SEL, LD_SUM, LD_NEXT;    
    output NEXT_ZERO;
    output [31:0] sum_out;
    
    wire [31:0] a1, a2;
    wire [31:0] s1, s2, s3;
    wire [31:0] r1, r2;
    wire [31:0] ram_data;
    
    assign sum_out = r1;
    
    register #(32) R1(.clk(clk), .rst(rst), .load(LD_SUM), .d(s1), .q(r1));
    register #(32) R2(.clk(clk), .rst(rst), .load(LD_NEXT), .d(s2), .q(r2));
    
    full_adder #(32) A1(.a(r1), .b(ram_data), .c_in(0), .sum(a1));
    full_adder #(32) A2(.a(1), .b(r2), .c_in(0), .sum(a2));
    
    selector #(32) S1(.a(a1), .b(0), .sel(SUM_SEL), .out(s1));
    selector #(32) S2(.a(ram_data), .b(0), .sel(NEXT_SEL), .out(s2));
    selector #(32) S3(.a(a2), .b(r2), .sel(A_SEL), .out(s3));
    
    comparator #(32) C1(.a(s2), .b(0), .is_equal(NEXT_ZERO));

    memory #(32) M1(.clk(clk), .read_addr(s3), .q(ram_data));
endmodule
