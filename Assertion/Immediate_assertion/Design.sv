module sram #(
    parameter ADDR_WIDTH = 4,  // Number of address bits
    parameter DATA_WIDTH = 8   // Number of data bits
)(
    input  logic                  clk,
    input  logic                  we,         // Write enable
    input  logic [ADDR_WIDTH-1:0] addr,       // Address bus
    input  logic [DATA_WIDTH-1:0] data_in,    // Data input
    output logic [DATA_WIDTH-1:0] data_out    // Data output
);

    // Memory array
    logic [DATA_WIDTH-1:0] mem [(2**ADDR_WIDTH)-1:0];

    // Write operation
    always_ff @(posedge clk) begin
        if (we) begin
            mem[addr] <= data_in;
        end
    end

    // Read operation
    assign data_out = mem[addr];

endmodule
