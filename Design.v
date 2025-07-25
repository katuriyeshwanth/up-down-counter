module up_down_counter(mode,ld,clr,clk,d_in,count);
input [7:0]d_in;
input mode,ld,clr,clk;
output reg [7:0] count;
always @(posedge clk)
if (ld) count <=d_in;
else if (clr) count <=0;
else if (mode) count <=count+1;
else count <=count-1;
endmodule
