library verilog;
use verilog.vl_types.all;
entity edge_bit_counter is
    port(
        prescale        : in     vl_logic_vector(4 downto 0);
        en_counter      : in     vl_logic;
        data_valid      : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        bit_cnt         : out    vl_logic_vector(3 downto 0);
        edge_cnt        : out    vl_logic_vector(4 downto 0)
    );
end edge_bit_counter;
