module system_funcations;
  bit [31:0] addr1;
  bit [31:0] addr2;
  bit [64:0] addr3;
  bit [31:0] data;
  initial begin
    addr1 = $urandom();
    addr2 = $urandom(89);
    addr3 = {$urandom(),$urandom()};
    data  = $urandom * 6;

    $display("addr1=%0d, addr2=%0d, addr3=%0d, data=%0d",addr1,addr2,addr3,data);
  end
endmodule
