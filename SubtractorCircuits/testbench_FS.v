module TestBench_FS;
    reg a, b, b_in;
    wire diff, b_out;

    FS uud (
        .a(a),
        .b(b),
        .b_in(b_in),
        .diff(diff),
        .b_out(b_out)
    );

    initial begin
        $monitor(
            "Time: %0t | a=%b | b=%b | borrow_in=%b | difference=%b | borrow_op=%b",
            $time,
            a, b, b_in,
            diff, b_out
        );

        $dumpfile("./op/FullSubtractor.vcd");
        $dumpvars(0, TestBench_FS);

        a = 0; b = 0; b_in = 0; #10;
        a = 0; b = 0; b_in = 1; #10;
        a = 0; b = 1; b_in = 0; #10;
        a = 0; b = 1; b_in = 1; #10;
        a = 1; b = 0; b_in = 0; #10;
        a = 1; b = 0; b_in = 1; #10;
        a = 1; b = 1; b_in = 0; #10;
        a = 1; b = 1; b_in = 1; #10;
    end

endmodule