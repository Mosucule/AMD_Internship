`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2024 08:56:24 AM
// Design Name: 
// Module Name: tb_bis
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


module tb_bis;
    reg clk, pl, reset, D;
    wire Q;
    
    bistabil bis(clk, reset, pl, D, Q);
    
    initial begin
        clk = 0;
        forever #5 clk =~ clk;
    end
    
    initial begin
        #0 reset = 1; pl = 0; D = 0;
        #20 reset = 0; pl = 1; D = 0;
        #10 reset = 0; pl = 0; D = 0;
        #20 reset = 0; pl = 0; D = 1;
        #20 reset = 0; pl = 1; D = 1;
        #10 reset = 0; pl = 0; D = 1;
        #20 reset = 1; pl = 0; D = 1;
        #10 reset = 0; pl = 0; D = 1;
        #50 $finish;
    end
endmodule
