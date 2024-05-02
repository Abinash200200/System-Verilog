 class packet;
   byte a;
   static byte b;
   
   function new();
     b++;
     a=b;
   endfunction
   
  static function void display();
     $display("--------------------");
     $display("Number of time =%0d",b);
     $display("--------------------");
  endfunction
endclass
 
 module pkt;
   packet koo[4];
   
   initial begin
    foreach(koo[i])begin
      koo[i]=new();
     end
     koo[0].display();
   end 
endmodule

