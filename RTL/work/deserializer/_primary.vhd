library verilog;
use verilog.vl_types.all;
entity deserializer is
    port(
        sampled_bit     : in     vl_logic;
        data_valid      : in     vl_logic;
        deser_en        : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        p_data          : out    vl_logic_vector(7 downto 0)
    );
end deserializer;
