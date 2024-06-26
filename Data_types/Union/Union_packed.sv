module union_packed; //  Module declaration
  
  typedef union packed { // Declaration of a packed union
    bit [7:0] Vv; // 8-bit field Vv
    logic [7:0] Bb; //  8-bit field Bb
  } ABC_u; //  Name of the union type
   
  initial begin // Begin initial block
    ABC_u abc; //  Declaration of a variable of type ABC_u
    
    abc.Vv = 'h67; // Initialize Vv field of abc to hexadecimal 67
    $display("\n abc.Vv = %0h", abc.Vv); // Display value of Vv field in abc
    
    abc.Bb = 'h34; // Initialize Bb field of abc to hexadecimal 34
    $display("\n abc.Bb = %0h", abc.Bb); //  Display value of Bb field in abc
    
    $display("\n size is %d", $bits(ABC_u)); //  Display the number of bits in ABC_u
  end // End initial block
endmodule // End module
