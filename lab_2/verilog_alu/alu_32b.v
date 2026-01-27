`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:16:07 01/26/2026 
// Design Name: 
// Module Name:    alu_32b 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu_32b(
    input [31:0] A,
    input [31:0] B,
    input [2:0] M,
    output [31:0] S,
	 output Cout
    );
	 
    reg [31:0] ALU_Result;
    wire [32:0] extended_result;
    assign S = ALU_Result;    
    assign extended_result = {1'b0, A} + {1'b0, B};
    assign Cout = extended_result[32];  

    always @(*)
    begin
        case (M)
         // Arithmetic operations
         3'b000: ALU_Result = A + B;	// Addition
         3'b001: ALU_Result = A - B;	// Subtraction
         3'b010: ALU_Result = A + 1;   // Increment
         3'b011: ALU_Result = A - 1;   // Decrement
         // Bitwise operations
         3'b100: ALU_Result = A << 1;  // Shift left
         3'b101: ALU_Result = A >> 1;  // Shift right
         3'b110: ALU_Result = A & B; 	// Logical and
         3'b111: ALU_Result = A | B; 	// Logical or
         default: ALU_Result = 32'bx;
        endcase
    end
endmodule