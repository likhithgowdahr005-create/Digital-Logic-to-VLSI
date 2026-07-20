module moore_fsm(
    input clk,
    input reset,
    output reg y
);
parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10;
reg [1:0] state, next_state;
always @(posedge clk or posedge reset)
begin
    if (reset)
        state <= S0;
    else
        state <= next_state;
end
always @(*)
begin
    case(state)
        S0: next_state = S1;
        S1: next_state = S2;
        S2: next_state = S0;
        default: next_state = S0;
    endcase
end
always @(*)
begin
    case(state)
        S0: y = 1'b0;
        S1: y = 1'b1;
        S2: y = 1'b0;
        default: y = 1'b0;
    endcase
end

endmodule
