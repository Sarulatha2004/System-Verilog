class class_0;
  rand bit [5:0]que[$];
  constraint que_const {que.size()==5;}
endclass

module mod;
  class_0 pack=new();
  
  initial begin
    void'(pack.randomize());
    for(int i=0;i<pack.que.size();i++)begin
      $display("Iteration=%0d,The value of array=%0d",i,pack.que[i]);
    end
  end
endmodule

/////////////////////////OUTPUT////////////////////

# KERNEL: Iteration=0,The value of array=2
# KERNEL: Iteration=1,The value of array=29
# KERNEL: Iteration=2,The value of array=42
# KERNEL: Iteration=3,The value of array=26
# KERNEL: Iteration=4,The value of array=63

////////////////////////////////////////////////////
