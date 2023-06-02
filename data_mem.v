module data_mem(adr,write_en,data_in ,data_out, clk);
	parameter N = 32,inst_num=50;
	input [N-1:0] data_in;
	input clk,write_en;
	input [7:0] adr;
	output reg [N-1:0] data_out;

	reg [N-1:0] mem [0:49] ;	
	always@(posedge clk)begin
		data_out = mem[adr];
		if(write_en)
			mem[adr] = data_in;
	end
endmodule
