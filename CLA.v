module CLA(a,b,cin,cout,s);
parameter w=16;
input wire [w-1:0]a;
input wire [w-1:0]b;
input cin;
output wire cout;
output wire [w-1:0]s;

wire [w:0]C;
wire [w-1:0]P;
wire [w-1:0]G;

assign C[0]=cin;
assign cout=C[w];

genvar i,j;
generate 
for (i=0;i<w;i=i+4) begin :unit
CLA4_unit u1(a[i+3:i],b[i+3:i],C[i],P[i+3:i],G[i+3:i],C[i+4:i+1]);
end

for (j=0;j<w;j=j+1) begin :sout
assign s[j]=P[j]^C[j];
end
endgenerate

endmodule



