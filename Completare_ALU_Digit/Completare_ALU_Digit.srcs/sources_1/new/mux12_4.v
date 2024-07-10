`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2024 09:15:53 AM
// Design Name: 
// Module Name: mux12_4
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


module mux12_4(sel, I0, I1, I2, I3, dout);
    input [1:0] sel;
    input [11:0] I0, I1, I2, I3;
    output reg [11:0] dout;
    
    always@(sel or I0 or I1 or I2 or I3)begin
        case(sel)
            2'b00: dout = I0;
            2'b01: dout = I1;
            2'b10: dout = I2;
            2'b11: dout = I3;
        endcase
    end
endmodule
