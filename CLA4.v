module CLA4(a,b,cin,cout,s);
input wire [3:0]a;
input wire[3:0]b;
input cin;
output wire [3:0]s;
output cout;

wire [3:0]P;
wire [3:0]G;
wire [4:1]C;

genvar i;
generate
for(i=0;i<4;i=i+1) begin :pg
PG u1(a[i],b[i],P[i],G[i]);
end

for(i=0;i<4;i=i+1) begin :sout
assign s[i]=P[i]^C[i];
end
endgenerate

LCGLogic u2(P,G,cin,C);
assign cout=C[4];

endmodule 


