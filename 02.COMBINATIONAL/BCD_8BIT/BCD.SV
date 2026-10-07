module BCD(
  input logic [3:0]A,
  input logic [3:0]B,
  input logic cin,
  output logic [3:0]sum,
  output logic cout);
  logic [4:0]S;
  always_comb begin
    S = A+B+cin;
    if(S > 5'd9) begin
      S = S + 5'd6;
      cout  = 1'b1;
    end
    else begin
      cout  = 1'b0;
    end
    sum = S[3:0];
  end
endmodule
module BCD_8bit (
  input logic [7:0]A,
  input logic [7:0]B,
  output logic [7:0]sum,
  output logic cout);
  logic carry;
  
  BCD ones(.A(A[3:0]),
           .B(B[3:0]),
           .cin(1'b0),
           .sum(sum[3:0]),
           .cout(carry));
  BCD tens(.A(A[7:4]),
           .B(B[7:4]),
           .cin(carry),
           .sum(sum[7:4]),
           .cout(cout));
endmodule
    
