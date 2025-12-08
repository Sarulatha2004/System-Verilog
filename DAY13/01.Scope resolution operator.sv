class packet;
  int addr;
  static int id;
  
  static function display(int a,b);
    $display("Value of a=%0d and b=%0d",a,b);
  endfunction
  
endclass

module scope;
  int id=10;
  initial begin
    packet ::id=20;
    packet::display(packet::id,id);
  end
endmodule
    
