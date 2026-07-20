`timescale 1ns/1ps

module tb_sequence_detector;

reg clk;
reg reset;
reg in;
wire detected;


sequence_detector uut (
    .clk(clk),
    .reset(reset),
    .in(in),
    .detected(detected)
);


always #5 clk = ~clk;


initial
begin
    $dumpfile("sequence_detector.vcd");
    $dumpvars(0, tb_sequence_detector);
end

initial
begin
    clk = 0;
    reset = 1;
    in = 0;

    #10 reset = 0;

    
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;

    #20 in = 0;

    #20 $finish;
end

endmodule
