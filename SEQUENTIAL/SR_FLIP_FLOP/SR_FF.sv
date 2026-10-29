// Code your desig
interface SR_if;
  logic s;
  logic r;
  logic clk;
  logic q;
endinterface
module SR_FF( SR_if bus);
  always_ff @(posedge bus.clk ) begin
    if(bus.s && bus.r)
      bus.q <= 1'bx; // invalid combination
    else if(bus.s)
      bus.q <= 1'b1;
    else if(bus.r)
      bus.q <= 1'b0;
  end
endmodule
      
  
