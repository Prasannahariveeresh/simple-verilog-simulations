module TestBench_HS;
    reg a, b;
    wire diff, b_out;

    HS uud (
        .a(a),
        .b(b),
        .difference(diff),
        .borrow(b_out)
    );

    initial begin
        $monitor(
            "Time: %0t | a=%b | b=%b | difference=%b | borrow=%b",
            $time,
            a, b,
            diff, b_out
        );

        $dumpfile("./op/HalfSubtractor.vcd");
        $dumpvars(0, TestBench_HS);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
    end

endmodule