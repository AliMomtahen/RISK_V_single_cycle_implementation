module mux32_2to1(input [31:0] in1,in2,input sel,output reg [31:0] out);
	always@(sel)begin
		case(sel)
			2'b00: out = in1;
			2'b01: out = in2;
			default:
				out = 32'b0;
		endcase
	end
endmodule
