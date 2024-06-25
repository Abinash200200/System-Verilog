module array_reduction;
  int array[5] = {2, 4, 5, 7, 8}; // Declare and initialize an array with 5 integers
  int arr;                        // Variable to store the results of reduction operations
  
  initial begin
    // Calculate and display the sum of array elements
    arr = array.sum();
    $display("\nSum of the numbers = %0d", arr);
    
    // Calculate and display the product of array elements
    arr = array.product();
    $display("\nProduct of the numbers = %0d", arr);
    
    // Calculate and display the result of AND operation on array elements
    arr = array.and();
    $display("\nAND operation of the numbers = %0d", arr);
    
    // Calculate and display the result of OR operation on array elements
    arr = array.or();
    $display("\nOR operation of the numbers = %0d", arr);
    
    // Calculate and display the result of XOR operation on array elements
    arr = array.xor();
    $display("\nXOR operation of the numbers = %0d", arr);
  end
endmodule
