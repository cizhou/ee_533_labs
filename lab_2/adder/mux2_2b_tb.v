`timescale 1ns / 1ps

module mux2_2b_tb;

    // Inputs
    reg  [1:0] A;
    reg  [1:0] B;
    reg        S;

    // Output
    wire [1:0] Y;

    // Instantiate the DUT
    mux2_2b UUT (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin
        $display("Time | S |  A  B  |  Y");
        $monitor("%4t | %b | %b %b | %b", $time, S, A, B, Y);

        // Initialize
        A = 2'b00;
        B = 2'b11;
        S = 0;
        #10;

        // Test A path (S = 0)
        A = 2'b01; B = 2'b10; S = 0; #10;
        A = 2'b10; B = 2'b01; S = 0; #10;
        A = 2'b11; B = 2'b00; S = 0; #10;

        // Test B path (S = 1)
        A = 2'b01; B = 2'b10; S = 1; #10;
        A = 2'b10; B = 2'b01; S = 1; #10;
        A = 2'b11; B = 2'b00; S = 1; #10;

        // Toggle select with constant inputs
        A = 2'b01; B = 2'b11;
        S = 0; #10;
        S = 1; #10;
        S = 0; #10;

        $finish;
    end

endmodule
