`timescale 1ns/1ps

module tb_processor;

reg clk;
reg reset;
reg [7:0] instruction;
wire [3:0] result;

processor uut (
    .clk(clk),
    .reset(reset),
    .instruction(instruction),
    .result(result)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("processor.vcd");
    $dumpvars(0, tb_processor);

    clk = 0;
    reset = 1;
    instruction = 8'b00000000;

    // Apply reset
    #10;
    reset = 0;

    // ADD: A=3, B=2
    instruction = 8'b00011100;
    #10;

     // SUB: A=3, B=1
    instruction = 8'b00111010;
    #10;

    // AND: A=2, B=1
    instruction = 8'b01010010;
    #10;

    // OR: A=3, B=1
    instruction = 8'b01111010;
    #10;

    $finish;
end

endmodule
