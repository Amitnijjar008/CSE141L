/*  Simple Instruction Memory
 *
 *  Description: A simple instruction memory.
 *
 *  Notes:
 *      None.
 *
 */

import simple_definitions::*;

module simple_imem (
        input  clk,                         // Clock
        input  n_reset,                     // Active low reset
        input  [2:0] addr_i,                // Program counter/instruction address
        output instruction_s instruction    // Instruction
    );

    instruction_s [0:7] instr_mem;

    // Declare the instructions in the ROM. Note this only works in FPGA synthesis.
    initial
        begin
        instr_mem[0] = {ADD, 4'd0, 4'd8};
        instr_mem[1] = {SUB, 4'd0, 4'd2};
        instr_mem[2] = {SUB, 4'd8, 4'd0};
        instr_mem[3] = {NOP, 4'd0, 4'd8};
        instr_mem[4] = {SUB, 4'd4, 4'd1};
        instr_mem[5] = {SUB, 4'd1, 4'd2};
        instr_mem[6] = {ADD, 4'd5, 4'd2};
        instr_mem[7] = {WAIT, 4'd0, 4'd0};
    end

    // Simply read the instruction out of the ROM.
    assign instruction = instr_mem[addr_i];

endmodule
