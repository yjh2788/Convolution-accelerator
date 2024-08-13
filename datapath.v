module datapath(data,kernel,clk,rst,sel,d_load,k_load,data_out);
parameter w=16;
input wire [w-1:0]data,kernel;
input wire [8:0]sel;
input clk,rst,d_load,k_load;
output wire [w-1:0]data_out;

wire [w-1:0]tmp[0:8];
wire [w-1:0]c[0:7];
wire [w-1:0]s[0:7];

genvar i;
generate
for(i=0;i<9;i=i+1) begin: d
core u(data,kernel,clk,rst,sel[i],d_load,k_load,tmp[i]);
end
endgenerate

CLA a1(tmp[0],tmp[1],1'b0,c[0],s[0]);
CLA a2(s[0],tmp[2],c[0],c[1],s[1]);
CLA a3(s[1],tmp[3],c[1],c[2],s[2]);
CLA a4(s[2],tmp[4],c[2],c[3],s[3]);
CLA a5(s[3],tmp[5],c[3],c[4],s[4]);
CLA a6(s[4],tmp[6],c[4],c[5],s[5]);
CLA a7(s[5],tmp[7],c[5],c[6],s[6]);
CLA a8(s[6],tmp[8],c[6],c[7],s[7]);
assign data_out=s[7];

endmodule 