`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 11:12:06
// Design Name: 
// Module Name: dig_dec
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


module dig_dec(din, a_neg, b_neg, c_neg, d_neg, e_neg, f_neg, g_neg);
    input [3:0] din;
    reg a, b, c, d, e, f, g;
    output a_neg, b_neg, c_neg, d_neg, e_neg, f_neg, g_neg; 
    
    always@(din) begin
        case(din)
              4'b0000:begin
                a = 1; b = 1; c = 1; d = 1; e = 1; f = 1; g = 0;   
              end
              4'b0001:begin
                a = 0; b = 1; c = 1; d = 0; e = 0; f = 0; g = 0;   
              end
              4'b0010:begin
                a = 1; b = 1; c = 0; d = 1; e = 1; f = 0; g = 1;   
              end
              4'b0011:begin
                a = 1; b = 1; c = 1; d = 1; e = 0; f = 0; g = 1;   
              end
              4'b0100:begin
                a = 0; b = 1; c = 1; d = 0; e = 0; f = 1; g = 1;   
              end
              4'b0101:begin
                a = 1; b = 0; c = 1; d = 1; e = 0; f = 1; g = 1;   
              end
              4'b0110:begin
                a = 1; b = 0; c = 1; d = 1; e = 1; f = 1; g = 1;   
              end
              4'b0111:begin
                a = 1; b = 1; c = 1; d = 0; e = 0; f = 0; g = 0;   
              end
              4'b1000:begin
                a = 1; b = 1; c = 1; d = 1; e = 1; f = 1; g = 1;   
              end
              4'b1001:begin
                a = 1; b = 1; c = 1; d = 0; e = 0; f = 1; g = 1;   
              end
              4'b1010:begin
                a = 1; b = 1; c = 1; d = 0; e = 1; f = 1; g = 1;   
              end
              4'b1011:begin
                a = 0; b = 0; c = 1; d = 1; e = 1; f = 1; g = 1;   
              end
              4'b1100:begin
                a = 1; b = 0; c = 0; d = 1; e = 1; f = 1; g = 0;   
              end
              4'b1101:begin
                a = 0; b = 1; c = 1; d = 1; e = 1; f = 0; g = 1;   
              end
              4'b1110:begin
                a = 1; b = 0; c = 0; d = 1; e = 1; f = 1; g = 1;   
              end
              4'b1111:begin
                a = 1; b = 0; c = 0; d = 0; e = 1; f = 1; g = 1;   
              end
         endcase
    end
    
    assign a_neg =~ a;
    assign b_neg =~ b;
    assign c_neg =~ c;
    assign d_neg =~ d;
    assign e_neg =~ e;
    assign f_neg =~ f;
    assign g_neg =~ g;
endmodule
