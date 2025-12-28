class two_dimensional_static_array;
  rand bit [3:0] a [2][4];
endclass

module mod;
  two_dimensional_static_array pack;
  
  initial begin
    
    pack=new;
    $display("The value of elements of array before randomization=%0p",pack.a);
    $display("----------------------------------------");
    
    for(int i=0;i<=5;i++)
      begin
        void'(pack.randomize());
        $display("The value of elements of  array after randomization=%0p",pack.a);
      end
  end
endmodule




//////////////////////////////////////output//////////////////////////////////////////////
# KERNEL: The value of elements of array before randomization={0 0 0 0} {0 0 0 0}
# KERNEL: ----------------------------------------
# KERNEL: The value of elements of  array after randomization={10 3 11 6} {4 3 11 1}
# KERNEL: The value of elements of  array after randomization={4 9 14 6} {3 13 7 10}
# KERNEL: The value of elements of  array after randomization={6 2 8 7} {0 7 3 11}
# KERNEL: The value of elements of  array after randomization={7 15 15 6} {10 3 15 5}
# KERNEL: The value of elements of  array after randomization={1 6 15 9} {6 10 1 13}
# KERNEL: The value of elements of  array after randomization={3 3 8 6} {13 9 4 11}
//////////////////////////////////////////////////////////////////////////////////////////
