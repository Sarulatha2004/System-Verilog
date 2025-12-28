class multi_dimen_array;
  rand bit [4:0]a[2:0][3:0];
  
  constraint b{
    foreach(a[i])
      a[i].sum()with(int'(item))==12;
  }
endclass

module mod;
  multi_dimen_array pack;
  
  initial begin
    $display("Randomization of multidimensional array");
    pack=new();
    
    $display("Before Randomization");
    $display("Array=%0p",pack.a);
    $display("-------------------------------------------");
    $display("After randomization");
    
    for(int i=1;i<=5;i++)
      begin
        void'(pack.randomize());
        $display("Iteration=%0d , Array=%0p",i,pack.a);
        $display("------------------------------------------");
        
      end
  end
endmodule


///////////////////////////output/////////////////////////////////////

# Before Randomization
# Array={0 0 0 0} {0 0 0 0} {0 0 0 0}
# -------------------------------------------
# After randomization
# Iteration=1 , Array={1 3 1 7} {0 6 2 4} {1 2 9 0}
# ------------------------------------------
# Iteration=2 , Array={1 4 0 7} {1 4 3 4} {2 6 4 0}
# ------------------------------------------
# Iteration=3 , Array={3 4 0 5} {0 0 1 11} {0 0 8 4}
# ------------------------------------------
# Iteration=4 , Array={1 9 1 1} {2 1 6 3} {4 3 3 2}
# ------------------------------------------
# Iteration=5 , Array={2 0 8 2} {0 7 1 4} {6 1 0 5}
# ------------------------------------------

//////////////////////////////////////////////////////////////////////
