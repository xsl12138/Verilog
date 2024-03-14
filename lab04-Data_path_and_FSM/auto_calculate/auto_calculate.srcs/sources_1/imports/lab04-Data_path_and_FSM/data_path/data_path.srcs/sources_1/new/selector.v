`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 18:31:43
// Design Name: 
// Module Name: selector
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


module selector(a, b, sel, out);
    parameter WIDTH = 8;
    
    input [WIDTH-1:0] a, b;
    input sel;
    output reg [WIDTH-1:0] out;
    
    //assign out = (sel) ? b : a;
    always@(*) begin
        if(sel == 1) begin
            out <= a;
        end
        else if(sel == 0) begin
            out <= b;
        end
    end
 
endmodule
