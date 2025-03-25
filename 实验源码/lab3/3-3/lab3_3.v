`timescale 1ns / 1ps


module divide_and_count(clk,out);
input clk;
output [2:0]out;
wire clk_N;
    divider d(clk,clk_N);
    counter c(clk_N,out);
endmodule
