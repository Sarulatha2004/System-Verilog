class cls;
  rand bit [3:0]a;
endclass

module inline;
  cls pkt;
  initial begin
    pkt=new();
    for(int i=1;i<=2;i++)begin
      pkt.randomize()with {a==3;};
      #1
    $display("\t [%0t]@Iteration:%0d -------->value:%0d",$time,i,pkt.a);
    end 
  end
endmodule

/////////////////OUTPUT/////////////////////////////////

# KERNEL: 	 [1]@Iteration:1 -------->value:3
# KERNEL: 	 [2]@Iteration:2 -------->value:3
////////////////////////////////////////////////////////
      
