library verilog;
use verilog.vl_types.all;
entity REG_FILE is
    port(
        X               : in     vl_logic_vector(7 downto 0);
        A               : out    vl_logic_vector(7 downto 0);
        B               : out    vl_logic_vector(7 downto 0);
        XADDR           : in     vl_logic_vector(1 downto 0);
        AADDR           : in     vl_logic_vector(1 downto 0);
        BADDR           : in     vl_logic_vector(1 downto 0);
        write           : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end REG_FILE;
