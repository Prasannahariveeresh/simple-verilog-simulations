`timescale 1ns/1ps

module tb_all_gates;
    reg a, b;
    wire and_out, or_out, xor_out, nand_out, nor_out, xnor_out;

    and_gate U1 (.a(a), .b(b), .c(and_out));
    or_gate  U2 (.a(a), .b(b), .c(or_out));
    xor_gate U3 (.a(a), .b(b), .c(xor_out));
    nand_gate U4 (.a(a), .b(b), .c(nand_out));
    nor_gate  U5 (.a(a), .b(b), .c(nor_out));
    xnor_gate U6 (.a(a), .b(b), .c(xnor_out));

    initial begin
        $monitor("Time: %0t | a=%b | b=%b | AND=%b | OR=%b | XOR=%b | NAND=%b | NOR=%b | XNOR=%b",
                 $time, a, b, and_out, or_out, xor_out, nand_out, nor_out, xnor_out);

        $dumpfile("./op/all_gates.vcd");
        $dumpvars(0, tb_all_gates);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule
