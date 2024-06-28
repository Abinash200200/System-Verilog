// Define a class with dynamic arrays and constraints
class for_con;
  rand bit [5:0] arr[];          // Dynamic array 'arr' of 6-bit random variables
  rand bit [4:0] queue[$];       // Queue 'queue' of 5-bit random variables
  
  // Constraint: 'queue' must have exactly 5 elements
  constraint c1 { queue.size() == 5; }
  
  // Constraint: 'arr' must have exactly 4 elements
  constraint c2 { arr.size() == 4; }
  
  // Constraint: Each element in 'arr' must be even and greater than the previous element (if i < 10)
  // Constraint: Each element in 'queue' must be even and greater than the previous element (if j > 10)
  constraint c3 {
    foreach(arr[i]) {
      arr[i] % 2 == 0;
      if (i > 0)
        arr[i] > arr[i-1];
    }
    foreach(queue[j]) {
      queue[j] % 2 == 0;
      if (j > 0)
        queue[j] > queue[j-1];
    }
  }
endclass

// Define a module to create an instance of the class and display the array values
module Foreach;
  for_con pkt = new();  // Create a new instance of 'for_con'
  initial begin
    repeat(10) begin
      pkt.randomize();  // Randomize the 'arr' and 'queue' fields
      $display("ARRAY values: arr=%p, queue=%p", pkt.arr, pkt.queue);  // Display the values of 'arr' and 'queue'
    end
  end
endmodule
