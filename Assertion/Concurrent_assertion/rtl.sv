module ass;
  bit clk, a, b;    // Declare clk, a, b as 1-bit signals
  
  always #5 clk = ~clk;   // Toggle clk every 5 time units
  
  initial begin    // Initial block begins
    a = 0; b = 0;  // Initialize a and b to 0
    #10;           // Wait for 10 time units
    a = 1; b = 0;  // Set a to 1 and b to 0
    #15;           // Wait for 15 time units
    a = 0; b = 1;  // Set a to 0 and b to 1
    #10;           // Wait for 10 time units
    a = 1; b = 0;  // Set a to 1 and b to 0
    #100;          // Wait for 100 time units
    $finish;       //End simulation
  end             // End of initial block
  
  assert property (@(posedge clk) a || b);  // Assert property for a or b on posedge of clk
  
  initial begin    // Initial block begins for waveform dumping
    $dumpfile("waveform.vcd");  // Specify the VCD file for dumping
    $dumpvars(0);               // Dump all variables
  end             // End of waveform dumping initial block
endmodule           // End of module
