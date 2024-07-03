`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 11:57:50
// Design Name: 
// Module Name: tb
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


module tb;
    reg [15:0] din;
    reg clk, pl, en;
    wire clk_out;
    
    div_t div_t_tb(.clk(clk), .Din(din), .PL(pl), .EN(en), .clk_out(clk_out));
    
    initial
    begin
        clk=0;
        forever #5 clk=~clk;
    end
    
    initial
    begin
        #0 din=2; pl=1; en=1;
        #10 din=2; pl=0; en=1;
        #100 din=3; pl=1; en=0;
        #10 din=3; pl=1; en=0;
        #10 din=3; pl=1; en=1;
        #10 din=3; pl=0; en=1;
        #100 $finish;
    end
endmodule
