library verilog;
use verilog.vl_types.all;
entity mux_4 is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        C               : in     vl_logic_vector(7 downto 0);
        D               : in     vl_logic_vector(7 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        Y               : out    vl_logic_vector(7 downto 0)
    );
end mux_4;
