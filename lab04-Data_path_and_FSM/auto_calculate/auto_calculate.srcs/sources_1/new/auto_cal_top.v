`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/18 21:38:03
// Design Name: 
// Module Name: auto_cal_top
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


module auto_cal_top(clk,start,rst,done,SEG,AN);
    parameter DATA_WIDTH = 32;
    input start,rst,clk;
        output done;
        output [7:0] SEG;
        output reg[7:0] AN;
        wire clk_N;
        wire clk_P;
        wire [DATA_WIDTH-1:0]sum_out;
        divider #(50000000)D1(clk,clk_N);
        divider #(50000) D2(clk,clk_P);
        auto_calculate #(DATA_WIDTH) AUTOADD(.clk(clk_N),.start(start),.rst(rst),.DONE(done),.sum_out(sum_out));
        reg [3:0] data;
        reg [3:0] count;
        initial begin
            data = 0;
            count = 0;
        end
        always @(posedge clk_P) begin
            if(count%8 == 0)begin
                AN <= 8'b11111110;
                data = sum_out%10;  //个位
                count = count+1;
            end
            else if(count%8 == 1) begin
                AN <= 8'b11111101;
                data = (sum_out/10)%10; //十位
                count = count+1;
            end
            else if(count%8 == 2) begin
                AN <= 8'b11111011;
                data = (sum_out/100)%10; //十位
                count = count+1;
            end
            else if(count%8 == 3) begin
                AN <= 8'b11110111;
                data = (sum_out/1000)%10; //十位
                count = count+1;
            end
            else if(count%8 == 4) begin
                AN <= 8'b11101111;
                data = (sum_out/10000)%10; //十位
                count = count+1;
            end
            else if(count%8 == 5) begin
                AN <= 8'b11011111;
                data = (sum_out/100000)%10; //十位
                count = count+1;
            end
            else if(count%8 == 6) begin
                AN <= 8'b10111111;
                data = (sum_out/1000000)%10; //十位
                count = count+1;
            end
            else if(count%8 == 7) begin
                AN <= 8'b01111111;
                data = (sum_out/10000000)%10; //十位
                count = count+1;
            end
        end
        pattern P(data,SEG);
endmodule
