module inst_mem(adr, dataOut, clk);
	parameter N = 32,inst_num=50;
	input clk;
	input [N-1:0] adr;
	output reg [N-1:0] dataOut;
	reg [7:0] inst_adr = 8'b0;
	assign inst_adr =  adr >> 2;
	reg [N-1:0] mem [0:49] ;	
	assign mem[0] = 32'b000000000000_00000_010_00001_0000011;
	assign mem[1] = 32'b000000000001_00000_010_00010_0000011;
	assign mem[2] = 32'b0000000_00001_00010_000_00011_0110011;
	assign dataOut = mem[inst_adr];
endmodule