module multidimensional_array;

  // Declare and initialize the multidimensional array
  int array[3][3] = '{'{2, 3, 5}, '{6, 8, 9}, '{3, 45, 21}};

  // Start of simulation block
  initial begin
    // Loop through each element of the array
    foreach(array[i, j]) begin
      // Display the index and value of each element
      $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
    end
  end

endmodule
