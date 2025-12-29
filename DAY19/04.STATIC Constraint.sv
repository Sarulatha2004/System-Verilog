class cls1;
  rand bit[2:0]a;
  constraint cons{a==1;}
endclass

class cls2;
  rand bit[2:0]a;
  static constraint cons{ a==1;}
endclass

module static_cons;
  
  cls1 obj1=new();
  cls1 obj2=new();
  cls2 obj3=new();
  cls2 obj4=new();
  
  initial begin
    
    obj1.cons.constraint_mode(0);
    $display("--------------Non static constraint--------");
    $display("-----------Turned off only in Object 1-----");
    $display("-----------------Value must be 1-----------");
    
    for(int i=1;i<=3;i++)
      begin
        obj1.randomize();
        obj2.randomize();
        #1;
        
        $display("\t[%0t] @ Iteration:%0d -->'a' in Obj1=%0d  ,'a' in Obj2=%0d",$time,i,obj1.a,obj2.a);
      end
    
    obj3.cons.constraint_mode(0);
    $display("-------------- Static constraint--------");
    $display("-----------Turned off only in Object 3-----");
    $display("-----------------Value must be 1-----------");
    
    for(int i=1;i<=3;i++)
      begin
        obj3.randomize();
        obj4.randomize();
        #1;
        
        $display("\t[%0t] @ Iteration:%0d -->'a' in Obj3=%0d  ,'a' in Obj4=%0d",$time,i,obj3.a,obj4.a);
      end
  end
endmodule


///////////////////////OUTPUT/////////////////////////////////////////////////

# KERNEL: --------------Non static constraint--------
# KERNEL: -----------Turned off only in Object 1-----
# KERNEL: -----------------Value must be 1-----------
# KERNEL: 	[1] @ Iteration:1 -->'a' in Obj1=1  ,'a' in Obj2=1
# KERNEL: 	[2] @ Iteration:2 -->'a' in Obj1=6  ,'a' in Obj2=1
# KERNEL: 	[3] @ Iteration:3 -->'a' in Obj1=2  ,'a' in Obj2=1
# KERNEL: -------------- Static constraint--------
# KERNEL: -----------Turned off only in Object 3-----
# KERNEL: -----------------Value must be 1-----------
# KERNEL: 	[4] @ Iteration:1 -->'a' in Obj3=2  ,'a' in Obj4=1
# KERNEL: 	[5] @ Iteration:2 -->'a' in Obj3=7  ,'a' in Obj4=7
# KERNEL: 	[6] @ Iteration:3 -->'a' in Obj3=4  ,'a' in Obj4=3
///////////////////////////////////////////////////////////////////////////////
