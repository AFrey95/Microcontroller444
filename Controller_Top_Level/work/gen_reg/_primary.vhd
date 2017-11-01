library verilog;
use verilog.vl_types.all;
entity gen_reg is
    port(
        X               : in     vl_logic_vector(7 downto 0);
        ld              : in     vl_logic;
        clk             : in     vl_logic;
        Y               : out    vl_logic_vector(7 downto 0)
    );
end gen_reg;
