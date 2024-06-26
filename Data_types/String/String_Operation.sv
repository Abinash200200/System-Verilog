module string_operator; //  Module declaration
  string str1 = "ASIC"; //  Declaration and initialization of str1
  string str2 = "FPGA"; //  Declaration and initialization of str2
  
  initial begin //  Begin initial block
    if(str1 == str2) //  If condition to check if str1 is equal to str2
      $display("string1 and string2 are equal"); // Display message if str1 is equal to str2
    else
      $display("string1 and string2 are not equal"); // Display message if str1 is not equal to str2
    $display("======================================="); // Display separator
    
    if(str1 != str2) // If condition to check if str1 is not equal to str2
      $display("string1 and string2 are not equal"); // Display message if str1 is not equal to str2
    else
      $display("string1 and string2 are equal"); //  Display message if str1 is equal to str2
    $display("======================================="); // Display separator
    
    if(str1 < str2) // If condition to check if str1 is less than str2
      $display("String1 < String2 "); //  Display message if str1 is less than str2
    $display("======================================="); //  Display separator
    
    if(str1 <= str2) // If condition to check if str1 is less than or equal to str2
      $display("String1 <= String2 "); // Display message if str1 is less than or equal to str2
    if(str1 > str2) // If condition to check if str1 is greater than str2
      $display("String1 > String2"); // Display message if str1 is greater than str2
    $display("======================================="); // Display separator
    
    if(str1 >= str2) // If condition to check if str1 is greater than or equal to str2
      $display("String1 >= String2"); // Display message if str1 is greater than or equal to str2
    $display("======================================="); // Display separator
    
    $display("Output of concatenation operator %s", {str1, str2}); // Display concatenation of str1 and str2
    $display("======================================="); // Display separator
    
    $display("Output of replication operator %s", {2{str1}}); // Display replication of str1
    $display("======================================="); // Display separator
    
    for(int i = 0; i < 7; i++) // For loop to iterate over the first 7 characters of str1
      $display("%s ", str1[i]); //  Display each character of str1
    $display(""); //  Display a new line
  end // End initial block

endmodule //  End module
