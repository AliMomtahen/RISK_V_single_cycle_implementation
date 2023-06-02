
module  imm_extend(input [24:0] inp, input [1:0] sel  , output reg[31:0] out_imm);
    parameter [1:0] 
     I_TYPE = 0 , S_TYPE = 1, J_TYPE = 2 , U_TYPE= 3 ;
     always @(sel , inp) begin
        case (sel)
            I_TYPE: out_imm = {{20{inp[24]}} , inp[24 : 13]};
            S_TYPE: out_imm = {{20{inp[24]}} , inp[24:18] , inp[4:0]};
            J_TYPE: out_imm = {{12{inp[24]}} ,inp[12:5] , inp[13] , inp[23:14]  };
            U_TYPE: out_imm = {inp[24:0] , 7'b0};
            default: 
                out_imm = 32'b0;
        endcase
     end
endmodule