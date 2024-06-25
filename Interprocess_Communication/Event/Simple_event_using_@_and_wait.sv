module simple_event;
  event a; // Declare an event named 'a'
  
  initial begin
    $display("\t [EVENT_A] is done"); // Display a message indicating that EVENT_A is done
    ->a; // Trigger the event 'a'
  end
  
  initial begin
    $display("\t [WAITING FOR TRIGGER]"); // Display a message indicating that it is waiting for the trigger
    wait(a.triggered); // Wait for the event 'a' to be triggered
    $display("\t [EVENT IS WAITING]"); // Display a message indicating that the event is waiting
  end
  
  initial begin
    $display("\t [EVENT IS TRIGGERED USE @]"); // Display a message indicating that the event is being triggered using @
    @(a.triggered); // Wait for the event 'a' to be triggered using @
    $display("\t EVENT IS DONE @"); // Display a message indicating that the event is done using @
  end
endmodule
