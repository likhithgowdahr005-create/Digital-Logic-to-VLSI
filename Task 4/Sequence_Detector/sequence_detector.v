module sequence_detector(
    input clk,
    input reset,
    input in,
    output reg detected
);

parameter S0 = 3'd0,
          S1 = 3'd1,
          S2 = 3'd2,
          S3 = 3'd3,
          S4 = 3'd4;

reg [2:0] state, next_state;

always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= S0;
    else
        state <= next_state;
end

always @(*)
begin
    case(state)

        S0:
            if(in)
                next_state = S1;
            else
                next_state = S0;

        S1:
            if(in)
                next_state = S1;
            else
                next_state = S2;

        S2:
            if(in)
                next_state = S3;
            else
                next_state = S0;

        S3:
            if(in)
                next_state = S4;
            else
                next_state = S2;

        S4:
            if(in)
                next_state = S1;
            else
                next_state = S2;

        default:
            next_state = S0;

    endcase
end
 
always @(*)
begin
    if(state == S4)
        detected = 1'b1;
    else
        detected = 1'b0;
end

endmodule
