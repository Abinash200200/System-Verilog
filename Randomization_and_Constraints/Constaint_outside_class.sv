// Define a class with an 8-bit random variable
class outline_const;
  rand bit [7:0] data;  // 8-bit random variable 'data'
  constraint data_range;  // Constraint placeholder
endclass

// Define the constraint outside the class
constraint outline_const::data_range { data < 20; }  // Constraint: 'data' must be less than 20

// Define a module to create an instance of the class and display random values
module outline;
  outline_const pkt = new();  // Create a new instance of 'outline_const'
  initial begin
    repeat(10) begin
      pkt.randomize();  // Randomize the 'data' field
      $display("Data Range is %0d", pkt.data);  // Display the value of 'data'
    end
  end
endmodule
