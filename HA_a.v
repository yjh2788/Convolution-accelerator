module HA_a(a,b,s,c);
parameter w=16;
input wire[w:0]a;
input wire[w:0]b;
output wire[w:0]s;
output wire[w:0]c;

genvar i;
generate
for (i=0;i<w+1;i=i+1)begin:e5
HA u(a[i],b[i],s[i],c[i]);
end 
endgenerate
endmodule 