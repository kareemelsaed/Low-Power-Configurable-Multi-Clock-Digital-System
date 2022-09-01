library verilog;
use verilog.vl_types.all;
entity UART_Rx is
    port(
        prescale        : in     vl_logic_vector(4 downto 0);
        RX_IN           : in     vl_logic;
        PAR_EN          : in     vl_logic;
        PAR_TYP         : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        P_DATA          : out    vl_logic_vector(7 downto 0);
        data_valid      : out    vl_logic
    );
end UART_Rx;
