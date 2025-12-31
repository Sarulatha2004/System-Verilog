class cls;
  rand bit[3:0]a;
  constraint cons {a>5;}
endclass

module soft_without_conflict;
  cls pkt;
  
  initial begin
    pkt=new();
    $display("Without using soft constraint output");
    
    for(int i=0;i<5;i++)
      begin
        pkt.randomize();
        $display("\n\t Iteration=%0d a=%0d",i,pkt.a);
      end
    $display("\n\t Output of without conflict");
    
    for(int i=0;i<5;i++)
      begin
        pkt.randomize() with {a<10;};
        $display("\n\t Iteration=%0d,a=%0d",i,pkt.a);
      end
  end
endmodule


///////////////////OUTPUT/////////////////////////////////////


# KERNEL: Without using soft constraint output
# KERNEL: 
# KERNEL: 	 Iteration=0 a=14
# KERNEL: 
# KERNEL: 	 Iteration=1 a=10
# KERNEL: 
# KERNEL: 	 Iteration=2 a=12
# KERNEL: 
# KERNEL: 	 Iteration=3 a=13
# KERNEL: 
# KERNEL: 	 Iteration=4 a=12
# KERNEL: 
# KERNEL: 	 Output of without conflict
# KERNEL: 
# KERNEL: 	 Iteration=0,a=8
# KERNEL: 
# KERNEL: 	 Iteration=1,a=6
# KERNEL: 
# KERNEL: 	 Iteration=2,a=7
# KERNEL: 
# KERNEL: 	 Iteration=3,a=9
# KERNEL: 
# KERNEL: 	 Iteration=4,a=7


////////////////////////////////////////////////////////////////////
