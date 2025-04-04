`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/28 20:09:44
// Design Name: 
// Module Name: decoder_3to8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module decoder_4to16(in, out);
    input [3:0] in;
    output reg [7:0] out;

    always@(in)
        begin
            case(in)
                4'b0000 : out[7:0] = 8'b11000000;
                4'b0001 : out[7:0] = 8'b11111001;
                4'b0010 : out[7:0] = 8'b10100100;
                4'b0011 : out[7:0] = 8'b10110000;
                4'b0100 : out[7:0] = 8'b10011001;
                4'b0101 : out[7:0] = 8'b10010010;
                4'b0110 : out[7:0] = 8'b10000010;
                4'b0111 : out[7:0] = 8'b11111000;
                4'b1000 : out[7:0] = 8'b10000000;
                4'b1001 : out[7:0] = 8'b10011000;
                4'b1010 : out[7:0] = 8'b10001000;
                4'b1011 : out[7:0] = 8'b10000011;
                4'b1100 : out[7:0] = 8'b11000110;
                4'b1101 : out[7:0] = 8'b10100001;
                4'b1110 : out[7:0] = 8'b10000110;
                default : out[7:0] = 8'b10001110;
            endcase
        end
endmodule
