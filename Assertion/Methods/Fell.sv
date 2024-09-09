module fell;
  
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
    #10; // Final delay
    $display("A = %0d, B = %0d", a, b);
    $finish;
  end
  
  // Property definition
  property s_a;
    @(posedge clk) $fell(b);
  endproperty
  
  // Assertion for property
  assert property (s_a)
    $info("PASS");
  else
    $info("FAIL");
  
  // Waveform dumping
  initial begin 
    $dumpfile("waveform.vcd");
    $dumpvars(0, fell);
    #1000; // Ensure enough time to capture the waveform
    $finish;
  end
  
endmodule
