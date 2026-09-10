module alu(
    input [3:0] A,
    input [3:0] B,
    input [2:0] sel,
    output reg [3:0] Y
);

always @(*) begin
    case(sel)
        3'b000: Y = A + B;   // ADD
        3'b001: Y = A - B;   // SUB
        3'b010: Y = A & B;   // AND
        3'b011: Y = A | B;   // OR
        3'b100: Y = A ^ B;   // XOR
        default: Y = 4'b0000;
    endcase
end

endmodule


module processor(
    input clk,
    input reset,
    input [7:0] instruction,
    output [3:0] result
);

wire [1:0] state;
wire [2:0] opcode;
wire [2:0] alu_op;
wire [3:0] A;
wire [3:0] B;

// Instruction fields
assign opcode = instruction[7:5];
assign A = {2'b00, instruction[4:3]};
assign B = {2'b00, instruction[2:1]};

// Control Unit
control_unit cu (
    .clk(clk),
    .reset(reset),
    .state(state)
);

// Instruction Decoder
decoder d1 (
    .opcode(opcode),
    .alu_op(alu_op)
);

// ALU
alu a1 (
    .A(A),
    .B(B),
    .sel(alu_op),
    .Y(result)
);

endmodule
