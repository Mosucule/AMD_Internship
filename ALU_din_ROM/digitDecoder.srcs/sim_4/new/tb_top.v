`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2024 09:22:53 AM
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
    reg clk, clkR;
    
    reg bt1, bt2, bt3;
    
    wire a, b, c, d, e, f, g, A1, A2, A3, A4;
    
    top top_tb(.clk(clk), .bt1(bt1), .bt2(bt2), .bt3(bt3), .clkR(clkR), .A1(A1), .A2(A2), .A3(A3), .A4(A4), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
    
    initial begin
        clk = 0;
        forever #5 clk =~ clk;
    end
    
    initial begin
        clkR = 0;
        forever #40 clkR =~ clkR;
    end
    
    initial begin
        #10000 $finish;
    end
endmodule