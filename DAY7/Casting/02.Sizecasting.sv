module sizecasting_example;
  logic [15:0] big;
  logic [7:0]  small1, small2;

  initial begin
    big = 16'hABCD;

    small1 = 8'(big); 
    small2 = 8'(16'h1234); 

    $display("big        = %h", big);
    $display("small1     = %h", small1);  
    $display("small2     = %h", small2); 
  end
endmodule
