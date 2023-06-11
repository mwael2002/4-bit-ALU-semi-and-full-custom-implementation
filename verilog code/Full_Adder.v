module Full_Adder(A,B,cin,sum,cout);
input A,B,cin;
output sum,cout;
wire x,y,z;
assign x=A^B;
assign sum=x^cin;
assign y=x&cin;
assign z=A&B;
assign cout=y|z;


endmodule
