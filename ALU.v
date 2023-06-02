module  ALU(input [31:0] inp1 , inp2 , input [2:0] sel , output reg [31:0] out , output signbit);
    parameter [2:0]  
    A = 3'd3 , B = 3'd6 , C = 3'd0 , D = 3'd1 , E = 3'd4 , F = 3'd5 , G = 3'd2 , H =3'd7;
    assign signbit = out[31];
    always@(inp1 , inp2,sel)begin
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
