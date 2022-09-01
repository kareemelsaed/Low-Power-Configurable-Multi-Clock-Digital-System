library verilog;
use verilog.vl_types.all;
entity Serializer is
    port(
        CLK             : in     vl_logic;
        P_DATA          : in     vl_logic_vector(7 downto 0);
        ser_en          : in     vl_logic;
        Data_Valid      : in     vl_logic;
        busy            : in     vl_logic;
        RST             : in     vl_logic;
        ser_done        : out    vl_logic;
        ser_data        : out    vl_logic
    );
end Serializer;
