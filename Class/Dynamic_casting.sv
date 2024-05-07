  class dynamic_casting;
    int data;
    function display();
      $display("data %0d", data);
    endfunction
  endclass
   
  class pkt extends dynamic_casting;
    int Data;
   function void display();
     super.display();
     $display("Data %0d", Data);
   endfunction
 endclass
 
 module example;
   dynamic_casting p;
   pkt l;
   initial begin  
     p = new();
     l = new();
     l.data = 32;
     l.Data = 23;
     p=l;
     l.display();
   end 
 endmodule
