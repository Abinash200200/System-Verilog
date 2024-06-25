module non_blocking_event;
  event abc; // Declare an event named 'abc'
  
  initial begin 
    $display($time, "\t triggering the event"); // Display the current simulation time and a message indicating the event is being triggered
    ->>abc; // Non-blocking trigger of the event 'abc'
  end 
  
  initial begin
    $display($time, "\t waiting for the event using wait"); // Display the current simulation time and a message indicating it's waiting for the event using wait
    wait(abc.triggered); // Wait for the event 'abc' to be triggered using wait
    $display($time, "\t event abc is triggered using wait"); // Display the current simulation time and a message indicating the event has been triggered using wait
  end
  
  initial begin
    $display($time, "\t waiting for the event using @"); // Display the current simulation time and a message indicating it's waiting for the event using @
    @(abc.triggered); // Wait for the event 'abc' to be triggered using @
    $display($time, "\t event abc is triggered using @"); // Display the current simulation time and a message indicating the event has been triggered using @
  end
endmodule
