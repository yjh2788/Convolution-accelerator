module CLA4_unit(a,b,cin,P,G,C);
input wire [3:0]a;
input wire [3:0]b;
input cin;
output wire [4:1]C;
output wire [3:0]P;
output wire [3:0]G;


genvar i;
generate
for(i=0;i<4;i=i+1) begin :pg
PG u1(a[i],b[i],P[i],G[i]);
end
endgenerate

LCGLogic u2(P,G,cin,C);

endmodule 
