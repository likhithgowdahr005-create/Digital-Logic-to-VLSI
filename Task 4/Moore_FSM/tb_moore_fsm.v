`timescale 1ns/1ps

module tb_moore_fsm;

reg clk;
reg reset;
wire y;
moore_fsm uut (
    .clk(clk),
    .reset(reset),
    .y(y)
);
always #5 clk = ~clk;
initial
begin
    $dumpfile("moore.vcd");
    $dumpvars(0, tb_moore_fsm);
end
initial
begin
    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #60;

    $finish;
end

endmodule
