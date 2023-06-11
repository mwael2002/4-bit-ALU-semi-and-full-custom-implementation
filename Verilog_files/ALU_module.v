module ALU_module(a,b,sel,out);

input wire [3:0] a;
input wire [3:0] b;
input wire [3:0] sel;
output wire [5:0] out;

wire [3:0] c0;
wire [5:0] c1;

Arithmetic_unit au(.sel(sel),.res(c1),.A(a),.B(b));

Logical_unit lu(.sel(sel),.res(c0),.a(a),.b(b));

mux2x1 mux(.sel(sel[3]),.res(out),.a(c0),.b(c1));

endmodule