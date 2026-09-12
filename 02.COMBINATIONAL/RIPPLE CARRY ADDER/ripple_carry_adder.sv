module full_adder(input logic a,
                    input logic b,
                    input logic cin,
                  output logic sum,
                    output logic carry);
  always_comb begin
    sum=a^b^cin;
    carry=(a&b)|(b&cin)|(cin&a);
  end
endmodule
module Ripple_adder(input logic [7:0]a,
                    input logic [7:0]b,
                    input logic cin,
                    output logic [7:0]sum,
                    output logic cout);
  logic carry[6:0];
  full_adder FA0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(carry[0]));
  full_adder FA1(.a(a[1]),.b(b[1]),.cin(carry[0]),.sum(sum[1]),.carry(carry[1]));
  full_adder FA2(.a(a[2]),.b(b[2]),.cin(carry[1]),.sum(sum[2]),.carry(carry[2]));
  full_adder FA3(.a(a[3]),.b(b[3]),.cin(carry[2]),.sum(sum[3]),.carry(carry[3]));
  full_adder FA4(.a(a[4]),.b(b[4]),.cin(carry[3]),.sum(sum[4]),.carry(carry[4]));
  full_adder FA5(.a(a[5]),.b(b[5]),.cin(carry[4]),.sum(sum[5]),.carry(carry[5]));
  full_adder FA6(.a(a[6]),.b(b[6]),.cin(carry[5]),.sum(sum[6]),.carry(carry[6]));
  full_adder FA7(.a(a[7]),.b(b[7]),.cin(carry[6]),.sum(sum[7]),.carry(cout));
endmodule
  
