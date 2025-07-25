module test;
reg [7:0]d_in;
reg mode,ld,clr,clk;
wire [7:0] count;
up_down_counter dut(.mode(mode),.ld(ld),.clr(clr),.clk(clk),.d_in(d_in),.count(count));
initial 
clk=0;
always #5 clk=~clk;

initial
begin
$monitor($time,"d_in=%b,clr=%b,ld=%b,clk=%b,mode=%b,count=%b",d_in,clr,ld,clk,mode,count);
d_in=8'b00000000;
clr=0;
ld=0;
mode=0;
#3 clr=1;
#10 clr=0;
#10 d_in=8'b00000000; ld=1;
#10 ld=0;
mode=1; #150
mode=0; #150
mode=1; #150
$stop;
end
endmodule
