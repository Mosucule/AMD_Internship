`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2024 10:08:38 AM
// Design Name: 
// Module Name: tb_PISO
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


module tb_PISO;
    reg clk, reset, pl;
    reg [7:0] D;
    wire Q;
    
    PISO piso_t(clk, reset, pl, D, Q);
    
    initial begin
        clk = 0;
        forever #5 clk =~ clk;
    end
    
    initial begin
        #0 reset = 1; pl = 0; D = 125;
        #10 reset = 0; pl = 1; D = 125;
        #10 reset = 0; pl = 0; D = 125;
        #100 $finish;
    end
endmodule
