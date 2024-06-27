// Define the parent class with an 8-bit random variable and a constraint
class parent_class;
  rand bit [7:0] data1;  // 8-bit random variable 'data1'
  constraint data1_range { data1 < 20; }  // Constraint: 'data1' must be less than 20
endclass

// Define the child class that extends the parent class
class child_class extends parent_class;
  rand int data2;  // Integer random variable 'data2'
  constraint data2_range { data2 > 20; }  // Constraint: 'data2' must be greater than 20
endclass

// Define a module to create instances of the parent and child classes and display random values
module outline;
  parent_class pkt1 = new();  // Create a new instance of 'parent_class'
  child_class pkt2 = new();  // Create a new instance of 'child_class'
  initial begin
    repeat(10) begin
      pkt1.randomize();  // Randomize the 'data1' field of pkt1
      pkt2.randomize();  // Randomize the 'data1' and 'data2' fields of pkt2
      $display("-------------------------------");
      $display("Data_1 Range is %0d", pkt1.data1);  // Display the value of 'data1' from pkt1
      $display("Data_2 Range is %0d", pkt2.data2);  // Display the value of 'data2' from pkt2
      $display("-------------------------------");
    end
  end
endmodule
