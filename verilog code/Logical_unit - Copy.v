module Logical_unit(a, b, sel, res);

input [3:0] a;
input [3:0] b;
input [2:0] sel;
output [3:0] res;

reg [3:0] c;

always @ (*) begin
  case (sel)
    3'b000: c = ~a; // 1's complement of a
    3'b001: c = ~b; // 1's complement of b
    3'b010: c = a & b; // bitwise AND of a and b
    3'b011: c = a | b; // bitwise OR of a and b
    3'b100: c = a ^ b; // bitwise XOR of a and b
    3'b101: c = ~(a ^ b); // bitwise XNOR of a and b
    3'b110: c = ~(a & b); // bitwise NAND of a and b
    default: c = ~(a | b); // bitwise NOR of a and b
  endcase
end

assign res=c;

endmodule
