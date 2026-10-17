module Barrel_shifter(
  input logic [7:0] data_in,
  input logic [2:0] data_shift,
  input logic direction,  // 0 = left  1 = right;
  input logic mode,       // 0 = left     1 = rotate;
  output logic [7:0] data_out);
  always_comb begin
    case ({mode,direction})
      2'b00: 
        data_out = data_in<<data_shift;
      2'b01: 
        data_out = data_in >>data_shift;
      2'b10: 
        data_out = (data_in << data_shift)|(data_in >> (8-data_shift));
      2'b11: 
        data_out = (data_in >> data_shift) |(data_in << (8-data_shift));
      default: 
        data_out = data_in;
    endcase
  end
endmodule
