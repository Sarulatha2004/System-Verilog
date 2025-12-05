class packet;
 static byte packet_id;
  static byte no_of_pkt_created;
  
 static function fun();
    no_of_pkt_created++;
    packet_id=no_of_pkt_created;
  endfunction
  
  function void display();
    $display("--------------------------------------");
    $display("Packed_id=%0d",packet_id);
    $display("--------------------------------------");
  endfunction
endclass
  
  module static_property;
    packet pkt[3];
  initial begin
    foreach(pkt[i]) begin
    pkt[i]=new();
      pkt[i].fun();
    pkt[i].display();
    end 
  end
  endmodule
    
    
