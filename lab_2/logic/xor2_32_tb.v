`timescale 1ns / 1ps

module xor2_32b_tb;

    // Inputs
    reg  [31:0] A;
    reg  [31:0] B;

    // Output
    wire [31:0] C;

    // Instantiate the DUT
    xor2_32b UUT (
        .A(A),
        .B(B),
        .C(C)
    );

    initial begin
        $display("Time |        A                B        |        C");
        $monitor("%4t | %h  %h | %h", $time, A, B, C);

        // -------- Basic tests --------
        A = 32'h00000000; B = 32'h00000000; #10; // expect 00000000
        A = 32'hFFFFFFFF; B = 32'h00000000; #10; // expect FFFFFFFF
        A = 32'hFFFFFFFF; B = 32'hFFFFFFFF; #10; // expect 00000000

        // -------- Pattern tests --------
        A = 32'hAAAAAAAA; B = 32'h55555555; #10; // expect FFFFFFFF
        A = 32'h0F0F0F0F; B = 32'hF0F0F0F0; #10; // expect FFFFFFFF

        // -------- Random-style tests --------
        A = 32'h12345678; B = 32'h87654321; #10;
        A = 32'hDEADBEEF; B = 32'hCAFEBABE; #10;

        // -------- Toggle one input --------
        A = 32'hAAAAAAAA; B = 32'hAAAAAAAA; #10;
        B = 32'h00000000; #10;
        B = 32'hFFFFFFFF; #10;

        $finish;
    end

endmodule
