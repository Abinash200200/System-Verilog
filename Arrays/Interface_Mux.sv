interface mux;
  logic [3:0] a,b,c,d;
  logic [1:0] s;
  logic [3:0]y;
endinterface

module mux_4(mux r);
  always@(*)
    case(r.s)
    2'b00:r.y=r.a;
    2'b01:r.y=r.b;
    2'b10:r.y=r.c;
    2'b11:r.y=r.d;
  endcase
endmodule

module mux_4test();
  mux intf();
  mux_4 inst(
    .r(intf)
  );
  
  initial begin
    $monitor("time=%0t a=%0d b=%0d c=%0d d=%0d s=%0d y=%0d",$time,intf.a,intf.b,intf.c,intf.d,intf.s,intf.y );
  end

  initial begin 
    intf.a=1;intf.b=2;intf.c=3;intf.d=5;
    intf.s[0]=0;intf.s[1]=0;
    intf.s[0]=0;intf.s[1]=1;
    intf.s[0]=1;intf.s[1]=0;
    intf.s[0]=1;intf.s[1]=1;
  end
endmodule
  
    
