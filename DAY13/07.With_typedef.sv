typedef class c2;
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

  // # KERNEL: Inside the class
