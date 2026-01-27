`timescale 1ns / 1ps

module alu_32b_tb;

    reg  [31:0] A;
    reg  [31:0] B;
    reg  [2:0]  M;
    wire [31:0] S;
    wire        Cout;

    // DUT
    alu_32b dut (
        .A(A),
        .B(B),
        .M(M),
        .Cout(Cout),
        .S(S)
    );

    reg [32:0] expected;

    task check;
        input [31:0] a;
        input [31:0] b;
        input [2:0]  m;
        reg          cin;
        begin
            A = a;
            B = b;
            M = m;

            cin = (~m[2]) & (m[1] ^ m[0]);

            #1; // allow combinational settle

            expected = a + b + cin;

            if (S !== expected[31:0] || Cout !== expected[32]) begin
                $display("FAIL @ time %0t", $time);
                $display("A=%h B=%h M=%b Cin=%b", a, b, m, cin);
                $display("S=%h (exp %h)", S, expected[31:0]);
                $display("Cout=%b (exp %b)", Cout, expected[32]);
                $stop;
            end
            else begin
                $display("PASS | A=%h B=%h M=%b Cin=%b S=%h Cout=%b",
                          a, b, m, cin, S, Cout);
            end
        end
    endtask

    initial begin
        $display("Starting alu_32b testbench...");

        // Basic tests
        check(32'h0000_0000, 32'h0000_0000, 3'b000);
        check(32'h0000_0001, 32'h0000_0001, 3'b001);
        check(32'h0000_0001, 32'h0000_0001, 3'b010);
        check(32'h0000_0001, 32'h0000_0001, 3'b011);

        // Random-ish values
        check(32'h1234_5678, 32'h1111_1111, 3'b000);
        check(32'h1234_5678, 32'h1111_1111, 3'b001);
        check(32'h1234_5678, 32'h1111_1111, 3'b010);
        check(32'h1234_5678, 32'h1111_1111, 3'b011);

        // Carry-out test
        check(32'hFFFF_FFFF, 32'h0000_0000, 3'b001);

        $display("All ALU tests PASSED.");
        $finish;
    end

endmodule
