`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:02:35 01/26/2026
// Design Name:   alu_32b
// Module Name:   C:/Documents and Settings/student/My Documents/verilog_alu/alu_32b_tb.v
// Project Name:  verilog_alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_32b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_alu_32b;

    // DUT inputs
    reg  [31:0] A;
    reg  [31:0] B;
    reg  [2:0]  M;

    // DUT outputs
    wire [31:0] S;
    wire        Cout;

    // Instantiate the DUT
    alu_32b dut (
        .A(A),
        .B(B),
        .M(M),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        // Initialize inputs
        A = 0;
        B = 0;
        M = 0;

        // Wait for waveform clarity
        #10;

        // -------- Arithmetic tests --------
        A = 32'd10; B = 32'd5; M = 3'b000; // ADD
        #10;

        A = 32'd10; B = 32'd5; M = 3'b001; // SUB
        #10;

        A = 32'd10; B = 32'd0; M = 3'b010; // INC
        #10;

        A = 32'd10; B = 32'd0; M = 3'b011; // DEC
        #10;

        // -------- Bitwise / shift tests --------
        A = 32'h0000_000F; B = 32'h0000_00F0; M = 3'b100; // SHL
        #10;

        A = 32'h0000_00F0; B = 32'h0000_0000; M = 3'b101; // SHR
        #10;

        A = 32'hAAAA_AAAA; B = 32'h5555_5555; M = 3'b110; // AND
        #10;

        A = 32'hAAAA_AAAA; B = 32'h5555_5555; M = 3'b111; // OR
        #10;

        // -------- Carry-out test --------
        A = 32'hFFFF_FFFF; B = 32'd1; M = 3'b000; // ADD with carry
        #10;

        // End simulation
        $finish;
    end

endmodule


