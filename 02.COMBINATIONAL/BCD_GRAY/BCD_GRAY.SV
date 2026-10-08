module BCD_GRAY(
  input logic [7:0]binary,
  output logic [7:0]gray);
  always_comb begin
    gray = binary ^ (binary >> 1);// G7 = B7;
                                  //G6 = B7 ^ B6;
                                  // G5 = B6 ^ B5;
                                  // G4 = B5 ^ B4;
                                  // G3 = B4 ^ B3;
                                  // G2 = B3^ B2;
                                  // G1 = B2 ^ B1;
                                  // G0 = B1 ^ B0;
  end
endmodule
