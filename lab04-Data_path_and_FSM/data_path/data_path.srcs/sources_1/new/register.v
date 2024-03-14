`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 18:31:43
// Design Name: 
// Module Name: register
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


module register(clk, rst, load, d, q);
    parameter WIDTH = 8;
    
    input clk, rst, load;
    input [WIDTH-1:0] d;
    output reg [WIDTH-1:0] q;
    
    always@(posedge clk) begin
        if(rst) q <= 0;
        else if(load)   q <= d;
    end
endmodule
