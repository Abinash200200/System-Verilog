// Define a class with multiple random variables and constraints
class inline;
  rand bit [7:0] data1;  // 8-bit random variable 'data1'
  rand shortint data2;   // 16-bit random variable 'data2'
  rand int data3;        // 32-bit random variable 'data3'
  
  // Constraint for 'data1': value must be between 1 and 20
  constraint c1 { data1 inside {[1:20]}; }
  // Constraint for 'data2': value must be one of the specified values
  constraint c2 { data2 inside {1,2,3,4,5,6,8,9}; }
  // Constraint for 'data3': value must be between 1 and 20, or 5, 6, or 7
  constraint c3 { data3 inside {[1:20],5,6,7}; }
endclass

// Define a module to create an instance of the class and display random values
module inline_constr;
  inline pkt = new();  // Create a new instance of 'inline'
  initial begin
    repeat(10) begin
      pkt.randomize();  // Randomize all the fields
      $display("=================================");
      $display("Data_1 Value is %0d", pkt.data1);  // Display the value of 'data1'
      $display("Data_2 Value is %0d", pkt.data2);  // Display the value of 'data2'
      $display("Data_3 Value is %0d", pkt.data3);  // Display the value of 'data3'
      $display("=================================");
    end
  end
endmodule
