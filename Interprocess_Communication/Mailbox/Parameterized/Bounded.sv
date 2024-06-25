module parameterized_bounded;
  mailbox #(int) box = new(5); // Create a bounded mailbox for integers with a capacity of 5 items

  task run1; // Define task run1
    int value; // Declare an integer variable 'value'
    repeat(10) begin // Repeat the following block 10 times
      value = $urandom_range(1, 50); // Generate a random integer between 1 and 50
      box.put(value); // Put the integer value into the mailbox 'box'
      $display("Value is %0d", value); // Display the put integer value
    end
  endtask
  
  task run2; // Define task run2
    int value; // Declare an integer variable 'value'
    repeat(10) begin // Repeat the following block 10 times
      box.get(value); // Get the integer value from the mailbox 'box'
      $display("Value is %0d", value); // Display the retrieved integer value
    end
  endtask
  
  initial begin
    fork
      run1; // Execute task run1 in parallel
      run2; // Execute task run2 in parallel
    join
  end
endmodule
