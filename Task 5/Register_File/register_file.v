module register_file(
    input clk,
    input we,
    input [1:0] wr_addr,
    input [1:0] rd_addr,
    input [3:0] data_in,
    output reg [3:0] data_out
);

// 4 Registers of 4 bits each
reg [3:0] reg_file [3:0];

integer i;

// Initialize registers to zero
initial begin
    for(i = 0; i < 4; i = i + 1)
        reg_file[i] = 4'b0000;
end

// Write operation
always @(posedge clk) begin
    if (we)
        reg_file[wr_addr] <= data_in;
end

// Read operation
always @(*) begin
    data_out = reg_file[rd_addr];
end

endmodule
