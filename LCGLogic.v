module LCGLogic(P,G,cin,C);
parameter w=4;
input wire [w-1:0]P;
input wire [w-1:0]G;
input cin;
output wire [w:1]C;


assign C[1]=G[0]|(P[0]&cin);
assign C[2]=G[1]|(P[1]&G[0])|(P[1]&P[0]&cin);
assign C[3]=G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&cin);
assign C[4]=G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0])|(P[3]&P[2]&P[1]&P[0]&cin);

endmodule 