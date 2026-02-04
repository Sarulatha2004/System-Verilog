`include "environment.sv"
program test (interf inf);
  environment env;
  initial begin
    env=new(inf);
    env.test();
  end
endprogram
