`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2024 12:44:39
// Design Name: 
// Module Name: ROM
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


module ROM(clk, EN, OUT);
    input clk, EN;
    output reg [31:0] OUT;
    
    reg [31:0] MEM [99:0];
    
    wire [7:0] PC;
    
    cnt_PC cnt_PC1(.clk(clk), .EN(EN), .out(PC));
    
    initial begin
        $readmemh("instr.mem", MEM);
    end
    
    always@(posedge clk)begin
        if(EN)begin
            OUT = MEM[PC];
        end
        else begin
            OUT = 32'b0;
        end
    end
endmodule
