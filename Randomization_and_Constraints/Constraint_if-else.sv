// Define a class with an 8-bit random variable, a string, and a constraint
class ifelse_const;
  rand bit [7:0] data;  // 8-bit random variable 'data'
  string name1;         // String variable 'name1'
  
  // Constraint: If 'name1' is "ASIC", then 'data' must be greater than 8; otherwise, 'data' must be less than 8
  constraint c1 {
    if (name1 == "ASIC")
      data > 8;
    else 
      data < 8;
  }
endclass 

// Define a module to create an instance of the class and display random values
module driv;
  ifelse_const pkt;  // Declare an instance of 'ifelse_const'

  initial begin
    pkt = new();  // Create a new instance of 'ifelse_const'
    pkt.name1 = "ASIC";  // Set the name to "ASIC"
    repeat(10) begin
      pkt.randomize();  // Randomize the 'data' field
      $display("Implication -- %s --- value is %0d", pkt.name1, pkt.data);  // Display the value of 'data'
    end
    $display("===============================");
    pkt.name1 = "FPGA";  // Set the name to "FPGA"
    repeat(10) begin
      pkt.randomize();  // Randomize the 'data' field
      $display("Implication -- %s --- value is %0d", pkt.name1, pkt.data);  // Display the value of 'data'
    end
  end
endmodule
