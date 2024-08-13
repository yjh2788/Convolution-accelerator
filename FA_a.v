module FA_a(a,b,cin,sout,cout);
parameter w=16;
input wire [w:0]a;
input wire [w:0]b;
input wire [w:0]cin;
output wire [w:0]sout;
output wire [w:0]cout;

genvar i;
generate
for (i=0;i<w+1;i=i+1)begin :k1
FA u(a[i],b[i],sout[i],cin[i],cout[i]);
end 
endgenerate
endmodule 