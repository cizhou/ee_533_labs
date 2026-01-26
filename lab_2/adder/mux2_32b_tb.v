`timescale 1ns / 1ps

module mux2_32b_tb;

    // Inputs
    reg  [31:0] A;
    reg  [31:0] B;
    reg         S;

    // Output
    wire [31:0] Y;

    // Instantiate the DUT
    mux2_32b UUT (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin
        $display("Time | S |        A                B        |        Y");
        $monitor("%4t | %b | %h  %h | %h", $time, S, A, B, Y);

        // Initialize
        A = 32'h00000000;
        B = 32'hFFFFFFFF;
        S = 0;
        #10;

        // -------- Test A path (S = 0) --------
        A = 32'h00000001; B = 32'hAAAAAAAA; S = 0; #10;
        A = 32'h0000FFFF; B = 32'h12345678; S = 0; #10;
        A = 32'hFFFFFFFF; B = 32'h00000000; S = 0; #10;

        // -------- Test B path (S = 1) --------
        A = 32'h00000001; B = 32'hAAAAAAAA; S = 1; #10;
        A = 32'h0000FFFF; B = 32'h12345678; S = 1; #10;
        A = 32'hFFFFFFFF; B = 32'h00000000; S = 1; #10;

        // -------- Toggle select with fixed inputs --------
        A = 32'h0F0F0F0F;
        B = 32'hF0F0F0F0;
        S = 0; #10;
        S = 1; #10;
        S = 0; #10;

        $finish;
    end

endmodule
