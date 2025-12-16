class A;
  int a;
  int i;
  mailbox m;
  function new(mailbox m1);
    this.m=m1;
  endfunction
  
  task tra_data();
    for(i=-0;i<5;i++)
      begin
          a++;
          m.put(a);
          $display("[%0t] 1.Transmitter:value of a=%0d",$time,a);
        end
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
    begin
      m.get(a);
      $display("[%0t] 2.Receiver: value of a=%0d",$time,a);
    end
  endtask
endclass

module tb;
  A a1;
  B b1;
  mailbox mb= new();
  
  initial begin
    a1=new(mb);
    b1=new(mb);
    
    repeat(6) begin
      a1.tra_data();
      $display("-------------------------------");
      b1.rec_data();
    end
  end
endmodule





//////////////////////output//////////////////////


# KERNEL: [0] 1.Transmitter:value of a=1
# KERNEL: [0] 1.Transmitter:value of a=2
# KERNEL: [0] 1.Transmitter:value of a=3
# KERNEL: [0] 1.Transmitter:value of a=4
# KERNEL: [0] 1.Transmitter:value of a=5
# KERNEL: -------------------------------
# KERNEL: [0] 2.Receiver: value of a=1
# KERNEL: [0] 1.Transmitter:value of a=6
# KERNEL: [0] 1.Transmitter:value of a=7
# KERNEL: [0] 1.Transmitter:value of a=8
# KERNEL: [0] 1.Transmitter:value of a=9
# KERNEL: [0] 1.Transmitter:value of a=10
# KERNEL: -------------------------------
# KERNEL: [0] 2.Receiver: value of a=2
# KERNEL: [0] 1.Transmitter:value of a=11
# KERNEL: [0] 1.Transmitter:value of a=12
# KERNEL: [0] 1.Transmitter:value of a=13
# KERNEL: [0] 1.Transmitter:value of a=14
# KERNEL: [0] 1.Transmitter:value of a=15
# KERNEL: -------------------------------
# KERNEL: [0] 2.Receiver: value of a=3
# KERNEL: [0] 1.Transmitter:value of a=16
# KERNEL: [0] 1.Transmitter:value of a=17
# KERNEL: [0] 1.Transmitter:value of a=18
# KERNEL: [0] 1.Transmitter:value of a=19
# KERNEL: [0] 1.Transmitter:value of a=20
# KERNEL: -------------------------------
# KERNEL: [0] 2.Receiver: value of a=4
# KERNEL: [0] 1.Transmitter:value of a=21
# KERNEL: [0] 1.Transmitter:value of a=22
# KERNEL: [0] 1.Transmitter:value of a=23
# KERNEL: [0] 1.Transmitter:value of a=24
# KERNEL: [0] 1.Transmitter:value of a=25
# KERNEL: -------------------------------
# KERNEL: [0] 2.Receiver: value of a=5
# KERNEL: [0] 1.Transmitter:value of a=26
# KERNEL: [0] 1.Transmitter:value of a=27
# KERNEL: [0] 1.Transmitter:value of a=28
# KERNEL: [0] 1.Transmitter:value of a=29
# KERNEL: [0] 1.Transmitter:value of a=30
# KERNEL: -------------------------------
# KERNEL: [0] 2.Receiver: value of a=6



///////////////////////////////////////////

