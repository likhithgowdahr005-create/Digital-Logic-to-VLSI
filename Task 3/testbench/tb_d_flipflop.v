`timescale 1ns/1ps
module tb_d_flipflop;

reg clk;
reg D;
wire Q;

d_flipflop uut (
     .clk(clk),
     .D(D),
     .Q(Q)
);
always #5 clk = ~clk;

initial 
begin
    $dumpfile("d_flipflop.vcd");
    $dumpvars(0, tb_d_flipflop);

    clk = 0;
    D = 0;
    
    #10 D = 1;
    #10 D = 0;
    #10 D = 1;
    #10 D = 1;
    #10 D = 0;

    #10;
    $finish;
end
endmodule  










