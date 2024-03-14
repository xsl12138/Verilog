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


module memory#(parameter DATA_WIDTH = 8,parameter ADDR_LENGTH = 16)(clk, read_addr, q);
    //parameter WIDTH = 8;
    //parameter ADDR_LENGTH = 16;
    input clk;
    input [DATA_WIDTH-1:0] read_addr;
    output reg [DATA_WIDTH-1:0] q;
    //output [WIDTH-1:0] q;
    
    reg [DATA_WIDTH-1:0] ram[ADDR_LENGTH-1:0];
    
    initial begin
        q <= 0;
        $readmemh("D:/xilinx_vivado/ram_init.txt", ram, 0, ADDR_LENGTH-1);
        //$readmemh("ram_init.txt", ram, 0, 2**WIDTH-1);
    end
    
    //assign q = ram[read_addr];
    always@(read_addr) begin
        q <= ram[read_addr];
    end
    
endmodule
