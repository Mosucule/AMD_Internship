`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 12:12:56
// Design Name: 
// Module Name: tb_top
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


module tb_top;
    reg clk, pl;
    reg [15:0] D;
    
    wire a, b, c, d, e, f, g, A1, A2, A3, A4;
    
    top top_t(clk, pl, D, A1, A2, A3, A4, a, b, c, d, e, f, g);
    
    initial begin
        clk = 0;
        forever #5 clk =~ clk;
    end
    
    initial begin
        #0 D = {{4'd12}, {4'd4}, {4'd5}, {4'd8}}; pl = 1;
        #10 D = {{4'd12}, {4'd4}, {4'd5}, {4'd8}}; pl = 0;
        #1000 $finish;
    end
endmodule
