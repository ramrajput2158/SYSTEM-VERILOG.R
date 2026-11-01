// Code your design hinterface 
interface t_ff_if;
  logic clk;
  logic rst;
  logic t;
  logic q;
endinterface
module t_ff(t_ff_if bus);
  always_ff @(posedge bus.clk or negedge bus.rst) begin
    if(!bus.rst)
      bus.q <= 1'b0;
    else if(bus.clk)
      bus.q <= ~bus.q;
    else
      bus.q <= bus.q;
  end
endmodule
