module dynamic_array_example;
  int array [];
  initial begin
    array = new[8];
    array = {5, 10,12, 15,18, 20,23,25};
   
    foreach (array[i]) $display("array[%0d] = %0d", i,array[i]);
    
    $display("size of array = %0d", array.size());
    
    array = new[10] (array);
    $display("size of array after resizing = %0d", array.size());
    
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
  end
endmodule
