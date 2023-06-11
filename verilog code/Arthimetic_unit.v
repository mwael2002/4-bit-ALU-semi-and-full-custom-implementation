module Arithmetic_unit(A,B,sel,res);

input signed [3:0] A,B;

output wire signed [5:0] res;

input [2:0] sel;


reg signed [4:0] in_a,in_b;



always@(*) begin

case(sel)

3'b000:begin
in_a=A;
in_b=5'd1;
end

3'b001:begin
in_a=A;
in_b=5'b11111;
end

3'b010:begin
in_a={A,1'b0};
in_b=0;
end

3'b011:begin
in_b=B;
in_a=5'd1;
end

3'b100:begin
in_b=B;
in_a=5'b11111;
end

3'b101:begin
in_b={B,1'b0};
in_a=0;
end

3'b110:begin
in_a=A;
in_b=B;
end

default:begin
in_a={A,1'b0};
in_b={A,1'b0};
end

endcase
end


five_bit_full_adder F0(.A(in_a),.B(in_b),.cin(1'b0),.sum(res));

endmodule

