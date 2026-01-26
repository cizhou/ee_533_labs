`timescale 1ns / 1ps

module mux2_4b_tb;

    // Inputs
    reg  [3:0] A;
    reg  [3:0] B;
    reg        S;

    // Output
    wire [3:0] Y;

    // Instantiate the DUT
    mux2_4b UUT (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin
        $display("Time | S |   A    B   |   Y");
        $monitor("%4t | %b | %b %b | %b", $time, S, A, B, Y);

        // Initialize
        A = 4'b0000;
        B = 4'b1111;
        S = 0;
        #10;

        // -------- Test A path (S = 0) --------
        A = 4'b0001; B = 4'b1010; S = 0; #10;
        A = 4'b0011; B = 4'b0101; S = 0; #10;
        A = 4'b1111; B = 4'b0000; S = 0; #10;

        // -------- Test B path (S = 1) --------
        A = 4'b0001; B = 4'b1010; S = 1; #10;
        A = 4'b0011; B = 4'b0101; S = 1; #10;
        A = 4'b1111; B = 4'b0000; S = 1; #10;

        // -------- Toggle select with fixed inputs --------
        A = 4'b0101; B = 4'b1100;
        S = 0; #10;
        S = 1; #10;
        S = 0; #10;

        $finish;
    end

endmodule
