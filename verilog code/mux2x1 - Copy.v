module mux2x1 (a,b,sel,res);

input wire [3:0] a;
input wire [5:0] b;
input wire sel;
reg [5:0] out;
output wire [5:0] res;

always @ (*) begin
    if (sel)
        out = a; //logical
    else
        out = b; //arithmetic
end

assign res = out;

endmodule