library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        NOP             : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        ADD             : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        SUB             : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        \AND\           : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        \NOT\           : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0)
    );
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        CNTL            : in     vl_logic_vector(2 downto 0);
        Y               : out    vl_logic_vector(7 downto 0);
        zero            : out    vl_logic;
        ovr             : out    vl_logic;
        neg             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NOP : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of SUB : constant is 1;
    attribute mti_svvh_generic_type of \AND\ : constant is 1;
    attribute mti_svvh_generic_type of \NOT\ : constant is 1;
end ALU;
