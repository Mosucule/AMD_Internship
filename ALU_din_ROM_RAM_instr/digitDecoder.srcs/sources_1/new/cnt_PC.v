`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2024 12:46:18
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


module cnt_PC(clk, EN, out);
    parameter MAX = 100;
    input clk, EN;
    output [7:0] out;
    
    reg [7:0] data = 0;
    
    always@(posedge clk)begin
        if(EN)begin
            if(data >= MAX - 1)begin
                data = 0;
            end
            else begin
                data = data + 1;
            end
        end
        
    end
    
    assign out = (EN)? data:8'b0;
endmodule
