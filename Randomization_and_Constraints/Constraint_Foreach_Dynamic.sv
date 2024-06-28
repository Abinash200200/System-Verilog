// Define a class with a dynamic array of 8-bit random variables and constraints
class foreach_con;
  rand bit [7:0] arr[];  // Dynamic array of 8-bit random variables 'arr'
  
  // Constraint: The size of 'arr' must be 6
  constraint c1 { arr.size() == 6; }
  
  // Constraint: Each element in 'arr' must be equal to the square of its index
  constraint c2 {
    foreach(arr[i]) {
      arr[i] == i * i;
    }
  }
endclass

// Define a module to create an instance of the class and display the array values
module driv;
  foreach_con pkt = new();  // Create a new instance of 'foreach_con'
  initial begin
    pkt.randomize();  // Randomize the 'arr' field
    foreach(pkt.arr[i]) begin
      $display("ARR[%0d] == %0d", i, pkt.arr[i]);  // Display the value of each element in 'arr'
    end
  end
endmodule
