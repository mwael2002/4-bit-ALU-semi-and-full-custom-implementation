module ALU_module_tb;

reg [3:0] a;
reg [3:0] b;
reg [3:0] sel;
wire [5:0] out;
reg clk;

integer i,j,k;

top_module ALU(.FFa(a), .FFb(b), .clk(clk), .sel(sel), .Final_out(out));

always
#5 clk=(~clk);


initial begin
clk=1;

for(i=4'b0000; i<=4'b1111; i=i+1) begin
     sel=i;
     for (j = 4'b1000; j <= 4'b1111; j=j+1)begin
         a=j;

         for (k = 4'b1000; k <= 4'b1111; k=k+1) begin 
             
             b=k;
             #25;
			
             end
         for (k = 4'b0000; k <= 4'b0111; k=k+1) begin 
             
             b=k;
             #25;
			
             end
        end

     for (j = 4'b0000; j <= 4'b0111; j=j+1)begin
         a=j;

         for (k = 4'b1000; k <= 4'b1111; k=k+1) begin 
             
             b=k;
             #25;
			
             end
         for (k = 4'b0000; k <= 4'b0111; k=k+1) begin 
             
             b=k;
             #25;
			
             end
        end
	
	  end
    
$stop;
end


endmodule
