// Define a class with a 2D array of 8-bit random variables and a constraint
class foreach_con;
  rand bit [7:0] arr[6][9];  // 2D array of 8-bit random variables 'arr'
  
  // Constraint: Each element in 'arr' must be equal to the product of its indices
  constraint c2 {
    foreach(arr[i,j]) {
      arr[i][j] == i * j;
    }
  }
endclass

// Define a module to create an instance of the class and display the array values
module driv;
  foreach_con pkt = new();  // Create a new instance of 'foreach_con'
  initial begin
    pkt.randomize();  // Randomize the 'arr' field
    foreach(pkt.arr[i,j]) begin
      $display("ARR[%0d][%0d] == %0d", i, j, pkt.arr[i][j]);  // Display the value of each element in 'arr'
    end
  end
endmodule
