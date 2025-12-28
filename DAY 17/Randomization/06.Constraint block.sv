class class_a;
  rand byte a;
  rand byte x;
  constraint cons_name1{a<6;a>2;}
  extern constraint cons_name2;
endclass

constraint class_a::cons_name2{x>7;}
module mod;
  class_a pack;
  initial begin
    pack=new;
    for(int i=0;i<=5;i++)
      begin
        void'(pack.randomize());
        $display("Iteration=%0d Value of a=%0d Value of x=%0d",i,pack.a,pack.x);
        $display("--------------------------------------------");
      end
  end
endmodule



//////////////////////////output//////////////////////////////////////


# KERNEL: Iteration=0 Value of a=3 Value of x=98
# KERNEL: --------------------------------------------
# KERNEL: Iteration=1 Value of a=3 Value of x=8
# KERNEL: --------------------------------------------
# KERNEL: Iteration=2 Value of a=3 Value of x=51
# KERNEL: --------------------------------------------
# KERNEL: Iteration=3 Value of a=4 Value of x=27
# KERNEL: --------------------------------------------
# KERNEL: Iteration=4 Value of a=3 Value of x=124
# KERNEL: --------------------------------------------
# KERNEL: Iteration=5 Value of a=3 Value of x=11
# KERNEL: --------------------------------------------

///////////////////////////////////////////////////////////////////////
