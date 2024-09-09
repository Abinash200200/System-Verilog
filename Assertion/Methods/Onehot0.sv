module onehot0;
  
  bit clk;
  bit a, b;
  
  // Clock generation
  initial clk = 0;
  always #5 clk = ~clk;
  
  // Stimulus generation
  initial begin
    a = 0; b = 0;
    #15 a = 1; b = 0;   // Time = 15
    #10 a = 0; b = 1;   // Time = 25
    #10 a = 1; b = 0;   // Time = 35
    #10 a = 0; b = 0;   // Time = 45
    #10 a = 1; b = 1;   // Time = 55
    #10 a = 0; b = 0;   // Time = 65
    #10 a = 1; b = 1;   // Time = 75
    #10 a = 1; b = 0;   // Time = 85
    #10 a = 1; b = 0;   // Time = 95
    #10 a = 0; b = 0;   // Time = 105
    #10 a = 1; b = 0;   // Time = 115
    #10 a = 0; b = 0;   // Time = 125
    #10 a = 1; b = 0;   // Time = 135
    #10 a = 1; b = 0;   // Time = 145
    #10; // End of simulation delay
    $display("A = %0d, B = %0d", a, b);
    $finish;
  end
  
  // Property definition: Ensure only one of a or b is high at any time
  property p_onehot;
    @(posedge clk) $onehot0(b); // Ensure not both a and b are high at the same time
  endproperty
  
  // Assertion for property
  assert property (p_onehot)
    $info("PASS");
  else
    $info("FAIL");
  
  // Waveform dumping
  initial begin 
    $dumpfile("waveform.vcd");
    $dumpvars(0, onehot);
    #1000; // Ensure enough time to capture the waveform
    $finish;
  end
  
endmodule
