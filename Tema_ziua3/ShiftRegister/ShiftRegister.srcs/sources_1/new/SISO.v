`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2024 09:04:05 AM
// Design Name: 
// Module Name: SISO
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


module SISO(clk, reset, pl, D, Q);
    parameter width = 8;

    input clk, reset, pl, D;
    output Q;
    
    wire [width-2:0] aux;
    wire r;
    
    genvar i;
    generate
        bistabil inst_b(clk, reset, 1, r, aux[0]);
        for(i = 1; i < width - 1; i = i + 1)begin
            bistabil inst(clk, reset, 1, aux[i-1], aux[i]);
        end
        bistabil inst_f(clk, reset, 1, aux[width-2], Q);
    endgenerate
    
    assign r = (pl)? D : 0;
    
endmodule
