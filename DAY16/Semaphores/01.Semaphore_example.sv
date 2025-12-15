module semaphore_example;
  semaphore sem=new(8);
initial begin  
  $display("In first initial block At time=[%0t]",$time);
  sem.get(4);
  $display("Thread 1:Accessing 4 keys from semaphore At time=[%0t]",$time);
  
  #5;
  sem.put(4);
  $display("Thresd 1: Done using 4 keys At time=[%0t]",$time);
end
  
initial begin
  $display("In second initial block At time=[%0t]",$time);
  
  sem.get(4);
  $display("Thread 2:Accessing 4 keys from semaphore At time=[%0t]",$time);
  #10;
  sem.put(4);
  $display("Thread 2:Done using 4 keys At time=[%0t]",$time);
end
endmodule

////////////////output/////////////////////////////////////
# KERNEL: In first initial block At time=[0]
# KERNEL: Thread 1:Accessing 4 keys from semaphore At time=[0]
# KERNEL: In second initial block At time=[0]
# KERNEL: Thread 2:Accessing 4 keys from semaphore At time=[0]
# KERNEL: Thresd 1: Done using 4 keys At time=[5]
  # KERNEL: Thread 2:Done using 4 keys At time=[10]
  
