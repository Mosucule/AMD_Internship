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


module PISO(clk, reset, pl, D, Q);
    parameter width = 8;

    input clk, reset, pl;
    input [width-1:0] D;
    output Q;
    
    wire [width-2:0] aux;
    wire [width-1:0] r;
    
    genvar i;
    generate
        for(i=0; i < width-1; i = i + 1)begin
            bistabil inst(clk, reset, 1, r[width - 1 - i], aux[width - 2 - i]);
        end
        bistabil inst_f(clk, reset, 1, r[0], Q);
    endgenerate
    
    assign r = (pl)? D : {0, aux};
    
endmodule
