library verilog;
use verilog.vl_types.all;
entity controller_vlg_check_tst is
    port(
        IR_out          : in     vl_logic_vector(7 downto 0);
        MD_out          : in     vl_logic_vector(7 downto 0);
        MEM_out         : in     vl_logic_vector(7 downto 0);
        \OUT\           : in     vl_logic_vector(7 downto 0);
        PC_out          : in     vl_logic_vector(7 downto 0);
        inst_err        : in     vl_logic;
        ledr_out        : in     vl_logic_vector(7 downto 0);
        state           : in     vl_logic_vector(5 downto 0);
        state_err       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end controller_vlg_check_tst;
