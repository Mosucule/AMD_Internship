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
    reg clk;
    reg [11:0] D;
    
    reg bt1, bt2, bt3, bt4;
    
    wire a, b, c, d, e, f, g, A1, A2, A3, A4;
    
    top top_tb(.clk(clk), .din(D), .bt1(bt1), .bt2(bt2), .bt3(bt3), .bt4(bt4), .A1(A1), .A2(A2), .A3(A3), .A4(A4), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));
    
    initial begin
        clk = 0;
        forever #5 clk =~ clk;
    end
    
    initial begin
        #0 D = 12'd4080; bt4 = 1; bt1 = 1; bt2 = 0; bt3 = 0;
        #20 D = 12'd1000; bt4 = 1; bt1 = 0; bt2 = 1; bt3 = 0;
        #20 D = 12'd0; bt4 = 1; bt1 = 0; bt2 = 0; bt3 = 1;
        #20 D = 12'd0; bt4 = 0; bt1 = 0; bt2 = 0; bt3 = 0;
        #200 D = 12'd0; bt4 = 0; bt1 = 1; bt2 = 0; bt3 = 0;
        #200 D = 12'd0; bt4 = 0; bt1 = 0; bt2 = 1; bt3 = 0;
        #200 D = 12'd0; bt4 = 0; bt1 = 0; bt2 = 0; bt3 = 1;
        
        #1000 $finish;
    end
endmodule
