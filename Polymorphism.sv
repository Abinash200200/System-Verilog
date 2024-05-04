class base_cl;
  virtual function void display();
    $display("A is the value");
  endfunction
endclass

class pkt1 extends base_cl;
  function void display();
    $display("B is the value");
  endfunction
endclass
  
  class pkt2 extends base_cl;
    function void display();
      $display("C is the value");
    endfunction
  endclass

class pkt3 extends base_cl;
  function void display();
    $display("D is the value");
  endfunction
endclass
  
module example;
  
  initial begin
    pkt1 A = new();
    pkt2 B = new();
    pkt3 C = new();
    
    base_cl th[3];
    
    th[0] = A;
    th[1] = B;
    th[2] = C;
    
    th[0].display();
    th[1].display();
    th[2].display();
  end
endmodule
    
