module genetic_bounded;
  mailbox box = new(7); // Create a mailbox with a capacity of 7 items

  task run1; // Define task run1
    int value = 10; // Declare and initialize an integer variable
    string name = "APPLE"; // Declare and initialize a string variable
    box.put(value); // Put the integer value into the mailbox
    $display("Value is %0d", value); // Display the integer value
    box.put(name); // Put the string into the mailbox
    $display("String is %s", name); // Display the string
  endtask
  
  task run2; // Define task run2
    int value; // Declare an integer variable
    string name; // Declare a string variable
    box.get(value); // Get the integer value from the mailbox
    $display("Value is %0d", value); // Display the integer value
    box.get(name); // Get the string from the mailbox
    $display("String is %s", name); // Display the string
  endtask
  
  initial begin
    fork
      run1; // Execute task run1 in parallel
      run2; // Execute task run2 in parallel
    join
  end
endmodule
