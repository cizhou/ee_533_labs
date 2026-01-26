`timescale 1ns / 1ps

module adder_1b_tb;

    // Inputs to the DUT
    reg A;
    reg B;
    reg Cin;

    // Outputs from the DUT
    wire S;
    wire Cout;

    // Instantiate the Unit Under Test (UUT)
    adder_1b UUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        $display(" Time | A B Cin | Cout S");
        $monitor("%4t | %b %b  %b  |  %b    %b",
                  $time, A, B, Cin, Cout, S);

        // Exhaustive test: all 8 combinations
        A = 0; B = 0; Cin = 0;  #10;
        A = 0; B = 0; Cin = 1;  #10;
        A = 0; B = 1; Cin = 0;  #10;
        A = 0; B = 1; Cin = 1;  #10;
        A = 1; B = 0; Cin = 0;  #10;
        A = 1; B = 0; Cin = 1;  #10;
        A = 1; B = 1; Cin = 0;  #10;
        A = 1; B = 1; Cin = 1;  #10;

        $finish;
    end

endmodule
