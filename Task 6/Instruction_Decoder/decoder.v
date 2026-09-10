module decoder(
    input [2:0] opcode,
    output reg [2:0] alu_op
);

always @(*) begin
    case(opcode)
        3'b000: alu_op = 3'b000; // ADD
        3'b001: alu_op = 3'b001; // SUB
        3'b010: alu_op = 3'b010; // AND
        3'b011: alu_op = 3'b011; // OR
        default: alu_op = 3'b000;
    endcase
end

endmodule
