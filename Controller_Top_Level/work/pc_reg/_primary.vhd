library verilog;
use verilog.vl_types.all;
entity pc_reg is
    port(
        \IN\            : in     vl_logic_vector(7 downto 0);
        \OUT\           : out    vl_logic_vector(7 downto 0);
        ld              : in     vl_logic;
        inc1            : in     vl_logic;
        inc2            : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end pc_reg;
