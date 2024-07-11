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
    input [11:0] DIN;
    input [11:0] ADDR;
    output reg [11:0] OUT;
    
    reg [11:0] MEM [1023:0];
    
    integer i;
    initial begin
        for(i = 0; i < 1024; i = i + 1)begin
            MEM[i] = 32'b0;
        end
    end
    
    always@(posedge clk) begin
        if(rw) begin
            if(ADDR > 1024) OUT = 0;
            else OUT = MEM[ADDR];
        end
        else begin
            MEM[ADDR] = DIN;
            OUT = MEM[ADDR];
        end
    end
endmodule
