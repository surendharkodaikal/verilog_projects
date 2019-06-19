module pipo(data_out,data_in,load,clk);
input [15:0] data_in;
input load,clk;
output reg [15:0] data_out;
always@(posedge clk)
	if(load) data_out<=data_in;
endmodule

module sub(out,in1,in2);
input [15:0] in1,in2;
output reg[15:0] out;
always@(*)
	out=in1-in2;
endmodule

module compare(lt,gt,eq,data1,data2);
input[15:0] data1,data2;
output lt,gt,eq;
assign lt=data1<data2;
assign gt=data1>data2;
assign eq=data1 == data2;
endmodule

module mux(out,in0,in1,sel);
input[15:0] in0,in1;
input sel;
output [15:0] out;
assign out=sel?in1:in0;
endmodule
