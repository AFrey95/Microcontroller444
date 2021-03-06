library verilog;
use verilog.vl_types.all;
entity control is
    generic(
        idle            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        S1              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        S2              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        S3              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        S4              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        S5              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi1);
        S6              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        S7              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi1);
        S8              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        S9              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1);
        S10             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi0);
        S11             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi1);
        S12             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi0);
        S13             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi1);
        S14             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi0);
        S15             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi1);
        S16             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        S17             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi1);
        S18             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi0);
        S19             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi1);
        S20             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi1, Hi0, Hi0);
        S21             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi1, Hi0, Hi1);
        S22             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi1, Hi1, Hi0);
        S23             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi1, Hi1, Hi1);
        S24             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi0);
        S25             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi1);
        S26             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi0);
        S27             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi1);
        S28             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi0);
        S29             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi1);
        S30             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi0);
        S31             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi1);
        S32             : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        NOP             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        ADD             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        SUB             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        \AND\           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        \NOT\           : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        RD              : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0);
        WR              : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi1);
        BR              : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi0);
        BRC             : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        PC_ld           : out    vl_logic;
        PC_inc1         : out    vl_logic;
        FILE_sel        : out    vl_logic_vector(1 downto 0);
        FILE_write      : out    vl_logic;
        DECODER_sel     : out    vl_logic;
        IR_ld           : out    vl_logic;
        STATUS_ld       : out    vl_logic;
        ALU_cntl        : out    vl_logic_vector(2 downto 0);
        IO_ld           : out    vl_logic;
        MD_ld           : out    vl_logic;
        MEM_write       : out    vl_logic;
        IR              : in     vl_logic_vector(7 downto 0);
        STATUS          : in     vl_logic_vector(7 downto 0);
        inst_err        : out    vl_logic;
        state_err       : out    vl_logic;
        state           : out    vl_logic_vector(5 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of idle : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
    attribute mti_svvh_generic_type of S4 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
    attribute mti_svvh_generic_type of S6 : constant is 1;
    attribute mti_svvh_generic_type of S7 : constant is 1;
    attribute mti_svvh_generic_type of S8 : constant is 1;
    attribute mti_svvh_generic_type of S9 : constant is 1;
    attribute mti_svvh_generic_type of S10 : constant is 1;
    attribute mti_svvh_generic_type of S11 : constant is 1;
    attribute mti_svvh_generic_type of S12 : constant is 1;
    attribute mti_svvh_generic_type of S13 : constant is 1;
    attribute mti_svvh_generic_type of S14 : constant is 1;
    attribute mti_svvh_generic_type of S15 : constant is 1;
    attribute mti_svvh_generic_type of S16 : constant is 1;
    attribute mti_svvh_generic_type of S17 : constant is 1;
    attribute mti_svvh_generic_type of S18 : constant is 1;
    attribute mti_svvh_generic_type of S19 : constant is 1;
    attribute mti_svvh_generic_type of S20 : constant is 1;
    attribute mti_svvh_generic_type of S21 : constant is 1;
    attribute mti_svvh_generic_type of S22 : constant is 1;
    attribute mti_svvh_generic_type of S23 : constant is 1;
    attribute mti_svvh_generic_type of S24 : constant is 1;
    attribute mti_svvh_generic_type of S25 : constant is 1;
    attribute mti_svvh_generic_type of S26 : constant is 1;
    attribute mti_svvh_generic_type of S27 : constant is 1;
    attribute mti_svvh_generic_type of S28 : constant is 1;
    attribute mti_svvh_generic_type of S29 : constant is 1;
    attribute mti_svvh_generic_type of S30 : constant is 1;
    attribute mti_svvh_generic_type of S31 : constant is 1;
    attribute mti_svvh_generic_type of S32 : constant is 1;
    attribute mti_svvh_generic_type of NOP : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of SUB : constant is 1;
    attribute mti_svvh_generic_type of \AND\ : constant is 1;
    attribute mti_svvh_generic_type of \NOT\ : constant is 1;
    attribute mti_svvh_generic_type of RD : constant is 1;
    attribute mti_svvh_generic_type of WR : constant is 1;
    attribute mti_svvh_generic_type of BR : constant is 1;
    attribute mti_svvh_generic_type of BRC : constant is 1;
end control;
