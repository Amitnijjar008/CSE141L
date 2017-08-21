library verilog;
use verilog.vl_types.all;
entity core_flattened is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        net_packet_flat_i: in     vl_logic_vector(64 downto 0);
        net_packet_flat_o: out    vl_logic_vector(64 downto 0);
        from_mem_flat_i : in     vl_logic_vector(33 downto 0);
        to_mem_flat_o   : out    vl_logic_vector(35 downto 0);
        barrier_o       : out    vl_logic_vector(2 downto 0);
        exception_o     : out    vl_logic;
        debug_flat_o    : out    vl_logic_vector(33 downto 0);
        data_mem_addr   : out    vl_logic_vector(31 downto 0)
    );
end core_flattened;
