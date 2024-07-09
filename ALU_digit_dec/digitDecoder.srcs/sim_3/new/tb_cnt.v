`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 11:49:17
// Design Name: 
// Module Name: tb_cnt
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


module tb_cnt;
    reg clk;
    wire [1:0] dout;
    
    cnt cnt_t(clk, dout);
    
    initial begin
        clk = 0;
        forever #5 clk =~ clk;
    end
    
    initial #100 $finish;
endmodule
