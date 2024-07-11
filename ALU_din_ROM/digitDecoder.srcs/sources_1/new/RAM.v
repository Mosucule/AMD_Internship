`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2024 11:48:17
// Design Name: 
// Module Name: RAM
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


module RAM(clk, DIN, ADDR, rw, OUT);
    input clk, rw;
    input [31:0] DIN;
    input [7:0] ADDR;
    output reg [31:0] OUT;
    
    reg [31:0] MEM [99:0];
    
    integer i;
    initial begin
        for(i = 0; i < 100; i = i + 1)begin
            MEM[i] = 32'b0;
        end
    end
    
    always@(posedge clk) begin
        if(rw) begin
            if(ADDR > 99) OUT = 0;
            else OUT = MEM[ADDR];
        end
        else begin
            MEM[ADDR] = DIN;
            OUT = MEM[ADDR];
        end
    end
endmodule
