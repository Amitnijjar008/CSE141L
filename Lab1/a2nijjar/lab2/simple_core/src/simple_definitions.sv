//This file defines the structs and parameters used in the core
package simple_definitions;

    typedef enum logic[1:0] {
        NOP     = 2'b00,
        ADD     = 2'b01,
        SUB     = 2'b10,
        WAIT    = 2'b11
    } opcode_e;
    
    typedef struct packed{
        opcode_e opcode;
        logic [3:0] rd;
        logic [3:0] rs;
    } instruction_s;
    
endpackage // simple_definitions
