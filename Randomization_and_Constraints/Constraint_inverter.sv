// Define a class with a 5-bit random variable and constraints
class invert_const;
  rand bit [4:0] data1;  // 5-bit random variable 'data1'
  bit start_data1;       // Start range for constraint
  bit end_data1;         // End range for constraint
  
  // Constraint for 'data1': value must not be within the range [start_data1:end_data1]
  constraint data1_1_range { ~(data1 inside {[start_data1:end_data1]}); }
endclass

// Define a module to create an instance of the class and display random values
module driv;
  invert_const pkt = new();  // Create a new instance of 'invert_const'
  initial begin
    // Initialize the start and end range
    pkt.start_data1 = 2;  
    pkt.end_data1 = 10;
    repeat(10) begin
      pkt.randomize();  // Randomize the 'data1' field
      $display("=================================");
      $display("Data_1 Value is %0d", pkt.data1);  // Display the value of 'data1'
    end
  end
endmodule
