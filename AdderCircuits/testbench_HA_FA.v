module TestBench_HA_FA;
    reg a, b, c_in;
    wire s, c_out;

    FAwithHA uud (
        .a(a), .b(b), .carry_in(c_in),
        .sum(s), .carry_out(c_out)
    );

    initial begin
        $monitor(
            "Time: %0t | a=%b | b=%b | c_in=%b | sum=%b | carry=%b",
            $time,
            a, b, c_in,
            s, c_out
        );

        $dumpfile("./op/FullAdderwithHalfAdder.vcd");
        $dumpvars(0, TestBench_HA_FA);

        a = 0; b = 0; c_in = 0; #10;
        a = 0; b = 0; c_in = 1; #10;
        a = 0; b = 1; c_in = 0; #10;
        a = 0; b = 1; c_in = 1; #10;
        a = 1; b = 0; c_in = 0; #10;
        a = 1; b = 0; c_in = 1; #10;
        a = 1; b = 1; c_in = 0; #10;
        a = 1; b = 1; c_in = 1; #10;
    end

endmodule

