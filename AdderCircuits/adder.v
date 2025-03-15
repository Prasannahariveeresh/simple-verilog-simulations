module HA (
    input a, b,
    output sum, carry
);
    assign sum = a ^ b;
    assign carry = a & b;

endmodule

module FAwithHA (
    input a, b, carry_in,
    output sum, carry_out
);
    wire s1, c1, c2;
    HA U1 (
        .a(a), .b(b),
        .sum(s1), .carry(c1)
    );

    HA U2 (
        .a(carry_in), .b(s1),
        .sum(sum), .carry(c2)
    );

    assign carry_out = c1 | c2;

endmodule

module FA (
    input a, b, carry_in,
    output sum, carry_out
);
    assign sum = (a ^ b) ^ carry_in;
    assign carry_out = (a & b) | (b & carry_in) | (a & carry_in);

endmodule