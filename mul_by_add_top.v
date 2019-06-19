`include "mul_by_add_datapath.v"
module mul(eqz,ldA,ldB,ldP,clrP,decB,din,clk);
input [15:0] din;
input ldA,ldB,ldP,clrP,decB,clk;
output eqz;
wire [15:0] x,y,z,bout,bus;

pipo1 A(x,bus,ldA,clk);
pipo2 P(y,z,ldP,clrP,clk);
adder AD(z,x,y);
cntr B(bout,bus,ldB,decB,clk);
equal comp(eqz,bout);
endmodule
