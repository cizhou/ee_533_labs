`timescale 1ns / 1ps

module adder_32b_tb;

    // Inputs
    reg [31:0] A;
    reg [31:0] B;
    reg Cin;

    // Outputs
    wire [31:0] S;
    wire Cout;

    // Expected result
    reg  [32:0] expected;

    integer i;

    // Instantiate the Unit Under Test (UUT)
    adder_32b UUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        $display(" Time |        A        +        B        + Cin = Cout        S");

        // --------------------
        // Directed test cases
        // --------------------
        A = 32'h00000000; B = 32'h00000000; Cin = 0; #10;
        check();

        A = 32'h00000001; B = 32'h00000001; Cin = 0; #10;
        check();

        A = 32'h0000FFFF; B = 32'h00000001; Cin = 0; #10;
        check();

        A = 32'hFFFFFFFF; B = 32'h00000001; Cin = 0; #10;
        check();

        A = 32'hAAAAAAAA; B = 32'h55555555; Cin = 0; #10;
        check();

        A = 32'h80000000; B = 32'h80000000; Cin = 1; #10;
        check();

        // --------------------
        // Random test cases
        // --------------------
        for (i = 0; i < 20; i = i + 1) begin
            A   = $random;
            B   = $random;
            Cin = $random;
            #10;
            check();
        end

        $display("? 32-bit adder test completed");
        $finish;
    end

    // --------------------
    // Task to check result
    // --------------------
    task check;
        begin
            expected = A + B + Cin;

            if ({Cout, S} !== expected) begin
                $display("? ERROR @ %0t: A=%h B=%h Cin=%b | Expected=%h Got=%b%h",
                          $time, A, B, Cin, expected, Cout, S);
            end else begin
                $display("? PASS  @ %0t: A=%h B=%h Cin=%b | Sum=%h",
                          $time, A, B, Cin, {Cout, S});
            end
        end
    endtask

endmodule
