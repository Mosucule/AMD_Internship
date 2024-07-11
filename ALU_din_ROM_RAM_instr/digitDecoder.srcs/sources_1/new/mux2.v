`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 13:37:59
// Design Name: 
// Module Name: mux2
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


module mux2(I0, I1, sel, out);
    parameter width = 12;
    
    input [width-1:0] I0, I1;
    input sel;
    output [width-1:0] out;
    
    assign out = (sel)?I1:I0;
endmodule
