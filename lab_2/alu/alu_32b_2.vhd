----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:00 01/24/2026 
-- Design Name: 
-- Module Name:    alu_32b_2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

module alu_32b (
    input  [31:0] A,
    input  [31:0] B,
    input  [2:0]  M,     // {M2, M1, M0}
    output reg [31:0] F,
    output reg        C0
);

    reg  [31:0] B_sel;
    reg         Cin;
    wire [32:0] add_result;

    // -----------------------------
    // Arithmetic operand selection
    // -----------------------------
    always @(*) begin
        case (M)
            3'b000: begin // ADD
                B_sel = B;
                Cin   = 1'b0;
            end
            3'b001: begin // SUB
                B_sel = ~B;
                Cin   = 1'b1;
            end
            3'b010: begin // INC
                B_sel = 32'b0;
                Cin   = 1'b1;
            end
            3'b011: begin // DEC
                B_sel = 32'hFFFFFFFF;
                Cin   = 1'b0;
            end
            default: begin
                B_sel = 32'b0;
                Cin   = 1'b0;
            end
        endcase
    end

    // -----------------------------
    // Shared adder
    // -----------------------------
    assign add_result = A + B_sel + Cin;

    // -----------------------------
    // Final result selection
    // -----------------------------
    always @(*) begin
        case (M)
            // Arithmetic results
            3'b000,
            3'b001,
            3'b010,
            3'b011: begin
                F  = add_result[31:0];
                C0 = add_result[32];
            end

            // Shift left (multiply by 2)
            3'b100: begin
                F  = A << 1;
                C0 = A[31];
            end

            // Shift right (divide by 2, unsigned)
            3'b101: begin
                F  = A >> 1;
                C0 = A[0];
            end

            // Bitwise AND
            3'b110: begin
                F  = A & B;
                C0 = 1'b0;
            end

            // Bitwise OR
            3'b111: begin
                F  = A | B;
                C0 = 1'b0;
            end

            default: begin
                F  = 32'b0;
                C0 = 1'b0;
            end
        endcase
    end

endmodule

