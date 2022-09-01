library verilog;
use verilog.vl_types.all;
entity CTRL_TX is
    generic(
        WIDTH           : integer := 8;
        ADDR            : integer := 4
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        UART_RF_SEND    : in     vl_logic;
        UART_SEND_RF_DATA: in     vl_logic_vector;
        UART_ALU_SEND   : in     vl_logic;
        UART_SEND_ALU_DATA: in     vl_logic_vector;
        UART_TX_Busy    : in     vl_logic;
        UART_TX_DATA    : out    vl_logic_vector;
        UART_TX_VLD     : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end CTRL_TX;
