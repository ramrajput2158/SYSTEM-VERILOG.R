module comparator_4bit(input logic [3:0]A,
                    input logic [3:0]B,
                    output logic AGB,
                    output logic AEB,
                    output logic ALB);
  always_comb begin
    if(A>B) begin
      AGB = 1'b1;
      AEB = 1'b0;
      ALB = 1'b0;
    end
    else if(A == B) begin
      AGB = 1'b0;
      AEB = 1'b1;
      ALB = 1'b0;
    end
    else begin
      AGB = 1'b0;
      AEB = 1'b0;
      ALB = 1'b1;
    end
  end
endmodule
          
