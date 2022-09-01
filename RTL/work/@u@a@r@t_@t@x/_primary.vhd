library verilog;
use verilog.vl_types.all;
entity UART_TX is
    port(
        Data_Valid      : in     vl_logic;
        CLK             : in     vl_logic;
        parity_enable   : in     vl_logic;
        P_DATA          : in     vl_logic_vector(7 downto 0);
        RST             : in     vl_logic;
        parity_type     : in     vl_logic;
        busy            : out    vl_logic;
        TX_OUT          : out    vl_logic
    );
end UART_TX;
