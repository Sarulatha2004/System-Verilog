////////////////Without conflict///////////////////////

class cls;
  rand bit [3:0]a;
  constraint con1 {a<10;}
  constraint con2 {a<15;}
endclass

module mod;
   cls pkt;
  initial begin
    pkt=new();
    
    if(pkt.randomize())
      begin
        $display("-----------------------------------------");
        $display("\t Randomize successful");
        $display("\t The Randomize value of a =%0d",pkt.a);
        $display("-----------------------------------------");
      end
    else 
      begin
        $display("-----------------------------------------");
        $display("\t Randomization Failed because conflict occurs");
        $display("\t The value of a=%0d",pkt.a);
        $display("-----------------------------------------");
      end
  end
endmodule

////////////////////////////OUTPUT////////////////////////////

 KERNEL: -----------------------------------------
# KERNEL: 	 Randomize successful
# KERNEL: 	 The Randomize value of a =3
# KERNEL: -----------------------------------------

//////////////////////////////////////////////////////////////



//////////////////////with conflict/////////////////////////////


class cls;
  rand bit [3:0]a;
  constraint con1 {a<10;}
  constraint con2 {a>10;}
endclass

module mod;
   cls pkt;
  initial begin
    pkt=new();
    
    if(pkt.randomize())
      begin
        $display("\t Randomize successful");
        $display("\t The Randomize value of a =%0d",pkt.a);
      end
    else 
      begin
        $display("\t Randomization Failed because conflict occurs");
        $display("\t The value of a=%0d",pkt.a);
        $display("-----------------------------------------");
      end
  end
endmodule

////////////////////////////OUTPUT/////////////////////////

# KERNEL: -----------------------------------------
# KERNEL: 	 Randomization Failed because conflict occurs
# KERNEL: 	 The value of a=0
# KERNEL: -----------------------------------------

///////////////////////////////////////////////////////////

