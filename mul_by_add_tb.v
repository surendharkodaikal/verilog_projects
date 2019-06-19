`include "mul_by_add_top.v"
`include "mul_by_add_ctrlpath.v"
module tb;
reg[15:0]din;
reg clk,start;
wire done;
mul dut(eqz,ldA,ldB,ldP,clrP,decB,data_in,clk);
controller cdut(ldA,ldB,ldP,clrP,decB,done,clk,eqz,start);
initial begin
	clk=1'b0;
	#3 start=1'b1;
	#500 $finish;
end
always #5 clk=~clk;
initial begin
	#17 din=17;
	#10 din=5;
end

initial 
begin
	$monitor($time,"%d%b",dut.y,done);
end
endmodule
