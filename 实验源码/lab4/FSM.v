`timescale 1ns / 1ps

module FSM(clk,rst,start,NEXT_ZERO,LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,done);
    input clk;
    input rst;
    input start;
    input NEXT_ZERO;
    output reg LD_SUM;
    output reg LD_NEXT;
    output reg SUM_SEL;
    output reg NEXT_SEL;
    output reg A_SEL;
    output reg done;
    
    reg [2:0]State;
    reg [2:0]StateNext;
    
    initial 
    begin
        LD_SUM=0;
        LD_NEXT=0;
        SUM_SEL=0;
        NEXT_SEL=0;
        A_SEL=0;
        done=0;
        State = 0;
    end
    
    always@(*)
    begin
        case (State)
            0:begin
                {LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,done}=6'b000000;
                if (start==1) 
                    StateNext<=1;
                else
                    StateNext<=0;
              end
            1:begin
                {LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,done}=6'b101110;
                StateNext<=2;
              end
            2:begin
                {LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,done}=6'b011100;
                if (NEXT_ZERO)
                    StateNext<=3;
                 else
                    StateNext<=1;
              end
            3:begin
                {LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,done}=6'b000001;
                if (start==1)
                    StateNext<=3;
                else 
                    StateNext<=0;
              end
          endcase
    end
    
    always@(posedge clk)
    begin
        if (rst == 1)
            State <= 0 ;
        else 
            State <= StateNext; 
    end
endmodule

