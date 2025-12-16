class A;
  int a;
  int i;
  mailbox m;
  function new(mailbox m1);
    this.m=m1;
  endfunction
  
  task tra_data();
    for(i=0;i<4;i++)
      begin
          m.put(a);
          #1 a++;
          $display("[%0t] 1.Transmitter:value of a=%0d",$time,a);
        end
    $display("----------------------------------");
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
  mailbox mb= new(3);
  
  initial begin
    a1=new(mb);
    b1=new(mb);
    
    repeat(2) begin
      a1.tra_data();
      $display("-------------------------------");
      b1.rec_data();
    end
  end
endmodule


///////////////////output////////////////////////

# KERNEL: [0] 1.Transmitter:value of a=1
# KERNEL: [0] 1.Transmitter:value of a=2
# KERNEL: [0] 1.Transmitter:value of a=3

//////////////////////////////////////





