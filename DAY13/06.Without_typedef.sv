
class c1;
  c2 c;
endclass

class c2;
  c1 c;
endclass

module without_typedef;
  initial begin
  c1 class1;
  c2 class2;
  $display("Inside the class");
  end
endmodule

// ERROR VCP2000 "Syntax error. Unexpected token: c2[_IDENTIFIER]." "testbench.sv" 4  5
// FAILURE "Compile failure 1 Errors 0 Warnings  Analysis time: 0[s]."
