`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 18:31:43
// Design Name: 
// Module Name: comparator
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


module comparator(a, b, is_equal, is_great, is_less);
    parameter WIDTH = 8;
    
    input [WIDTH-1:0] a, b;
    output is_equal, is_great, is_less;
    
    assign is_equal = (a == b) ? 1'b1 : 1'b0;
    assign is_great = (a > b) ? 1'b1 : 1'b0;
    assign is_less = (a < b) ? 1'b1 : 1'b0;
endmodule
