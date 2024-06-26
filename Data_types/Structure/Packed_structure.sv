module struct_packed; // Module declaration
  
  typedef struct packed { // Declaration of a packed struct
    bit[7:0] Student; // 8-bit field for Student
    int Number_Student; // Integer field for Number_Student
    longint Fee; // Long integer field for Fee
  } Student_details; //  Name of the struct type
  
  Student_details std; // Declaration of a variable of type Student_details
  
  initial begin // Begin initial block
    std.Student = 5; // Initialize Student field of std to 5
    std.Number_Student = 3; // Initialize Number_Student field of std to 3
    std.Fee = 40000; // Initialize Fee field of std to 40000
    
    $display("Student %p", std.Student); // Display value of Student field in std
    $display("Number of Student %p", std.Number_Student); // Display value of Number_Student field in std
    $display("Fee for the Student %p", std.Fee); // Display value of Fee field in std
    $display("Bitstream of the Student %0d", $bits(std)); // Display the number of bits in std
    
  end // End initial block
endmodule // End module
