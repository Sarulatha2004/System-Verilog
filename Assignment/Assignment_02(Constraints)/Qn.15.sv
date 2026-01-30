class packet;

  rand bit [3:0] data[10];

  constraint pal_cons {

    foreach (data[i])

      if (i == 0)
        data[i] == 1;

  }
  
  constraint cons2 {
    
    foreach (data[i])
    if (i < 5)
        data[i] == data[i-1] + 1;
  }

   constraint cons3 {
    
    foreach (data[i])
      if(i>=5)
        data[i] == data[9 - i];  
  }
endclass


module tb;

  packet pkt;

  initial begin
    pkt = new();
    pkt.randomize();

    foreach(pkt.data[i])
      $display("data[%0d] = %0d", i, pkt.data[i]);

  end

endmodule





///////////////////////////////////



# KERNEL: data[0] = 1
# KERNEL: data[1] = 2
# KERNEL: data[2] = 3
# KERNEL: data[3] = 4
# KERNEL: data[4] = 5
# KERNEL: data[5] = 5
# KERNEL: data[6] = 4
# KERNEL: data[7] = 3
# KERNEL: data[8] = 2
# KERNEL: data[9] = 1


/////////////////////////////////////
