module pipo1(dout,din,ld,clk);
input [15:0] din;
input ld,clk;
output reg[15:0] dout;
always@(posedge clk)
if(ld) dout<=din;
endmodule

module pipo2(dout,din,ld,clr,clk);
input [15:0] din;
input ld,clk,clr;
output reg [15:0] dout;
always@(posedge clk )
if(clr)
       	dout<=16'b0;
else if(ld)
	dout<=din;
endmodule

module adder(out,in1,in2);
input [15:0] in1,in2;
output reg [15:0] out;
always@(*)
	out=in1+in2;
endmodule

module equal(eqz,data);
input [15:0] data;
output eqz;
assign eqz= (data == 0);
endmodule

module cntr(dout,din,ld,dec,clk);
input [15:0] din;
input ld,dec,clk;
output reg[15:0] dout;
always@(posedge clk)
	if(ld)
		dout<=din;
	else if(dec)
		dout<=dout-1;
endmodule

