module five_bit_full_adder(A,B,cin,sum);

input signed [4:0] A,B;
input  cin;
wire [4:0] cin_cout;
output signed [5:0] sum;


Full_Adder F0(.A(A[0]),.B(B[0]),.cin(cin),
.sum(sum[0]),.cout(cin_cout[0]));

Full_Adder F1(.A(A[1]),.B(B[1]),.cin(cin_cout[0]),
.sum(sum[1]),.cout(cin_cout[1]));

Full_Adder F2(.A(A[2]),.B(B[2]),.cin(cin_cout[1]),
.sum(sum[2]),.cout(cin_cout[2]));

Full_Adder F3(.A(A[3]),.B(B[3]),.cin(cin_cout[2]),
.sum(sum[3]),.cout(cin_cout[3]));

Full_Adder F4(.A(A[4]),.B(B[4]),.cin(cin_cout[3]),
.sum(sum[4]),.cout(cin_cout[4]));

assign sum[5]=cin_cout[4]^A[4]^B[4];

endmodule
