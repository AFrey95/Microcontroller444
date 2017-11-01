library verilog;
use verilog.vl_types.all;
entity addr_decode is
    port(
        IA              : in     vl_logic_vector(7 downto 0);
        DA              : in     vl_logic_vector(7 downto 0);
        sel             : in     vl_logic;
        MA              : out    vl_logic_vector(7 downto 0);
        I_O_A           : out    vl_logic_vector(7 downto 0)
    );
end addr_decode;
