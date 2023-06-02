module inst_mem(adr, dataOut, clk);
	parameter N = 32,inst_num=50;
	input clk;
	input [N-1:0] adr;
	output reg [N-1:0] dataOut;
	reg [7:0] inst_adr = 8'b0;
	assign inst_adr =  adr >> 2;
	reg [N-1:0] mem [0:49] ;	
	assign mem[0] = 32'd0;
	assign mem[5'd3] = 32'd1;
	assign mem[5'd2] = 32'd2;
	assign mem[5'd22] = 32'd13;
	always@(posedge clk)begin
		dataOut = mem[inst_adr];
	end
endmodule