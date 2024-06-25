module parameterized_unbounded;
  mailbox box = new(5); // Create a bounded mailbox with a capacity of 5 items

  task run1; // Define task run1
    int value; // Declare an integer variable 'value'
    repeat(10) begin // Repeat the following block 10 times
      value = $urandom_range(1, 50); // Generate a random integer between 1 and 50
      if (box.try_put(value)) // Try to put the integer value into the mailbox 'box'
        $display("Value is %0d", value); // Display the put integer value if successful
      else begin
        $display("Fail to put %0d", value); // Display a failure message if the mailbox is full
      end
    end
  endtask
  
  task run2; // Define task run2
    int value; // Declare an integer variable 'value'
    repeat(10) begin // Repeat the following block 10 times
      if (box.try_get(value)) // Try to get the integer value from the mailbox 'box'
        $display("Value is %0d", value); // Display the retrieved integer value if successful
      else begin
        $display("Fail to get %0d", value); // Display a failure message if the mailbox is empty
      end
    end
  endtask
  
  initial begin
    fork
      run1; // Execute task run1 in parallel
      run2; // Execute task run2 in parallel
    join
  end
endmodule
