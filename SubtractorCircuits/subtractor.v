module HS (
    input a, b,
    output difference, borrow
);
    assign difference = a ^ b;
    assign borrow = !a & b;

endmodule

module FSwithHS (
    input a, b, b_in,
    output diff, b_out
);
    wire d1, b1, b2;
    HS U1 (
        .a(a), .b(b),
        .difference(d1), .borrow(b1)
    );

    HS U2 (
        .a(b_in), .b(d1),
        .difference(diff), .borrow(b2)
    );

    assign b_out = b1 | b2;

endmodule

module FS (
    input a, b, b_in,
    output diff, b_out
);
    assign diff = a ^ b ^ b_in;
    assign b_out = (!a & b_in) + (!a & b) + (b & b_in);

endmodule