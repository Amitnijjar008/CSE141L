library verilog;
use verilog.vl_types.all;
library work;
entity alu is
    port(
        rd_i            : in     vl_logic_vector(31 downto 0);
        rs_i            : in     vl_logic_vector(31 downto 0);
        op_i            : in     work.alu_sv_unit.instruction_s;
        result_o        : out    vl_logic_vector(31 downto 0);
        jump_now_o      : out    vl_logic
    );
end alu;
