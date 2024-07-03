// Define a class with a random variable and a constraint
class disable_const;
  rand bit[3:0] a; // 4-bit wide random variable 'a'
  constraint add { a inside {4, 9, 10}; } // Constraint that 'a' must be 4, 9, or 10
endclass

// Define a testbench module
module driv;
  disable_const pkt = new(); // Create an instance of the 'disable_const' class

  initial begin
    // Display initial status
    $display("\n Before disable"); // Print a message before disabling the constraint
    $display("\n Constraint mode: %0d", pkt.add.constraint_mode()); // Check and display the constraint mode
    pkt.randomize(); // Randomize the value of 'a' according to the constraints
    $display("\n Value is %0d", pkt.a); // Display the randomized value of 'a'
    
    // Disable the constraint
    pkt.add.constraint_mode(0); // Disable the 'add' constraint
    $display("\n After disable"); // Print a message after disabling the constraint
    $display("\n Constraint mode: %0d", pkt.add.constraint_mode()); // Check and display the constraint mode again
    pkt.randomize(); // Randomize the value of 'a' without the constraint
    $display("\n Value is %0d", pkt.a); // Display the new randomized value of 'a'
  end
endmodule
