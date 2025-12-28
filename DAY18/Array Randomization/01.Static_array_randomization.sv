class single_static_array;
  randc byte a[7];
endclass

module stat_array;
  single_static_array stat_arr;
  
  initial begin
    stat_arr=new();
    $display("Before Randomization");
    $display("%0p",stat_arr.a);
    stat_arr.randomize();
    $display("After Randomization");
    $display("%0p",stat_arr.a);
  end
endmodule

///////////////////////output//////////////////////////

# KERNEL: Before Randomization
# KERNEL: 0 0 0 0 0 0 0
# KERNEL: After Randomization
# KERNEL: -20 81 -101 16 -53 78 95

///////////////////////////////////////////////////
