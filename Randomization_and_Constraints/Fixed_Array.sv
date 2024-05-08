class fixed_array;
  bit [3:0] array1[4];
  bit [4:0] array2[2];
  
  function void display();
    $display("Bit value is %p",array1);
    $display("Bit value is %p",array2);
  endfunction
endclass
  program example;
    fixed_array pkt;
    initial begin
      pkt = new();
      pkt.randomize();
      pkt.display();
    end 
  endprogram
    
    
