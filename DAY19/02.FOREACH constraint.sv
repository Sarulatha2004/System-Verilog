class cls;
  rand bit [3:0]a[8];
  rand bit [3:0]b[10];
  
  constraint c1{
    foreach(a[i])
      a[i]==i;
    
    foreach (b[i])
      b[i]==i;
    
  }
  
endclass

module top;
  
  initial begin
    cls pkt;
    pkt=new();
    
    pkt.randomize();
    
    $display("----------------------------");
    $display("\t a=%0p",pkt.a);
    $display("----------------------------");
    
    $display("\n");
    $display("----------------------------");
    $display("\t b=%0p",pkt.b);
    $display("----------------------------");
  end
endmodule


//////////////OUTPUT///////////////////////
# KERNEL: ----------------------------
# KERNEL: 	 a=0 1 2 3 4 5 6 7
# KERNEL: ----------------------------
# KERNEL: 
# KERNEL: 
# KERNEL: ----------------------------
# KERNEL: 	 b=0 1 2 3 4 5 6 7 8 9
# KERNEL: ----------------------------
//////////////////////////////////////////

