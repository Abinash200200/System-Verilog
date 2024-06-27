// Define a class with an 8-bit random variable and a constraint
class inline_const;
  rand bit [7:0] data;  // 8-bit random variable 'data'
  constraint data_range { data < 10; }  // Constraint: 'data' must be less than 10
endclass

// Define a module to create an instance of the class and display random values
module inline;
  inline_const pkt = new();  // Create a new instance of 'inline_const'
  initial begin
    repeat(10) begin
      pkt.randomize();  // Randomize the 'data' field
      $display("Data Range is %0d", pkt.data);  // Display the value of 'data'
    end
  end
endmodule
