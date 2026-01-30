class packet;
  
  rand bit [3:0] data[20];
  
  constraint seq_cons {

    foreach (data[i])
      if (i % 2 == 0)
        data[i] == data[i+1];
  }
  
  constraint cnos2{
    
    foreach (data[i])
      if (i < 19 && (i % 2 == 0))
        data[i] == data[i-2] + 1;

  }

endclass

module tb;

  packet pkt;

  initial begin
    pkt = new();

     pkt.randomize();

    foreach(pkt.data[i]) begin
     
      $display("data[%0d] = %0d", i, pkt.data[i]);
    end

  end

endmodule



///////////////////////////////////////////////////////////////

# KERNEL: data[0] = 1
# KERNEL: data[1] = 1
# KERNEL: data[2] = 2
# KERNEL: data[3] = 2
# KERNEL: data[4] = 3
# KERNEL: data[5] = 3
# KERNEL: data[6] = 4
# KERNEL: data[7] = 4
# KERNEL: data[8] = 5
# KERNEL: data[9] = 5
# KERNEL: data[10] = 6
# KERNEL: data[11] = 6
# KERNEL: data[12] = 7
# KERNEL: data[13] = 7
# KERNEL: data[14] = 8
# KERNEL: data[15] = 8
# KERNEL: data[16] = 9
# KERNEL: data[17] = 9
# KERNEL: data[18] = 10
# KERNEL: data[19] = 10


//////////////////////////////////////////////////////
