// Define a class with an 8-bit random variable, a string, and a constraint
class implication_const;
  rand bit [7:0] data;  // 8-bit random variable 'data'
  string name;          // String variable 'name'
  
  // Constraint: If 'name' is "ASIC", then 'data' must be less than 8
  constraint c1 { (name == "ASIC") -> (data < 8); }
endclass 

// Define a module to create an instance of the class and display random values
module driv;
  implication_const pkt = new();  // Create a new instance of 'implication_const'
  initial begin 
    pkt.name = "ASIC";  // Set the name to "ASIC"
    repeat(10) begin
      pkt.randomize();  // Randomize the 'data' field
      $display("Implication -- %s  value is %0d", pkt.name, pkt.data);  // Display the value of 'data'
    end
  end
endmodule
