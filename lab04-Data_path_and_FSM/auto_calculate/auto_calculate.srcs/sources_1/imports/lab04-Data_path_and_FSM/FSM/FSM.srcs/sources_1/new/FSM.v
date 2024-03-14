`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 20:08:35
// Design Name: 
// Module Name: FSM
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


module FSM(clk, rst, start, next_zero, ld_sum, ld_next, sum_sel, next_sel, a_sel, done);
parameter START = 0, COMPUTE_SUM = 1, GET_NEXT = 2, DONE = 3;
input clk, rst, start, next_zero;
output ld_sum, ld_next, sum_sel, next_sel, a_sel, done;
reg [1:0] state;    //记录状态
reg [5:0] value;    //记录五个output的值

assign {ld_sum, ld_next, sum_sel, next_sel, a_sel, done} = value;

initial begin
    state <= START;
    value <= 6'b000000;
end

always@(posedge clk) begin
    if(rst) begin
        state <= START;
        value <= 6'b000000;
    end
    else begin
        case(state)
            START:begin
                if(start == 0) begin
                    state <= START;
                    value <= 6'b000000;
                end
                else if(start == 1) begin
                    state <= COMPUTE_SUM;
                    value <= 6'b101110;
                end
            end
            COMPUTE_SUM:begin
                state <= GET_NEXT;
                value <= 6'b011100;
            end
            GET_NEXT:begin
                if(next_zero == 0) begin
                    state <= COMPUTE_SUM;
                    value <= 6'b101110;
                end
                else if(next_zero == 1) begin
                    state <= DONE;
                    value <= 6'b000001;
                end
            end
            default:begin
                if(start == 0) begin
                    state <= START;
                    value <= 6'b000000;
                end
                else if(start == 1) begin
                    state <= DONE;
                    value <= 6'b000001;
                end
            end
        endcase
    end
end

endmodule
