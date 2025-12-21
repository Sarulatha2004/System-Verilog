class rand_variable;
  rand logic [2:0]a;
endclass

rand_variable raf;

module rand_var;
  initial begin
    raf = new();
    
    $display("rand - Randomizing the value of the variable in non cycling form");
    for(int i=0;i<=10;i++)
      begin
        void'(raf.randomize());
        $display("Iteration =%0d Random value of a= %0d",i,raf.a);
      end
    $display("------------------------------------------------");
  end
endmodule
