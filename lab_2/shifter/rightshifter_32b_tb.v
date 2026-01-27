`timescale 1ns / 1ps

module rightshifter_32b_tb;

    // Testbench signals
    reg  [31:0] X;
    wire [31:0] Y;
    wire        Cout;

    // Instantiate the DUT
    rightshifter_32b dut (
        .X(X),
        .Y(Y),
        .Cout(Cout)
    );

    // Task to apply input and check output
    task check;
        input [31:0] val;
        begin
            X = val;
            #1; // allow combinational logic to settle

            if (Y !== (val >> 1) || Cout !== val[0]) begin
                $display("FAIL @ time %0t", $time);
                $display("X    = %h", val);
                $display("Y    = %h (expected %h)", Y, (val >> 1));
                $display("Cout = %b (expected %b)", Cout, val[0]);
                $stop;
            end
            else begin
                $display("PASS @ time %0t | X=%h Y=%h Cout=%b",
                          $time, val, Y, Cout);
            end
        end
    endtask

    initial begin
        $display("Starting rightshifter_32b testbench...");

        check(32'h0000_0000); // all zeros
        check(32'h0000_0001); // LSB set (tests Cout)
        check(32'h1234_5678); // random value
        check(32'h8000_0000); // MSB set
        check(32'hFFFF_FFFF); // all ones

        $display("All tests PASSED.");
        $finish;
    end

endmodule
