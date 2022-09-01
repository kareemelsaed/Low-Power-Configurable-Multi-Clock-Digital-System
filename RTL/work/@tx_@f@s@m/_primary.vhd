library verilog;
use verilog.vl_types.all;
entity Tx_FSM is
    port(
        Data_Valid      : in     vl_logic;
        CLK             : in     vl_logic;
        parity_enable   : in     vl_logic;
        ser_done        : in     vl_logic;
        RST             : in     vl_logic;
        ser_en          : out    vl_logic;
        busy            : out    vl_logic;
        mux_sel         : out    vl_logic_vector(1 downto 0)
    );
end Tx_FSM;
