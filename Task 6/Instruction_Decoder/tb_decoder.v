`timescale 1ns/1ps

module tb_decoder;

reg [2:0] opcode;
wire [2:0] alu_op;

decoder uut (
    .opcode(opcode),
    .alu_op(alu_op)
);

initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0, tb_decoder);

    opcode = 3'b000; #10;   // ADD
    opcode = 3'b001; #10;   // SUB
    opcode = 3'b010; #10;   // AND
    opcode = 3'b011; #10;   // OR

    $finish;
end

endmodule
