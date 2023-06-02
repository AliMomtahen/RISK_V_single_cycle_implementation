module pc_reg(input clk,rst,input [31:0] in_pc,output reg [31:0] out_pc);
	reg [31:0] pc;
	always@(clk)begin
		if(rst)
			pc = 32'b0;
		else begin
			out_pc = pc;
			pc = in_pc;
		end
	end
endmodule
