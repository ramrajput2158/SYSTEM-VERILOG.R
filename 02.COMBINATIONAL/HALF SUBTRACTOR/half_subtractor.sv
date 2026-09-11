module Half_Subtractor(input logic a,
                  input logic b,
                  output logic diff,
                       output logic borrow);
  always_comb begin
    diff=a^b;
    borrow=(~a)&b;
  end
endmodule
