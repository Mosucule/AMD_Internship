`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 12:48:38
// Design Name: 
// Module Name: dec_sel
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


module dec_sel(bt0, bt1, bt2, out);
    input bt0, bt1, bt2;
    output [1:0] out;
    
    assign out[1] = (bt1^bt2)&(~bt0);
    assign out[0] = (bt0^bt2)&(~bt1);
endmodule
