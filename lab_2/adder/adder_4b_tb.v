`timescale 1ns / 1ps

module adder_4b_tb;

    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] S;
    wire       Cout;

    reg  [4:0] expected;
    integer i;

    adder_4b UUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        for (i = 0; i < 32; i = i + 1) begin
            {Cin, A, B} = i;
            #5;

            expected = A + B + Cin;

            if ({Cout, S} !== expected) begin
                $display("? ERROR: A=%h B=%h Cin=%b | Expected=%h Got=%b%h",
                          A, B, Cin, expected, Cout, S);
            end else begin
                $display("? PASS : A=%h B=%h Cin=%b | Sum=%h",
                          A, B, Cin, {Cout, S});
            end
        end

        $display("4-bit adder test complete");
        $finish;
    end

endmodule
