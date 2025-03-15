module Mux_2x1 (
    input a, b, sl_1,
    output y
);
    assign y = sl_1 ? b : a;

endmodule

module Mux_4x1 (
    input a, b, c, d, sl_1, sl_0,
    output y
);
    wire y_1, y_2;

    Mux_2x1 mux_1 (a, b, sl_0, y_1);
    Mux_2x1 mux_2 (c, d, sl_0, y_2);

    Mux_2x1 mux_3 (y_1, y_2, sl_1, y);

endmodule

module Mux_8x1 (
    input a, b, c, d, e, f, g, h, sl_2, sl_1, sl_0,
    output y
);
    wire y_1, y_2;

    Mux_4x1 mux_1 (a, b, c, d, sl_1, sl_0, y_1);
    Mux_4x1 mux_2 (e, f, g, h, sl_1, sl_0, y_2);

    Mux_2x1 mux_3 (y_1, y_2, sl_2, y);

endmodule