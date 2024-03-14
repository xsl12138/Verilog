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
    parameter WIDTH = 32;
    
    input [WIDTH-1:0] a, b;
    input sel;
    output reg [WIDTH-1:0] out;
    
    always@(*) begin
        if(!sel)    out <= a;   // if-else也是行为描述，因此可以用在always里面
        else    out <= b;
    end
 
endmodule
