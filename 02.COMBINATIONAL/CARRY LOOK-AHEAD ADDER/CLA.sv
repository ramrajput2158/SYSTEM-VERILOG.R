module Carry_lookahead_adder(
  input [3:0]A,
  input logic [3:0]B,
  input logic Cin,
  output logic [3:0]sum,
  output logic cout);
  logic [3:0]P;
  logic [3:0]G;
  logic [4:0]C;
  integer i;
  always_comb begin
    C[0]=Cin;
    for(i=0;i<4;i++) begin
       P[i]=A[i]^B[i];
       G[i]=A[i]&B[i];
      C[i+1]=G[i]|P[i]&C[i];
              end
    for(i=0;i<4;i++) begin
      sum[i]=P[i]^C[i];
    end
    cout=C[4];
              end
endmodule
              
    
