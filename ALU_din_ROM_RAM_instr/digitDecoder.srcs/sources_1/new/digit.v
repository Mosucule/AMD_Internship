`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 12:37:12
// Design Name: 
// Module Name: digit
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


module digit(clk, din, A1, A2, A3, A4, a, b, c, d, e, f, g);
    input clk;
    input [15:0] din;
    output A1, A2, A3, A4, a, b, c, d, e, f, g;
    
    wire [3:0] mux_o;
    wire [1:0] cnt_o;
    wire clk_d;
    
    div_t div_1(clk, 11000000, 1, clk_d); // 11 000 000 trebuie pus ca sa mearga pe placa
    mux mux_1(cnt_o, din, mux_o);
    cnt cnt_1(clk_d, cnt_o);
    dig_dec dig_dec_1(mux_o, a, b, c, d, e, f, g);
    dec2_4 dec2_4_1(cnt_o, {A1, A2, A3, A4});
endmodule