`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2024 11:54:45
// Design Name: 
// Module Name: RAM_tb
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

/*
module RAM_tb;
    reg clk, rw;
    reg [31:0] DIN;
    reg [7:0] ADDR;
    wire [31:0] OUT;
    
    RAM RAM1(.clk(clk), .DIN(DIN), .ADDR(ADDR), .rw(rw), .OUT(OUT));
    
    initial begin
        clk = 0;
        forever #5 clk=~clk;
    end;
    
    initial begin
        #0 rw = 0; DIN = 32'h123F; ADDR = 8'd3;
        #20 rw = 0; DIN = 32'hFFFF; ADDR = 8'd18;
        #20 rw = 0; DIN = 32'hAB28; ADDR = 8'd50;
        #20 rw = 0; DIN = 32'h0001; ADDR = 8'd77;
        #20 rw = 1; DIN = 32'h0001; ADDR = 8'd77;
        #20 rw = 1; DIN = 32'h0001; ADDR = 8'd78;
        #20 rw = 1; DIN = 32'h0001; ADDR = 8'd18;
        #20 rw = 1; DIN = 32'h0001; ADDR = 8'd3;
        #20 rw = 1; DIN = 32'h0001; ADDR = 8'd50;
        #100 $finish;
    end
endmodule
*/

module ROM_tb;
    reg clk, EN;
    wire [31:0] OUT;
    
    ROM ROM1(clk, EN, OUT);
    
    initial begin
        clk = 0;
        forever #5 clk=~clk;
    end
    
    initial begin
        #0 EN = 1;
        #10000 $finish;
    end
    
endmodule