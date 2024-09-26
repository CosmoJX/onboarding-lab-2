module Exercise3 (
    input clk,
    input nReset,
    input [3:0] a,
    input [15:0] b,
    input [15:0] c,
    output [15:0] out
);

wire [7:0] d1;
wire [7:0] d2;


Mystery1 mystery_alpha(
    .a(a[1:0]),
    .b(b[7:0]),
    .c(c[7:0]),
    .d(d1)
);

Mystery1 mystery_alpha(
    .a(a[3:2]),
    .b(b[15:8]),
    .c(c[15:8]),
    .d(d2)
);

Mystery2 myster_gamma(
    .clk(clk),
    .nReset(nReset),
    .a_in(d1),
    .b_in(d2),
    .out(out)
);

endmodule
