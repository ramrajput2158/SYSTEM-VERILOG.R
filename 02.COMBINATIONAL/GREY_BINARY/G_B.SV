module G_B(
  input logic [7:0]grey,
  output logic [7:0] binary);
  always_comb begin
    binary[7] = grey[7];
    binary[6] = grey[6]^binary[7];
    binary[5] = grey[5]^binary[6];
    binary[4] = grey[4]^binary[5];
    binary[3] = grey[3]^binary[4];
    binary[2] = grey[2]^binary[3];
    binary[1] = grey[1]^binary[2];
    binary[0] = grey[0]^binary[1];
  end
endmodule
