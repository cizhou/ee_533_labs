`timescale 1ns / 1ps

module mux2_1b_tb;

    reg A, B, S;
    wire Y;

    mux2_1b UUT (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin
        $display("Time | S A B | Y");
        $monitor("%4t | %b %b %b | %b", $time, S, A, B, Y);

        A = 0; B = 1; S = 0; #10;  // expect Y = A
        A = 0; B = 1; S = 1; #10;  // expect Y = B

        A = 1; B = 0; S = 0; #10;
        A = 1; B = 0; S = 1; #10;

        $finish;
    end

endmodule
