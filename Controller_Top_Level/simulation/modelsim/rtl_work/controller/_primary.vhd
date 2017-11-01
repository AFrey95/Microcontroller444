library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \IN\            : in     vl_logic_vector(7 downto 0);
        \OUT\           : out    vl_logic_vector(7 downto 0);
        inst_err        : out    vl_logic;
        state_err       : out    vl_logic;
        state           : out    vl_logic_vector(5 downto 0);
        PC_out          : out    vl_logic_vector(7 downto 0);
        IR_out          : out    vl_logic_vector(7 downto 0);
        MD_out          : out    vl_logic_vector(7 downto 0);
        MEM_out         : out    vl_logic_vector(7 downto 0)
    );
end controller;
