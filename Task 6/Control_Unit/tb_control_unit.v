`timescale 1ns/1ps

module tb_control_unit;

reg clk;
reg reset;
wire [1:0] state;

control_unit uut (
    .clk(clk),
    .reset(reset),
    .state(state)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("control_unit.vcd");
    $dumpvars(0, tb_control_unit);

    clk = 0;
    reset = 1;

    // Apply reset
    #10;
    reset = 0;

    // Allow FSM to run
    #40;

    $finish;
end

endmodule
