module convolution(k);
parameter w=16;
input wire [w-1:0]k;

wire clk,rst;
wire d_load,k_load;
wire [8:0]sel;
wire [w-1:0]data,data_out;
wire [w-1:0]kernel;
wire [1:0]mod;

control u1(clk,rst,sel,mod,d_load,k_load);
datapath u2(data,kernel,clk,rst,sel,d_load,k_load,data_out);

endmodule 