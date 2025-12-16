/////////////////////////////Bounded//////////////////////

class A;
  string country;
  string place;
  
  mailbox #(string) m;
  
  
  function new(mailbox #(string) m1);
    this.m=m1;
  endfunction
  
  task tra_data();
    
    country="India";
    place="Tamilnadu";
    m.put(country);
    m.put(place);
    $display("Transmitter: Country=%0s, must visit place=%0s",country,place);
    
    country="South Africa";
    place="Cape town";
    m.put(country);
    m.put(place);
    $display("Transmitter: Country=%0s, must visit place=%0s",country,place);
    
    country="Spain";
    place="Barcelona";
    m.put(country);
    m.put(place);
    $display("Transmitter: Country=%0s, must visit place=%0s",country,place);
    
    country="Japan";
    place="Tokyo";
    m.put(country);
    m.put(place);
    $display("Transmitter: Country=%0s, must visit place=%0s",country,place);
  endtask
endclass



class B;
  string country;
  string place;
  
  mailbox #(string) m;
  
  
  function new(mailbox #(string) m2);
    this.m=m2;
  endfunction
  
  task rec_data();
   
    m.get(country);
    m.get(place);
    $display("Receiver: Country=%0s, must visit place=%0s",country,place);
    
    m.get(country);
    m.get(place);
    $display("Receiver: Country=%0s, must visit place=%0s",country,place);
    
    m.get(country);
    m.get(place);
    $display("Receiver: Country=%0s, must visit place=%0s",country,place);
    
     m.get(country);
    m.get(place);
    $display("Receiver: Country=%0s, must visit place=%0s",country,place);
    
  endtask
endclass

module tb();
  A a1;
  B b1;
  
  mailbox #(string) main=new(6);
  
  initial begin
    a1=new(main);
    b1=new(main);
    
    $display("");
    $display("");
    
    a1.tra_data();
    $display("-----------------------------------------------");
    b1.rec_data;
  end
endmodule
/////////////////////////////////////////////////////

//////////////////////output///////////////////////////

# KERNEL: Transmitter: Country=India, must visit place=Tamilnadu
# KERNEL: Transmitter: Country=South Africa, must visit place=Cape town
# KERNEL: Transmitter: Country=Spain, must visit place=Barcelona

/////////////////////////////////////////////////////////

////////////////////////Unbounded////////////////////////
class A;
  string country;
  string place;
  
  mailbox #(string) m;
  
  
  function new(mailbox #(string) m1);
    this.m=m1;
  endfunction
  
  task tra_data();
    
    country="India";
    place="Tamilnadu";
    m.put(country);
    m.put(place);
    $display("Transmitter: Country=%0s, must visit place=%0s",country,place);
    
    country="South Africa";
    place="Cape town";
    m.put(country);
    m.put(place);
    $display("Transmitter: Country=%0s, must visit place=%0s",country,place);
    
    country="Spain";
    place="Barcelona";
    m.put(country);
    m.put(place);
    $display("Transmitter: Country=%0s, must visit place=%0s",country,place);
    
    country="Japan";
    place="Tokyo";
    m.put(country);
    m.put(place);
    $display("Transmitter: Country=%0s, must visit place=%0s",country,place);
  endtask
endclass



class B;
  string country;
  string place;
  
  mailbox #(string) m;
  
  
  function new(mailbox #(string) m2);
    this.m=m2;
  endfunction
  
  task rec_data();
   
    m.get(country);
    m.get(place);
    $display("Receiver: Country=%0s, must visit place=%0s",country,place);
    
    m.get(country);
    m.get(place);
    $display("Receiver: Country=%0s, must visit place=%0s",country,place);
    
    m.get(country);
    m.get(place);
    $display("Receiver: Country=%0s, must visit place=%0s",country,place);
    
     m.get(country);
    m.get(place);
    $display("Receiver: Country=%0s, must visit place=%0s",country,place);
    
  endtask
endclass

module tb();
  A a1;
  B b1;
  
  mailbox #(string) main=new();
  
  initial begin
    a1=new(main);
    b1=new(main);
    
    $display("");
    $display("");
    
    a1.tra_data();
    $display("-----------------------------------------------");
    b1.rec_data;
  end
endmodule



///////////////////////output///////////////////////////////


# KERNEL: Transmitter: Country=India, must visit place=Tamilnadu
# KERNEL: Transmitter: Country=South Africa, must visit place=Cape town
# KERNEL: Transmitter: Country=Spain, must visit place=Barcelona
# KERNEL: Transmitter: Country=Japan, must visit place=Tokyo
# KERNEL: -----------------------------------------------
# KERNEL: Receiver: Country=India, must visit place=Tamilnadu
# KERNEL: Receiver: Country=South Africa, must visit place=Cape town
# KERNEL: Receiver: Country=Spain, must visit place=Barcelona
# KERNEL: Receiver: Country=Japan, must visit place=Tokyo
///////////////////////////////////////////////////////
