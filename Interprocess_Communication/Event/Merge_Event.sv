module merge_event;
  event a, b; // Declare events 'a' and 'b'
  
  initial begin
    fork
      // Trigger event 'a' after 100 time units
      #100 ->a;
      
      // Trigger event 'b' after 50 time units
      #50 ->b;
      
      // Assign event 'a' to event 'b' after 30 time units
      #30 b = a;
      
      // Wait for event 'a' to be triggered and display message
      begin 
        wait(a.triggered);
        $display("[%0t] A is triggered", $time);
      end
      
      // Wait for event 'b' to be triggered and display message
      begin 
        wait(b.triggered);
        $display("[%0t] B is triggered", $time);
      end
    join
  end
endmodule
