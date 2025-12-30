class cls;
  rand bit [3:0]a;
  
  constraint cons{a<5;}
endclass

module inline;
  cls pkt;
  initial begin
    pkt=new();
    pkt.randomize();
    $display("\t [%0t]@  a:%0d",$time,pkt.a);
      pkt.randomize()with {a==3;};
      #1
    $display("\t [%0t]@ a:%0d",$time,pkt.a);
  end
endmodule


///////////////////////OUTPUT///////////////////

# KERNEL: 	 [0]@  a:4
# KERNEL: 	 [1]@ a:3

/////////////////////////////////////////////////


