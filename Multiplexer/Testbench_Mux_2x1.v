module Testbench_2x1;
    reg a, b, sl_1;
    wire y;

    Mux_2x1 uud (
        .a(a),
        .b(b),
        .sl_1(sl_1),
        .y(y)
    );

    initial begin
        $monitor(
            "Time: %0t | a=%b | b=%b | sl_1=%b | sum=%b",
            $time,
            a, b, sl_1,
            y
        );

        $dumpfile("./op/Mux_2x1.vcd");
        $dumpvars(0, Testbench_2x1);

        for (integer i = 0; i < 2; i = i + 1) begin
            for (integer j = 0; j < 2; j = j + 1) begin
                for (integer k = 0; k < 2; k = k + 1) begin
                    sl_1 = i; a = j; b = k; #10;
                end
            end
        end
    end

endmodule