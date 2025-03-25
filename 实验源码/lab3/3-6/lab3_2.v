`timescale 1ns / 1ps


module counter(clk,out);
    input clk;                    
    output reg [2:0] out;             

always @(posedge clk)  begin  
    if (out >= 7) begin
        out<=0;
    end
    else begin
        out<=out+1;
    end
end                           

endmodule
