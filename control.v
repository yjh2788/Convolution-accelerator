module control(clk,rst,sel,mod,d_load,k_load);
input clk,rst;
input wire [1:0]mod;
output reg[8:0]sel;
output reg d_load,k_load;


always@(posedge clk) begin
if(rst) sel<=0;
if(sel==9'b100000000) sel<=9'b000000001;
sel<=sel<<1;

case(mod)
	2'b00: begin d_load<=0;k_load<=0; end
	2'b01: begin d_load<=0;k_load<=1; end
	2'b10: begin d_load<=1;k_load<=0; end
	2'b11: begin d_load<=1;k_load<=1; end
	default: begin d_load<=0;k_load<=0; end
endcase
end


endmodule 