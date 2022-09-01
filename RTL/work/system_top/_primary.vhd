library verilog;
use verilog.vl_types.all;
entity system_top is
    port(
        REF_CLK         : in     vl_logic;
        UART_CLK        : in     vl_logic;
        RST             : in     vl_logic;
        RX_IN           : in     vl_logic;
        TX_OUT          : out    vl_logic
    );
end system_top;
