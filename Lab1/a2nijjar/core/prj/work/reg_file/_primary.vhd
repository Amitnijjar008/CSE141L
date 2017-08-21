library verilog;
use verilog.vl_types.all;
entity reg_file is
    generic(
        addr_width_p    : integer := 6
    );
    port(
        clk             : in     vl_logic;
        rs_addr_i       : in     vl_logic_vector;
        rd_addr_i       : in     vl_logic_vector;
        wen_i           : in     vl_logic;
        write_data_i    : in     vl_logic_vector(31 downto 0);
        rs_val_o        : out    vl_logic_vector(31 downto 0);
        rd_val_o        : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of addr_width_p : constant is 1;
end reg_file;
