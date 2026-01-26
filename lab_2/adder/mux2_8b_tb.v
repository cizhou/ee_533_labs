`timescale 1ns / 1ps

module mux2_8b_tb;

    // Inputs
    reg  [7:0] A;
    reg  [7:0] B;
    reg        S;

    // Output
    wire [7:0] Y;

    // Instantiate the DUT
    mux2_8b UUT (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin
        $display("Time | S |    A        B    |    Y");
        $monitor("%4t | %b | %h   %h   | %h", $time, S, A, B, Y);

        // Initialize
        A = 8'h00;
        B = 8'hFF;
        S = 0;
        #10;

        // -------- Test A path (S = 0) --------
        A = 8'h01; B = 8'hAA; S = 0; #10;
        A = 8'h55; B = 8'h0F; S = 0; #10;
        A = 8'hFF; B = 8'h00; S = 0; #10;

        // -------- Test B path (S = 1) --------
        A = 8'h01; B = 8'hAA; S = 1; #10;
        A = 8'h55; B = 8'h0F; S = 1; #10;
        A = 8'hFF; B = 8'h00; S = 1; #10;

        // -------- Toggle select with fixed inputs --------
        A = 8'h3C; B = 8'hA5;
        S = 0; #10;
        S = 1; #10;
        S = 0; #10;

        $finish;
    end

endmodule
