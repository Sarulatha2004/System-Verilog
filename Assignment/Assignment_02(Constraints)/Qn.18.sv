

class packet;

  randc bit [3:0] val;
  randc int fact[10];

  constraint cons1 {
    val > 3;
    val < 8;       
    fact[0] == 1;
  }

  constraint cons2 {
    foreach (fact[i])
      if(i > 0 && i <= val)
        fact[i] == fact[i-1] * i;
  }

endclass


module tb;

  packet pkt;

  initial begin

    pkt = new();
    repeat(3) begin
    if(pkt.randomize()) begin
      $display("Factorial of %0d is %0d", pkt.val, pkt.fact[pkt.val]);
    end
    else
      $display("Randomization Failed");

  end
  end

endmodule






///////////////////OUTPUT///////////////////////


# KERNEL: Factorial of 4 is 24
# KERNEL: Factorial of 5 is 120
# KERNEL: Factorial of 6 is 720


///////////////////////////////////////////////
