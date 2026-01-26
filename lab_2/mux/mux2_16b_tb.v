`timescale 1ns / 1ps

module mux2_16b_tb;

    // Inputs
    reg  [15:0] A;
    reg  [15:0] B;
    reg         S;

    // Output
    wire [15:0] Y;

    // Instantiate the DUT
    mux2_16b UUT (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin
        $display("Time | S |      A        B     |      Y");
        $monitor("%4t | %b | %h  %h  | %h", $time, S, A, B, Y);

        // Initialize
        A = 16'h0000;
        B = 16'hFFFF;
        S = 0;
        #10;

        // -------- Test A path (S = 0) --------
        A = 16'h0001; B = 16'hAAAA; S = 0; #10;
        A = 16'h00FF; B = 16'h1234; S = 0; #10;
        A = 16'hFFFF; B = 16'h0000; S = 0; #10;

        // -------- Test B path (S = 1) --------
        A = 16'h0001; B = 16'hAAAA; S = 1; #10;
        A = 16'h00FF; B = 16'h1234; S = 1; #10;
        A = 16'hFFFF; B = 16'h0000; S = 1; #10;

        // -------- Toggle select with fixed inputs --------
        A = 16'h0F0F; 
        B = 16'hF0F0;
        S = 0; #10;
        S = 1; #10;
        S = 0; #10;

        $finish;
    end

endmodule
