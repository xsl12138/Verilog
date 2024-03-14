`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 18:31:43
// Design Name: 
// Module Name: memory
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


module memory(clk, read_addr, q);
    parameter WIDTH = 8;
    
    input clk;
    input [WIDTH-1:0] read_addr;
    output reg [WIDTH-1:0] q;
    
    reg [WIDTH-1:0] ram[2**WIDTH-1:0];
    
    initial begin
        $readmemh("ram_init.txt", ram);
    end
    
    always@(posedge clk) begin
        q <= ram[read_addr];
    end
    
endmodule
