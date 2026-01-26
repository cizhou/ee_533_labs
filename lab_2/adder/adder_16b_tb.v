`timescale 1ns / 1ps

module adder_16b_tb;

    // Inputs
    reg  [15:0] A;
    reg  [15:0] B;
    reg         Cin;

    // Outputs
    wire [15:0] S;
    wire        Cout;

    // Expected result (16 bits + carry)
    reg  [16:0] expected;

    integer i;

    // Instantiate the Unit Under Test (UUT)
    adder_16b UUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        $display(" Time |      A      +      B      + Cin = Cout      S");

        // --------------------
        // Directed test cases
        // --------------------
        A = 16'h0000; B = 16'h0000; Cin = 0; #10; check();
        A = 16'h0001; B = 16'h0001; Cin = 0; #10; check();
        A = 16'h00FF; B = 16'h0001; Cin = 0; #10; check();
        A = 16'hFFFF; B = 16'h0001; Cin = 0; #10; check();
        A = 16'hAAAA; B = 16'h5555; Cin = 0; #10; check();
        A = 16'h8000; B = 16'h8000; Cin = 1; #10; check();

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

        $display("? 16-bit adder test completed");
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
