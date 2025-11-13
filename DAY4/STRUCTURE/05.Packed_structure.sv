
module SU;
  struct packed {
    bit [7:0]intr;
    logic [23:0] addr;
  }SUR;
  
  initial begin
    
    SUR.intr ='hFF;
    $display($stime,,,"SUR=%h",SUR);
    $display($stime,,,"SUR intr=%h",SUR.intr);
    
    SUR='{'h00,'hFF_FF_FF};
    $display($stime,,, "SUR=%h",SUR);
    SUR=0;
    SUR=SUR+'h12;
    $display($stime,,, "SUR=%h",SUR);
  end
endmodule
