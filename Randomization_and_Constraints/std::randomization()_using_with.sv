program std_rand;
  bit [31:0] A1;
  bit [31:0] A2;
  bit [31:0] A3;
  
  initial begin
    std::randomize(A1);
    $display("A1 value is %0d",A1);
    std::randomize(A2,A3) with { A2 == A1 * 4;
                          A3 == A2 * 3;
                        };
    $display("A2 value is %0d",A2);
    $display("A3 value is %0d",A3);
  end 
endprogram
