class A;
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m1);
    this.m=m1;
  endfunction
  
  task tra_data();
     for (i = 0; i < 4; i++) begin 
       a++;
         m.put(a);
         $display("[%0t] 1. Transmitter: value of a = %0d", $time, a);
      end 

      $display("put successful");
   endtask
endclass

class B;
  
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m2);
    this.m=m2;
  endfunction
  
  task rec_data();
     repeat (5) begin
         if (m.try_get(a))
            $display("[%0t] 2. Receiver: value of a = %0d", $time, a);
         else
            $display("Failed while getting the value as mailbox is empty ");
      end

      $display("get successful");
   endtask
endclass

module tb;
  A a1;
  B b1;
  mailbox mb= new(4);
  
  initial begin
    a1=new(mb);
    b1=new(mb);
    
    repeat(2) begin
      a1.tra_data();
                $display("...............................................");
      b1.rec_data();
    end
  end
endmodule



//////////////////////////////////////////////////////////////

# KERNEL: [0] 1. Transmitter: value of a = 1
# KERNEL: [0] 1. Transmitter: value of a = 2
# KERNEL: [0] 1. Transmitter: value of a = 3
# KERNEL: [0] 1. Transmitter: value of a = 4
# KERNEL: put successful
# KERNEL: ...............................................
# KERNEL: [0] 2. Receiver: value of a = 1
# KERNEL: [0] 2. Receiver: value of a = 2
# KERNEL: [0] 2. Receiver: value of a = 3
# KERNEL: [0] 2. Receiver: value of a = 4
# KERNEL: Failed while getting the value as mailbox is empty 
# KERNEL: get successful
# KERNEL: [0] 1. Transmitter: value of a = 5
# KERNEL: [0] 1. Transmitter: value of a = 6
# KERNEL: [0] 1. Transmitter: value of a = 7
# KERNEL: [0] 1. Transmitter: value of a = 8
# KERNEL: put successful
# KERNEL: ...............................................
# KERNEL: [0] 2. Receiver: value of a = 5
# KERNEL: [0] 2. Receiver: value of a = 6
# KERNEL: [0] 2. Receiver: value of a = 7
  # KERNEL: [0] 2. Receiver: value of a = 8

  //////////////////////////////////////////////////




