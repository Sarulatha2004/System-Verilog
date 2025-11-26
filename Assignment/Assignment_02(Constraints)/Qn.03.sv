class packet;
  rand int val;
  
  constraint spec_val{ val inside {25,27,30,36,40,45};
                     }
endclass

module spec_val_tb;
  packet pkt=new();
  
  initial begin
    repeat(10)begin
      pkt.randomize();
      $display("Generated value =%0d",pkt.val);
    end
  end
endmodule
