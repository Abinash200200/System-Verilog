module onehot;
  
  bit clk;
  bit a, b;
  
  always #5 clk = ~clk;
  
  initial begin
  a=0; b=0;
  #15 a=1; b=0;  //15
  #10 a=0; b=1;  //25
  #10 a=1; b=0;  //35
  #10 a=0; b=0;  //45
  #10 a=1; b=1;  //55
  #10 a=0; b=0;  //65
  #10 a=1; b=1;  //75
  #10 a=1; b=0;  //85
  #10 a=1; b=0;  //95
  #10 a=0; b=0;  //105
  #10 a=1; b=0;  //115
  #10 a=0; b=0;  //125
  #10 a=1; b=0;  //135
  #10 a=1; b=0;  //145
  #10;
    $display("A=%0d, B=%0d",a,b);
  $finish;
  end
  
  property s_a;
    @(posedge clk) a |-> ($countones(b)==1);
  endproperty
  
  
  assert property(s_a)
    $info("PASS");
    else $info("FAIL");
  
    
    initial begin 
      $dumpfile("waveform.vcd");
      $dumpvars(0);
    end
    
endmodule 
