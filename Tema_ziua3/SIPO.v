`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2024 11:22:32
// Design Name: 
// Module Name: SIPO
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


module SIPO(clk, reset, pl, D, Q);
    parameter width = 8;

    input clk, reset, pl, D;
    output [width-1:0] Q;
    
    wire r;
    
    genvar i;
    generate
        bistabil inst_b(clk, reset, 1, r, Q[0]);
        for(i = 1; i < width - 1; i = i + 1)begin
            bistabil inst(clk, reset, 1, Q[i-1], Q[i]);
        end
        bistabil inst_f(clk, reset, 1, Q[width-2], Q[width-1]);
    endgenerate
    
    assign r = (pl)? D : 0; 
endmodule
