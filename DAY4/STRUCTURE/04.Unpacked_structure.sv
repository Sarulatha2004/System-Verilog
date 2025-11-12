module SU ;
  struct {
    bit [7:0]intr;
    logic [23:0]addr;
  }SURu;
  
  initial begin
    SURu.intr = 'hFF;
    $display($time,,, "SURu =%p",SURu);
    $display($time,,, "SURu intr=%h",SURu.intr);
    
    SURu = '{'h80,'hFF};
    $display($time,,, "SURu=%p",SURu);
    
  end
endmodule
    
