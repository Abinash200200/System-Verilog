module str;
  string str1 = "FPGA"; //  Declaration and initialization of str1
  string str2 = "ASIC"; //  Declaration and initialization of str2
  
  initial begin // Begin initial block
    string temp; // Declaration of temporary string variable temp
  
    $display("------------------------------------"); 
    
     // Display length of str1
    $display("Length of the str1 is ::%0d",str1.len());
    
    // Display separator
    $display("------------------------------------");
    
    // Display the character at index 3 of str1
    $display("Get the str1 ::%s",str1.getc(3));
    
    // Display separator
    $display("------------------------------------");
    
    // Display str1 in upper case
    $display("String Upper case ::%s",str1.toupper());
    
    // Display separator
    $display("------------------------------------");
    
    // Display str1 in lower case
    $display("String Lower case ::%s",str1.tolower());
    
    //  Display separator
    $display("------------------------------------");
    
    //  Display comparison result between str1 and str2
    $display("Comparing two string ::%d",str1.compare(str2));
    
    //  Display separator
    $display("------------------------------------");
    
    //  Display substring of str1 from index 0 to 3
    $display("Sub string %s",str1.substr(0,3));  
    
  end 
endmodule 
