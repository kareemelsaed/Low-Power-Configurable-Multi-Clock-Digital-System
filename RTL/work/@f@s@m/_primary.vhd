library verilog;
use verilog.vl_types.all;
entity FSM is
    port(
        edge_cnt        : in     vl_logic_vector(4 downto 0);
        bit_cnt         : in     vl_logic_vector(3 downto 0);
        RX_in           : in     vl_logic;
        par_en          : in     vl_logic;
        par_err         : in     vl_logic;
        strt_err        : in     vl_logic;
        stp_err         : in     vl_logic;
        prescale        : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        data_samp_en    : out    vl_logic;
        deser_en        : out    vl_logic;
        data_valid      : out    vl_logic;
        stp_chk_en      : out    vl_logic;
        strt_chk_en     : out    vl_logic;
        par_chk_en      : out    vl_logic;
        counter_en      : out    vl_logic
    );
end FSM;
