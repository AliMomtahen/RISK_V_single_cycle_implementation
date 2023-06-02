module controller(input [31:0] instr,input zero,clk,output reg  reg_write,alu_src,mem_write,pc_src0 ,pc_src1,
				output reg [1:0] res_src, imm_src,output reg[2:0] alu_control );
	always@(clk)begin
		//opcode
		case(instr[6:0])
			8'b011_0011 :begin //R-Type
				case(instr[14:12])
					//func3
					3'b000:begin
						
						{res_src ,alu_src ,pc_src0 ,pc_src1,mem_write} = 6'b0;
						reg_write=1;
						
						//func7
						case(instr[31:25])
							7'b0: //add
								alu_control = 3'd3;

							7'b0100_000: //sub
								alu_control = 3'd6;
						endcase
					end
					3'b110: //or
						alu_control = 3'd1;

					3'b111:begin //and
						alu_control = 3'd0;
					end


					//slt



				endcase
			end
			8'b000_0011 :begin //lw
				{reg_write,alu_src} = 2'b1;
				{pc_src0 ,pc_src1,mem_write} = 2'b0;
				{alu_control,res_src, imm_src} = 7'b000_01_00;
				
			end
			8'b001_0011 :begin //I-type immediate
				case(instr[14:12])
					//func3
					3'b000:begin // addi
						
					end
					3'b100:begin // xori
						
					end
					3'b110:begin // ori
						
					end


					//slti



				endcase
			end
			8'b110_0111 :begin //jalr

			end
			8'b010_0011 :begin //sw

			end
			8'b110_1111 :begin //jal

			end
			8'b110_0111 :begin //J-Type
				case(instr[14:12])
					//func3
					3'b000:begin // beq
						
					end
					3'b001:begin // bne
						
					end
					3'b100:begin // ori
						
					end

					3'b101:begin // bgt
						
					end


					//slti



				endcase
			end
			8'b011_0111 :begin //lui

			end
			default:;

		endcase
	end

endmodule
