
module semaphore_get_try;
  semaphore car_key=new(1);
  
  initial begin
    fork
      ///begin 1 fork
      begin
        $display("Person A waiting for car ,time=%0t",$time);
        car_key.get(1);
        $display("Person A got the car,time=%0t",$time);
        #10;
        car_key.put(1);
        $display("Person A Returning back car,time=%0t",$time);
      end
      
      ///begin 2 fork
        begin
          #1;
          $display("Person B waiting for car ,time=%0t",$time);
          void'(car_key.get(1));/////////////Using get////////////////
          $display("Person B got the car,time=%0t",$time);
        #10;
        car_key.put(1);
          $display("Person B Returning back car,time=%0t",$time);
      end
    join
  end
      endmodule

/////////////////output/////////////////

# KERNEL: Person A waiting for car ,time=0
# KERNEL: Person A got the car,time=0
# KERNEL: Person B waiting for car ,time=1
# KERNEL: Person B got the car,time=1
# KERNEL: Person A Returning back car,time=10
# KERNEL: Person B Returning back car,time=11


  ////////////////////////////////////////////



  module semaphore_get_try;
  semaphore car_key=new(1);
  
  initial begin
    fork
      ///begin 1 fork
      begin
        $display("Person A waiting for car ,time=%0t",$time);
        car_key.get(1);
        $display("Person A got the car,time=%0t",$time);
        #10;
        car_key.put(1);
        $display("Person A Returning back car,time=%0t",$time);
      end
      
      ///begin 2 fork
        begin
          #1;
          $display("Person B waiting for car ,time=%0t",$time);
          void'(car_key.try_get(1));/////////////Using try_get////////////////
          $display("Person B got the car,time=%0t",$time);
        #10;
        car_key.put(1);
          $display("Person B Returning back car,time=%0t",$time);
      end
    join
  end
      endmodule

///////////////////output//////////////////////////////

# KERNEL: Person A waiting for car ,time=0
# KERNEL: Person A got the car,time=0
# KERNEL: Person B waiting for car ,time=1
# KERNEL: Person B got the car,time=1
# KERNEL: Person A Returning back car,time=10
# KERNEL: Person B Returning back car,time=11

  ////////////////////////////////////////////////////////
