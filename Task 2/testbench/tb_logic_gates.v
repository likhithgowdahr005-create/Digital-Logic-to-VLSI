`timescale 1ns/1ps

module tb_logic_gates;

reg A, B;

wire and_y;
wire or_y;
wire not_y;
wire nand_y;
wire nor_y;
wire xor_y;

and_gate  U1 (.A(A), .B(B), .Y(and_y));
or_gate   U2 (.A(A), .B(B), .Y(or_y));
not_gate  U3 (.A(A),         .Y(not_y));
nand_gate U4 (.A(A), .B(B), .Y(nand_y));
nor_gate  U5 (.A(A), .B(B), .Y(nor_y));
xor_gate  U6 (.A(A), .B(B), .Y(xor_y));

initial begin

    $dumpfile("logic_gates.vcd");
    $dumpvars(0,tb_logic_gates);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;

end

endmodule
