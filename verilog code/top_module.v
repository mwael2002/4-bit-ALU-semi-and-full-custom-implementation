module top_module(FFa, FFb, clk, sel, Final_out);

input wire [3:0] FFa;
input wire [3:0] FFb;
input wire clk;
input wire [3:0] sel;
reg [5:0] FFout;

output wire [5:0] Final_out;

wire [5:0] out;
reg [3:0] a;
reg [3:0] b;


always @ (posedge clk) begin
    a <= FFa;
end

always @ (posedge clk) begin
    b <= FFb;
end

ALU_module ALU0(.a(a),.b(b),.sel(sel),.out(out));

always @ (posedge clk) begin
    FFout <= out;
end

assign Final_out=FFout;

endmodule


