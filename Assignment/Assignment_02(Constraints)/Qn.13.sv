class packet;
  
  rand bit [9:0]data;
  
  constraint cons{
    foreach(data[i])
      data[i]+data[i+1]==1;
  }
endclass

module gray_code;
  packet pkt;
  
  initial begin
    pkt=new();
    repeat(10) begin
           pkt.randomize();
 
      $display("Value=%0b",pkt.data);
    end
  end
endmodule



////////////////////////////////

# KERNEL: Value=1010101010
# KERNEL: Value=1010101010
# KERNEL: Value=1010101010
# KERNEL: Value=1010101010
# KERNEL: Value=1010101010

///////////////////////////////
