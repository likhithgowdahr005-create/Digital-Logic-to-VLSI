`timescale 1ns/1ps

module tb_register_file;

reg clk;
reg we;
reg [1:0] wr_addr;
reg [1:0] rd_addr;
reg [3:0] data_in;
wire [3:0] data_out;

register_file uut (
    .clk(clk),
    .we(we),
    .wr_addr(wr_addr),
    .rd_addr(rd_addr),
    .data_in(data_in),
    .data_out(data_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("register_file.vcd");
    $dumpvars(0, tb_register_file);

    clk = 0;
    we = 1;

    wr_addr = 2'b00;
    rd_addr = 2'b00;
    data_in = 4'b0000;

    // Write 5
    wr_addr = 2'b00;
    data_in = 4'b0101;
    #10;

    // Write 10 into Register 1
    wr_addr = 2'b01;
    data_in = 4'b1010;
    #10;

    // Read Register 0
    we = 0;
    rd_addr = 2'b00;
    #10;

    // Read Register 1
    rd_addr = 2'b01;
    #10;

    $finish;
end

endmodule
