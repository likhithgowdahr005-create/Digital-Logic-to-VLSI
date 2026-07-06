`timescale 1ns/1ps

module tb_register4;

reg clk;
reg [3:0] D;
wire [3:0] Q;

register4 uut (
     .clk(clk),
     .D(D),
     .Q(Q)
);
always # 5 clk = ~clk;

initial 
begin
    $dumpfile("register4.vcd");
    $dumpvars(0, tb_register4);

    clk = 0;
    D =4'b0000;
    
    #10 D = 4'b1010;
    #10 D = 4'b1100;
    #10 D = 4'b0111;
    #10 D = 4'b1111;
    #10 D = 4'b0011;

    #10;
    $finish;
end
endmodule 

     
