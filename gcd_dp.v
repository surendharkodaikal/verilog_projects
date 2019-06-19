`include "gcd_hw.v"
module gcd(gt,lt,eq,ldA,ldB,sel1,sel2,sel_in,data_in,clk);
input ldA,ldB,sel1,sel2,sel_in,clk;
input [15:0]data_in;
output gt,lt,eq;
wire [15:0] Aout,Bout, bus, x,y,subout;

pipo A(Aout,bus,ldA,clk);
pipo B(Bout,bus,ldB,clk);
mux C(x,Aout,Bout,sel1);
mux D(y,Aout,Bout,sel2);
mux E(bus,subout,data_in,sel_in);
sub F(subout,x,y);
compare G(lt,gt,eq,Aout,Bout);
endmodule

