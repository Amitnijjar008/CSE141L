// A register file with asynchronous read and synchronous write

module reg_file  #(
        parameter addr_width_p = 6,         // Address bit width, sets number of registers
        parameter data_width_p = 32         // Data width
    )
    (
        input clk,
        input [addr_width_p-1:0] rs_addr_i,         // Source register read address
        input [addr_width_p-1:0] rd_addr_i,         // Destination register read address
        input [addr_width_p-1:0] w_addr_i,          // Write address
        input wen_i,                                // Write enable
        input [data_width_p-1:0] w_data_i,          // Write data
        output logic [data_width_p-1:0] rs_val_o,   // Source register read data
        output logic [data_width_p-1:0] rd_val_o    // Destination register read data
    );

    parameter int NUM_REGS = 2**addr_width_p;           // Number of registers is 2**addr_width_p
    
    logic [data_width_p-1:0] RF [0:NUM_REGS-1];     // Register array

    assign rs_val_o = RF [rs_addr_i];
    assign rd_val_o = RF [rd_addr_i];

    always_ff @ (posedge clk)
        begin
        if (wen_i)
            begin
            RF [w_addr_i] <= w_data_i;
        end     
    end
endmodule
