/*  Simple Register File
 *
 *  Description: A simple register file. Note that it is read-only.
 *
 *  Notes:
 *      None.
 *
 */

import simple_definitions::*;

module simple_reg_file  #(
        parameter addr_width_p = 4
    )
    (
        input clk,                          // Clock
        input [addr_width_p-1:0] rs_addr_i, // Source register address
        input [addr_width_p-1:0] rd_addr_i, // Destination register address
        output logic [31:0] rs_val_o,       // Source register value
        output logic [31:0] rd_val_o        // Destination register value
    );

    logic [31:0] RF [2**addr_width_p-1:0];

    int i;

    // Create a ROM where each register holds a value equal to its index. This only works
    // in FPGA synthesis.
    initial
        begin
        for (i = 0; i < 2**addr_width_p; i++)
            begin
            RF[i] = i;
        end
    end

    assign rs_val_o = RF [rs_addr_i];
    assign rd_val_o = RF [rd_addr_i];

endmodule
