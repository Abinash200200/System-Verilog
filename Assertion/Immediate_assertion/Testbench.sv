module tb_sram;

    // Parameters
    localparam ADDR_WIDTH = 4;
    localparam DATA_WIDTH = 8;

    // Signals
    logic clk;
    logic we;
    logic [ADDR_WIDTH-1:0] addr;
    logic [DATA_WIDTH-1:0] data_in;
    logic [DATA_WIDTH-1:0] data_out;

    // Instantiate SRAM
    sram #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10 time units clock period
    end

    // Test sequence
    initial begin
        // Initialize signals
        we = 0;
        addr = 0;
        data_in = 0;

        // Write and Read Test
        #10;
        // Write data to address 0
        we = 1;
        addr = 0;
        data_in = 8'hAA;
        #10;  // Wait for one clock cycle
        we = 0; // Disable write

        #10;
        // Read data from address 0
        addr = 0;
        #10;  // Wait for one clock cycle

        // Write data to another address
        #10;
        we = 1;
        addr = 1;
        data_in = 8'h55;
        #10;
        we = 0;

        #10;
        // Read data from address 1
        addr = 1;
        #10;
        $finish;
    end
  always @(posedge clk) begin
    assert(!we) 
      $display("Reset Condition");
    else assert(we)
      $display("Start Sampling");
    else 
      $display("Operation fail");
  end
  
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0);
  end
endmodule
