module TestBench_HA;
    reg a, b;
    wire s, c;

    HA uud (
        .a(a),
        .b(b),
        .sum(s),
        .carry(c)
    );

    initial begin
        $monitor(
            "Time: %0t | a=%b | b=%b | sum=%b | carry=%b",
            $time, a, b, s, c
        );

        $dumpfile("./op/HalfAdder.vcd");
        $dumpvars(0, TestBench_HA);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
    end

endmodule