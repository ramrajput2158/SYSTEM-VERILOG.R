// Code your design here
interface jk_ff_if;
  logic rst;
  logic clk;
  logic j;
  logic k;
  logic q;
endinterface
module jk_ff(jk_ff_if bus);
  always_ff @(posedge bus.clk or negedge bus.rst) begin
    if(!bus.rst)
      bus.q <= 1'b0;
    else begin
      case ({bus.j,bus.k})
        2'b00: bus.q <= bus.q;
        2'b01: bus.q <= 1'b0;
        2'b10: bus.q <= 1'b1;
        2'b11: bus.q <= ~bus.q;
      endcase
    end
  end
endmodule
       
    
