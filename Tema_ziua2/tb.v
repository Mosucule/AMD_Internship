`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 08:25:11 AM
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
    reg [7:0] A, B, rez;
    reg [3:0] Op;
    wire OF_UND, ERR, ZERO;
    wire [7:0] O;
    
    ALU alu_t(.A(A), .B(rez), .Op(Op), .O(O), .ERR(ERR), .OF_UND(OF_UND), .ZERO(ZERO));

    task imul;
    begin
        #5;
        if(B != 0 && A != 0)
        begin
            B = B - 1;
            if(OF_UND == 0)
                rez = O;
            imul();
        end
    end
    endtask
    
    
    always@(A)
    begin
        imul();
    end
    
    
    initial
    begin
        #0 A=7; B=6; Op=0; rez=0;
        #200 $finish;
    end

endmodule
