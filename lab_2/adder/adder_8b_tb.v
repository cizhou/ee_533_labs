`timescale 1ns / 1ps

module adder_8b_tb;

    reg  [7:0] A, B;
    reg        Cin;
    wire [7:0] S;
    wire       Cout;

    reg  [8:0] expected;

    adder_8b UUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    integer i;

    initial begin
        for (i = 0; i < 50; i = i + 1) begin
            A   = $random;
            B   = $random;
            Cin = $random;
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

        $display("Test complete");
        $finish;
    end

endmodule
