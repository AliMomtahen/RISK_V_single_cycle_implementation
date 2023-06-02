module data_mem(adr,write_en,data_in ,data_out, clk);
	parameter N = 32,inst_num=50;
	input [N-1:0] data_in;
	input clk,write_en;
	input [7:0] adr;
	output reg [N-1:0] data_out;

	reg [N-1:0] mem [0:N-1] ;
	assign mem[0] = 32'd10;
	assign mem[1] = 32'd11;
	assign data_out = mem[adr];
	always @* begin
		if(write_en)
			mem[adr] = data_in;
	end
endmodule
