`timescale 1ns/1ps

module tb_ram;

reg clk;
reg we;
reg [1:0] addr;
reg [3:0] data_in;
wire [3:0] data_out;

ram uut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("ram.vcd");
    $dumpvars(0, tb_ram);

    clk = 0;
    we = 1;

    // Write 5 to address 0
    addr = 2'b00;
    data_in = 4'b0101;
    #10;

    // Write A to address 1
    addr = 2'b01;
    data_in = 4'b1010;
    #10;

    // Read address 0
    we = 0;
    addr = 2'b00;
    #10;

    // Read address 1
    addr = 2'b01;
    #10;

    $finish;
end

endmodule
