module rose;
  
  bit clk;
  bit a, b;
  
  // Clock generation
  initial clk = 0;
  always #10 clk = ~clk;

  // Sequence definitions
  sequence s_a;
    @(posedge clk) $rose(a);
  endsequence

  sequence s_b;
    @(posedge clk) b;
  endsequence
  
  // Property and assertion
  property p_a;
    s_a;
  endproperty
  
  assert property (p_a) 
    $info("PASS");
  else 
    $error("FAIL");
  
  // Stimulus generation
  initial begin
    // Initialize signals
    a = 0;
    b = 0;

    // Apply random values to signals
    for (int i = 0; i < 10; i++) begin
      #20; // Wait for a clock period
      a = $random;
      b = $random;
      $display("A = %0d, B = %0d", a, b);
    end
  end
    
  // Dump waveform
  initial begin 
    $dumpfile("waveform.vcd");
    $dumpvars(0, rose);
    #1000;
    $finish;
  end
  
endmodule
