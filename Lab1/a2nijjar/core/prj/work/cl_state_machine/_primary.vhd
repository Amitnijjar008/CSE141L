library verilog;
use verilog.vl_types.all;
library work;
entity cl_state_machine is
    port(
        instruction_i   : in     work.cl_state_machine_sv_unit.instruction_s;
        state_i         : in     work.cl_state_machine_sv_unit.state_e;
        exception_i     : in     vl_logic;
        net_PC_write_cmd_IDLE_i: in     vl_logic;
        stall_i         : in     vl_logic;
        state_o         : out    work.cl_state_machine_sv_unit.state_e
    );
end cl_state_machine;
