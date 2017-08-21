library verilog;
use verilog.vl_types.all;
library work;
entity cl_decode is
    port(
        instruction_i   : in     work.cl_decode_sv_unit.instruction_s;
        is_load_op_o    : out    vl_logic;
        op_writes_rf_o  : out    vl_logic;
        is_store_op_o   : out    vl_logic;
        is_mem_op_o     : out    vl_logic;
        is_byte_op_o    : out    vl_logic
    );
end cl_decode;
