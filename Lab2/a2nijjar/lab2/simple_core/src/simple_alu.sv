/*  Simple ALU
 *
 *  Description: A simple ALU with ADD, SUB, WAIT and NOP.
 *
 *  Notes:
 *      None.
 *
 */

import simple_definitions::*;

module simple_alu (
        input  [31:0] rd_i,             // Destination register
        input  [31:0] rs_i,             // Source register
        input  instruction_s op_i,      // Instruction
        output logic [31:0] result_o,   // ALU result
        output logic writes_rf_o,       // Write to register file flag
        output logic stop_o             // Stop execution flag
    );

    always_comb
        begin

        // Default to NOP.
        result_o = 0;
        writes_rf_o = 0;
        stop_o = 0;

        unique casez (op_i.opcode)
            ADD:
                begin
                result_o = rd_i + rs_i;
                writes_rf_o = 1;
            end

            SUB:
                begin
                result_o = rd_i - rs_i;
                writes_rf_o = 1;
            end

            WAIT:
                begin
                stop_o = 1;
            end

            default:
                begin
                result_o = 0;
                writes_rf_o = 0;
                stop_o = 0;
            end
        endcase

    end // always_comb

endmodule
