module core(data,kernel,clk,rst,sel,d_load,k_load,data_out);
parameter w=16;
input wire[w-1:0]data,kernel;
input rst,clk,sel;
input d_load,k_load;
output [2*w-1:0] data_out;

reg [w-1:0]r_data,r_kernel;
wire clk_=clk&sel;

MBM u1(r_data,r_kernel,data_out);

always@(posedge clk_) begin
if(rst) begin
r_data<=0;
r_kernel<=0;
end
if(d_load&sel) r_data<=data;
if(k_load&sel) r_kernel<=kernel;
end
endmodule 