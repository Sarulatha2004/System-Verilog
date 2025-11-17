
module equality_op;
  logic [15:0]i1,i2;
  
  initial begin
    i1='hff; i2='hf0;
    $display("-----Logical equality-----");
    $display("i1='hff i2='hf0 :i1 == i2 =boolean %0d",i1==i2);
    $display("i1='hff i2='hf0 :i1 != i2 =boolean %0d",i1!=i2);
    $display("-----case equality------");
    $display("i1='hff i2='hf0 :i1 === i2 =boolean %0d",i1===i2);
    $display("i1='hff i2='hf0 :i1 !== i2 =boolean %0d",i1!==i2); 
    
   
   i1='hxf; i2='hxf;

    $display("------Logical equality------");
    $display("i1='hxf i2='hxf :i1 == i2 =boolean %0d",i1==i2);
    $display("i1='hxf i2='hxf :i1 != i2 =boolean %0d",i1!=i2);
    $display("------case equality------");
    $display("i1='hxf i2='hxf :i1 === i2 =boolean %0d",i1===i2);
    $display("i1='hxf i2='hxf :i1 !== i2 =boolean %0d",i1!==i2); 

      
   i1='hxzf; i2='hzxf;

    $display("------Logical equality------");
    $display("i1='hxf i2='hxf :i1 == i2 =boolean %0d",i1==i2);
    $display("i1='hxf i2='hxf :i1 != i2 =boolean %0d",i1!=i2);
    $display("------case equality------");
    $display("i1='hxf i2='hxf :i1 === i2 =boolean %0d",i1===i2);
    $display("i1='hxf i2='hxf :i1 !== i2 =boolean %0d",i1!==i2);
    
  end
endmodule
