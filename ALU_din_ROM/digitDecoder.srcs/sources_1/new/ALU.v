`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 11:42:50
// Design Name: 
// Module Name: ALU
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


module ALU(A, B, Op, O, OF_UND, ERR, ZERO);
    parameter WIDTH = 8;
    
    input [WIDTH-1:0] A, B;
    input [3:0] Op;
    output reg [WIDTH-1:0] O;
    output reg OF_UND, ERR, ZERO;
    
    reg [WIDTH-1:0] v;
        
    always @(A or B or Op)
    begin
        case(Op)
            0: begin
                {OF_UND, O} = {0,A} + {0,B};
                ZERO=0;
                ERR=0;
               end
            1: begin
                {OF_UND, O} = {0,A} - {0,B};
                ZERO=0;
                ERR=0;
               end
            2: begin
                v = A << B;
                v = v >> B;
                if(v==A)
                    OF_UND=0;
                else
                    OF_UND=1;
                ZERO=0;
                ERR=0;
               end
            3: begin
                O = A >> B;
                OF_UND = 0;
                ZERO=0;
                ERR=0;
               end
            4: begin
                ZERO = (A==B)?1:0;
                O = 0;
                OF_UND = 0;
                ERR=0;
               end
            5: begin
                ZERO = (A<B)?1:0;
                O = 0;
                OF_UND = 0;
                ERR=0;
               end
            6: begin
                ZERO = (A>B)?1:0;
                O = 0;
                OF_UND = 0;
                ERR=0;
               end
            default: 
            begin
                ERR=1;
                OF_UND = 0;
                ZERO = 0;
                O = 0;
            end
        endcase
    end
endmodule