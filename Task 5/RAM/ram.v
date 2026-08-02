module ram(
    input clk,
    input we,
    input [1:0] addr,
    input [3:0] data_in,
    output reg [3:0] data_out
);

reg [3:0] memory [3:0];

integer i;

// Initialize RAM
initial begin
    for(i = 0; i < 4; i = i + 1)
        memory[i] = 4'b0000;
end

// Write operation
always @(posedge clk) begin
    if (we)
        memory[addr] <= data_in;
end

// Read operation
always @(*) begin
    data_out = memory[addr];
end

endmodule
