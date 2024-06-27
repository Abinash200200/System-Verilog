// Define a class with a 5-bit random variable and a distribution constraint
class Dist_const;
  rand bit [4:0] data1;  // 5-bit random variable 'data1'
  
  // Constraint for 'data1': values with specified probabilities
  constraint c1 { data1 dist { 2:=4, 3:=5, 5:=6 }; }
endclass

// Define a module to create an instance of the class and display random values
module driv;
  Dist_const pkt = new();  // Create a new instance of 'Dist_const'
  initial begin
    repeat(10) begin
      pkt.randomize();  // Randomize the 'data1' field
      $display("=================================");
      $display("Data_1 Value is %0d", pkt.data1);  // Display the value of 'data1'
    end
  end
endmodule
/////////////////////////////////////////////////////////////////////////////////

// Define a class with a 5-bit random variable and a distribution constraint
class Dist_const;
  rand bit [4:0] data1;  // 5-bit random variable 'data1'
  
  // Constraint for 'data1': values with specified probabilities
  constraint c1 { data1 dist { 2:/4, 3:/5, 5:/6 }; }
endclass

// Define a module to create an instance of the class and display random values
module driv;
  Dist_const pkt = new();  // Create a new instance of 'Dist_const'
  initial begin
    repeat(10) begin
      pkt.randomize();  // Randomize the 'data1' field
      $display("=================================");
      $display("Data_1 Value is %0d", pkt.data1);  // Display the value of 'data1'
    end
  end
endmodule
