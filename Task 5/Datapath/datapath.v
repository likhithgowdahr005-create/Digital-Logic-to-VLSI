module datapath(
    input [3:0] A,
    input [3:0] B,
    input [2:0] sel,
    output [3:0] result
);

alu u1 (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(result)
);

endmodule
