library verilog;
use verilog.vl_types.all;
entity SYS_CTRL is
    generic(
        WIDTH           : integer := 8;
        ADDR            : integer := 4
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        RF_RdData       : in     vl_logic_vector;
        RF_RdData_VLD   : in     vl_logic;
        RF_WrEn         : out    vl_logic;
        RF_RdEn         : out    vl_logic;
        RF_Address      : out    vl_logic_vector;
        RF_WrData       : out    vl_logic_vector;
        ALU_OUT         : in     vl_logic_vector;
        ALU_OUT_VLD     : in     vl_logic;
        ALU_EN          : out    vl_logic;
        ALU_FUN         : out    vl_logic_vector(3 downto 0);
        CLKG_EN         : out    vl_logic;
        CLKDIV_EN       : out    vl_logic;
        UART_RX_DATA    : in     vl_logic_vector;
        UART_RX_VLD     : in     vl_logic;
        UART_TX_Busy    : in     vl_logic;
        UART_TX_DATA    : out    vl_logic_vector;
        UART_TX_VLD     : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end SYS_CTRL;
