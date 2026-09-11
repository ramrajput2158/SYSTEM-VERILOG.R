module Full_Subtractor(input logic a,
                  input logic b,
                  input logic bin,
                  output logic diff,
                       output logic borrow);
  always_comb begin
    diff=a^b^bin;
    borrow=(~a)&b|(b&bin)|(~a)&bin;
  end
endmodule
