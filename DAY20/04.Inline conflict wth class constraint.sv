class cls;
  rand bit [2:0]a;
  constraint cons {a==5;}
endclass

module conflict_inline();
  cls pkt;
  initial begin
    pkt=new();
    
      
      for(int i=1;i<=2;i++) begin
        if(pkt.randomize()with{a==4;})
          $display("\t Randomize Done \t @Iteration:%0d-------->a=%0d",i,pkt.a);
        else
          $display("\t Randomize Failed \t @Iteration:%0d-------->a=%0d",i,pkt.a);
      end
    end
endmodule
        
        

///////////////////OUTPUT/////////////////////////////////////////////////////

# KERNEL: 	 Randomize Failed 	 @Iteration:1-------->a=0
# KERNEL: 	 Randomize Failed 	 @Iteration:2-------->a=0

////////////////////////////////////////////////////////////////////////////
