class cls;
  rand bit [3:0]a;
  constraint cons{a inside {7,8,9};}
endclass

module mod;
  cls pkt;
initial begin
  
  pkt=new();
  $display("\tBefore disable the constraint");
  $display("\t Value of constraint mode=%0d",pkt.cons.constraint_mode());
  pkt.randomize();
  $display("\t a=%0d",pkt.a);
  
  pkt.cons.constraint_mode(0);
  $display("\t After disable the constraint");
  $display("\t Value of constraint mode=%0d",pkt.cons.constraint_mode());
  
  repeat(5) begin
    pkt.randomize();
    $display("\t a=%0d",pkt.a);
  end
end
endmodule


////////////////////////////OUTPUT//////////////////////////////////


# KERNEL: 	 Value of constraint mode=1
# KERNEL: 	 a=7
# KERNEL: 	 After disable the constraint
# KERNEL: 	 Value of constraint mode=0
# KERNEL: 	 a=11
# KERNEL: 	 a=6
# KERNEL: 	 a=4
# KERNEL: 	 a=3
# KERNEL: 	 a=11


///////////////////////////////////////////////////////////


