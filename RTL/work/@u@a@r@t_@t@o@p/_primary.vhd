library verilog;
use verilog.vl_types.all;
entity UART_TOP is
    port(
        TX_IN_DATA      : in     vl_logic_vector(7 downto 0);
        RX_IN_DATA      : in     vl_logic;
        TX_IN_valid     : in     vl_logic;
        CLK_RX          : in     vl_logic;
        CLK_TX          : in     vl_logic;
        parity_enable   : in     vl_logic;
        RST             : in     vl_logic;
        parity_type     : in     vl_logic;
        prescale        : in     vl_logic_vector(4 downto 0);
        TX_out_valid    : out    vl_logic;
        RX_out_valid    : out    vl_logic;
        TX_out_DATA     : out    vl_logic;
        RX_out_DATA     : out    vl_logic_vector(7 downto 0)
    );
end UART_TOP;
