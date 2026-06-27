
`timescale 1ns / 1ps

module top(
    input [3:0]x_i,y_i,
    input go_i,clk,rst,
    output[3:0]out
    );
   wire [3:0]xout,yout,inx,iny,outx,outy;
   wire xsel,ysel,xld,yld,enable;
   wire [1:0]comparision;
   
    mux2x1 mx(x_i,xout,rst,xsel,inx);
    mux2x1 my(y_i,yout,rst,ysel,iny);
    fsm f1(rst,clk,go_i,comparision,enable,xsel,ysel,xld,yld);
    register rx(rst,clk,xld,inx,outx);
    register ry(rst,clk,yld,iny,outy);
    register rout(rst,clk,enable,inx,out);
    comparator c1(outx,outy,rst,comparision);    
    subtractor s1(outx,outy,rst,comparision,xout,yout);
endmodule

module comparator(
    input [3:0]x,y,input rst,
    output reg [1:0]out
    );
    always@(*)
    begin
    if(rst)
    out=2'b00;
    else if(x>y)
    out=2'b10;
    else if(x<y)
    out=2'b01;
    else
    out=2'b11;
    end
endmodule
module subtractor(
    input [3:0]x,y,input rst,
    input [1:0]cmd,
    output reg [3:0]xout,yout
    );
    always@(*)
    begin
    if(rst||cmd==2'b00)
    {xout,yout}=0;
    else if(cmd==2'b10)
    begin
    xout=x-y;
    yout=y;
    end
    else if(cmd==2'b01)
    begin
    xout=x;
    yout=y-x;
    end
    else
    begin
    xout=x;
    yout=y;
    end
    end
endmodule
module fsm(
    input rst,clk,proceed,
    input [1:0]comparision,
    output reg enable,xsel,ysel,xld,yld
    );
    parameter init=3'b000,s0=3'b001,s1=3'b010,s2=3'b011,s3=3'b100,s4=3'b101,s5=3'b110;
    reg [2:0]state,nstate;
    always@(posedge clk)
    begin
    if(rst)
    begin
    {enable,xsel,ysel,xld,yld}<=0;
    state<=init;
    end
    else
    state<=nstate;
    end
    always@(proceed,comparision,state)
    begin
    nstate=init;
    case(state)
    init : if(!proceed)
            nstate=init;
           else
            nstate=s0;
    s0 : begin
         enable=0;
         xsel=0;
         ysel=0;
         xld=0;
         yld=0;
         nstate=s1;
         end        
    s1 : begin
              enable=0;
              xsel=0;
              ysel=0;
              xld=1;
              yld=1;
              nstate=s2;
         end
    s2 : begin
              enable=0;
              if(comparision==2'b10)
              nstate=s3;
              else if(comparision==2'b01)
              nstate=s4;
              else
              begin
              nstate=s5;
              xld=0;
              yld=0;
              nstate=s5;
              end
         end    
    s3 : begin
                   enable=0;
                   xsel=1;
                   ysel=0;
                   xld=1;
                   yld=0;
                   nstate=s2;
          end
    s4 : begin
               enable=0;
               xsel=0;
               ysel=1;
               xld=0;
               yld=1;
               nstate=s2;
          end
   s5 : begin
               enable=1;
               xsel=1;
               ysel=1;
               xld=1;
               yld=1;
               nstate=s0;
        end            
    endcase
  end            
endmodule

module register(
    input rst,clk,load,
    input [3:0]in,
    output reg [3:0]out
    );
    always@(posedge clk)
    begin
    if(rst)
    out<=0;
    else if(load)
    out<=in;
    end
endmodule

module mux2x1(
    input [3:0]a,b,input rst,
    input sel,
    output reg [3:0]out
    );
    always@(*)
    begin
    if(rst)
    out=0;
    else if(!sel)
    out=a;
    else
    out=b;
    end
endmodule
