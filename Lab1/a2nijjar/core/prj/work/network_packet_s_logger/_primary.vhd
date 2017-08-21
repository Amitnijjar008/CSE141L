library verilog;
use verilog.vl_types.all;
library work;
entity network_packet_s_logger is
    generic(
        verbosity_p     : integer := 1
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        net_packet_i    : in     work.net_packet_logger_s_sv_unit.net_packet_s;
        cycle_counter_i : in     vl_logic_vector(31 downto 0);
        barrier_OR_i    : in     vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of verbosity_p : constant is 1;
end network_packet_s_logger;
