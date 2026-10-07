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
