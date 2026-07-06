`timescale 1ns/1ps

module tb_counter4;

reg clk;
wire [3:0] Q;

counter4 uut (
     .clk(clk),
     .Q(Q)
);

always #5 clk = ~clk;

initial 
begin
    $dumpfile("counter4.vcd");
    $dumpvars(0, tb_counter4);

    clk = 0;
    
    #160;
  
    $finish;
end
endmodule 




























