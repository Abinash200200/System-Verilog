module packed_array;

  // Declare and initialize the packed array
  bit [0:2][3:0] array = '{4'h3, 4'h5, 4'h2};

  // Start of simulation block
  initial begin
    // Loop through each element of the array
    foreach(array[i]) begin
      // Display the index and value of each element
      $display("array[%0h] = %0h", i, array[i]);
    end
  end

endmodule
