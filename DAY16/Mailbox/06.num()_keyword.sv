class A;

   int a;
   int i;
   mailbox  m;

   function new(mailbox m1);
      this.m = m1;
   endfunction

   function void check();

      if(m == null)begin
         $display("Mailbox is not created");
      end

      else
         $display("Mailbox is created");
     
     $display("-------------------------------");
   endfunction
  
  task tra_data();
    for(i=0;i<5;i++)
      begin
        m.put(a);
        a++;
        $display("Value of a=%0d",a);
      end
    $display("No of messages in mailbox=%0d",m.num());
  endtask
        
endclass

module  tb();

   A a1;
  mailbox main = new();
   initial begin
      
      a1= new(main);
      $display("");
      $display("");
      a1.check();
     
     repeat(5)begin
       $display("-----------------------------------");
       a1.tra_data();
     end

    end

endmodule



//////////////////////output///////////////////////////////

# KERNEL: Mailbox is created
# KERNEL: -------------------------------
# KERNEL: -----------------------------------
# KERNEL: Value of a=1
# KERNEL: Value of a=2
# KERNEL: Value of a=3
# KERNEL: Value of a=4
# KERNEL: Value of a=5
# KERNEL: No of messages in mailbox=5
# KERNEL: -----------------------------------
# KERNEL: Value of a=6
# KERNEL: Value of a=7
# KERNEL: Value of a=8
# KERNEL: Value of a=9
# KERNEL: Value of a=10
# KERNEL: No of messages in mailbox=10
# KERNEL: -----------------------------------
# KERNEL: Value of a=11
# KERNEL: Value of a=12
# KERNEL: Value of a=13
# KERNEL: Value of a=14
# KERNEL: Value of a=15
# KERNEL: No of messages in mailbox=15
# KERNEL: -----------------------------------
# KERNEL: Value of a=16
# KERNEL: Value of a=17
# KERNEL: Value of a=18
# KERNEL: Value of a=19
# KERNEL: Value of a=20
# KERNEL: No of messages in mailbox=20
# KERNEL: -----------------------------------
# KERNEL: Value of a=21
# KERNEL: Value of a=22
# KERNEL: Value of a=23
# KERNEL: Value of a=24
# KERNEL: Value of a=25
# KERNEL: No of messages in mailbox=25


///////////////////////////////////////////////////////////





