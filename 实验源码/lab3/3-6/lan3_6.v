`timescale 1ns / 1ps

module dynamic_scan(clk, SEG, AN);
    input clk;              // 系统时钟
    output [7:0] SEG;  		// 分别对应CA、CB、CC、CD、CE、CF、CG和DP
    output [7:0] AN;        // 8位数码管片选信
    wire clk_tmp;
    wire [2:0] num;
    wire [3:0] code;

    divider d1(.clk(clk), .clk_N(clk_tmp));   //
    counter c1(.clk(clk_tmp), .out(num[2:0]));   // 计数
    decoder3_8(.num(num[2:0]), .sel(AN[7:0]));   // 
    rom8x4(.addr(num[2:0]), .data(code[3:0]));
    pattern(.code(code[3:0]), .patt(SEG[7:0]));

endmodule