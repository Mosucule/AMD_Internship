`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2024 09:49:05 AM
// Design Name: 
// Module Name: tb_SISO
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


module tb_SISO;
    reg clk, reset, pl;
    reg  D;
    wire Q;
    
    SISO siso_t(clk, reset, pl, D, Q);
    
    initial begin
        clk = 0;
        forever #5 clk =~ clk;
    end
    
    initial begin
        #0 reset = 1; pl = 0; D = 1;
        #10 reset = 0; pl = 1; D = 1;
        #10 reset = 0; pl = 1; D = 1;
        #10 reset = 0; pl = 1; D = 0;
        #10 reset = 0; pl = 1; D = 0;
        #10 reset = 0; pl = 1; D = 1;
        #10 reset = 0; pl = 1; D = 0;
        #10 reset = 0; pl = 1; D = 0;
        #10 reset = 0; pl = 1; D = 1;
        #10 reset = 0; pl = 0; D = 1;
        #100 $finish;
    end
endmodule
