module static_casting;
  real i1;
  int i2;
  
  initial begin 
    
    i1 = (3.13 * 3.4);
    
    i2 = int'(3.13 * 3.4);
    
    $display("Real value is =%0f",i1);
    $display("int value is =%0d",i2);
  end
endmodule
  
    
