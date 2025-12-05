class packet;
  static byte no_of_pkt_created;
  
  function new();
    no_of_pkt_created++;
  endfunction
  
  static function void display();
    $display("--------------------------------------");
    $display("%0d packets created",no_of_pkt_created);
    $display("--------------------------------------");
  endfunction
  
endclass

module class_module;
  int i;
  packet pkt[3];
  packet p;
  
  initial begin
    foreach(pkt[i]) begin  
      pkt[i]=new();
    end
    p.display();
    
  end
endmodule
    
