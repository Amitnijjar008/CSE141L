library verilog;
use verilog.vl_types.all;
entity data_mem is
    generic(
        addr_width_p    : integer := 12
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        port_flat_i     : in     vl_logic_vector(35 downto 0);
        addr            : in     vl_logic_vector(31 downto 0);
        port_flat_o     : out    vl_logic_vector(33 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of addr_width_p : constant is 1;
end data_mem;
