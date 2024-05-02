 class parent;
   int koop;
   
   function void display();
     $display("koop = %0d",koop);
   endfunction
 endclass
 
 class child extends parent;
   int soop;
   function display();
     $display("soop =%0d",soop);
   endfunction
 endclass
 
 module example;
   
   initial begin
     child A = new();
     A.koop = 10;
     A.soop = 20;
     A.display();
   end 
 endmodule
