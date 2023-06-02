module  ALU(input [31:0] inp1 , inp2 , input [2:0] sel , output reg [31:0] out , output signbit);
    parameter [2:0]  
    A = 3 , B = 6 , C = 0 , D = 1 , E = 4 , F = 5 , G = 2 , H =7;
    assign signbit = out[31];
    always @(sel) begin
         case (sel)
            A:  out = inp1 + inp2;
            B: out = inp1-inp2;
            C: out = inp1 & inp2;
            D: out = inp1 | inp2;
            E: out = inp1 << inp2;
            default: 
                out = 32'b0;
         endcase   
    end

endmodule
