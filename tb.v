`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 12:03:21
// Design Name: 
// Module Name: tb
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


module tb;
    parameter W=8;
    reg [W-1:0] At, Bt;
    reg [3:0] Opt;
    wire [W-1:0] Ot;
    wire OF_UNDt, ERRt, ZEROt;
    
    ALU #(W) alu_t(At, Bt, Opt, Ot, OF_UNDt, ERRt, ZEROt);
    
    initial begin
        #0 At = 5; Bt = 10; Opt=0;
        #10 At = 200; Bt = 200; Opt=0;
        #10 At = 14; Bt = 20; Opt=1;
        #10 At = 14; Bt = 2; Opt=1;
        #10 At = 14; Bt = 2; Opt=2;
        #10 At = 14; Bt = 10; Opt=2;
        #10 At = 100; Bt = 6; Opt=2;
        #10 At = 0; Bt = 10; Opt=2;
        #10 At = 14; Bt = 2; Opt=3;
        #10 At = 14; Bt = 2; Opt=4;
        #10 At = 14; Bt = 14; Opt=4;
        #10 At = 14; Bt = 14; Opt=5;
        #10 At = 14; Bt = 12; Opt=6;
        #20 $finish;
    end
endmodule
