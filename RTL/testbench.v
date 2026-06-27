`timescale 1ns/1ps
module GCD_TB(

    );
    reg [3:0]x_i=0,y_i=0;
    reg go_i=1,clk=0,rst=0;
    wire [3:0]out;
    top t1(x_i,y_i,go_i,clk,rst,out);
    always #5 clk=~clk;
    initial
    begin
    rst=1;@(negedge clk);
    rst=0;@(negedge clk);
    x_i=15;y_i=12;go_i=1;
    @(negedge clk);
    repeat(15)
    @(negedge clk);
    x_i=7;y_i=5;go_i=1;
        @(negedge clk);
     repeat(20)
        @(negedge clk);
       x_i=4;y_i=8;go_i=1;
             @(negedge clk);
          repeat(20)
             @(negedge clk);
    $stop;
    end
endmodule

