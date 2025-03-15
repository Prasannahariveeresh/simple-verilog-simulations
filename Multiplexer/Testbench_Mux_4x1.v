module Testbench_4x1;
    reg a, b, c, d;
    reg sl_0, sl_1;
    wire y;

    Mux_4x1 uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sl_0(sl_0),
        .sl_1(sl_1),
        .y(y)
    );

    initial begin
        $monitor(
            "Time: %0t | a=%b | b=%b | c=%b | d=%b | sl0=%b | sl1=%b | y=%b",
            $time,
            a, b, c, d, sl_0, sl_1,
            y
        );

        $dumpfile("./op/Mux_4x1.vcd");
        $dumpvars(0, Testbench_4x1);

        for (integer i = 0; i < 2; i = i + 1) begin
            for (integer j = 0; j < 2; j = j + 1) begin
                for (integer k = 0; k < 2; k = k + 1) begin
                    for (integer l = 0; l < 2; l = l + 1) begin
                        for (integer m = 0; m < 2; m = m + 1) begin
                            sl_0 = i; sl_1 = j; a = k; b = l; c = m; d = ~m; #10;
                        end
                    end
                end
            end
        end
    end

endmodule