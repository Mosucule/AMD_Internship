`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2024 09:27:59 AM
// Design Name: 
// Module Name: tb_PIPO
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


module tb_PIPO;
    reg clk, reset, pl;
    reg [7:0] D;
    wire [7:0] Q;
    
    PIPO pipo_t(clk, reset, pl, D, Q);
    
    initial begin
        clk = 0;
        forever #5 clk =~ clk;
    end
    
    initial begin
        #0 reset = 1; pl = 0; D = 5;
        #10 reset = 0; pl = 1; D = 5;
        #10 reset = 0; pl = 0; D = 5;
        #60 $finish;
    end
endmodule
