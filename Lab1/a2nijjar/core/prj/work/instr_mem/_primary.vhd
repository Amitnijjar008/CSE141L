library verilog;
use verilog.vl_types.all;
library work;
entity instr_mem is
    generic(
        addr_width_p    : integer := 10
    );
    port(
        clk             : in     vl_logic;
        addr_i          : in     vl_logic_vector;
        instruction_i   : in     work.instr_mem_sv_unit.instruction_s;
        wen_i           : in     vl_logic;
        instruction_o   : out    work.instr_mem_sv_unit.instruction_s
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of addr_width_p : constant is 1;
end instr_mem;
