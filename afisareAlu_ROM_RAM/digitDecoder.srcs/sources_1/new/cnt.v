`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 11:46:00
// Design Name: 
// Module Name: cnt
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


module cnt(clk, dout);
    input clk;
    output reg [1:0] dout;
    
    always@(posedge clk) begin
        if(dout < 3)
            dout = dout + 1;
        else
            dout = 0;
    end
endmodule
