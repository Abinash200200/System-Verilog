module single_dimension_array;

  // Declare and initialize the array
  int array[7] = '{2, 3, 5, 6, 8, 9, 3};

  // Start of simulation block
  initial begin
    // Loop through each element of the array
    foreach(array[i]) begin
      // Display the index and value of each element
      $display("array[%0d] = %0d", i, array[i]);
    end
  end

endmodule
