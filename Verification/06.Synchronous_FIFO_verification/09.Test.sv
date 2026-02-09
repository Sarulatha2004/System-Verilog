`include "environment.sv"

program test (fifo_inf inf);
  environment env;
  
  initial begin
    env=new(inf);
    env.test();
  end
endprogram
