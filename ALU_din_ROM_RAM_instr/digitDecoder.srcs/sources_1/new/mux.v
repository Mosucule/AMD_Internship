`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 12:06:04
// Design Name: 
// Module Name: mux
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


module mux(sel, D, O);
    input [1:0] sel;
    input [15:0] D;
    output reg [3:0] O;
    
    always@(sel or D) begin
        case(sel)
            0: O = D[15:12];
            1: O = D[11:8];
            2: O = D[7:4];
            3: O = D[3:0];
        endcase
    end
endmodule
