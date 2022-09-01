library verilog;
use verilog.vl_types.all;
entity CTRL_RX is
    generic(
        WIDTH           : integer := 8;
        ADDR            : integer := 4
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        RF_RdData       : in     vl_logic_vector;
        RF_RdData_VLD   : in     vl_logic;
        ALU_OUT         : in     vl_logic_vector;
        ALU_OUT_VLD     : in     vl_logic;
        UART_RX_DATA    : in     vl_logic_vector;
        UART_RX_VLD     : in     vl_logic;
        ALU_EN          : out    vl_logic;
        ALU_FUN         : out    vl_logic_vector(3 downto 0);
        CLKG_EN         : out    vl_logic;
        CLKDIV_EN       : out    vl_logic;
        RF_WrEn         : out    vl_logic;
        RF_RdEn         : out    vl_logic;
        RF_Address      : out    vl_logic_vector;
        RF_WrData       : out    vl_logic_vector;
        UART_RF_SEND    : out    vl_logic;
        UART_ALU_SEND   : out    vl_logic;
        UART_SEND_RF_DATA: out    vl_logic_vector;
        UART_SEND_ALU_DATA: out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR : constant is 1;
end CTRL_RX;
