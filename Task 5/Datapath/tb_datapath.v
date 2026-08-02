`timescale 1ns/1ps

module tb_datapath;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;
wire [3:0] result;

datapath uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result)
);

initial begin
    $dumpfile("datapath.vcd");
    $dumpvars(0, tb_datapath);

    A = 4'b0101;   // 5
    B = 4'b0011;   // 3

    sel = 3'b000; #10;   // ADD
    sel = 3'b001; #10;   // SUB
    sel = 3'b010; #10;   // AND
    sel = 3'b011; #10;   // OR
    sel = 3'b100; #10;   // XOR

    $finish;
end

endmodule
