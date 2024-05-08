module system_funcations;
  bit [31:0] addr1;
  bit [31:0] addr2;
  bit [64:0] addr3;
  initial begin
    addr1 = $urandom_range(20,40);
    addr2 = $urandom_range(10);
    addr3 = $urandom_range(20,30);

    $display("addr1=%0d, addr2=%0d, addr3=%0d",addr1,addr2,addr3);
  end
endmodule
