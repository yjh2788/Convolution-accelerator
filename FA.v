module FA(a,b,sout,cin,cout);
input a;
input b;
input cin;
output sout;
output cout;

wire s;
wire c1;
wire c2;

HA U1(a,b,s,c1);
HA U2(s,cin,sout,c2);
assign cout=c1|c2;

endmodule