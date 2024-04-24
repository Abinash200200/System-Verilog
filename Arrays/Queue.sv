module queues;                          // Define module named 'queues'
  int j;                                // Declare variable 'j' of type integer
  int q[$]= '{0,2,5};                   // Declare dynamic array 'q' and initialize it with values 0, 2, and 5
  initial begin                         // Begin initial block
    j=1;                                // Assign value 1 to variable 'j'
    q.insert(1,j);                      // Insert value of 'j' at index 1 in array 'q'
    $display(q);                        // Display the contents of array 'q'
    q.delete(1);                        // Delete element at index 1 in array 'q'
    $display(q);                        // Display the contents of array 'q'
    q.push_front(7);                    // Add element 7 to the front of array 'q'
    $display(q);                        // Display the contents of array 'q'
    q.push_back(9);                     // Add element 9 to the back of array 'q'
    $display(q);                        // Display the contents of array 'q'
    j = q.pop_back();                   // Remove and return the last element of array 'q', assign it to 'j'
    $display(j,",",q);                  // Display 'j' followed by a comma and the contents of array 'q'
    j = q.pop_front();                  // Remove and return the first element of array 'q', assign it to 'j'
    $display(j,",",q);                  // Display 'j' followed by a comma and the contents of array 'q'
    q.reverse();                        // Reverse the order of elements in array 'q'
    $display(q);                        // Display the contents of array 'q'
    q.rsort();                          // Sort the elements of array 'q' in reverse order
    $display(q);                        // Display the contents of array 'q'
    q.shuffle();                        // Shuffle the elements of array 'q' randomly
    $display(q);                        // Display the contents of array 'q'
  end                                   // End initial block
endmodule                               // End module declaration
